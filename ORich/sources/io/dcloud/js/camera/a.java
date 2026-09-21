package io.dcloud.js.camera;

import android.hardware.Camera;
import com.taobao.weex.common.Constants;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.adapter.util.DeviceInfo;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.util.JSONUtil;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.common.util.StringUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class a {
    protected static int e = 501;
    protected static int f = 502;
    protected static int g = 5011;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<Camera.Size> f821a = null;
    List<Integer> b = null;
    List<Camera.Size> c = null;
    int d;

    /* JADX INFO: renamed from: io.dcloud.js.camera.a$a, reason: collision with other inner class name */
    static class C0079a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f822a;
        boolean b = true;
        int c = 0;
        JSONObject d = null;
        boolean e = false;

        C0079a() {
        }

        public String a() {
            return this.f822a;
        }

        public int b() {
            return this.c;
        }
    }

    a(int i) {
        this.d = i;
    }

    private String c() {
        List<Camera.Size> list = this.c;
        return list != null ? b(list) : "[]";
    }

    private String[] d() {
        List<Integer> list = this.b;
        String[] strArrA = list != null ? a(list) : null;
        return strArrA == null ? new String[]{"['jpg']", "['mp4']"} : strArrA;
    }

    private String e() {
        List<Camera.Size> list = this.f821a;
        return (list == null || DeviceInfo.sDeviceSdkVer < 11) ? "[]" : b(list);
    }

    protected String a() {
        String[] strArrD = d();
        return StringUtil.format("(function(){return{supportedImageResolutions : %s,supportedVideoResolutions : %s,supportedImageFormats : %s,supportedVideoFormats : %s};})();", c(), e(), strArrD[0], strArrD[1]);
    }

    public void b() {
        Camera cameraOpen;
        try {
            if (this.d != 2 || DeviceInfo.sDeviceSdkVer < 9) {
                cameraOpen = null;
            } else {
                for (int i = 0; i < Camera.getNumberOfCameras(); i++) {
                    Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                    Camera.getCameraInfo(i, cameraInfo);
                    if (cameraInfo.facing == 1) {
                        cameraOpen = Camera.open(i);
                        break;
                    }
                }
                cameraOpen = null;
            }
            if (cameraOpen == null) {
                cameraOpen = Camera.open();
            }
            if (DeviceInfo.sDeviceSdkVer >= 11) {
                this.f821a = cameraOpen.getParameters().getSupportedVideoSizes();
            }
            this.c = cameraOpen.getParameters().getSupportedPictureSizes();
            if (DeviceInfo.sDeviceSdkVer >= 8) {
                this.b = cameraOpen.getParameters().getSupportedPictureFormats();
            }
            cameraOpen.release();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private String[] a(List<Integer> list) {
        return new String[]{"['jpg']", "['mp4']"};
    }

    static C0079a a(String str, boolean z) {
        C0079a c0079a = new C0079a();
        if (str != null) {
            JSONObject jSONObject = null;
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
            }
            JSONUtil.getString(jSONObject, "resolution");
            String string = JSONUtil.getString(jSONObject, AbsoluteConst.JSON_KEY_FILENAME);
            JSONUtil.getString(jSONObject, AbsoluteConst.JSON_KEY_FORMAT);
            c0079a.f822a = PdrUtil.getDefaultPrivateDocPath(string, z ? "jpg" : "mp4");
            JSONUtil.getInt(jSONObject, "index");
            if (jSONObject != null && jSONObject.has("optimize")) {
                c0079a.b = JSONUtil.getBoolean(jSONObject, "optimize");
            }
            if (jSONObject != null && jSONObject.has("videoMaximumDuration")) {
                c0079a.c = JSONUtil.getInt(jSONObject, "videoMaximumDuration");
            }
            if (jSONObject != null && jSONObject.has("crop")) {
                c0079a.d = jSONObject.optJSONObject("crop");
            }
            if (!z) {
                if (jSONObject != null && jSONObject.has("videoCompress")) {
                    c0079a.e = jSONObject.optBoolean("videoCompress", false);
                }
            } else if (jSONObject != null && jSONObject.has("sizeType")) {
                String strOptString = jSONObject.optString("sizeType");
                if (strOptString.contains(Constants.Value.ORIGINAL) && strOptString.contains("compressed")) {
                    c0079a.e = true;
                } else {
                    c0079a.e = !strOptString.contains(Constants.Value.ORIGINAL);
                }
            }
        }
        return c0079a;
    }

    private String b(List<Camera.Size> list) {
        int size = list.size();
        if (list == null || size <= 1) {
            return "[]";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Operators.ARRAY_START_STR);
        for (int i = 0; i < size; i++) {
            stringBuffer.append("'" + list.get(i).width + Operators.MUL + list.get(i).height + "'");
            if (i != size - 1) {
                stringBuffer.append(",");
            }
        }
        stringBuffer.append(Operators.ARRAY_END_STR);
        return stringBuffer.toString();
    }
}
