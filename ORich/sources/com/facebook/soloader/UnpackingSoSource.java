package com.facebook.soloader;

import android.content.Context;
import android.os.Parcel;
import android.os.StrictMode;
import android.util.Log;
import com.taobao.weex.el.parse.Operators;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class UnpackingSoSource extends DirectorySoSource {
    private static final String DEPS_FILE_NAME = "dso_deps";
    private static final String LOCK_FILE_NAME = "dso_lock";
    private static final String MANIFEST_FILE_NAME = "dso_manifest";
    private static final byte MANIFEST_VERSION = 1;
    private static final byte STATE_CLEAN = 1;
    private static final byte STATE_DIRTY = 0;
    private static final String STATE_FILE_NAME = "dso_state";
    private static final String TAG = "fb-UnpackingSoSource";

    @Nullable
    private String[] mAbis;
    protected final Context mContext;

    @Nullable
    protected String mCorruptedLib;
    private final Map<String, Object> mLibsBeingLoaded;

    protected abstract Unpacker makeUnpacker() throws IOException;

    protected UnpackingSoSource(Context context, String str) {
        super(getSoStorePath(context, str), 1);
        this.mLibsBeingLoaded = new HashMap();
        this.mContext = context;
    }

    protected UnpackingSoSource(Context context, File file) {
        super(file, 1);
        this.mLibsBeingLoaded = new HashMap();
        this.mContext = context;
    }

    public static File getSoStorePath(Context context, String str) {
        return new File(context.getApplicationInfo().dataDir + Operators.DIV + str);
    }

    @Override // com.facebook.soloader.SoSource
    public String[] getSoSourceAbis() {
        String[] strArr = this.mAbis;
        return strArr == null ? super.getSoSourceAbis() : strArr;
    }

    public void setSoSourceAbis(String[] strArr) {
        this.mAbis = strArr;
    }

    public static class Dso {
        public final String hash;
        public final String name;

        public Dso(String str, String str2) {
            this.name = str;
            this.hash = str2;
        }
    }

    public static final class DsoManifest {
        public final Dso[] dsos;

        public DsoManifest(Dso[] dsoArr) {
            this.dsos = dsoArr;
        }

        static final DsoManifest read(DataInput dataInput) throws IOException {
            if (dataInput.readByte() != 1) {
                throw new RuntimeException("wrong dso manifest version");
            }
            int i = dataInput.readInt();
            if (i < 0) {
                throw new RuntimeException("illegal number of shared libraries");
            }
            Dso[] dsoArr = new Dso[i];
            for (int i2 = 0; i2 < i; i2++) {
                dsoArr[i2] = new Dso(dataInput.readUTF(), dataInput.readUTF());
            }
            return new DsoManifest(dsoArr);
        }

        public final void write(DataOutput dataOutput) throws IOException {
            dataOutput.writeByte(1);
            dataOutput.writeInt(this.dsos.length);
            int i = 0;
            while (true) {
                Dso[] dsoArr = this.dsos;
                if (i >= dsoArr.length) {
                    return;
                }
                dataOutput.writeUTF(dsoArr[i].name);
                dataOutput.writeUTF(this.dsos[i].hash);
                i++;
            }
        }
    }

    protected static final class InputDso implements Closeable {
        public final InputStream content;
        public final Dso dso;

        public InputDso(Dso dso, InputStream inputStream) {
            this.dso = dso;
            this.content = inputStream;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.content.close();
        }
    }

    protected static abstract class InputDsoIterator implements Closeable {
        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        public abstract boolean hasNext();

        public abstract InputDso next() throws IOException;

        protected InputDsoIterator() {
        }
    }

    protected static abstract class Unpacker implements Closeable {
        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        protected abstract DsoManifest getDsoManifest() throws IOException;

        protected abstract InputDsoIterator openDsoIterator() throws IOException;

        protected Unpacker() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void writeState(File file, byte b) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        try {
            randomAccessFile.seek(0L);
            randomAccessFile.write(b);
            randomAccessFile.setLength(randomAccessFile.getFilePointer());
            randomAccessFile.getFD().sync();
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private void deleteUnmentionedFiles(Dso[] dsoArr) throws IOException {
        String[] list = this.soDirectory.list();
        if (list == null) {
            throw new IOException("unable to list directory " + this.soDirectory);
        }
        for (String str : list) {
            if (!str.equals(STATE_FILE_NAME) && !str.equals(LOCK_FILE_NAME) && !str.equals(DEPS_FILE_NAME) && !str.equals(MANIFEST_FILE_NAME)) {
                boolean z = false;
                for (int i = 0; !z && i < dsoArr.length; i++) {
                    if (dsoArr[i].name.equals(str)) {
                        z = true;
                    }
                }
                if (!z) {
                    File file = new File(this.soDirectory, str);
                    Log.v(TAG, "deleting unaccounted-for file " + file);
                    SysUtil.dumbDeleteRecursive(file);
                }
            }
        }
    }

    private void extractDso(InputDso inputDso, byte[] bArr) throws IOException {
        Log.i(TAG, "extracting DSO " + inputDso.dso.name);
        try {
            if (!this.soDirectory.setWritable(true)) {
                throw new IOException("cannot make directory writable for us: " + this.soDirectory);
            }
            extractDsoImpl(inputDso, bArr);
        } finally {
            if (!this.soDirectory.setWritable(false)) {
                Log.w(TAG, "error removing " + this.soDirectory.getCanonicalPath() + " write permission");
            }
        }
    }

    private void extractDsoImpl(InputDso inputDso, byte[] bArr) throws IOException {
        RandomAccessFile randomAccessFile;
        File file = new File(this.soDirectory, inputDso.dso.name);
        RandomAccessFile randomAccessFile2 = null;
        try {
            try {
                if (file.exists() && !file.setWritable(true)) {
                    Log.w(TAG, "error adding write permission to: " + file);
                }
                try {
                    randomAccessFile = new RandomAccessFile(file, "rw");
                } catch (IOException e) {
                    Log.w(TAG, "error overwriting " + file + " trying to delete and start over", e);
                    SysUtil.dumbDeleteRecursive(file);
                    randomAccessFile = new RandomAccessFile(file, "rw");
                }
                randomAccessFile2 = randomAccessFile;
                int iAvailable = inputDso.content.available();
                if (iAvailable > 1) {
                    SysUtil.fallocateIfSupported(randomAccessFile2.getFD(), iAvailable);
                }
                SysUtil.copyBytes(randomAccessFile2, inputDso.content, Integer.MAX_VALUE, bArr);
                randomAccessFile2.setLength(randomAccessFile2.getFilePointer());
                if (!file.setExecutable(true, false)) {
                    throw new IOException("cannot make file executable: " + file);
                }
                if (!file.setWritable(false)) {
                    Log.w(TAG, "error removing " + file + " write permission");
                }
                randomAccessFile2.close();
            } catch (Throwable th) {
                if (!file.setWritable(false)) {
                    Log.w(TAG, "error removing " + file + " write permission");
                }
                if (randomAccessFile2 != null) {
                    randomAccessFile2.close();
                }
                throw th;
            }
        } catch (IOException e2) {
            SysUtil.dumbDeleteRecursive(file);
            throw e2;
        }
    }

    private void regenerate(byte b, DsoManifest dsoManifest, InputDsoIterator inputDsoIterator) throws IOException {
        DsoManifest dsoManifest2;
        Log.v(TAG, "regenerating DSO store " + getClass().getName());
        RandomAccessFile randomAccessFile = new RandomAccessFile(new File(this.soDirectory, MANIFEST_FILE_NAME), "rw");
        try {
            if (b == 1) {
                try {
                    dsoManifest2 = DsoManifest.read(randomAccessFile);
                } catch (Exception e) {
                    Log.i(TAG, "error reading existing DSO manifest", e);
                    dsoManifest2 = null;
                }
            } else {
                dsoManifest2 = null;
            }
            if (dsoManifest2 == null) {
                dsoManifest2 = new DsoManifest(new Dso[0]);
            }
            deleteUnmentionedFiles(dsoManifest.dsos);
            byte[] bArr = new byte[32768];
            while (inputDsoIterator.hasNext()) {
                InputDso next = inputDsoIterator.next();
                boolean z = true;
                int i = 0;
                while (z) {
                    try {
                        if (i >= dsoManifest2.dsos.length) {
                            break;
                        }
                        if (dsoManifest2.dsos[i].name.equals(next.dso.name) && dsoManifest2.dsos[i].hash.equals(next.dso.hash)) {
                            z = false;
                        }
                        i++;
                    } finally {
                    }
                }
                if (z) {
                    extractDso(next, bArr);
                }
                if (next != null) {
                    next.close();
                }
            }
            randomAccessFile.close();
            Log.v(TAG, "Finished regenerating DSO store " + getClass().getName());
        } finally {
        }
    }

    private boolean refreshLocked(final FileLocker fileLocker, int i, final byte[] bArr) throws IOException {
        byte b;
        final File file = new File(this.soDirectory, STATE_FILE_NAME);
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        try {
            b = randomAccessFile.readByte();
        } catch (EOFException unused) {
        } catch (Throwable th) {
            try {
                throw th;
            } finally {
            }
        }
        if (b != 1) {
            Log.v(TAG, "dso store " + this.soDirectory + " regeneration interrupted: wiping clean");
            b = 0;
        }
        randomAccessFile.close();
        final File file2 = new File(this.soDirectory, DEPS_FILE_NAME);
        DsoManifest dsoManifest = null;
        randomAccessFile = new RandomAccessFile(file2, "rw");
        try {
            int length = (int) randomAccessFile.length();
            byte[] bArr2 = new byte[length];
            if (randomAccessFile.read(bArr2) != length) {
                Log.v(TAG, "short read of so store deps file: marking unclean");
                b = 0;
            }
            if (!Arrays.equals(bArr2, bArr)) {
                Log.v(TAG, "deps mismatch on deps store: regenerating");
                b = 0;
            }
            if (b == 0 || (i & 2) != 0) {
                Log.v(TAG, "so store dirty: regenerating");
                writeState(file, (byte) 0);
                Unpacker unpackerMakeUnpacker = makeUnpacker();
                try {
                    dsoManifest = unpackerMakeUnpacker.getDsoManifest();
                    InputDsoIterator inputDsoIteratorOpenDsoIterator = unpackerMakeUnpacker.openDsoIterator();
                    try {
                        regenerate(b, dsoManifest, inputDsoIteratorOpenDsoIterator);
                        if (inputDsoIteratorOpenDsoIterator != null) {
                            inputDsoIteratorOpenDsoIterator.close();
                        }
                        if (unpackerMakeUnpacker != null) {
                            unpackerMakeUnpacker.close();
                        }
                    } finally {
                    }
                } finally {
                }
            }
            final DsoManifest dsoManifest2 = dsoManifest;
            randomAccessFile.close();
            if (dsoManifest2 == null) {
                return false;
            }
            Runnable runnable = new Runnable() { // from class: com.facebook.soloader.UnpackingSoSource.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        try {
                            Log.v(UnpackingSoSource.TAG, "starting syncer worker");
                            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rw");
                            try {
                                randomAccessFile2.write(bArr);
                                randomAccessFile2.setLength(randomAccessFile2.getFilePointer());
                                randomAccessFile2.close();
                                randomAccessFile2 = new RandomAccessFile(new File(UnpackingSoSource.this.soDirectory, UnpackingSoSource.MANIFEST_FILE_NAME), "rw");
                                try {
                                    dsoManifest2.write(randomAccessFile2);
                                    randomAccessFile2.close();
                                    SysUtil.fsyncRecursive(UnpackingSoSource.this.soDirectory);
                                    UnpackingSoSource.writeState(file, (byte) 1);
                                } finally {
                                }
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    } finally {
                        Log.v(UnpackingSoSource.TAG, "releasing dso store lock for " + UnpackingSoSource.this.soDirectory + " (from syncer thread)");
                        fileLocker.close();
                    }
                }
            };
            if ((i & 1) != 0) {
                new Thread(runnable, "SoSync:" + this.soDirectory.getName()).start();
            } else {
                runnable.run();
            }
            return true;
        } catch (Throwable th2) {
            try {
                throw th2;
            } finally {
            }
        }
    }

    protected byte[] getDepsBlock() throws IOException {
        Parcel parcelObtain = Parcel.obtain();
        Unpacker unpackerMakeUnpacker = makeUnpacker();
        try {
            Dso[] dsoArr = unpackerMakeUnpacker.getDsoManifest().dsos;
            parcelObtain.writeByte((byte) 1);
            parcelObtain.writeInt(dsoArr.length);
            for (int i = 0; i < dsoArr.length; i++) {
                parcelObtain.writeString(dsoArr[i].name);
                parcelObtain.writeString(dsoArr[i].hash);
            }
            if (unpackerMakeUnpacker != null) {
                unpackerMakeUnpacker.close();
            }
            byte[] bArrMarshall = parcelObtain.marshall();
            parcelObtain.recycle();
            return bArrMarshall;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (unpackerMakeUnpacker != null) {
                    try {
                        unpackerMakeUnpacker.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // com.facebook.soloader.SoSource
    protected void prepare(int i) throws IOException {
        SysUtil.mkdirOrThrow(this.soDirectory);
        FileLocker fileLockerLock = FileLocker.lock(new File(this.soDirectory, LOCK_FILE_NAME));
        try {
            Log.v(TAG, "locked dso store " + this.soDirectory);
            if (refreshLocked(fileLockerLock, i, getDepsBlock())) {
                fileLockerLock = null;
            } else {
                Log.i(TAG, "dso store is up-to-date: " + this.soDirectory);
            }
        } finally {
            if (fileLockerLock != null) {
                Log.v(TAG, "releasing dso store lock for " + this.soDirectory);
                fileLockerLock.close();
            } else {
                Log.v(TAG, "not releasing dso store lock for " + this.soDirectory + " (syncer thread started)");
            }
        }
    }

    private Object getLibraryLock(String str) {
        Object obj;
        synchronized (this.mLibsBeingLoaded) {
            obj = this.mLibsBeingLoaded.get(str);
            if (obj == null) {
                obj = new Object();
                this.mLibsBeingLoaded.put(str, obj);
            }
        }
        return obj;
    }

    protected synchronized void prepare(String str) throws IOException {
        synchronized (getLibraryLock(str)) {
            this.mCorruptedLib = str;
            prepare(2);
        }
    }

    @Override // com.facebook.soloader.DirectorySoSource, com.facebook.soloader.SoSource
    public int loadLibrary(String str, int i, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        int iLoadLibraryFrom;
        synchronized (getLibraryLock(str)) {
            iLoadLibraryFrom = loadLibraryFrom(str, i, this.soDirectory, threadPolicy);
        }
        return iLoadLibraryFrom;
    }
}
