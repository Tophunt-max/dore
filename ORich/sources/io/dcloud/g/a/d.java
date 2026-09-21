package io.dcloud.g.a;

import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import io.dcloud.common.DHInterface.AbsMgr;
import io.dcloud.common.DHInterface.ICallBack;
import io.dcloud.common.DHInterface.IMgr;
import io.dcloud.common.adapter.io.DHFile;
import io.dcloud.common.adapter.util.MessageHandler;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.common.util.ThreadPool;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    AbsMgr f755a;
    ConcurrentHashMap<String, c> b = new ConcurrentHashMap<>();
    ArrayList<c> c = new ArrayList<>();

    class a implements MessageHandler.IMessages {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f756a;

        /* JADX INFO: renamed from: io.dcloud.g.a.d$a$a, reason: collision with other inner class name */
        class C0061a implements ICallBack {
            C0061a() {
            }

            @Override // io.dcloud.common.DHInterface.ICallBack
            public Object onCallBack(int i, Object obj) {
                if (i == -1) {
                    Log.i("console", "nativeApp pull fail");
                } else if (i == 1) {
                    Log.i("console", "nativeApp pull success");
                }
                d.this.b.clear();
                d.this.a();
                return null;
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f758a;

            b(String str) {
                this.f758a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (DHFile.delete(this.f758a)) {
                    Log.i("console", "rm file success");
                } else {
                    Log.i("console", "rm file fail");
                }
                d.this.b.clear();
                d.this.a();
            }
        }

        a(c cVar) {
            this.f756a = cVar;
        }

        @Override // io.dcloud.common.adapter.util.MessageHandler.IMessages
        public void execute(Object obj) {
            String str = this.f756a.f760a;
            str.hashCode();
            str.hashCode();
            switch (str) {
                case "delete":
                    String str2 = this.f756a.b;
                    if (!new File(str2).exists()) {
                        Log.i("console", "rm file fail");
                        d.this.b.clear();
                        d.this.a();
                        break;
                    } else {
                        ThreadPool.self().addSingleThreadTask(new b(str2));
                        break;
                    }
                    break;
                case "script":
                    String str3 = this.f756a.b;
                    if ("restart".equals(str3)) {
                        d.this.f755a.processEvent(IMgr.MgrType.AppMgr, 3, "snc:CID");
                    } else if (AbsoluteConst.JSON_KEY_DEBUG_REFRESH.equals(str3)) {
                        d.this.f755a.processEvent(IMgr.MgrType.AppMgr, 27, null);
                    } else if ("restartAndRun".equals(str3)) {
                        d.this.f755a.getContext().startActivity(Intent.makeRestartActivityTask(d.this.f755a.getContext().getPackageManager().getLaunchIntentForPackage(d.this.f755a.getContext().getPackageName()).getComponent()));
                        Runtime.getRuntime().exit(0);
                    }
                    d.this.b.clear();
                    d.this.a();
                    break;
                case "update":
                    String str4 = this.f756a.b;
                    if ("all".equals(str4)) {
                        d.this.f755a.processEvent(IMgr.MgrType.WindowMgr, 13, null);
                    } else if ("current".equals(str4)) {
                        d.this.f755a.processEvent(IMgr.MgrType.WindowMgr, 12, null);
                    } else {
                        d.this.f755a.processEvent(IMgr.MgrType.WindowMgr, 14, str4);
                    }
                    d.this.b.clear();
                    d.this.a();
                    break;
                case "pull":
                    String str5 = this.f756a.b;
                    if (!TextUtils.isEmpty(str5)) {
                        d.this.a(str5, new C0061a());
                        break;
                    }
                    break;
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f759a;
        final /* synthetic */ String b;
        final /* synthetic */ File c;
        final /* synthetic */ ICallBack d;

        b(d dVar, String str, String str2, File file, ICallBack iCallBack) {
            this.f759a = str;
            this.b = str2;
            this.c = file;
            this.d = iCallBack;
        }

        @Override // java.lang.Runnable
        public void run() {
            int iCopyFile = DHFile.copyFile(this.f759a, this.b);
            DHFile.delete(this.c.getParent());
            if (iCopyFile == 1) {
                ICallBack iCallBack = this.d;
                if (iCallBack != null) {
                    iCallBack.onCallBack(1, null);
                    return;
                }
                return;
            }
            ICallBack iCallBack2 = this.d;
            if (iCallBack2 != null) {
                iCallBack2.onCallBack(-1, null);
            }
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f760a;
        String b;

        c(d dVar) {
        }
    }

    d(AbsMgr absMgr) {
        this.f755a = null;
        this.f755a = absMgr;
    }

    private ArrayList<c> b(String str) {
        ArrayList<c> arrayList = new ArrayList<>(1);
        if (str.startsWith(AbsoluteConst.SOCKET_NATIVE_COMMAND)) {
            str = str.substring(4);
        }
        String strTrim = str.trim();
        int length = strTrim.length();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            char cCharAt = strTrim.charAt(i2);
            i2++;
            if (i2 == length || ((b(cCharAt) && arrayList2.size() % 2 == 0) || a(cCharAt))) {
                String strTrim2 = strTrim.substring(i3, i2).trim();
                if (!"".equals(strTrim2)) {
                    arrayList2.add(strTrim2);
                    i3 = i2;
                }
            }
        }
        int size = arrayList2.size();
        while (i < size) {
            c cVar = new c(this);
            cVar.f760a = (String) arrayList2.get(i);
            cVar.b = (String) arrayList2.get(i + 1);
            i += 2;
            arrayList.add(cVar);
        }
        return arrayList;
    }

    synchronized void a(String str) {
        ArrayList<c> arrayListB = b(str);
        if (arrayListB != null && !arrayListB.isEmpty()) {
            this.c.addAll(arrayListB);
        }
        a();
    }

    boolean a(char c2) {
        return c2 == '\r' || c2 == '\n';
    }

    boolean b(char c2) {
        return c2 == '\t' || c2 == 11 || c2 == '\f' || c2 == ' ' || c2 == 160 || c2 == 12288;
    }

    public synchronized void a() {
        ArrayList<c> arrayList;
        c cVarRemove;
        if (this.b.isEmpty() && (arrayList = this.c) != null && !arrayList.isEmpty() && (cVarRemove = this.c.remove(0)) != null) {
            this.b.put("runing", cVarRemove);
            a(cVarRemove);
        }
    }

    public void a(c cVar) {
        MessageHandler.sendMessage(new a(cVar), null);
    }

    public synchronized void a(String str, ICallBack iCallBack) {
        JSONObject jSONObject;
        if (!PdrUtil.isEmpty(str)) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e) {
                e.printStackTrace();
                jSONObject = null;
            }
            if (jSONObject == null) {
                Log.i("console", "nativeApp pull fail");
                if (iCallBack != null) {
                    iCallBack.onCallBack(-1, null);
                }
                return;
            }
            String strOptString = jSONObject.optString("appid");
            String strOptString2 = jSONObject.optString("filePath");
            if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                String str2 = BaseInfo.sBaseFsAppsPath + strOptString + "/www";
                File file = new File(strOptString2);
                if (file.exists()) {
                    ThreadPool.self().addSingleThreadTask(new b(this, strOptString2, str2, file, iCallBack));
                } else {
                    Log.i("console", "nativeApp pull fail");
                    if (iCallBack != null) {
                        iCallBack.onCallBack(-1, null);
                    }
                }
            }
            Log.i("console", "nativeApp pull fail");
            if (iCallBack != null) {
                iCallBack.onCallBack(-1, null);
            }
        }
    }
}
