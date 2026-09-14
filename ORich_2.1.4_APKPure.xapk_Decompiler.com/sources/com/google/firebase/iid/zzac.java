package com.google.firebase.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class zzac implements ServiceConnection {
    int state;
    final Messenger zzce;
    zzaj zzcf;
    final Queue<zzal<?>> zzcg;
    final SparseArray<zzal<?>> zzch;
    final /* synthetic */ zzab zzci;

    private zzac(zzab zzabVar) {
        this.zzci = zzabVar;
        this.state = 0;
        this.zzce = new Messenger(new com.google.android.gms.internal.firebase_messaging.zze(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.firebase.iid.zzaf
            private final zzac zzcj;

            {
                this.zzcj = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.zzcj.zza(message);
            }
        }));
        this.zzcg = new ArrayDeque();
        this.zzch = new SparseArray<>();
    }

    final synchronized boolean zzb(zzal zzalVar) {
        int i = this.state;
        if (i == 0) {
            this.zzcg.add(zzalVar);
            Preconditions.checkState(this.state == 0);
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Starting bind to GmsCore");
            }
            this.state = 1;
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            if (!ConnectionTracker.getInstance().bindService(this.zzci.zzag, intent, this, 1)) {
                zza(0, "Unable to bind to service");
            } else {
                this.zzci.zzcb.schedule(new Runnable(this) { // from class: com.google.firebase.iid.zzae
                    private final zzac zzcj;

                    {
                        this.zzcj = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzcj.zzaa();
                    }
                }, 30L, TimeUnit.SECONDS);
            }
            return true;
        }
        if (i == 1) {
            this.zzcg.add(zzalVar);
            return true;
        }
        if (i == 2) {
            this.zzcg.add(zzalVar);
            zzy();
            return true;
        }
        if (i != 3 && i != 4) {
            int i2 = this.state;
            StringBuilder sb = new StringBuilder(26);
            sb.append("Unknown state: ");
            sb.append(i2);
            throw new IllegalStateException(sb.toString());
        }
        return false;
    }

    final boolean zza(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
            Log.d("MessengerIpcClient", sb.toString());
        }
        synchronized (this) {
            zzal<?> zzalVar = this.zzch.get(i);
            if (zzalVar == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.zzch.remove(i);
            zzz();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                zzalVar.zza(new zzak(4, "Not supported by GmsCore"));
            } else {
                zzalVar.zzb(data);
            }
            return true;
        }
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        if (iBinder == null) {
            zza(0, "Null service connection");
            return;
        }
        try {
            this.zzcf = new zzaj(iBinder);
            this.state = 2;
            zzy();
        } catch (RemoteException e) {
            zza(0, e.getMessage());
        }
    }

    private final void zzy() {
        this.zzci.zzcb.execute(new Runnable(this) { // from class: com.google.firebase.iid.zzah
            private final zzac zzcj;

            {
                this.zzcj = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzal<?> zzalVarPoll;
                zzac zzacVar = this.zzcj;
                while (true) {
                    synchronized (zzacVar) {
                        if (zzacVar.state != 2) {
                            return;
                        }
                        if (zzacVar.zzcg.isEmpty()) {
                            zzacVar.zzz();
                            return;
                        } else {
                            zzalVarPoll = zzacVar.zzcg.poll();
                            zzacVar.zzch.put(zzalVarPoll.zzcm, zzalVarPoll);
                            zzacVar.zzci.zzcb.schedule(new Runnable(zzacVar, zzalVarPoll) { // from class: com.google.firebase.iid.zzag
                                private final zzac zzcj;
                                private final zzal zzck;

                                {
                                    this.zzcj = zzacVar;
                                    this.zzck = zzalVarPoll;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.zzcj.zza(this.zzck.zzcm);
                                }
                            }, 30L, TimeUnit.SECONDS);
                        }
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        String strValueOf = String.valueOf(zzalVarPoll);
                        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 8);
                        sb.append("Sending ");
                        sb.append(strValueOf);
                        Log.d("MessengerIpcClient", sb.toString());
                    }
                    Context context = zzacVar.zzci.zzag;
                    Messenger messenger = zzacVar.zzce;
                    Message messageObtain = Message.obtain();
                    messageObtain.what = zzalVarPoll.what;
                    messageObtain.arg1 = zzalVarPoll.zzcm;
                    messageObtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", zzalVarPoll.zzab());
                    bundle.putString("pkg", context.getPackageName());
                    bundle.putBundle("data", zzalVarPoll.zzco);
                    messageObtain.setData(bundle);
                    try {
                        zzacVar.zzcf.send(messageObtain);
                    } catch (RemoteException e) {
                        zzacVar.zza(2, e.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        zza(2, "Service disconnected");
    }

    final synchronized void zza(int i, String str) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(str);
            Log.d("MessengerIpcClient", strValueOf.length() != 0 ? "Disconnected: ".concat(strValueOf) : new String("Disconnected: "));
        }
        int i2 = this.state;
        if (i2 == 0) {
            throw new IllegalStateException();
        }
        if (i2 != 1 && i2 != 2) {
            if (i2 == 3) {
                this.state = 4;
                return;
            } else {
                if (i2 == 4) {
                    return;
                }
                int i3 = this.state;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i3);
                throw new IllegalStateException(sb.toString());
            }
        }
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Unbinding service");
        }
        this.state = 4;
        ConnectionTracker.getInstance().unbindService(this.zzci.zzag, this);
        zzak zzakVar = new zzak(i, str);
        Iterator<zzal<?>> it = this.zzcg.iterator();
        while (it.hasNext()) {
            it.next().zza(zzakVar);
        }
        this.zzcg.clear();
        for (int i4 = 0; i4 < this.zzch.size(); i4++) {
            this.zzch.valueAt(i4).zza(zzakVar);
        }
        this.zzch.clear();
    }

    final synchronized void zzz() {
        if (this.state == 2 && this.zzcg.isEmpty() && this.zzch.size() == 0) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
            }
            this.state = 3;
            ConnectionTracker.getInstance().unbindService(this.zzci.zzag, this);
        }
    }

    final synchronized void zzaa() {
        if (this.state == 1) {
            zza(1, "Timed out while binding");
        }
    }

    final synchronized void zza(int i) {
        zzal<?> zzalVar = this.zzch.get(i);
        if (zzalVar != null) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Timing out request: ");
            sb.append(i);
            Log.w("MessengerIpcClient", sb.toString());
            this.zzch.remove(i);
            zzalVar.zza(new zzak(3, "Timed out waiting for response"));
            zzz();
        }
    }
}
