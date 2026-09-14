package com.bun.miitmdid.supplier.msa;

import android.os.AsyncTask;
import com.bun.lib.c;

/* JADX INFO: loaded from: classes.dex */
public class a extends AsyncTask<Void, Void, Boolean> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f41a;
    public com.bun.miitmdid.c.e.a b;

    public a(c cVar, com.bun.miitmdid.c.e.a aVar) {
        this.f41a = cVar;
        this.b = aVar;
    }

    protected native Boolean a(Void... voidArr);

    protected native void a(Boolean bool);

    @Override // android.os.AsyncTask
    protected native /* bridge */ /* synthetic */ Boolean doInBackground(Void[] voidArr);

    @Override // android.os.AsyncTask
    protected native /* bridge */ /* synthetic */ void onPostExecute(Boolean bool);
}
