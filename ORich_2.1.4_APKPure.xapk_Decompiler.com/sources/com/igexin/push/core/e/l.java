package com.igexin.push.core.e;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import io.dcloud.common.constant.AbsoluteConst;

/* JADX INFO: loaded from: classes.dex */
public class l extends g {
    public l() {
        super("com.meizu.flyme.openidsdk", "");
    }

    @Override // com.igexin.push.core.e.g, com.igexin.push.core.e.c
    public boolean a(Context context) {
        if (super.a(context)) {
            f233a = true;
        } else {
            try {
                Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{AbsoluteConst.PULL_REFRESH_SUPPORT}, null);
                if (cursorQuery == null) {
                    return false;
                }
                cursorQuery.moveToFirst();
                int columnIndex = cursorQuery.getColumnIndex("value");
                if (columnIndex >= 0) {
                    String string = cursorQuery.getString(columnIndex);
                    if (TextUtils.isEmpty(string)) {
                        return false;
                    }
                    f233a = "0".equals(string);
                } else {
                    f233a = false;
                }
            } catch (Throwable unused) {
                f233a = false;
                return false;
            }
        }
        this.b = true;
        return f233a;
    }

    @Override // com.igexin.push.core.e.g, com.igexin.push.core.e.c
    public String b(Context context) {
        a(new String[]{"oaid"});
        return super.b(context);
    }
}
