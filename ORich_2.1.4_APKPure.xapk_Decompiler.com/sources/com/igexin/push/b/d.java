package com.igexin.push.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.igexin.b.a.d.e;
import com.igexin.push.config.j;

/* JADX INFO: loaded from: classes.dex */
public abstract class d extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f108a = j.f135a;
    protected SQLiteDatabase d;
    protected Cursor e;
    protected ContentValues f;
    public c g;

    public d() {
        super(1);
    }

    public d(ContentValues contentValues) {
        super(1);
        this.f = contentValues;
    }

    public abstract void a();

    @Override // com.igexin.b.a.d.a.e
    public final int b() {
        return -2147483640;
    }

    @Override // com.igexin.b.a.d.e
    public void b_() {
        super.b_();
        this.d = com.igexin.push.core.e.a().i().getWritableDatabase();
        a();
        if (this.g != null) {
            com.igexin.b.a.b.c.b().a(this.g);
            com.igexin.b.a.b.c.b().c();
        }
    }

    @Override // com.igexin.b.a.d.e
    public void c() {
        super.c();
        Cursor cursor = this.e;
        if (cursor == null || cursor.isClosed()) {
            return;
        }
        try {
            this.e.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.igexin.b.a.d.e
    public void d() {
        this.n = true;
        this.I = true;
    }

    @Override // com.igexin.b.a.d.e
    protected void e() {
    }
}
