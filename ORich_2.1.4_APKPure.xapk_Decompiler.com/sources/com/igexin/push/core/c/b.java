package com.igexin.push.core.c;

import android.database.sqlite.SQLiteDatabase;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b implements a {
    private static b b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, byte[]> f196a = new HashMap();

    private b() {
    }

    public static b a() {
        if (b == null) {
            b = new b();
        }
        return b;
    }

    @Override // com.igexin.push.core.c.a
    public void a(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // com.igexin.push.core.c.a
    public void b(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // com.igexin.push.core.c.a
    public void c(SQLiteDatabase sQLiteDatabase) {
    }
}
