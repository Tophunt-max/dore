package com.igexin.a;

import android.content.Context;
import android.util.Log;
import com.taobao.weex.el.parse.Operators;
import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Set<String> f59a;
    protected final e b;
    protected final d c;
    protected boolean d;
    protected boolean e;
    protected g f;

    protected h() {
        this(new j(), new a());
    }

    protected h(e eVar, d dVar) {
        this.f59a = new HashSet();
        if (eVar == null) {
            throw new IllegalArgumentException("Cannot pass null library loader");
        }
        if (dVar == null) {
            throw new IllegalArgumentException("Cannot pass null library installer");
        }
        this.b = eVar;
        this.c = dVar;
    }

    private void c(Context context, String str, String str2) {
        if (this.f59a.contains(str) && !this.d) {
            a("%s already loaded previously!", str);
            return;
        }
        try {
            this.b.a(str);
            this.f59a.add(str);
            a("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e) {
            a("Loading the library normally failed: %s", Log.getStackTraceString(e));
            a("%s (%s) was not loaded normally, re-linking...", str, str2);
            File fileA = a(context, str, str2);
            if (!fileA.exists() || this.d) {
                if (this.d) {
                    a("Forcing a re-link of %s (%s)...", str, str2);
                }
                b(context, str, str2);
                this.c.a(context, this.b.a(), this.b.c(str), fileA, this);
            }
            try {
                if (this.e) {
                    Iterator<String> it = new com.igexin.a.a.j(fileA).b().iterator();
                    while (it.hasNext()) {
                        a(context, this.b.d(it.next()));
                    }
                }
            } catch (IOException unused) {
            }
            this.b.b(fileA.getAbsolutePath());
            this.f59a.add(str);
            a("%s (%s) was re-linked!", str, str2);
        }
    }

    public h a() {
        this.d = true;
        return this;
    }

    public h a(g gVar) {
        this.f = gVar;
        return this;
    }

    protected File a(Context context) {
        return context.getDir("lib", 0);
    }

    protected File a(Context context, String str, String str2) {
        String strC = this.b.c(str);
        if (k.a(str2)) {
            return new File(a(context), strC);
        }
        return new File(a(context), strC + Operators.DOT_STR + str2);
    }

    public void a(Context context, String str) {
        a(context, str, null, null);
    }

    public void a(Context context, String str, String str2, f fVar) {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        }
        if (k.a(str)) {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
        a("Beginning load of %s...", str);
        if (fVar == null) {
            c(context, str, str2);
            return;
        }
        try {
            c(context, str, str2);
            fVar.a();
        } catch (UnsatisfiedLinkError e) {
            fVar.a(e);
        }
    }

    public void a(String str) {
        g gVar = this.f;
        if (gVar != null) {
            gVar.a(str);
        }
    }

    public void a(String str, Object... objArr) {
        a(String.format(Locale.getDefault(), str, objArr));
    }

    public h b() {
        this.e = true;
        return this;
    }

    protected void b(Context context, String str, String str2) {
        File fileA = a(context);
        File fileA2 = a(context, str, str2);
        File[] fileArrListFiles = fileA.listFiles(new i(this, this.b.c(str)));
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (this.d || !file.getAbsolutePath().equals(fileA2.getAbsolutePath())) {
                file.delete();
            }
        }
    }
}
