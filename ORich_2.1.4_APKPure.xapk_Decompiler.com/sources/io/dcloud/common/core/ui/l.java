package io.dcloud.common.core.ui;

import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.dcloud.android.widget.StatusBarView;
import io.dcloud.common.DHInterface.AbsMgr;
import io.dcloud.common.DHInterface.IActivityHandler;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.DHInterface.ICallBack;
import io.dcloud.common.DHInterface.ICore;
import io.dcloud.common.DHInterface.IEventCallback;
import io.dcloud.common.DHInterface.IMgr;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.DHInterface.IWebviewStateListener;
import io.dcloud.common.adapter.ui.AdaFrameItem;
import io.dcloud.common.adapter.ui.AdaFrameView;
import io.dcloud.common.adapter.ui.AdaWebViewParent;
import io.dcloud.common.adapter.ui.AdaWebview;
import io.dcloud.common.adapter.util.AnimOptions;
import io.dcloud.common.adapter.util.DeviceInfo;
import io.dcloud.common.adapter.util.Logger;
import io.dcloud.common.adapter.util.MessageHandler;
import io.dcloud.common.adapter.util.ViewOptions;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.constant.IntentConst;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.JSONUtil;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.common.util.StringUtil;
import io.dcloud.common.util.TestUtil;
import io.dcloud.common.util.TitleNViewUtil;
import io.dcloud.feature.gg.dcloud.ADSim;
import io.dcloud.nineoldandroids.view.ViewHelper;
import io.src.dcloud.adapter.DCloudAdapterUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class l extends AbsMgr implements IMgr.WindowEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    HashMap<String, io.dcloud.common.core.ui.a> f579a;
    List<m> b;
    String c;
    Runnable d;
    Runnable e;
    boolean f;

    class a implements IEventCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ io.dcloud.common.core.ui.b f580a;
        final /* synthetic */ IApp b;
        final /* synthetic */ io.dcloud.common.core.ui.a c;

        a(io.dcloud.common.core.ui.b bVar, IApp iApp, io.dcloud.common.core.ui.a aVar) {
            this.f580a = bVar;
            this.b = iApp;
            this.c = aVar;
        }

        @Override // io.dcloud.common.DHInterface.IEventCallback
        public Object onCallBack(String str, Object obj) {
            if (!PdrUtil.isEquals(str, AbsoluteConst.EVENTS_CLOSE)) {
                return null;
            }
            this.f580a.removeFrameViewListener(this);
            l.this.a(this.b, this.c);
            return null;
        }
    }

    class b implements IWebviewStateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f581a = false;
        final /* synthetic */ IApp b;
        final /* synthetic */ io.dcloud.common.core.ui.b c;
        final /* synthetic */ boolean d;
        final /* synthetic */ boolean e;
        final /* synthetic */ String f;
        final /* synthetic */ AdaWebview g;
        final /* synthetic */ io.dcloud.common.core.ui.a h;
        final /* synthetic */ int i;

        class a implements MessageHandler.IMessages {
            a() {
            }

            @Override // io.dcloud.common.adapter.util.MessageHandler.IMessages
            public void execute(Object obj) {
                if (((io.dcloud.common.core.ui.a) b.this.b.obtainWebAppRootView()).a(5) == null) {
                    b.this.b.checkOrLoadlaunchWebview();
                }
            }
        }

        b(IApp iApp, io.dcloud.common.core.ui.b bVar, boolean z, boolean z2, String str, AdaWebview adaWebview, io.dcloud.common.core.ui.a aVar, int i) {
            this.b = iApp;
            this.c = bVar;
            this.d = z;
            this.e = z2;
            this.f = str;
            this.g = adaWebview;
            this.h = aVar;
            this.i = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:41:0x00ed  */
        @Override // io.dcloud.common.DHInterface.ICallBack
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object onCallBack(int r23, java.lang.Object r24) {
            /*
                Method dump skipped, instruction units count: 268
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.b.onCallBack(int, java.lang.Object):java.lang.Object");
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdaFrameItem f583a;

        c(l lVar, AdaFrameItem adaFrameItem) {
            this.f583a = adaFrameItem;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((AdaFrameView) this.f583a).changeWebParentViewRect();
        }
    }

    class d implements ICallBack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ io.dcloud.common.core.ui.b f584a;
        final /* synthetic */ Object[] b;

        d(l lVar, io.dcloud.common.core.ui.b bVar, Object[] objArr) {
            this.f584a = bVar;
            this.b = objArr;
        }

        @Override // io.dcloud.common.DHInterface.ICallBack
        public Object onCallBack(int i, Object obj) {
            if (this.f584a.q) {
                return null;
            }
            this.f584a.c(((Boolean) this.b[1]).booleanValue());
            return null;
        }
    }

    class e implements ICallBack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ io.dcloud.common.core.ui.b f585a;

        e(l lVar, io.dcloud.common.core.ui.b bVar) {
            this.f585a = bVar;
        }

        @Override // io.dcloud.common.DHInterface.ICallBack
        public Object onCallBack(int i, Object obj) {
            boolean z = true;
            this.f585a.setVisible(true, false);
            this.f585a.p();
            this.f585a.lastShowTime = System.currentTimeMillis();
            this.f585a.k.l();
            io.dcloud.common.core.ui.b bVar = this.f585a;
            if (!bVar.isChildOfFrameView) {
                TestUtil.record("computeStackArray");
                io.dcloud.common.core.ui.b bVar2 = this.f585a;
                bVar2.k.b(bVar2);
                io.dcloud.common.core.ui.b bVar3 = this.f585a;
                bVar3.onPushToStack(bVar3.isAutoPop());
                TestUtil.print("computeStackArray", "计算满屏幕时间");
                if (this.f585a.k.e().contains(this.f585a)) {
                    this.f585a.k.m();
                } else {
                    io.dcloud.common.core.ui.b bVar4 = this.f585a;
                    bVar4.k.e(bVar4);
                }
            } else if (bVar.getParentFrameItem() != null) {
                io.dcloud.common.core.ui.b bVar5 = this.f585a;
                bVar5.k.h(bVar5);
            }
            io.dcloud.common.core.ui.b bVar6 = this.f585a;
            if (!bVar6.isChildOfFrameView) {
                int i2 = bVar6.obtainApp().getInt(0);
                int i3 = this.f585a.obtainApp().getInt(1);
                if ((i2 != this.f585a.obtainFrameOptions().width || this.f585a.obtainFrameOptions().height + 1 < i3) && (this.f585a.obtainFrameOptions().width != -1 || this.f585a.obtainFrameOptions().height != -1)) {
                    z = false;
                }
                if (z) {
                    io.dcloud.common.core.ui.i.a(this.f585a, 0);
                }
                if (PdrUtil.isEquals(this.f585a.getAnimOptions().mAnimType, "none")) {
                    this.f585a.makeViewOptions_animate();
                    this.f585a.m();
                } else {
                    this.f585a.s();
                    this.f585a.startAnimator(0);
                }
            } else if (PdrUtil.isEquals(bVar6.getAnimOptions().mAnimType, AnimOptions.ANIM_FADE_IN)) {
                this.f585a.s();
                this.f585a.startAnimator(0);
            } else {
                this.f585a.makeViewOptions_animate();
                this.f585a.m();
            }
            io.dcloud.common.core.ui.b bVar7 = this.f585a;
            bVar7.k.i(bVar7);
            return null;
        }
    }

    class f implements ICallBack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ io.dcloud.common.core.ui.b f586a;

        f(io.dcloud.common.core.ui.b bVar) {
            this.f586a = bVar;
        }

        @Override // io.dcloud.common.DHInterface.ICallBack
        public Object onCallBack(int i, Object obj) {
            io.dcloud.common.core.ui.b bVar = this.f586a;
            int iC = bVar.k.c(bVar);
            this.f586a.p();
            boolean z = false;
            boolean z2 = this.f586a.obtainMainView().getVisibility() == AdaFrameItem.VISIBLE;
            io.dcloud.common.core.ui.b bVar2 = this.f586a;
            if (bVar2.inStack && z2 && !bVar2.isChildOfFrameView) {
                bVar2.k.b(bVar2);
                if (this.f586a.e()) {
                    l.this.processEvent(IMgr.MgrType.WindowMgr, 28, this.f586a.b);
                    this.f586a.b = null;
                }
                int i2 = this.f586a.obtainApp().getInt(0);
                int i3 = this.f586a.obtainApp().getInt(1);
                if ((i2 == this.f586a.obtainFrameOptions().width && this.f586a.obtainFrameOptions().height + 1 >= i3) || (this.f586a.obtainFrameOptions().width == -1 && this.f586a.obtainFrameOptions().height == -1)) {
                    z = true;
                }
                if ((!PdrUtil.isEquals(this.f586a.getAnimOptions().mAnimType_close, "none") || (BaseInfo.isDefaultAim && z)) && iC >= 0) {
                    this.f586a.s();
                    if (z && !PdrUtil.isEquals(this.f586a.getAnimOptions().mAnimType_close, "none")) {
                        io.dcloud.common.core.ui.i.a(this.f586a, 1);
                    }
                    this.f586a.startAnimator(1);
                } else {
                    this.f586a.makeViewOptions_animate();
                    this.f586a.l();
                    this.f586a.k();
                }
            } else {
                bVar2.makeViewOptions_animate();
                this.f586a.l();
                this.f586a.k();
            }
            return null;
        }
    }

    class g implements ICallBack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ io.dcloud.common.core.ui.b f587a;
        final /* synthetic */ int b;

        g(io.dcloud.common.core.ui.b bVar, int i) {
            this.f587a = bVar;
            this.b = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0087  */
        @Override // io.dcloud.common.DHInterface.ICallBack
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object onCallBack(int r9, java.lang.Object r10) {
            /*
                Method dump skipped, instruction units count: 323
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.g.onCallBack(int, java.lang.Object):java.lang.Object");
        }
    }

    class h implements ICallBack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ io.dcloud.common.core.ui.b f588a;

        h(l lVar, io.dcloud.common.core.ui.b bVar) {
            this.f588a = bVar;
        }

        @Override // io.dcloud.common.DHInterface.ICallBack
        public Object onCallBack(int i, Object obj) {
            io.dcloud.common.core.ui.b bVar = this.f588a;
            bVar.k.e(bVar);
            this.f588a.setVisible(true, false);
            this.f588a.k.j();
            return Boolean.FALSE;
        }
    }

    class i implements IWebviewStateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f589a = false;
        final /* synthetic */ String b;
        final /* synthetic */ boolean c;
        final /* synthetic */ IApp d;
        final /* synthetic */ io.dcloud.common.core.ui.a e;
        final /* synthetic */ String f;
        final /* synthetic */ IWebview g;
        final /* synthetic */ int h;
        final /* synthetic */ io.dcloud.common.core.ui.b i;
        final /* synthetic */ int j;
        final /* synthetic */ long k;

        i(String str, boolean z, IApp iApp, io.dcloud.common.core.ui.a aVar, String str2, IWebview iWebview, int i, io.dcloud.common.core.ui.b bVar, int i2, long j) {
            this.b = str;
            this.c = z;
            this.d = iApp;
            this.e = aVar;
            this.f = str2;
            this.g = iWebview;
            this.h = i;
            this.i = bVar;
            this.j = i2;
            this.k = j;
        }

        @Override // io.dcloud.common.DHInterface.ICallBack
        public Object onCallBack(int i, Object obj) {
            int i2 = AbsoluteConst.EVENTS_TITLE_UPDATE.equals(l.this.c) ? 4 : AbsoluteConst.EVENTS_RENDERING.equals(l.this.c) ? 6 : 1;
            Logger.d(Logger.MAIN_TAG, "autoCloseSplash4LaunchWebview  IWebviewStateListener pType= " + i + ";pArgs=" + obj);
            if (i != i2) {
                if (i != 3) {
                    return null;
                }
                IActivityHandler iActivityHandler = DCloudAdapterUtil.getIActivityHandler(this.d.getActivity());
                if (iActivityHandler != null) {
                    iActivityHandler.updateParam("progress", obj);
                }
                if (!l.this.a(this.d) || this.f589a) {
                    return null;
                }
                Integer num = (Integer) obj;
                if (num.intValue() < 50) {
                    return null;
                }
                this.f589a = true;
                Intent intent = new Intent();
                intent.setAction(this.d.getActivity().getPackageName() + ".streamdownload.downloadfinish." + this.d.obtainAppId());
                intent.putExtra("appid", this.d.obtainAppId());
                intent.putExtra("progress", num.intValue());
                intent.putExtra("flag", AbsoluteConst.STREAMAPP_KEY_DIRECT_PAGE_PROGRESSED);
                this.d.getActivity().sendBroadcast(intent);
                return null;
            }
            if (this.b.equals("id:*") && this.c) {
                l.this.a(this.d, this.e);
            } else if (this.b.equals("default") && this.c) {
                if (PdrUtil.isNetPath(this.f) && (i == 4 || i == 6)) {
                    int i3 = i == 4 ? TestUtil.PointTime.AC_TYPE_1_2 : i == 6 ? TestUtil.PointTime.AC_TYPE_1_3 : TestUtil.PointTime.AC_TYPE_1_1;
                    l lVar = l.this;
                    lVar.f = false;
                    lVar.a(this.g, this.d, false, this.e, this.h, this.i, this.j, i3);
                } else {
                    this.d.setConfigProperty("timeout", "-1");
                    io.dcloud.common.core.ui.a aVar = this.e;
                    aVar.a(aVar, this.i, this.j, true, TestUtil.PointTime.AC_TYPE_1_1);
                }
            }
            BaseInfo.setLoadingLaunchePage(false, "f_need_auto_close_splash");
            long jCurrentTimeMillis = System.currentTimeMillis() - this.k;
            this.d.setConfigProperty(IApp.ConfigProperty.CONFIG_LOADED_TIME, String.valueOf(jCurrentTimeMillis));
            this.g.evalJS(AbsoluteConst.PROTOCOL_JAVASCRIPT + StringUtil.format(AbsoluteConst.JS_RUNTIME_BASE, StringUtil.format(AbsoluteConst.JS_RUNTIME_LOADEDTIME, String.valueOf(jCurrentTimeMillis))));
            Logger.d("shutao", "首页面loadtime=" + jCurrentTimeMillis + "type=" + i);
            return null;
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ io.dcloud.common.core.ui.a f590a;
        final /* synthetic */ io.dcloud.common.core.ui.b b;
        final /* synthetic */ int c;

        j(io.dcloud.common.core.ui.a aVar, io.dcloud.common.core.ui.b bVar, int i) {
            this.f590a = aVar;
            this.b = bVar;
            this.c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            io.dcloud.common.core.ui.a aVar = this.f590a;
            if (aVar != null) {
                aVar.a(aVar, this.b, this.c, true, 1000);
            }
            l.this.d = null;
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ io.dcloud.common.core.ui.b f591a;
        final /* synthetic */ io.dcloud.common.core.ui.a b;
        final /* synthetic */ IApp c;

        k(io.dcloud.common.core.ui.b bVar, io.dcloud.common.core.ui.a aVar, IApp iApp) {
            this.f591a = bVar;
            this.b = aVar;
            this.c = iApp;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!this.f591a.obtainWebView().isLoaded() || this.f591a.obtainWebView().obtainUrl().endsWith("__uniappservice.html") || this.f591a.obtainWebView().checkWhite("auto")) {
                    l.this.a(this.c, this.b);
                } else {
                    io.dcloud.common.core.ui.a aVar = this.b;
                    aVar.a(aVar, this.f591a, 0, true, 1);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: io.dcloud.common.core.ui.l$l, reason: collision with other inner class name */
    class RunnableC0032l implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ io.dcloud.common.core.ui.a f592a;
        final /* synthetic */ boolean b;
        final /* synthetic */ io.dcloud.common.core.ui.b c;
        final /* synthetic */ IWebview d;
        final /* synthetic */ IApp e;
        final /* synthetic */ int f;
        final /* synthetic */ int g;
        final /* synthetic */ int h;

        RunnableC0032l(io.dcloud.common.core.ui.a aVar, boolean z, io.dcloud.common.core.ui.b bVar, IWebview iWebview, IApp iApp, int i, int i2, int i3) {
            this.f592a = aVar;
            this.b = z;
            this.c = bVar;
            this.d = iWebview;
            this.e = iApp;
            this.f = i;
            this.g = i2;
            this.h = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                io.dcloud.common.core.ui.a aVar = this.f592a;
                if (aVar == null || aVar.o || l.this.f) {
                    return;
                }
                if ((this.b || this.c.obtainFrameOptions().titleNView == null) && this.d.checkWhite("auto")) {
                    l.this.a(this.d, this.e, this.b, this.f592a, this.h, this.c, this.f, this.g);
                    return;
                }
                System.currentTimeMillis();
                long j = BaseInfo.startTime;
                this.e.setConfigProperty("timeout", "-1");
                io.dcloud.common.core.ui.a aVar2 = this.f592a;
                aVar2.a(aVar2, this.c, this.f, true, this.g);
            } catch (Exception unused) {
            }
        }
    }

    public interface m {
        void onAnimationEnd();
    }

    public l(ICore iCore) {
        super(iCore, "windowmgr", IMgr.MgrType.WindowMgr);
        this.f579a = new HashMap<>(0);
        this.b = Collections.synchronizedList(new ArrayList());
        this.c = null;
        this.d = null;
        this.f = false;
    }

    private boolean a(int i2, int i3, int i4, int i5, int i6, int i7) {
        return i2 == 0 && i3 == 0 && i4 == i6 && i5 == i7;
    }

    private void b(int i2, Object obj) {
        JSONObject jSONObjectCreateJSONObject;
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            IApp iApp = (IApp) objArr[0];
            boolean zBooleanValue = objArr.length >= 3 ? ((Boolean) objArr[2]).booleanValue() : false;
            String strObtainAppId = iApp.obtainAppId();
            io.dcloud.common.core.ui.a aVar = this.f579a.get(strObtainAppId);
            io.dcloud.common.core.ui.b bVar = aVar.d;
            boolean z = bVar == null;
            if (bVar == null) {
                String stringExtra = iApp.obtainWebAppIntent().getStringExtra(IntentConst.FROM_STREAM_OPEN_STYLE);
                try {
                    if (TextUtils.isEmpty(stringExtra)) {
                        jSONObjectCreateJSONObject = JSONUtil.createJSONObject("{}");
                    } else {
                        jSONObjectCreateJSONObject = new JSONObject(stringExtra);
                        try {
                            iApp.obtainWebAppIntent().removeExtra(IntentConst.FROM_STREAM_OPEN_STYLE);
                        } catch (JSONException e2) {
                            e = e2;
                            e.printStackTrace();
                        }
                    }
                } catch (JSONException e3) {
                    e = e3;
                    jSONObjectCreateJSONObject = null;
                }
                bVar = (io.dcloud.common.core.ui.b) processEvent(IMgr.MgrType.WindowMgr, 3, new Object[]{3, iApp, new Object[]{objArr[1], jSONObjectCreateJSONObject}, aVar});
                aVar.d = bVar;
            }
            IWebview iWebviewObtainWebView = bVar.obtainWebView();
            if (Build.VERSION.SDK_INT > 10) {
                if (zBooleanValue) {
                    iWebviewObtainWebView.obtainWindowView().setLayerType(0, null);
                } else {
                    iWebviewObtainWebView.obtainWindowView().setLayerType(1, null);
                }
            }
            Logger.d(Logger.MAIN_TAG, "load " + strObtainAppId + " launchPage =" + objArr[1]);
            iWebviewObtainWebView.loadUrl(String.valueOf(objArr[1]));
            if (z) {
                aVar.e(bVar);
            }
        }
    }

    protected synchronized void c() {
        if (this.b == null) {
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (m mVar : this.b) {
                mVar.onAnimationEnd();
                arrayList.add(mVar);
            }
            if (arrayList.size() > 0) {
                this.b.removeAll(arrayList);
            }
            arrayList.clear();
        } catch (Exception unused) {
        }
    }

    public void d(io.dcloud.common.core.ui.b bVar) {
        IApp iAppObtainApp = bVar.obtainApp();
        iAppObtainApp.setMaskLayer(true);
        iAppObtainApp.obtainWebAppRootView().obtainMainView().invalidate();
    }

    @Override // io.dcloud.common.DHInterface.AbsMgr
    public void dispose() {
        try {
            List<m> list = this.b;
            if (list != null) {
                list.clear();
            }
            Iterator<String> it = this.f579a.keySet().iterator();
            while (it.hasNext()) {
                this.f579a.get(it.next()).dispose();
            }
            this.f579a.clear();
            if (BaseInfo.ISDEBUG) {
                io.dcloud.common.core.ui.f.b();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:102:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x024f A[Catch: all -> 0x0a1e, TryCatch #1 {all -> 0x0a1e, blocks: (B:3:0x000f, B:5:0x0015, B:308:0x0816, B:310:0x0829, B:312:0x0838, B:314:0x0849, B:316:0x084f, B:318:0x0876, B:320:0x087a, B:323:0x088f, B:326:0x08a4, B:324:0x089b, B:328:0x08bd, B:330:0x08ce, B:332:0x08d2, B:334:0x08da, B:336:0x08e2, B:338:0x08ea, B:340:0x08f6, B:342:0x0900, B:344:0x0918, B:346:0x092b, B:347:0x0938, B:349:0x094d, B:351:0x0951, B:354:0x095b, B:357:0x0965, B:358:0x097b, B:359:0x0984, B:361:0x0999, B:364:0x09a7, B:363:0x09a3, B:365:0x09b6, B:366:0x09c1, B:367:0x09d0, B:368:0x09ee, B:369:0x09f5, B:257:0x0679, B:259:0x067d, B:261:0x0688, B:263:0x068e, B:265:0x0696, B:267:0x069c, B:268:0x06a5, B:270:0x06ac, B:272:0x06b2, B:273:0x06bd, B:275:0x06c1, B:277:0x06d0, B:279:0x06d6, B:280:0x06df, B:282:0x06e5, B:284:0x06eb, B:285:0x06f6, B:287:0x06fa, B:289:0x070c, B:291:0x0716, B:290:0x0711, B:292:0x0763, B:294:0x0771, B:295:0x0777, B:297:0x0785, B:298:0x078b, B:300:0x07a0, B:301:0x07ae, B:302:0x07e2, B:303:0x07f7, B:304:0x0804, B:306:0x080d, B:307:0x0811, B:143:0x0358, B:145:0x035c, B:150:0x037a, B:151:0x0386, B:153:0x038c, B:155:0x0398, B:157:0x03a6, B:146:0x0368, B:148:0x036c, B:158:0x03aa, B:160:0x03bf, B:161:0x03c4, B:162:0x03cc, B:164:0x03d6, B:166:0x03db, B:168:0x03e1, B:170:0x03e9, B:172:0x03f1, B:174:0x03fd, B:175:0x042e, B:176:0x0448, B:178:0x044d, B:179:0x045a, B:181:0x045f, B:183:0x0466, B:185:0x046e, B:187:0x047a, B:189:0x0480, B:191:0x0484, B:194:0x048f, B:195:0x04e2, B:196:0x04e6, B:198:0x04eb, B:199:0x04f3, B:200:0x0508, B:202:0x050c, B:206:0x0514, B:207:0x053c, B:209:0x0540, B:213:0x0548, B:215:0x0572, B:217:0x0577, B:219:0x0583, B:221:0x058d, B:222:0x05b6, B:230:0x05f0, B:232:0x05f7, B:248:0x0654, B:252:0x065e, B:255:0x0668, B:256:0x0670, B:233:0x0601, B:235:0x0605, B:236:0x0611, B:238:0x0615, B:241:0x0625, B:244:0x0641, B:131:0x02d8, B:132:0x02de, B:134:0x02f0, B:136:0x02f8, B:138:0x02fe, B:140:0x0334, B:141:0x033b, B:142:0x0340, B:19:0x0046, B:20:0x0053, B:21:0x005c, B:22:0x0065, B:23:0x006f, B:25:0x007d, B:27:0x0087, B:28:0x0091, B:30:0x0096, B:32:0x00a2, B:34:0x00c2, B:35:0x00c7, B:36:0x00cd, B:44:0x010a, B:47:0x0130, B:49:0x0134, B:51:0x013f, B:52:0x0148, B:53:0x0150, B:55:0x0158, B:57:0x0169, B:58:0x0170, B:64:0x017f, B:67:0x0187, B:68:0x0195, B:70:0x019d, B:72:0x01ae, B:73:0x01b7, B:75:0x01bb, B:76:0x01cb, B:78:0x01d6, B:79:0x01db, B:80:0x01f1, B:82:0x020a, B:84:0x0212, B:86:0x0218, B:88:0x021f, B:90:0x0222, B:92:0x0228, B:97:0x023d, B:99:0x0241, B:101:0x0247, B:104:0x024f, B:108:0x025b, B:109:0x025f, B:111:0x0263, B:115:0x026c, B:119:0x0274, B:121:0x0279, B:93:0x022e, B:95:0x0234, B:122:0x028f, B:124:0x0298, B:129:0x02aa, B:130:0x02b0, B:127:0x02a0, B:223:0x05bc, B:225:0x05c0, B:229:0x05c7, B:370:0x09f9, B:371:0x0a12), top: B:378:0x000f, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0263 A[Catch: all -> 0x0a1e, TRY_LEAVE, TryCatch #1 {all -> 0x0a1e, blocks: (B:3:0x000f, B:5:0x0015, B:308:0x0816, B:310:0x0829, B:312:0x0838, B:314:0x0849, B:316:0x084f, B:318:0x0876, B:320:0x087a, B:323:0x088f, B:326:0x08a4, B:324:0x089b, B:328:0x08bd, B:330:0x08ce, B:332:0x08d2, B:334:0x08da, B:336:0x08e2, B:338:0x08ea, B:340:0x08f6, B:342:0x0900, B:344:0x0918, B:346:0x092b, B:347:0x0938, B:349:0x094d, B:351:0x0951, B:354:0x095b, B:357:0x0965, B:358:0x097b, B:359:0x0984, B:361:0x0999, B:364:0x09a7, B:363:0x09a3, B:365:0x09b6, B:366:0x09c1, B:367:0x09d0, B:368:0x09ee, B:369:0x09f5, B:257:0x0679, B:259:0x067d, B:261:0x0688, B:263:0x068e, B:265:0x0696, B:267:0x069c, B:268:0x06a5, B:270:0x06ac, B:272:0x06b2, B:273:0x06bd, B:275:0x06c1, B:277:0x06d0, B:279:0x06d6, B:280:0x06df, B:282:0x06e5, B:284:0x06eb, B:285:0x06f6, B:287:0x06fa, B:289:0x070c, B:291:0x0716, B:290:0x0711, B:292:0x0763, B:294:0x0771, B:295:0x0777, B:297:0x0785, B:298:0x078b, B:300:0x07a0, B:301:0x07ae, B:302:0x07e2, B:303:0x07f7, B:304:0x0804, B:306:0x080d, B:307:0x0811, B:143:0x0358, B:145:0x035c, B:150:0x037a, B:151:0x0386, B:153:0x038c, B:155:0x0398, B:157:0x03a6, B:146:0x0368, B:148:0x036c, B:158:0x03aa, B:160:0x03bf, B:161:0x03c4, B:162:0x03cc, B:164:0x03d6, B:166:0x03db, B:168:0x03e1, B:170:0x03e9, B:172:0x03f1, B:174:0x03fd, B:175:0x042e, B:176:0x0448, B:178:0x044d, B:179:0x045a, B:181:0x045f, B:183:0x0466, B:185:0x046e, B:187:0x047a, B:189:0x0480, B:191:0x0484, B:194:0x048f, B:195:0x04e2, B:196:0x04e6, B:198:0x04eb, B:199:0x04f3, B:200:0x0508, B:202:0x050c, B:206:0x0514, B:207:0x053c, B:209:0x0540, B:213:0x0548, B:215:0x0572, B:217:0x0577, B:219:0x0583, B:221:0x058d, B:222:0x05b6, B:230:0x05f0, B:232:0x05f7, B:248:0x0654, B:252:0x065e, B:255:0x0668, B:256:0x0670, B:233:0x0601, B:235:0x0605, B:236:0x0611, B:238:0x0615, B:241:0x0625, B:244:0x0641, B:131:0x02d8, B:132:0x02de, B:134:0x02f0, B:136:0x02f8, B:138:0x02fe, B:140:0x0334, B:141:0x033b, B:142:0x0340, B:19:0x0046, B:20:0x0053, B:21:0x005c, B:22:0x0065, B:23:0x006f, B:25:0x007d, B:27:0x0087, B:28:0x0091, B:30:0x0096, B:32:0x00a2, B:34:0x00c2, B:35:0x00c7, B:36:0x00cd, B:44:0x010a, B:47:0x0130, B:49:0x0134, B:51:0x013f, B:52:0x0148, B:53:0x0150, B:55:0x0158, B:57:0x0169, B:58:0x0170, B:64:0x017f, B:67:0x0187, B:68:0x0195, B:70:0x019d, B:72:0x01ae, B:73:0x01b7, B:75:0x01bb, B:76:0x01cb, B:78:0x01d6, B:79:0x01db, B:80:0x01f1, B:82:0x020a, B:84:0x0212, B:86:0x0218, B:88:0x021f, B:90:0x0222, B:92:0x0228, B:97:0x023d, B:99:0x0241, B:101:0x0247, B:104:0x024f, B:108:0x025b, B:109:0x025f, B:111:0x0263, B:115:0x026c, B:119:0x0274, B:121:0x0279, B:93:0x022e, B:95:0x0234, B:122:0x028f, B:124:0x0298, B:129:0x02aa, B:130:0x02b0, B:127:0x02a0, B:223:0x05bc, B:225:0x05c0, B:229:0x05c7, B:370:0x09f9, B:371:0x0a12), top: B:378:0x000f, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x05bc A[Catch: all -> 0x0a1e, TryCatch #1 {all -> 0x0a1e, blocks: (B:3:0x000f, B:5:0x0015, B:308:0x0816, B:310:0x0829, B:312:0x0838, B:314:0x0849, B:316:0x084f, B:318:0x0876, B:320:0x087a, B:323:0x088f, B:326:0x08a4, B:324:0x089b, B:328:0x08bd, B:330:0x08ce, B:332:0x08d2, B:334:0x08da, B:336:0x08e2, B:338:0x08ea, B:340:0x08f6, B:342:0x0900, B:344:0x0918, B:346:0x092b, B:347:0x0938, B:349:0x094d, B:351:0x0951, B:354:0x095b, B:357:0x0965, B:358:0x097b, B:359:0x0984, B:361:0x0999, B:364:0x09a7, B:363:0x09a3, B:365:0x09b6, B:366:0x09c1, B:367:0x09d0, B:368:0x09ee, B:369:0x09f5, B:257:0x0679, B:259:0x067d, B:261:0x0688, B:263:0x068e, B:265:0x0696, B:267:0x069c, B:268:0x06a5, B:270:0x06ac, B:272:0x06b2, B:273:0x06bd, B:275:0x06c1, B:277:0x06d0, B:279:0x06d6, B:280:0x06df, B:282:0x06e5, B:284:0x06eb, B:285:0x06f6, B:287:0x06fa, B:289:0x070c, B:291:0x0716, B:290:0x0711, B:292:0x0763, B:294:0x0771, B:295:0x0777, B:297:0x0785, B:298:0x078b, B:300:0x07a0, B:301:0x07ae, B:302:0x07e2, B:303:0x07f7, B:304:0x0804, B:306:0x080d, B:307:0x0811, B:143:0x0358, B:145:0x035c, B:150:0x037a, B:151:0x0386, B:153:0x038c, B:155:0x0398, B:157:0x03a6, B:146:0x0368, B:148:0x036c, B:158:0x03aa, B:160:0x03bf, B:161:0x03c4, B:162:0x03cc, B:164:0x03d6, B:166:0x03db, B:168:0x03e1, B:170:0x03e9, B:172:0x03f1, B:174:0x03fd, B:175:0x042e, B:176:0x0448, B:178:0x044d, B:179:0x045a, B:181:0x045f, B:183:0x0466, B:185:0x046e, B:187:0x047a, B:189:0x0480, B:191:0x0484, B:194:0x048f, B:195:0x04e2, B:196:0x04e6, B:198:0x04eb, B:199:0x04f3, B:200:0x0508, B:202:0x050c, B:206:0x0514, B:207:0x053c, B:209:0x0540, B:213:0x0548, B:215:0x0572, B:217:0x0577, B:219:0x0583, B:221:0x058d, B:222:0x05b6, B:230:0x05f0, B:232:0x05f7, B:248:0x0654, B:252:0x065e, B:255:0x0668, B:256:0x0670, B:233:0x0601, B:235:0x0605, B:236:0x0611, B:238:0x0615, B:241:0x0625, B:244:0x0641, B:131:0x02d8, B:132:0x02de, B:134:0x02f0, B:136:0x02f8, B:138:0x02fe, B:140:0x0334, B:141:0x033b, B:142:0x0340, B:19:0x0046, B:20:0x0053, B:21:0x005c, B:22:0x0065, B:23:0x006f, B:25:0x007d, B:27:0x0087, B:28:0x0091, B:30:0x0096, B:32:0x00a2, B:34:0x00c2, B:35:0x00c7, B:36:0x00cd, B:44:0x010a, B:47:0x0130, B:49:0x0134, B:51:0x013f, B:52:0x0148, B:53:0x0150, B:55:0x0158, B:57:0x0169, B:58:0x0170, B:64:0x017f, B:67:0x0187, B:68:0x0195, B:70:0x019d, B:72:0x01ae, B:73:0x01b7, B:75:0x01bb, B:76:0x01cb, B:78:0x01d6, B:79:0x01db, B:80:0x01f1, B:82:0x020a, B:84:0x0212, B:86:0x0218, B:88:0x021f, B:90:0x0222, B:92:0x0228, B:97:0x023d, B:99:0x0241, B:101:0x0247, B:104:0x024f, B:108:0x025b, B:109:0x025f, B:111:0x0263, B:115:0x026c, B:119:0x0274, B:121:0x0279, B:93:0x022e, B:95:0x0234, B:122:0x028f, B:124:0x0298, B:129:0x02aa, B:130:0x02b0, B:127:0x02a0, B:223:0x05bc, B:225:0x05c0, B:229:0x05c7, B:370:0x09f9, B:371:0x0a12), top: B:378:0x000f, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0668 A[Catch: all -> 0x0a1e, TryCatch #1 {all -> 0x0a1e, blocks: (B:3:0x000f, B:5:0x0015, B:308:0x0816, B:310:0x0829, B:312:0x0838, B:314:0x0849, B:316:0x084f, B:318:0x0876, B:320:0x087a, B:323:0x088f, B:326:0x08a4, B:324:0x089b, B:328:0x08bd, B:330:0x08ce, B:332:0x08d2, B:334:0x08da, B:336:0x08e2, B:338:0x08ea, B:340:0x08f6, B:342:0x0900, B:344:0x0918, B:346:0x092b, B:347:0x0938, B:349:0x094d, B:351:0x0951, B:354:0x095b, B:357:0x0965, B:358:0x097b, B:359:0x0984, B:361:0x0999, B:364:0x09a7, B:363:0x09a3, B:365:0x09b6, B:366:0x09c1, B:367:0x09d0, B:368:0x09ee, B:369:0x09f5, B:257:0x0679, B:259:0x067d, B:261:0x0688, B:263:0x068e, B:265:0x0696, B:267:0x069c, B:268:0x06a5, B:270:0x06ac, B:272:0x06b2, B:273:0x06bd, B:275:0x06c1, B:277:0x06d0, B:279:0x06d6, B:280:0x06df, B:282:0x06e5, B:284:0x06eb, B:285:0x06f6, B:287:0x06fa, B:289:0x070c, B:291:0x0716, B:290:0x0711, B:292:0x0763, B:294:0x0771, B:295:0x0777, B:297:0x0785, B:298:0x078b, B:300:0x07a0, B:301:0x07ae, B:302:0x07e2, B:303:0x07f7, B:304:0x0804, B:306:0x080d, B:307:0x0811, B:143:0x0358, B:145:0x035c, B:150:0x037a, B:151:0x0386, B:153:0x038c, B:155:0x0398, B:157:0x03a6, B:146:0x0368, B:148:0x036c, B:158:0x03aa, B:160:0x03bf, B:161:0x03c4, B:162:0x03cc, B:164:0x03d6, B:166:0x03db, B:168:0x03e1, B:170:0x03e9, B:172:0x03f1, B:174:0x03fd, B:175:0x042e, B:176:0x0448, B:178:0x044d, B:179:0x045a, B:181:0x045f, B:183:0x0466, B:185:0x046e, B:187:0x047a, B:189:0x0480, B:191:0x0484, B:194:0x048f, B:195:0x04e2, B:196:0x04e6, B:198:0x04eb, B:199:0x04f3, B:200:0x0508, B:202:0x050c, B:206:0x0514, B:207:0x053c, B:209:0x0540, B:213:0x0548, B:215:0x0572, B:217:0x0577, B:219:0x0583, B:221:0x058d, B:222:0x05b6, B:230:0x05f0, B:232:0x05f7, B:248:0x0654, B:252:0x065e, B:255:0x0668, B:256:0x0670, B:233:0x0601, B:235:0x0605, B:236:0x0611, B:238:0x0615, B:241:0x0625, B:244:0x0641, B:131:0x02d8, B:132:0x02de, B:134:0x02f0, B:136:0x02f8, B:138:0x02fe, B:140:0x0334, B:141:0x033b, B:142:0x0340, B:19:0x0046, B:20:0x0053, B:21:0x005c, B:22:0x0065, B:23:0x006f, B:25:0x007d, B:27:0x0087, B:28:0x0091, B:30:0x0096, B:32:0x00a2, B:34:0x00c2, B:35:0x00c7, B:36:0x00cd, B:44:0x010a, B:47:0x0130, B:49:0x0134, B:51:0x013f, B:52:0x0148, B:53:0x0150, B:55:0x0158, B:57:0x0169, B:58:0x0170, B:64:0x017f, B:67:0x0187, B:68:0x0195, B:70:0x019d, B:72:0x01ae, B:73:0x01b7, B:75:0x01bb, B:76:0x01cb, B:78:0x01d6, B:79:0x01db, B:80:0x01f1, B:82:0x020a, B:84:0x0212, B:86:0x0218, B:88:0x021f, B:90:0x0222, B:92:0x0228, B:97:0x023d, B:99:0x0241, B:101:0x0247, B:104:0x024f, B:108:0x025b, B:109:0x025f, B:111:0x0263, B:115:0x026c, B:119:0x0274, B:121:0x0279, B:93:0x022e, B:95:0x0234, B:122:0x028f, B:124:0x0298, B:129:0x02aa, B:130:0x02b0, B:127:0x02a0, B:223:0x05bc, B:225:0x05c0, B:229:0x05c7, B:370:0x09f9, B:371:0x0a12), top: B:378:0x000f, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x023b  */
    @Override // io.dcloud.common.DHInterface.IMgr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object processEvent(io.dcloud.common.DHInterface.IMgr.MgrType r17, int r18, java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 2720
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.processEvent(io.dcloud.common.DHInterface.IMgr$MgrType, int, java.lang.Object):java.lang.Object");
    }

    public synchronized void a(m mVar) {
        if (!this.b.contains(mVar)) {
            this.b.add(mVar);
        }
    }

    void a(ViewGroup viewGroup, IApp iApp, IWebview iWebview, ViewGroup.LayoutParams layoutParams) {
        a(iApp, iApp.obtainAppId());
        io.dcloud.common.core.ui.a aVar = this.f579a.get(iApp.obtainAppId());
        io.dcloud.common.core.ui.b bVar = (io.dcloud.common.core.ui.b) iWebview.obtainFrameView();
        bVar.k = aVar;
        View viewObtainMainView = bVar.obtainMainView();
        if (viewObtainMainView.getParent() != null) {
            ((ViewGroup) viewObtainMainView.getParent()).removeView(viewObtainMainView);
        }
        viewGroup.addView(viewObtainMainView, layoutParams);
    }

    public void c(io.dcloud.common.core.ui.b bVar) {
        bVar.p();
        bVar.k.b(bVar);
        if (bVar.e()) {
            processEvent(IMgr.MgrType.WindowMgr, 28, bVar.b);
            bVar.b = null;
        }
        bVar.makeViewOptions_animate();
        bVar.l();
        bVar.k();
    }

    synchronized boolean a(IApp iApp, String str) {
        boolean z;
        Logger.e("streamsdk", "come into createAppRootView pAppid===" + str);
        io.dcloud.common.core.ui.a aVar = this.f579a.get(str);
        z = true;
        if (aVar == null || !aVar.h) {
            if (aVar != null && !aVar.h) {
                this.f579a.remove(str);
            }
            Logger.e("streamsdk", "come into createAppRootView and new le rootview  pAppid===" + str);
            Logger.d(Logger.MAIN_TAG, "create " + str + " AppRootView");
            io.dcloud.common.core.ui.a aVar2 = new io.dcloud.common.core.ui.a(iApp.getActivity(), iApp, null);
            aVar2.onAppStart(iApp);
            aVar2.obtainFrameOptions().setParentViewRect(iApp.getAppViewRect());
            aVar2.obtainFrameOptions().updateViewData(JSONUtil.createJSONObject("{}"), iApp.getInt(0), iApp.getInt(1));
            this.f579a.put(str, aVar2);
            iApp.obtainAppId();
        } else {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:199:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01f9  */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r24v0, types: [io.dcloud.common.core.ui.l] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object, java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(int r25, java.lang.Object r26) {
        /*
            Method dump skipped, instruction units count: 1032
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.a(int, java.lang.Object):void");
    }

    void b(IApp iApp, IWebview iWebview) {
        if (iApp.obtainThridInfo(IApp.ConfigProperty.ThridInfo.SecondWebviewJsonData) != null || (BaseInfo.isWap2AppAppid(iApp.obtainAppId()) && !TextUtils.isEmpty(iApp.getOriginalDirectPage()))) {
            processEvent(IMgr.MgrType.FeatureMgr, 1, new Object[]{iWebview, "UI", "n_createSecondWebview", null});
        }
    }

    private io.dcloud.common.core.ui.b b(IApp iApp) {
        io.dcloud.common.core.ui.a aVar = (io.dcloud.common.core.ui.a) iApp.obtainWebAppRootView();
        if (aVar != null) {
            return aVar.i();
        }
        return null;
    }

    private io.dcloud.common.core.ui.a b() {
        return this.f579a.get(String.valueOf(processEvent(IMgr.MgrType.AppMgr, 11, null)));
    }

    public void b(io.dcloud.common.core.ui.b bVar) {
        IApp iAppObtainApp = bVar.obtainApp();
        iAppObtainApp.setMaskLayer(false);
        iAppObtainApp.obtainWebAppRootView().obtainMainView().invalidate();
    }

    private io.dcloud.common.core.ui.c b(IApp iApp, io.dcloud.common.core.ui.a aVar) {
        JSONObject jSONObjectObtainThridInfo = iApp.obtainThridInfo(IApp.ConfigProperty.ThridInfo.Tabbar);
        if (jSONObjectObtainThridInfo == null) {
            return null;
        }
        io.dcloud.common.core.ui.c cVar = new io.dcloud.common.core.ui.c(iApp.getActivity(), this, iApp, aVar, 8, jSONObjectObtainThridInfo);
        int i2 = iApp.getInt(0);
        int i3 = iApp.getInt(1);
        ViewOptions viewOptionsObtainFrameOptions = cVar.obtainFrameOptions();
        ViewOptions viewOptionsObtainFrameOptions2 = aVar.obtainFrameOptions();
        if (viewOptionsObtainFrameOptions2.height > i3) {
            viewOptionsObtainFrameOptions2.updateViewData(viewOptionsObtainFrameOptions2.mJsonViewOption, i2, i3);
        }
        viewOptionsObtainFrameOptions.setParentViewRect(viewOptionsObtainFrameOptions2);
        viewOptionsObtainFrameOptions.popGesture = iApp.getPopGesture();
        View viewObtainMainView = cVar.obtainMainView();
        viewOptionsObtainFrameOptions.width = -1;
        viewOptionsObtainFrameOptions.height = -1;
        AdaFrameItem.LayoutParamsUtil.setViewLayoutParams(viewObtainMainView, viewOptionsObtainFrameOptions.left, viewOptionsObtainFrameOptions.top, -1, -1);
        aVar.addFrameItem(cVar, new ViewGroup.LayoutParams(-1, -1));
        cVar.k.e(cVar);
        processEvent(IMgr.MgrType.FeatureMgr, 1, new Object[]{cVar.obtainWebView(), "UI", "", null});
        return cVar;
    }

    public void a(IApp iApp, io.dcloud.common.core.ui.a aVar, String str, String str2, JSONObject jSONObject) {
        String strOptString = (jSONObject == null || !jSONObject.has(AbsoluteConst.XML_PATH)) ? null : jSONObject.optString(AbsoluteConst.XML_PATH);
        if (PdrUtil.isEmpty(strOptString)) {
            return;
        }
        iApp.setConfigProperty(AbsoluteConst.UNIAPP_WEEX_JS_SERVICE, String.valueOf(true));
        int i2 = iApp.getInt(0);
        int i3 = iApp.getInt(1);
        io.dcloud.common.core.ui.b bVar = new io.dcloud.common.core.ui.b(iApp.getActivity(), this, iApp, aVar, 7, null);
        io.dcloud.common.core.ui.d dVar = new io.dcloud.common.core.ui.d(iApp.getActivity(), bVar, strOptString, str, jSONObject, true);
        dVar.initWebviewUUID(str);
        ViewOptions viewOptionsObtainFrameOptions = bVar.obtainFrameOptions();
        ViewOptions viewOptionsObtainFrameOptions2 = aVar.obtainFrameOptions();
        if (viewOptionsObtainFrameOptions2.height > i3) {
            viewOptionsObtainFrameOptions2.updateViewData(viewOptionsObtainFrameOptions2.mJsonViewOption, i2, i3);
        }
        viewOptionsObtainFrameOptions.setParentViewRect(viewOptionsObtainFrameOptions2);
        viewOptionsObtainFrameOptions.popGesture = iApp.getPopGesture();
        View viewObtainMainView = bVar.obtainMainView();
        int i4 = viewOptionsObtainFrameOptions.width;
        if (i4 == i2) {
            i4 = -1;
        }
        int i5 = viewOptionsObtainFrameOptions.height;
        if (i5 == i3) {
            i5 = -1;
        }
        AdaFrameItem.LayoutParamsUtil.setViewLayoutParams(viewObtainMainView, viewOptionsObtainFrameOptions.left, viewOptionsObtainFrameOptions.top, i4, i5);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        bVar.addFrameItem(bVar.obtainWebviewParent(), layoutParams);
        bVar.setVisible(false, false);
        aVar.addFrameItem(bVar, layoutParams);
        dVar.setFrameId(str2);
        bVar.k.e(bVar);
        processEvent(IMgr.MgrType.FeatureMgr, 1, new Object[]{dVar, "UI", "", null});
    }

    private void a(IApp iApp, ViewGroup viewGroup) {
        if (!BaseInfo.isUniNViewBackgroud() || BaseInfo.isWeexUniJs(iApp)) {
            return;
        }
        Object objProcessEvent = processEvent(IMgr.MgrType.AppMgr, 24, null);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("template", String.valueOf(objProcessEvent));
            jSONObject.put(AbsoluteConst.XML_PATH, iApp.obtainAppDataPath() + "nvue_service.js");
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        processEvent(IMgr.MgrType.FeatureMgr, 10, new Object[]{iApp, "weex,io.dcloud.feature.weex.WeexFeature", "createServiceUniNView", new Object[]{iApp, jSONObject, viewGroup, "__uniapp__nvue"}});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(IApp iApp) {
        return (TextUtils.isEmpty(iApp.getOriginalDirectPage()) || iApp.obtainWebAppIntent().hasExtra(IntentConst.DIRECT_PAGE)) ? false : true;
    }

    private void a(int i2, io.dcloud.common.core.ui.a aVar, String str, io.dcloud.common.core.ui.b bVar, IApp iApp, String str2, IWebview iWebview) {
        boolean z;
        io.dcloud.common.core.ui.a aVar2;
        io.dcloud.common.core.ui.b bVar2;
        IWebviewStateListener iWebviewStateListenerObtainLaunchPageStateListener = iApp.obtainLaunchPageStateListener();
        if (iWebviewStateListenerObtainLaunchPageStateListener != null) {
            boolean z2 = PdrUtil.parseBoolean(String.valueOf(iWebviewStateListenerObtainLaunchPageStateListener.onCallBack(-1, iWebview)), true, false);
            iWebview.addStateListener(iApp.obtainLaunchPageStateListener());
            z = z2;
        } else {
            z = true;
        }
        int i3 = Integer.parseInt(iApp.obtainConfigProperty(IApp.ConfigProperty.CONFIG_DELAY));
        boolean z3 = Boolean.parseBoolean(iApp.obtainConfigProperty(IApp.ConfigProperty.CONFIG_AUTOCLOSE));
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z4 = BaseInfo.isWap2AppAppid(str) && Boolean.parseBoolean(iApp.obtainConfigProperty("w2a_autoclose"));
        Intent intentObtainWebAppIntent = iApp.obtainWebAppIntent();
        String strObtainConfigProperty = iApp.obtainConfigProperty(IApp.ConfigProperty.CONFIG_TARGET);
        if (TextUtils.isEmpty(strObtainConfigProperty)) {
            strObtainConfigProperty = "default";
        }
        boolean z5 = z3 || z4;
        int intExtra = intentObtainWebAppIntent.getIntExtra(IntentConst.FROM_STREAM_OPEN_TIMEOUT, 6000);
        boolean booleanExtra = intentObtainWebAppIntent.getBooleanExtra(IntentConst.FROM_STREAM_OPEN_AUTOCLOSE, z5);
        int i4 = (strObtainConfigProperty.startsWith("id:") && booleanExtra) ? ADSim.INTISPLSH : intExtra;
        int i5 = z4 ? Integer.parseInt(iApp.obtainConfigProperty("w2a_delay")) : i3;
        if (BaseInfo.isWap2AppAppid(str) && PdrUtil.isNetPath(str2)) {
            this.c = AbsoluteConst.EVENTS_RENDERING;
        } else {
            this.c = AbsoluteConst.EVENTS_LOADED;
        }
        String strObtainConfigProperty2 = iApp.obtainConfigProperty("event");
        if (!TextUtils.isEmpty(strObtainConfigProperty2)) {
            this.c = strObtainConfigProperty2;
        }
        Logger.d(Logger.MAIN_TAG, "_need_auto_close_splash = " + z3 + ";_delay=" + i3 + ";appid=" + str + ";f_event=" + this.c);
        int i6 = i5;
        int i7 = i4;
        iWebview.addStateListener(new i(strObtainConfigProperty, booleanExtra, iApp, aVar, str2, iWebview, i2, bVar, i5, jCurrentTimeMillis));
        if (booleanExtra) {
            aVar2 = aVar;
            bVar2 = bVar;
            a(i7, aVar2, bVar2, i6);
        } else {
            aVar2 = aVar;
            bVar2 = bVar;
        }
        if (!z || bVar2.isChildOfFrameView) {
            return;
        }
        aVar2.e(bVar2);
    }

    private void a(int i2, io.dcloud.common.core.ui.a aVar, io.dcloud.common.core.ui.b bVar, int i3) {
        if (this.d != null) {
            aVar.obtainMainView().removeCallbacks(this.d);
        }
        this.d = new j(aVar, bVar, i3);
        aVar.obtainMainView().postDelayed(this.d, i2);
    }

    private void a(io.dcloud.common.core.ui.a aVar) {
        if (this.d == null || aVar == null) {
            return;
        }
        aVar.obtainMainView().removeCallbacks(this.d);
        this.d = null;
    }

    void a(IApp iApp, IWebview iWebview, JSONObject jSONObject) {
        JSONArray jSONArray = new JSONArray();
        try {
            jSONArray.put(0, (Object) null);
            jSONArray.put(1, (Object) null);
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(0, (Object) null);
            jSONArray.put(2, jSONArray2);
            jSONArray.put(3, jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        processEvent(IMgr.MgrType.FeatureMgr, 1, new Object[]{iWebview, "UI", "n_createHDWebview", jSONArray});
    }

    void a(IApp iApp, IWebview iWebview) {
        if (BaseInfo.isWap2AppAppid(iApp.obtainAppId()) && iApp.obtainWebAppIntent().hasExtra(IntentConst.DIRECT_PAGE)) {
            processEvent(IMgr.MgrType.FeatureMgr, 1, new Object[]{iWebview, "UI", "n_createDirectWebview", null});
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(IApp iApp, io.dcloud.common.core.ui.a aVar) {
        io.dcloud.common.core.ui.b bVarI;
        if (aVar == null || aVar.o || (bVarI = aVar.i()) == null) {
            return;
        }
        k kVar = new k(bVarI, aVar, iApp);
        Runnable runnable = this.e;
        if (runnable != null) {
            this.f = true;
            MessageHandler.removeCallbacks(runnable);
        }
        MessageHandler.postDelayed(kVar, 100L);
    }

    public void a(IWebview iWebview, IApp iApp, boolean z, io.dcloud.common.core.ui.a aVar, int i2, io.dcloud.common.core.ui.b bVar, int i3, int i4) {
        RunnableC0032l runnableC0032l = new RunnableC0032l(aVar, z, bVar, iWebview, iApp, i3, i4, i2);
        this.e = runnableC0032l;
        MessageHandler.postDelayed(runnableC0032l, 100L);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0405 A[LOOP:0: B:183:0x03ff->B:185:0x0405, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x047c  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0516  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0220  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    io.dcloud.common.core.ui.b a(int r30, io.dcloud.common.DHInterface.IApp r31, io.dcloud.common.core.ui.a r32, io.dcloud.common.core.ui.b r33, io.dcloud.common.DHInterface.IEventCallback r34, java.lang.Object[] r35, io.dcloud.common.DHInterface.IDCloudWebviewClientListener r36) {
        /*
            Method dump skipped, instruction units count: 1304
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.a(int, io.dcloud.common.DHInterface.IApp, io.dcloud.common.core.ui.a, io.dcloud.common.core.ui.b, io.dcloud.common.DHInterface.IEventCallback, java.lang.Object[], io.dcloud.common.DHInterface.IDCloudWebviewClientListener):io.dcloud.common.core.ui.b");
    }

    private void a(io.dcloud.common.core.ui.b bVar, boolean z) {
        int i2 = bVar.obtainApp().getInt(0);
        int i3 = bVar.obtainApp().getInt(1);
        AdaWebViewParent adaWebViewParentObtainWebviewParent = bVar.obtainWebviewParent();
        ViewOptions viewOptionsObtainFrameOptions = bVar.obtainFrameOptions();
        ViewOptions viewOptionsObtainFrameOptions2 = adaWebViewParentObtainWebviewParent.obtainFrameOptions();
        io.dcloud.common.core.ui.a aVar = (io.dcloud.common.core.ui.a) bVar.obtainWebAppRootView();
        ViewOptions viewOptionsObtainFrameOptions3 = aVar.obtainFrameOptions();
        viewOptionsObtainFrameOptions2.setParentViewRect(viewOptionsObtainFrameOptions3);
        viewOptionsObtainFrameOptions2.updateViewData(viewOptionsObtainFrameOptions);
        viewOptionsObtainFrameOptions.left = 0;
        viewOptionsObtainFrameOptions.top = 0;
        viewOptionsObtainFrameOptions.anim_top = 0;
        viewOptionsObtainFrameOptions.anim_left = 0;
        ViewHelper.setY(bVar.obtainMainView(), 0.0f);
        ViewHelper.setX(bVar.obtainMainView(), 0.0f);
        viewOptionsObtainFrameOptions.width = i2;
        viewOptionsObtainFrameOptions.height = i3;
        int i4 = viewOptionsObtainFrameOptions2.left;
        int i5 = viewOptionsObtainFrameOptions2.top;
        int i6 = viewOptionsObtainFrameOptions2.width;
        int i7 = viewOptionsObtainFrameOptions2.height;
        adaWebViewParentObtainWebviewParent.setFrameOptions_Birth(ViewOptions.createViewOptionsData(viewOptionsObtainFrameOptions2, viewOptionsObtainFrameOptions3, viewOptionsObtainFrameOptions2));
        viewOptionsObtainFrameOptions2.allowUpdate = false;
        viewOptionsObtainFrameOptions2.maskColor = viewOptionsObtainFrameOptions.maskColor;
        adaWebViewParentObtainWebviewParent.mNeedOrientationUpdate = true;
        viewOptionsObtainFrameOptions.checkValueIsPercentage("left", -1, -1, false, true);
        viewOptionsObtainFrameOptions.checkValueIsPercentage("top", -1, -1, false, true);
        viewOptionsObtainFrameOptions.checkValueIsPercentage("width", -1, -1, false, true);
        viewOptionsObtainFrameOptions.checkValueIsPercentage("height", -1, -1, false, true);
        if (a(i4, i5, i6, i7, aVar.obtainFrameOptions().width, aVar.obtainFrameOptions().height)) {
            Logger.d("winmgr", "createWindow use LayoutParams.MATCH_PARENT !");
            bVar.addFrameItem(bVar.obtainWebviewParent(), new ViewGroup.LayoutParams(-1, -1));
            return;
        }
        bVar.addFrameItem(bVar.obtainWebviewParent(), AdaFrameItem.LayoutParamsUtil.createLayoutParams(i4, i5, i6, i7));
        if (z) {
            bVar.a(i2, i3);
            return;
        }
        int i8 = i4 + i6;
        if (i8 > i2 || i5 + i7 > i3) {
            StringBuilder sb = new StringBuilder();
            sb.append("updateLayoutParams allW=");
            sb.append(i8);
            sb.append(";pdrW=");
            sb.append(i2);
            sb.append(";pdrH=");
            sb.append(i3);
            sb.append(";allH=");
            int i9 = i5 + i7;
            sb.append(i9);
            Logger.d("winmgr", sb.toString());
            bVar.a(Math.max(i8, i2), Math.max(i9, i3));
        }
    }

    private boolean a(int i2, String str, String str2, boolean z) {
        return (TextUtils.isEmpty(str2) || !str2.startsWith("id:") || PdrUtil.isEmpty(str)) ? i2 == 4 ? !TextUtils.isEmpty(str2) && str2.equals("second") : i2 == 5 && z : str2.substring(3).equals(str);
    }

    private void a(AdaFrameItem adaFrameItem, IApp iApp) {
        int statusHeight;
        int iStringToColor;
        ViewOptions viewOptionsObtainFrameOptions = adaFrameItem.obtainFrameOptions();
        if (viewOptionsObtainFrameOptions.isStatusbar) {
            if ((PdrUtil.isEmpty(viewOptionsObtainFrameOptions.mStatusbarColor) || iApp.obtainStatusBarMgr().isImmersive) && -1 != (statusHeight = DeviceInfo.getStatusHeight(adaFrameItem.getContext()))) {
                int iHashCode = adaFrameItem.hashCode();
                int statusBarDefaultColor = iApp.obtainStatusBarMgr().getStatusBarDefaultColor();
                if (!PdrUtil.isEmpty(viewOptionsObtainFrameOptions.mStatusbarColor)) {
                    try {
                        iStringToColor = Color.parseColor(viewOptionsObtainFrameOptions.mStatusbarColor);
                    } catch (Exception unused) {
                        iStringToColor = PdrUtil.stringToColor(viewOptionsObtainFrameOptions.mStatusbarColor);
                    }
                    if (PdrUtil.checkStatusbarColor(iStringToColor)) {
                        statusBarDefaultColor = iStringToColor;
                    }
                }
                ViewGroup viewGroup = (ViewGroup) adaFrameItem.obtainMainView();
                if (viewGroup.findViewById(iHashCode) == null && viewOptionsObtainFrameOptions.height != 0) {
                    StatusBarView statusBarView = new StatusBarView(adaFrameItem.getContext());
                    statusBarView.setStatusBarHeight(statusHeight);
                    if (adaFrameItem.obtainFrameOptions().titleNView != null) {
                        "transparent".equals(adaFrameItem.obtainFrameOptions().titleNView.optString("type"));
                    }
                    statusBarView.setBackgroundColor(statusBarDefaultColor);
                    statusBarView.setId(iHashCode);
                    ViewGroup viewGroup2 = (ViewGroup) ((AdaFrameView) adaFrameItem).obtainWebviewParent().obtainMainView();
                    if (viewOptionsObtainFrameOptions.isStatusbarDodifyHeight) {
                        viewGroup.getLayoutParams().height = viewOptionsObtainFrameOptions.height + DeviceInfo.sStatusBarHeight;
                        viewGroup.addView(statusBarView);
                    } else {
                        viewGroup.addView(statusBarView);
                    }
                    JSONObject jSONObject = viewOptionsObtainFrameOptions.titleNView;
                    if (jSONObject == null || !TitleNViewUtil.isTitleTypeForDef(jSONObject)) {
                        viewGroup2.post(new c(this, adaFrameItem));
                    }
                }
            }
        }
    }

    private io.dcloud.common.core.ui.b a() {
        io.dcloud.common.core.ui.a aVarB = b();
        if (aVarB != null) {
            return aVarB.i();
        }
        return null;
    }

    public void a(io.dcloud.common.core.ui.b bVar) {
        bVar.p();
        bVar.k.b(bVar);
        if (bVar.e()) {
            processEvent(IMgr.MgrType.WindowMgr, 28, bVar.b);
            bVar.b = null;
        }
        bVar.r();
        bVar.i();
        bVar.i = false;
        bVar.h = false;
        bVar.inStack = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(io.dcloud.common.core.ui.b r9, java.lang.Object[] r10) {
        /*
            Method dump skipped, instruction units count: 213
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.a(io.dcloud.common.core.ui.b, java.lang.Object[]):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x007a  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(io.dcloud.common.core.ui.b r17, boolean r18, org.json.JSONObject r19, java.lang.String r20) {
        /*
            Method dump skipped, instruction units count: 437
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.a(io.dcloud.common.core.ui.b, boolean, org.json.JSONObject, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00fb  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(io.dcloud.common.core.ui.b r33, io.dcloud.common.core.ui.b r34) {
        /*
            Method dump skipped, instruction units count: 678
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.a(io.dcloud.common.core.ui.b, io.dcloud.common.core.ui.b):void");
    }
}
