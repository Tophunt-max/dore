package io.dcloud.ads.base.service;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.app.JobIntentService;
import androidx.core.content.FileProvider;
import dc.squareup.okhttp3.Call;
import dc.squareup.okhttp3.Callback;
import dc.squareup.okhttp3.OkHttpClient;
import dc.squareup.okhttp3.Request;
import dc.squareup.okhttp3.Response;
import dc.squareup.okhttp3.ResponseBody;
import io.dcloud.ads.base.entry.AdData;
import io.dcloud.f.a.d.f;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DownloadService extends JobIntentService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private OkHttpClient f512a = new OkHttpClient.Builder().build();
    private List<b> b = new ArrayList();
    private final Object c = new Object();

    static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f513a;
        final /* synthetic */ AdData b;
        final /* synthetic */ int c;

        a(Context context, AdData adData, int i) {
            this.f513a = context;
            this.b = adData;
            this.c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            io.dcloud.f.a.c.b.b.a(this.f513a, this.b.e(), this.b.i(), "", this.c, this.b.c(), this.b.b(), this.b.d(), null);
        }
    }

    private class b implements Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private AdData f514a;
        private boolean b = false;

        public b(AdData adData) {
            this.f514a = adData;
        }

        public String a() {
            AdData adData = this.f514a;
            return adData != null ? adData.j() : "";
        }

        public Request b() {
            return new Request.Builder().url(this.f514a.k()).build();
        }

        public boolean c() {
            return this.b;
        }

        @Override // dc.squareup.okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            this.b = true;
            DownloadService.a(DownloadService.this.getApplicationContext(), this.f514a, 32);
        }

        @Override // dc.squareup.okhttp3.Callback
        public void onResponse(Call call, Response response) throws IOException {
            this.b = true;
            String str = DownloadService.this.getApplication().getExternalCacheDir() + "/dcloud_ad/apk/" + System.currentTimeMillis() + ".apk";
            ResponseBody responseBodyBody = response.body();
            if (responseBodyBody != null) {
                io.dcloud.f.a.d.c.a(responseBodyBody.bytes(), 0, str);
                DownloadService.this.a(str, this.f514a);
            }
            DownloadService.a(DownloadService.this.getApplicationContext(), this.f514a, 30);
        }
    }

    private class c extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private AdData f515a;
        private Application b;
        private long c = System.currentTimeMillis();

        public c(AdData adData, Application application) {
            this.f515a = adData;
            this.b = application;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (TextUtils.equals(intent.getAction(), "android.intent.action.PACKAGE_ADDED")) {
                if (System.currentTimeMillis() - this.c < 60000) {
                    DownloadService.a(DownloadService.this.getApplicationContext(), this.f515a, 31);
                }
                this.b.unregisterReceiver(this);
            }
        }
    }

    @Override // androidx.core.app.JobIntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // androidx.core.app.JobIntentService
    protected void onHandleWork(Intent intent) {
        synchronized (this.c) {
            AdData adData = (AdData) intent.getParcelableExtra("data");
            for (b bVar : this.b) {
                if (bVar.a().equals(adData.j()) && !bVar.c()) {
                    return;
                }
            }
            b bVar2 = new b(adData);
            this.b.add(bVar2);
            a(getApplicationContext(), adData, 29);
            this.f512a.newCall(bVar2.b()).enqueue(bVar2);
            a();
        }
    }

    private void a() {
        File[] fileArrListFiles;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() - 604800000;
            File file = new File(getApplication().getExternalCacheDir() + "/dcloud_ad/apk/");
            if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length <= 0) {
                return;
            }
            for (File file2 : fileArrListFiles) {
                if (file2.lastModified() < jCurrentTimeMillis) {
                    file2.delete();
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, AdData adData) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        getApplication().registerReceiver(new c(adData, getApplication()), intentFilter);
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setAction("android.intent.action.VIEW");
        if (Build.VERSION.SDK_INT >= 24) {
            Uri uriForFile = FileProvider.getUriForFile(getApplication(), getApplication().getPackageName() + ".dc.fileprovider", new File(str));
            intent.addFlags(1);
            intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
        } else {
            intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
        }
        getApplication().startActivity(intent);
    }

    public static void a(Context context, AdData adData, int i) {
        f.a().a(new a(context, adData, i));
    }
}
