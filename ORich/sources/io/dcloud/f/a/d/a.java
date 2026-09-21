package io.dcloud.f.a.d;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static boolean a(View view) {
        return view != null && view.getVisibility() == 0 && view.isShown() && view.getWindowVisibility() == 0;
    }
}
