package io.dcloud.js.camera;

import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.text.TextUtils;
import androidtranscoder.MediaTranscoder;
import androidtranscoder.format.MediaFormatStrategyPresets;
import androidx.core.content.FileProvider;
import com.dmcbig.mediapicker.entity.Media;
import io.dcloud.common.DHInterface.AbsMgr;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.DHInterface.IFeature;
import io.dcloud.common.DHInterface.ISysEventListener;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.adapter.io.DHFile;
import io.dcloud.common.adapter.util.ContentUriUtil;
import io.dcloud.common.adapter.util.DeviceInfo;
import io.dcloud.common.adapter.util.PermissionUtil;
import io.dcloud.common.constant.DOMException;
import io.dcloud.common.util.CompressUtil;
import io.dcloud.common.util.DCFileUriData;
import io.dcloud.common.util.Deprecated_JSUtil;
import io.dcloud.common.util.FileUtil;
import io.dcloud.common.util.JSUtil;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.common.util.ThreadPool;
import io.dcloud.feature.gallery.imageedit.IMGEditActivity;
import io.dcloud.js.camera.CameraFeatureImpl;
import io.dcloud.js.camera.a;
import java.io.File;
import java.io.IOException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class CameraFeatureImpl implements IFeature {

    class b extends PermissionUtil.StreamPermissionRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String[] f817a;
        final /* synthetic */ IApp b;
        final /* synthetic */ IWebview c;
        final /* synthetic */ String d;

        class a implements ISysEventListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f818a;
            final /* synthetic */ a.C0079a b;
            final /* synthetic */ String c;

            /* JADX INFO: renamed from: io.dcloud.js.camera.CameraFeatureImpl$b$a$a, reason: collision with other inner class name */
            class C0078a implements MediaTranscoder.Listener {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ Dialog f819a;

                C0078a(Dialog dialog) {
                    this.f819a = dialog;
                }

                @Override // androidtranscoder.MediaTranscoder.Listener
                public void onTranscodeCanceled() {
                    this.f819a.dismiss();
                    a aVar = a.this;
                    CameraFeatureImpl.this.a(aVar.b.e, aVar.f818a);
                    String json = DOMException.toJSON(-2, DOMException.MSG_USER_CANCEL);
                    b bVar = b.this;
                    Deprecated_JSUtil.execCallback(bVar.c, bVar.d, json, JSUtil.ERROR, true, false);
                }

                @Override // androidtranscoder.MediaTranscoder.Listener
                public void onTranscodeCompleted() {
                    this.f819a.dismiss();
                    a aVar = a.this;
                    CameraFeatureImpl.this.a(aVar.b.e, aVar.f818a);
                    a aVar2 = a.this;
                    String strConvert2RelPath = b.this.b.convert2RelPath(aVar2.c);
                    b bVar = b.this;
                    Deprecated_JSUtil.execCallback(bVar.c, bVar.d, strConvert2RelPath, JSUtil.OK, false, false);
                }

                @Override // androidtranscoder.MediaTranscoder.Listener
                public void onTranscodeFailed(Exception exc) {
                    this.f819a.dismiss();
                    a aVar = a.this;
                    CameraFeatureImpl.this.a(aVar.b.e, aVar.f818a);
                    String json = DOMException.toJSON(-99, exc.getMessage());
                    b bVar = b.this;
                    Deprecated_JSUtil.execCallback(bVar.c, bVar.d, json, JSUtil.ERROR, true, false);
                }

                @Override // androidtranscoder.MediaTranscoder.Listener
                public void onTranscodeProgress(double d) {
                }
            }

            a(String str, a.C0079a c0079a, String str2) {
                this.f818a = str;
                this.b = c0079a;
                this.c = str2;
            }

            @Override // io.dcloud.common.DHInterface.ISysEventListener
            public boolean onExecute(ISysEventListener.SysEventType sysEventType, Object obj) {
                Object[] objArr = (Object[]) obj;
                int iIntValue = ((Integer) objArr[0]).intValue();
                int iIntValue2 = ((Integer) objArr[1]).intValue();
                if (sysEventType == ISysEventListener.SysEventType.onActivityResult && iIntValue == io.dcloud.js.camera.a.f) {
                    if (iIntValue2 != -1) {
                        b bVar = b.this;
                        Deprecated_JSUtil.execCallback(bVar.c, bVar.d, null, JSUtil.ERROR, false, false);
                    } else {
                        if (!new File(this.f818a).exists() && DHFile.copyFile(ContentUriUtil.getImageAbsolutePath(b.this.b.getActivity(), ((Intent) objArr[2]).getData()), this.f818a) != 1) {
                            b bVar2 = b.this;
                            Deprecated_JSUtil.execCallback(bVar2.c, bVar2.d, null, JSUtil.ERROR, false, false);
                            b.this.b.unregisterSysEventListener(this, sysEventType);
                            return false;
                        }
                        Dialog dialogA = null;
                        try {
                            if (this.b.e) {
                                dialogA = io.dcloud.js.camera.b.a(b.this.c.getContext());
                                dialogA.show();
                                MediaTranscoder.getInstance().transcodeVideo(this.f818a, this.c, MediaFormatStrategyPresets.createAndroid720pStrategy(2, 1.0d), new C0078a(dialogA));
                            } else {
                                String strConvert2RelPath = b.this.b.convert2RelPath(this.c);
                                b bVar3 = b.this;
                                Deprecated_JSUtil.execCallback(bVar3.c, bVar3.d, strConvert2RelPath, JSUtil.OK, false, false);
                            }
                        } catch (IOException e) {
                            if (dialogA != null) {
                                dialogA.dismiss();
                            }
                            CameraFeatureImpl.this.a(this.b.e, this.f818a);
                            String json = DOMException.toJSON(-99, e.getMessage());
                            b bVar4 = b.this;
                            Deprecated_JSUtil.execCallback(bVar4.c, bVar4.d, json, JSUtil.ERROR, true, false);
                        }
                    }
                    b.this.b.unregisterSysEventListener(this, sysEventType);
                }
                return false;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(IApp iApp, String[] strArr, IApp iApp2, IWebview iWebview, String str) {
            super(iApp);
            this.f817a = strArr;
            this.b = iApp2;
            this.c = iWebview;
            this.d = str;
        }

        @Override // io.dcloud.common.adapter.util.PermissionUtil.Request
        public void onDenied(String str) {
            Deprecated_JSUtil.execCallback(this.c, this.d, DOMException.toJSON(11, DOMException.MSG_NO_PERMISSION), JSUtil.ERROR, true, false);
        }

        @Override // io.dcloud.common.adapter.util.PermissionUtil.Request
        public void onGranted(String str) {
            String str2;
            try {
                a.C0079a c0079aA = io.dcloud.js.camera.a.a(this.f817a[1], false);
                String strConvert2AbsFullPath = this.b.convert2AbsFullPath(this.c.obtainFullUrl(), c0079aA.a());
                if (JSUtil.checkOperateDirErrorAndCallback(this.c, this.d, strConvert2AbsFullPath)) {
                    Deprecated_JSUtil.execCallback(this.c, this.d, DOMException.toJSON(-5, DOMException.MSG_IO_ERROR), JSUtil.ERROR, true, false);
                    return;
                }
                if (c0079aA.e) {
                    str2 = strConvert2AbsFullPath + ".temp";
                } else {
                    str2 = strConvert2AbsFullPath;
                }
                File file = new File(str2);
                File parentFile = file.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdirs();
                }
                this.b.registerSysEventListener(new a(str2, c0079aA, strConvert2AbsFullPath), ISysEventListener.SysEventType.onActivityResult);
                Intent intent = new Intent("android.media.action.VIDEO_CAPTURE");
                if (c0079aA.b() != 0) {
                    intent.putExtra("android.intent.extra.durationLimit", c0079aA.b());
                }
                if (Build.VERSION.SDK_INT >= 29 && file.exists()) {
                    intent.putExtra("output", FileProvider.getUriForFile(this.c.getContext(), this.c.getContext().getPackageName() + ".dc.fileprovider", file));
                }
                this.c.getActivity().startActivityForResult(intent, io.dcloud.js.camera.a.f);
            } catch (Exception e) {
                Deprecated_JSUtil.execCallback(this.c, this.d, DOMException.toJSON(11, e.getMessage()), JSUtil.ERROR, true, false);
            }
        }
    }

    class c extends PermissionUtil.StreamPermissionRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ io.dcloud.js.camera.a f820a;
        final /* synthetic */ String[] b;
        final /* synthetic */ IWebview c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(CameraFeatureImpl cameraFeatureImpl, IApp iApp, io.dcloud.js.camera.a aVar, String[] strArr, IWebview iWebview) {
            super(iApp);
            this.f820a = aVar;
            this.b = strArr;
            this.c = iWebview;
        }

        @Override // io.dcloud.common.adapter.util.PermissionUtil.Request
        public void onDenied(String str) {
        }

        @Override // io.dcloud.common.adapter.util.PermissionUtil.Request
        public void onGranted(String str) {
            this.f820a.b();
            String[] strArr = this.b;
            if (strArr.length >= 3) {
                Deprecated_JSUtil.execCallback(this.c, strArr[2], this.f820a.a(), JSUtil.OK, true, false);
            }
        }
    }

    @Override // io.dcloud.common.DHInterface.IFeature
    public void dispose(String str) {
    }

    @Override // io.dcloud.common.DHInterface.IFeature
    public String execute(IWebview iWebview, String str, String[] strArr) {
        IApp iAppObtainApp = iWebview.obtainFrameView().obtainApp();
        String str2 = strArr[0];
        if (Build.VERSION.SDK_INT >= 24) {
            StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().build());
        }
        if (str.equals("captureImage")) {
            a.C0079a c0079aA = io.dcloud.js.camera.a.a(strArr[1], true);
            String strConvert2AbsFullPath = iAppObtainApp.convert2AbsFullPath(iWebview.obtainFullUrl(), c0079aA.a());
            if (!FileUtil.checkPrivatePath(iWebview.getContext(), strConvert2AbsFullPath) && FileUtil.getPathForPublicType(strConvert2AbsFullPath) == null) {
                Deprecated_JSUtil.execCallback(iWebview, str2, DOMException.toJSON(-5, DOMException.MSG_PATH_NOT_PRIVATE_ERROR), JSUtil.ERROR, true, false);
                return null;
            }
            PermissionUtil.usePermission(iAppObtainApp.getActivity(), PermissionUtil.PMS_CAMERA, new a(this, iAppObtainApp, iWebview, str2, strConvert2AbsFullPath, c0079aA, iAppObtainApp));
        } else if (str.equals("startVideoCapture")) {
            PermissionUtil.usePermission(iAppObtainApp.getActivity(), PermissionUtil.PMS_CAMERA, new b(iAppObtainApp, strArr, iAppObtainApp, iWebview, str2));
        } else if (str.equals("getCamera")) {
            io.dcloud.js.camera.a aVar = new io.dcloud.js.camera.a(PdrUtil.parseInt(strArr[1], 1));
            if (PermissionUtil.checkSelfPermission(iAppObtainApp.getActivity(), "android.permission.CAMERA") == 0) {
                aVar.b();
                return aVar.a();
            }
            PermissionUtil.usePermission(iAppObtainApp.getActivity(), PermissionUtil.PMS_CAMERA, new c(this, iAppObtainApp, aVar, strArr, iWebview));
        }
        return null;
    }

    @Override // io.dcloud.common.DHInterface.IFeature
    public void init(AbsMgr absMgr, String str) {
    }

    class a extends PermissionUtil.StreamPermissionRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWebview f809a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;
        final /* synthetic */ a.C0079a d;
        final /* synthetic */ IApp e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(CameraFeatureImpl cameraFeatureImpl, IApp iApp, IWebview iWebview, String str, String str2, a.C0079a c0079a, IApp iApp2) {
            super(iApp);
            this.f809a = iWebview;
            this.b = str;
            this.c = str2;
            this.d = c0079a;
            this.e = iApp2;
        }

        @Override // io.dcloud.common.adapter.util.PermissionUtil.Request
        public void onDenied(String str) {
            Deprecated_JSUtil.execCallback(this.f809a, this.b, DOMException.toJSON(11, DOMException.MSG_NO_PERMISSION), JSUtil.ERROR, true, false);
        }

        @Override // io.dcloud.common.adapter.util.PermissionUtil.Request
        public void onGranted(String str) {
            try {
                if (JSUtil.checkOperateDirErrorAndCallback(this.f809a, this.b, this.c)) {
                    Deprecated_JSUtil.execCallback(this.f809a, this.b, DOMException.toJSON(-5, DOMException.MSG_IO_ERROR), JSUtil.ERROR, true, false);
                    return;
                }
                File file = new File(this.c);
                File parentFile = file.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdirs();
                }
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                DCFileUriData shareImageUri = FileUtil.getShareImageUri(this.f809a.getContext(), file, this.d.a(), intent);
                this.e.registerSysEventListener(new C0073a(shareImageUri), ISysEventListener.SysEventType.onActivityResult);
                intent.putExtra("output", shareImageUri.fileUri);
                this.f809a.getActivity().startActivityForResult(intent, io.dcloud.js.camera.a.e);
            } catch (Exception e) {
                Deprecated_JSUtil.execCallback(this.f809a, this.b, DOMException.toJSON(11, e.getMessage()), JSUtil.ERROR, true, false);
            }
        }

        /* JADX INFO: renamed from: io.dcloud.js.camera.CameraFeatureImpl$a$a, reason: collision with other inner class name */
        class C0073a implements ISysEventListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ DCFileUriData f810a;

            C0073a(DCFileUriData dCFileUriData) {
                this.f810a = dCFileUriData;
            }

            @Override // io.dcloud.common.DHInterface.ISysEventListener
            public boolean onExecute(ISysEventListener.SysEventType sysEventType, Object obj) {
                Object[] objArr = (Object[]) obj;
                int iIntValue = ((Integer) objArr[0]).intValue();
                int iIntValue2 = ((Integer) objArr[1]).intValue();
                if (sysEventType == ISysEventListener.SysEventType.onActivityResult && iIntValue == io.dcloud.js.camera.a.e) {
                    if (iIntValue2 == -1) {
                        ThreadPool.self().addThreadTask(new RunnableC0074a());
                    } else {
                        String json = DOMException.toJSON(11, "resultCode is wrong");
                        a aVar = a.this;
                        Deprecated_JSUtil.execCallback(aVar.f809a, aVar.b, json, JSUtil.ERROR, true, false);
                    }
                    a.this.e.unregisterSysEventListener(this, sysEventType);
                }
                return false;
            }

            /* JADX INFO: renamed from: io.dcloud.js.camera.CameraFeatureImpl$a$a$a, reason: collision with other inner class name */
            class RunnableC0074a implements Runnable {

                /* JADX INFO: renamed from: io.dcloud.js.camera.CameraFeatureImpl$a$a$a$a, reason: collision with other inner class name */
                class RunnableC0075a implements Runnable {
                    RunnableC0075a() {
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        String json = DOMException.toJSON(-5, DOMException.MSG_IO_ERROR);
                        a aVar = a.this;
                        Deprecated_JSUtil.execCallback(aVar.f809a, aVar.b, json, JSUtil.ERROR, true, false);
                    }
                }

                /* JADX INFO: renamed from: io.dcloud.js.camera.CameraFeatureImpl$a$a$a$b */
                class b implements Runnable {
                    b() {
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        String json = DOMException.toJSON(-5, DOMException.MSG_IO_ERROR);
                        a aVar = a.this;
                        Deprecated_JSUtil.execCallback(aVar.f809a, aVar.b, json, JSUtil.ERROR, true, false);
                    }
                }

                /* JADX INFO: renamed from: io.dcloud.js.camera.CameraFeatureImpl$a$a$a$c */
                class c implements ISysEventListener {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    final /* synthetic */ String f814a;

                    /* JADX INFO: renamed from: io.dcloud.js.camera.CameraFeatureImpl$a$a$a$c$a, reason: collision with other inner class name */
                    class RunnableC0076a implements Runnable {

                        /* JADX INFO: renamed from: io.dcloud.js.camera.CameraFeatureImpl$a$a$a$c$a$a, reason: collision with other inner class name */
                        class RunnableC0077a implements Runnable {
                            RunnableC0077a() {
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                c cVar = c.this;
                                a aVar = a.this;
                                Deprecated_JSUtil.execCallback(aVar.f809a, aVar.b, cVar.f814a, JSUtil.OK, false, false);
                            }
                        }

                        RunnableC0076a() {
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            a.this.e.getActivity().runOnUiThread(new RunnableC0077a());
                        }
                    }

                    c(String str) {
                        this.f814a = str;
                    }

                    @Override // io.dcloud.common.DHInterface.ISysEventListener
                    public boolean onExecute(ISysEventListener.SysEventType sysEventType, Object obj) {
                        Object[] objArr = (Object[]) obj;
                        int iIntValue = ((Integer) objArr[0]).intValue();
                        int iIntValue2 = ((Integer) objArr[1]).intValue();
                        if (sysEventType == ISysEventListener.SysEventType.onActivityResult && iIntValue == io.dcloud.js.camera.a.g) {
                            if (iIntValue2 == -1) {
                                ThreadPool.self().addThreadTask(new RunnableC0076a());
                            } else {
                                String json = DOMException.toJSON(11, "resultCode is wrong");
                                a aVar = a.this;
                                Deprecated_JSUtil.execCallback(aVar.f809a, aVar.b, json, JSUtil.ERROR, true, false);
                            }
                            a.this.e.unregisterSysEventListener(this, sysEventType);
                        }
                        return false;
                    }
                }

                RunnableC0074a() {
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static /* synthetic */ void a(a.C0079a c0079a, String str, IApp iApp, final IWebview iWebview, final String str2, final String str3) {
                    if (c0079a.e) {
                        CompressUtil.compressImage(str, str, false);
                    }
                    iApp.getActivity().runOnUiThread(new Runnable() { // from class: io.dcloud.js.camera.-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraFeatureImpl.a.C0073a.RunnableC0074a.a(iWebview, str2, str3);
                        }
                    });
                }

                @Override // java.lang.Runnable
                public void run() {
                    String strConvert2RelPath;
                    String strA;
                    DCFileUriData dCFileUriData = C0073a.this.f810a;
                    if (dCFileUriData.isReplace && DHFile.copyFile(dCFileUriData.fileReplacePath, dCFileUriData.filePath, true, false) != 1) {
                        a.this.e.getActivity().runOnUiThread(new RunnableC0075a());
                        return;
                    }
                    C0073a c0073a = C0073a.this;
                    a aVar = a.this;
                    if (aVar.d.b) {
                        strA = io.dcloud.js.camera.b.a(c0073a.f810a.filePath);
                        if (TextUtils.isEmpty(strA)) {
                            a.this.e.getActivity().runOnUiThread(new b());
                            return;
                        }
                        strConvert2RelPath = a.this.e.convert2RelPath(strA);
                    } else {
                        strConvert2RelPath = aVar.e.convert2RelPath(c0073a.f810a.filePath);
                        strA = C0073a.this.f810a.filePath;
                    }
                    final String str = strA;
                    final String str2 = strConvert2RelPath;
                    JSONObject jSONObject = a.this.d.d;
                    if (jSONObject == null || !jSONObject.has("width") || !a.this.d.d.has("height")) {
                        C0073a.this.f810a.clear();
                        ThreadPool threadPoolSelf = ThreadPool.self();
                        a aVar2 = a.this;
                        final a.C0079a c0079a = aVar2.d;
                        final IApp iApp = aVar2.e;
                        final IWebview iWebview = aVar2.f809a;
                        final String str3 = aVar2.b;
                        threadPoolSelf.addThreadTask(new Runnable() { // from class: io.dcloud.js.camera.-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ
                            @Override // java.lang.Runnable
                            public final void run() {
                                CameraFeatureImpl.a.C0073a.RunnableC0074a.a(c0079a, str, iApp, iWebview, str3, str2);
                            }
                        });
                        return;
                    }
                    Media media = new Media(C0073a.this.f810a.filePath, "", System.currentTimeMillis(), 1, 1L, -1001, new File(C0073a.this.f810a.filePath).getParent());
                    Intent intent = new Intent(a.this.e.getActivity(), (Class<?>) IMGEditActivity.class);
                    intent.putExtra("IMAGE_URI", Uri.parse(DeviceInfo.FILE_PROTOCOL + media.path));
                    intent.putExtra("IMAGE_MEDIA_ID", media.id);
                    intent.putExtra("IMAGE_INDEX", 0);
                    intent.putExtra("IMAGE_CROP", a.this.d.d.toString());
                    intent.putExtra("IMAGE_SAVE_PATH", media.path);
                    a.this.e.registerSysEventListener(new c(str2), ISysEventListener.SysEventType.onActivityResult);
                    C0073a.this.f810a.clear();
                    a.this.e.getActivity().startActivityForResult(intent, io.dcloud.js.camera.a.g);
                    a.this.e.getActivity().overridePendingTransition(0, 0);
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static /* synthetic */ void a(IWebview iWebview, String str, String str2) {
                    Deprecated_JSUtil.execCallback(iWebview, str, str2, JSUtil.OK, false, false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, String str) {
        if (z) {
            try {
                if (str.endsWith(".temp")) {
                    new File(str).delete();
                }
            } catch (Exception unused) {
            }
        }
    }
}
