package io.dcloud.f.a.c.c;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import io.dcloud.ads.base.entry.AdData;
import io.dcloud.base.R;
import io.dcloud.f.a.b.a;
import io.dcloud.f.a.c.b.f;

/* JADX INFO: loaded from: classes2.dex */
public class b extends RelativeLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Drawable f626a;
    private ViewGroup b;
    private View c;
    private ImageView d;
    private a.c e;
    private AdData f;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.e != null) {
                b.this.e.onAdShowEnd();
            }
        }
    }

    /* JADX INFO: renamed from: io.dcloud.f.a.c.c.b$b, reason: collision with other inner class name */
    class RunnableC0041b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f628a;

        RunnableC0041b(ViewGroup viewGroup) {
            this.f628a = viewGroup;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!io.dcloud.f.a.d.a.a(this.f628a)) {
                if (b.this.e != null) {
                    b.this.e.onAdShowError(60010, "广告容器不可见");
                    return;
                }
                return;
            }
            b bVar = b.this;
            if (bVar.f626a == null) {
                if (bVar.e != null) {
                    b.this.e.onAdShowError(60004, "图片资源加载失败");
                    return;
                }
                return;
            }
            this.f628a.removeAllViews();
            this.f628a.getGlobalVisibleRect(new Rect());
            this.f628a.getRootView().getGlobalVisibleRect(new Rect());
            this.f628a.addView(b.this, new ViewGroup.LayoutParams(-1, -1));
            b.this.f.a(new RectF(this.f628a.getX(), this.f628a.getY(), 0.0f, 0.0f));
            b.this.d.setImageDrawable(b.this.f626a);
            if (b.this.e != null) {
                b.this.e.onAdShow();
            }
            b.this.f.a();
            f.a().b(b.this.getContext(), b.this.f.j());
        }
    }

    public b(Context context, a.c cVar, AdData adData) {
        super(context);
        this.e = cVar;
        this.f = adData;
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(getContext()).inflate(R.layout.dcloud_ad_splash_container, (ViewGroup) null);
        this.b = viewGroup;
        this.c = viewGroup.findViewById(R.id.ad_dcloud_main_skip);
        this.d = (ImageView) this.b.findViewById(R.id.ad_dcloud_main_img);
        this.d.setOnClickListener(this);
        this.c.setOnClickListener(this);
        addView(this.b, -1);
        this.f626a = new io.dcloud.f.a.c.c.a(adData.g() == null ? BitmapFactory.decodeFile(adData.f()) : BitmapFactory.decodeByteArray(adData.g(), 0, adData.g().length), getContext());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f.a(motionEvent);
        } else if (motionEvent.getAction() == 1) {
            this.f.b(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.ad_dcloud_main_skip) {
            a.c cVar = this.e;
            if (cVar != null) {
                cVar.onSkippedAd();
                return;
            }
            return;
        }
        if (view.getId() == R.id.ad_dcloud_main_img) {
            a.c cVar2 = this.e;
            if (cVar2 != null) {
                cVar2.onAdClicked();
            }
            this.f.a(getContext());
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
    }

    public void a(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        viewGroup.postDelayed(new a(), 3000L);
        viewGroup.postDelayed(new RunnableC0041b(viewGroup), 50L);
    }
}
