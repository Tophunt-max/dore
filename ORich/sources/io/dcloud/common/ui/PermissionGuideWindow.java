package io.dcloud.common.ui;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import io.dcloud.PdrR;
import io.dcloud.common.DHInterface.IReflectAble;
import io.dcloud.common.adapter.util.MobilePhoneModel;
import io.dcloud.common.ui.GifImageView;
import io.dcloud.common.util.DensityUtils;
import io.dcloud.common.util.PdrUtil;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class PermissionGuideWindow implements IReflectAble {
    private static WeakReference<PermissionGuideWindow> f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f594a;
    private final Handler b = new Handler(Looper.getMainLooper());
    private WindowManager c;
    private WindowManager.LayoutParams d;
    private ViewGroup e;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PermissionGuideWindow.this.dismissWindow();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PermissionGuideWindow.this.dismissWindow();
        }
    }

    class c implements GifImageView.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f597a;

        c(PermissionGuideWindow permissionGuideWindow, ImageView imageView) {
            this.f597a = imageView;
        }

        @Override // io.dcloud.common.ui.GifImageView.a
        public void a() {
        }

        @Override // io.dcloud.common.ui.GifImageView.a
        public void a(float f) {
        }

        @Override // io.dcloud.common.ui.GifImageView.a
        public void a(boolean z) {
        }

        @Override // io.dcloud.common.ui.GifImageView.a
        public void b() {
        }

        @Override // io.dcloud.common.ui.GifImageView.a
        public void c() {
            ImageView imageView = this.f597a;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ GifImageView f598a;
        final /* synthetic */ ImageView b;

        d(PermissionGuideWindow permissionGuideWindow, GifImageView gifImageView, ImageView imageView) {
            this.f598a = gifImageView;
            this.b = imageView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GifImageView gifImageView = this.f598a;
            if (gifImageView != null) {
                gifImageView.pause();
            }
            ImageView imageView = this.b;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ GifImageView f599a;
        final /* synthetic */ ImageView b;

        e(PermissionGuideWindow permissionGuideWindow, GifImageView gifImageView, ImageView imageView) {
            this.f599a = gifImageView;
            this.b = imageView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GifImageView gifImageView = this.f599a;
            if (gifImageView != null) {
                gifImageView.play();
            }
            ImageView imageView = this.b;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
        }
    }

    public PermissionGuideWindow(Context context) {
        this.f594a = context.getApplicationContext();
    }

    public static PermissionGuideWindow getInstance(Context context) {
        WeakReference<PermissionGuideWindow> weakReference = f;
        if (weakReference == null || weakReference.get() == null) {
            f = new WeakReference<>(new PermissionGuideWindow(context));
        }
        return f.get();
    }

    public void dismissWindow() {
        try {
            WindowManager windowManager = this.c;
            if (windowManager != null) {
                windowManager.removeView(this.e);
                this.e.removeAllViews();
                this.e = null;
                this.c = null;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void dismissWindowDelayed(long j) {
        this.b.postDelayed(new a(), j);
    }

    public void showWindow(String str, int i) {
        if (i == 0) {
            return;
        }
        try {
            if (this.c == null) {
                this.c = (WindowManager) this.f594a.getSystemService("window");
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                this.d = layoutParams;
                layoutParams.gravity = 21;
                layoutParams.type = 2005;
                if (Build.BRAND.equalsIgnoreCase(MobilePhoneModel.XIAOMI) && Build.VERSION.SDK_INT >= 25) {
                    this.d.type = 2002;
                }
                WindowManager.LayoutParams layoutParams2 = this.d;
                layoutParams2.format = -3;
                layoutParams2.flags = 40;
                layoutParams2.width = DensityUtils.dip2px(this.f594a, 220.0f);
                this.d.height = -2;
            }
            if (this.e == null) {
                this.e = (ViewGroup) LayoutInflater.from(this.f594a).inflate(PdrR.DCLOUD_SHORTCUT_PERMISSION_GUIDE_LAYOUT, (ViewGroup) null);
            }
            if (this.e.getParent() != null) {
                this.c.removeViewImmediate(this.e);
            }
            this.c.addView(this.e, this.d);
            this.e.findViewById(PdrR.DCLOUD_GUIDE_CLOSE).setOnClickListener(new b());
            ImageView imageView = (ImageView) this.e.findViewById(PdrR.DCLOUD_GUIDE_PLAY);
            GifImageView gifImageView = (GifImageView) this.e.findViewById(PdrR.DCLOUD_GUIDE_GIFVIEW);
            RelativeLayout relativeLayout = (RelativeLayout) this.e.findViewById(PdrR.DCLOUD_GUIDE_PLAY_LAYOUT);
            TextView textView = (TextView) this.e.findViewById(PdrR.DCLOUD_GUIDE_TIP);
            if (!PdrUtil.isEmpty(str)) {
                textView.setText(str);
            }
            if (1 == i) {
                relativeLayout.setVisibility(8);
                gifImageView.setVisibility(8);
            } else {
                gifImageView.setGifResource(i);
            }
            gifImageView.setOnPlayListener(new c(this, imageView));
            gifImageView.setOnClickListener(new d(this, gifImageView, imageView));
            imageView.setOnClickListener(new e(this, gifImageView, imageView));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
