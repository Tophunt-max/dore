package io.dcloud.feature.ui.nativeui;

import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import io.dcloud.common.DHInterface.ICallBack;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class b extends Toast implements ICallBack {
    private static ArrayList<b> e = new ArrayList<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    View f735a;
    TextView b;
    WindowManager.LayoutParams c;
    WindowManager d;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a();
        }
    }

    public b(Activity activity, String str) {
        super(activity);
        this.f735a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.d = activity.getWindowManager();
        TextView textView = new TextView(activity);
        this.b = textView;
        this.f735a = textView;
        textView.setPadding(20, 20, 20, 20);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2, 8, -2);
        this.c = layoutParams;
        layoutParams.gravity = 17;
    }

    @Override // io.dcloud.common.DHInterface.ICallBack
    public Object onCallBack(int i, Object obj) {
        if (Build.VERSION.SDK_INT > 19) {
            return null;
        }
        a();
        return null;
    }

    @Override // android.widget.Toast
    public void setDuration(int i) {
        if (i == 1) {
            i = 3500;
        } else if (i == 0) {
            i = 2000;
        }
        super.setDuration(i);
    }

    @Override // android.widget.Toast
    public void setGravity(int i, int i2, int i3) {
        WindowManager.LayoutParams layoutParams = this.c;
        layoutParams.gravity = i;
        layoutParams.x = i2;
        layoutParams.y = i3;
        super.setGravity(i, i2, i3);
    }

    @Override // android.widget.Toast
    public void setText(CharSequence charSequence) {
        this.b.setText(charSequence);
        super.setText(charSequence);
    }

    @Override // android.widget.Toast
    public synchronized void show() {
        e.add(this);
        this.d.addView(this.f735a, this.c);
        this.f735a.postDelayed(new a(), getDuration());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a() {
        View view = this.f735a;
        if (view != null) {
            try {
                this.d.removeViewImmediate(view);
            } catch (Exception unused) {
            }
            e.remove(this);
            this.f735a = null;
        }
    }

    public void a(View view, TextView textView) {
        this.f735a = view;
        this.b = textView;
    }

    public static synchronized void a(String str) {
        if (!e.isEmpty()) {
            for (int size = e.size() - 1; size >= 0; size--) {
                e.get(size).a();
            }
            e.clear();
        }
    }
}
