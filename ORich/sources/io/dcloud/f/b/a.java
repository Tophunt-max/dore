package io.dcloud.f.b;

import com.facebook.cache.disk.DefaultDiskStorage;
import com.igexin.assist.sdk.AssistPushConsts;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.util.JSUtil;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements Closeable {
    static final Pattern o = Pattern.compile("[a-z0-9_-]{1,64}");
    private static final OutputStream p = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f630a;
    private final File b;
    private final File c;
    private final File d;
    private final int e;
    private long f;
    private final int g;
    private Writer i;
    private int k;
    private long h = 0;
    private final LinkedHashMap<String, d> j = new LinkedHashMap<>(0, 0.75f, true);
    private long l = 0;
    final ThreadPoolExecutor m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> n = new CallableC0042a();

    /* JADX INFO: renamed from: io.dcloud.f.b.a$a, reason: collision with other inner class name */
    class CallableC0042a implements Callable<Void> {
        CallableC0042a() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            synchronized (a.this) {
                if (a.this.i == null) {
                    return null;
                }
                a.this.h();
                if (a.this.d()) {
                    a.this.g();
                    a.this.k = 0;
                }
                return null;
            }
        }
    }

    static class b extends OutputStream {
        b() {
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    }

    public final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d f632a;
        private final boolean[] b;
        private boolean c;

        /* JADX INFO: renamed from: io.dcloud.f.b.a$c$a, reason: collision with other inner class name */
        private class C0043a extends FilterOutputStream {
            /* synthetic */ C0043a(c cVar, OutputStream outputStream, CallableC0042a callableC0042a) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }

            private C0043a(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }
        }

        /* synthetic */ c(a aVar, d dVar, CallableC0042a callableC0042a) {
            this(dVar);
        }

        private c(d dVar) {
            this.f632a = dVar;
            this.b = dVar.c ? null : new boolean[a.this.g];
        }

        public void b() throws IOException {
            if (!this.c) {
                a.this.a(this, true);
            } else {
                a.this.a(this, false);
                a.this.d(this.f632a.f634a);
            }
        }

        public OutputStream a(int i) throws IOException {
            FileOutputStream fileOutputStream;
            C0043a c0043a;
            synchronized (a.this) {
                if (this.f632a.d == this) {
                    if (!this.f632a.c) {
                        this.b[i] = true;
                    }
                    File fileB = this.f632a.b(i);
                    try {
                        fileOutputStream = new FileOutputStream(fileB);
                    } catch (FileNotFoundException unused) {
                        a.this.f630a.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(fileB);
                        } catch (FileNotFoundException unused2) {
                            return a.p;
                        }
                    }
                    c0043a = new C0043a(this, fileOutputStream, null);
                } else {
                    throw new IllegalStateException();
                }
            }
            return c0043a;
        }

        public void a() throws IOException {
            a.this.a(this, false);
        }
    }

    private final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f634a;
        private final long[] b;
        private boolean c;
        private c d;
        private long e;

        /* synthetic */ d(a aVar, String str, CallableC0042a callableC0042a) {
            this(str);
        }

        private d(String str) {
            this.f634a = str;
            this.b = new long[a.this.g];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String[] strArr) throws IOException {
            if (strArr.length != a.this.g) {
                a(strArr);
                throw null;
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.b[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    a(strArr);
                    throw null;
                }
            }
        }

        public String a() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        private IOException a(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File a(int i) {
            return new File(a.this.f630a, this.f634a + Operators.DOT_STR + i);
        }

        public File b(int i) {
            return new File(a.this.f630a, this.f634a + Operators.DOT_STR + i + DefaultDiskStorage.FileType.TEMP);
        }
    }

    public final class e implements Closeable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final InputStream[] f635a;

        /* synthetic */ e(a aVar, String str, long j, InputStream[] inputStreamArr, long[] jArr, CallableC0042a callableC0042a) {
            this(aVar, str, j, inputStreamArr, jArr);
        }

        public InputStream a(int i) {
            return this.f635a[i];
        }

        public String b(int i) throws IOException {
            return a.b(a(i));
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f635a) {
                io.dcloud.f.b.c.a(inputStream);
            }
        }

        private e(a aVar, String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f635a = inputStreamArr;
        }
    }

    private a(File file, int i, int i2, long j) {
        this.f630a = file;
        this.e = i;
        this.b = new File(file, "journal");
        this.c = new File(file, "journal.tmp");
        this.d = new File(file, "journal.bkp");
        this.g = i2;
        this.f = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void g() throws IOException {
        Writer writer = this.i;
        if (writer != null) {
            writer.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c), io.dcloud.f.b.c.f638a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.e));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.g));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (d dVar : this.j.values()) {
                if (dVar.d != null) {
                    bufferedWriter.write("DIRTY " + dVar.f634a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + dVar.f634a + dVar.a() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.b.exists()) {
                a(this.b, this.d, true);
            }
            a(this.c, this.b, false);
            this.d.delete();
            this.i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), io.dcloud.f.b.c.f638a));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() throws IOException {
        while (this.h > this.f) {
            d(this.j.entrySet().iterator().next().getKey());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.i == null) {
            return;
        }
        for (d dVar : new ArrayList(this.j.values())) {
            if (dVar.d != null) {
                dVar.d.a();
            }
        }
        h();
        this.i.close();
        this.i = null;
    }

    public synchronized void flush() throws IOException {
        b();
        h();
        this.i.flush();
    }

    private void c(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.j.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        d dVar = this.j.get(strSubstring);
        CallableC0042a callableC0042a = null;
        if (dVar == null) {
            dVar = new d(this, strSubstring, callableC0042a);
            this.j.put(strSubstring, dVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(Operators.SPACE_STR);
            dVar.c = true;
            dVar.d = null;
            dVar.b(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
            dVar.d = new c(this, dVar, callableC0042a);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        int i = this.k;
        return i >= 2000 && i >= this.j.size();
    }

    private void e() throws IOException {
        a(this.c);
        Iterator<d> it = this.j.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i = 0;
            if (next.d == null) {
                while (i < this.g) {
                    this.h += next.b[i];
                    i++;
                }
            } else {
                next.d = null;
                while (i < this.g) {
                    a(next.a(i));
                    a(next.b(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    private void f() throws IOException {
        io.dcloud.f.b.b bVar = new io.dcloud.f.b.b(new FileInputStream(this.b), io.dcloud.f.b.c.f638a);
        try {
            String strB = bVar.b();
            String strB2 = bVar.b();
            String strB3 = bVar.b();
            String strB4 = bVar.b();
            String strB5 = bVar.b();
            if (!"libcore.io.DiskLruCache".equals(strB) || !AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT.equals(strB2) || !Integer.toString(this.e).equals(strB3) || !Integer.toString(this.g).equals(strB4) || !"".equals(strB5)) {
                throw new IOException("unexpected journal header: [" + strB + ", " + strB2 + ", " + strB4 + ", " + strB5 + Operators.ARRAY_END_STR);
            }
            int i = 0;
            while (true) {
                try {
                    c(bVar.b());
                    i++;
                } catch (EOFException unused) {
                    this.k = i - this.j.size();
                    io.dcloud.f.b.c.a(bVar);
                    return;
                }
            }
        } catch (Throwable th) {
            io.dcloud.f.b.c.a(bVar);
            throw th;
        }
    }

    public synchronized e b(String str) throws IOException {
        b();
        e(str);
        d dVar = this.j.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.c) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.g];
        for (int i = 0; i < this.g; i++) {
            try {
                inputStreamArr[i] = new FileInputStream(dVar.a(i));
            } catch (FileNotFoundException unused) {
                for (int i2 = 0; i2 < this.g && inputStreamArr[i2] != null; i2++) {
                    io.dcloud.f.b.c.a(inputStreamArr[i2]);
                }
                return null;
            }
        }
        this.k++;
        this.i.append((CharSequence) ("READ " + str + '\n'));
        if (d()) {
            this.m.submit(this.n);
        }
        return new e(this, str, dVar.e, inputStreamArr, dVar.b, null);
    }

    public synchronized boolean d(String str) throws IOException {
        b();
        e(str);
        d dVar = this.j.get(str);
        if (dVar != null && dVar.d == null) {
            for (int i = 0; i < this.g; i++) {
                File fileA = dVar.a(i);
                if (fileA.exists() && !fileA.delete()) {
                    throw new IOException("failed to delete " + fileA);
                }
                this.h -= dVar.b[i];
                dVar.b[i] = 0;
            }
            this.k++;
            this.i.append((CharSequence) ("REMOVE " + str + '\n'));
            this.j.remove(str);
            if (d()) {
                this.m.submit(this.n);
            }
            return true;
        }
        return false;
    }

    public static a a(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i2 > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    a(file2, file3, false);
                }
            }
            a aVar = new a(file, i, i2, j);
            if (aVar.b.exists()) {
                try {
                    aVar.f();
                    aVar.e();
                    aVar.i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(aVar.b, true), io.dcloud.f.b.c.f638a));
                    return aVar;
                } catch (IOException e2) {
                    System.out.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                    aVar.c();
                }
            }
            file.mkdirs();
            a aVar2 = new a(file, i, i2, j);
            aVar2.g();
            return aVar2;
        }
        throw new IllegalArgumentException("valueCount <= 0");
    }

    private void e(String str) {
        if (o.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + JSUtil.QUOTE);
    }

    public void c() throws IOException {
        close();
        io.dcloud.f.b.c.a(this.f630a);
    }

    private void b() {
        if (this.i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(InputStream inputStream) throws IOException {
        return io.dcloud.f.b.c.a((Reader) new InputStreamReader(inputStream, io.dcloud.f.b.c.b));
    }

    private static void a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void a(File file, File file2, boolean z) throws IOException {
        if (z) {
            a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public c a(String str) throws IOException {
        return a(str, -1L);
    }

    private synchronized c a(String str, long j) throws IOException {
        b();
        e(str);
        d dVar = this.j.get(str);
        CallableC0042a callableC0042a = null;
        if (j != -1 && (dVar == null || dVar.e != j)) {
            return null;
        }
        if (dVar != null) {
            if (dVar.d != null) {
                return null;
            }
        } else {
            dVar = new d(this, str, callableC0042a);
            this.j.put(str, dVar);
        }
        c cVar = new c(this, dVar, callableC0042a);
        dVar.d = cVar;
        this.i.write("DIRTY " + str + '\n');
        this.i.flush();
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(c cVar, boolean z) throws IOException {
        d dVar = cVar.f632a;
        if (dVar.d == cVar) {
            if (z && !dVar.c) {
                for (int i = 0; i < this.g; i++) {
                    if (cVar.b[i]) {
                        if (!dVar.b(i).exists()) {
                            cVar.a();
                            return;
                        }
                    } else {
                        cVar.a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                    }
                }
            }
            for (int i2 = 0; i2 < this.g; i2++) {
                File fileB = dVar.b(i2);
                if (z) {
                    if (fileB.exists()) {
                        File fileA = dVar.a(i2);
                        fileB.renameTo(fileA);
                        long j = dVar.b[i2];
                        long length = fileA.length();
                        dVar.b[i2] = length;
                        this.h = (this.h - j) + length;
                    }
                } else {
                    a(fileB);
                }
            }
            this.k++;
            dVar.d = null;
            if (!(dVar.c | z)) {
                this.j.remove(dVar.f634a);
                this.i.write("REMOVE " + dVar.f634a + '\n');
            } else {
                dVar.c = true;
                this.i.write("CLEAN " + dVar.f634a + dVar.a() + '\n');
                if (z) {
                    long j2 = this.l;
                    this.l = 1 + j2;
                    dVar.e = j2;
                }
            }
            this.i.flush();
            if (this.h > this.f || d()) {
                this.m.submit(this.n);
            }
            return;
        }
        throw new IllegalStateException();
    }
}
