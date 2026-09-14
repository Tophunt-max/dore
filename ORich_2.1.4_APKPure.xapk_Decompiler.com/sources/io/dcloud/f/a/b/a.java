package io.dcloud.f.a.b;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import io.dcloud.ads.base.entry.AdData;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected c f616a;
    private Context b;
    protected String c;
    protected AdData d;

    /* JADX INFO: renamed from: io.dcloud.f.a.b.a$a, reason: collision with other inner class name */
    class RunnableC0038a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f617a;
        final /* synthetic */ String b;

        RunnableC0038a(int i, String str) {
            this.f617a = i;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f616a.onError(this.f617a, this.b);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f616a.onSplashAdLoad();
        }
    }

    public interface c {
        void onAdClicked();

        void onAdShow();

        void onAdShowEnd();

        void onAdShowError(int i, String str);

        void onError(int i, String str);

        void onSkippedAd();

        void onSplashAdLoad();
    }

    public a(c cVar, Context context, String str) {
        this.f616a = cVar;
        this.b = context;
        this.c = str;
    }

    public void a(ViewGroup viewGroup) {
        if (viewGroup == null) {
            a(60010, "广告容器不可见");
        } else if (this.d == null) {
            a(60005, "数据解析失败");
        } else {
            new io.dcloud.f.a.c.c.b(viewGroup.getContext(), this.f616a, this.d).a(viewGroup);
        }
    }

    public Context b() {
        return this.b;
    }

    protected void a(int i, String str) {
        if (this.f616a != null) {
            new Handler(Looper.getMainLooper()).post(new RunnableC0038a(i, str));
        }
    }

    protected void a() {
        if (this.f616a != null) {
            new Handler(Looper.getMainLooper()).post(new b());
        }
    }
}
