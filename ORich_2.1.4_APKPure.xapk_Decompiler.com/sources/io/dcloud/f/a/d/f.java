package io.dcloud.f.a.d;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class f {
    private static f b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ThreadPoolExecutor f629a = new ThreadPoolExecutor(3, 6, 1, TimeUnit.SECONDS, new LinkedBlockingQueue());

    private f() {
    }

    public static f a() {
        if (b == null) {
            synchronized (f.class) {
                if (b == null) {
                    b = new f();
                }
            }
        }
        return b;
    }

    public void a(Runnable runnable) {
        this.f629a.execute(runnable);
    }
}
