package com.igexin.push.b;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.igexin.b.a.d.e;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a extends e {
    private static final String e = "com.igexin.push.b.a";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected SQLiteDatabase f105a;
    protected Cursor b;
    List<com.igexin.push.core.c.a> c;
    boolean d;

    public a() {
        super(1);
        this.c = new LinkedList();
    }

    public void a(com.igexin.push.core.c.a aVar) {
        this.c.add(aVar);
    }

    @Override // com.igexin.b.a.d.a.e
    public final int b() {
        return -2147483639;
    }

    @Override // com.igexin.b.a.d.e
    public void b_() {
        super.b_();
        SQLiteDatabase writableDatabase = com.igexin.push.core.e.a().i().getWritableDatabase();
        this.f105a = writableDatabase;
        writableDatabase.setVersion(3);
        Iterator<com.igexin.push.core.c.a> it = this.c.iterator();
        while (it.hasNext()) {
            it.next().a(this.f105a);
        }
        for (com.igexin.push.core.c.a aVar : this.c) {
            if (this.d) {
                aVar.c(this.f105a);
            } else {
                aVar.b(this.f105a);
            }
        }
        com.igexin.b.a.b.c.b().a(new c(-980948));
        com.igexin.b.a.b.c.b().c();
    }

    @Override // com.igexin.b.a.d.e
    public void c() {
        super.c();
        Cursor cursor = this.b;
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.igexin.b.a.d.e
    public void d() {
        super.d();
        this.n = true;
        this.I = true;
    }

    @Override // com.igexin.b.a.d.e
    protected void e() {
    }
}
