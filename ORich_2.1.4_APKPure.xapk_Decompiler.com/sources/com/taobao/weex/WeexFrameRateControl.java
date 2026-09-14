package com.taobao.weex;

import android.os.Build;
import android.util.Log;
import android.view.Choreographer;
import com.taobao.weex.common.WXErrorCode;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class WeexFrameRateControl {
    private static final long VSYNC_FRAME = 16;
    private final Choreographer mChoreographer;
    private WeakReference<VSyncListener> mListener;
    private final Choreographer.FrameCallback mVSyncFrameCallback;
    private final Runnable runnable;

    public interface VSyncListener {
        void OnVSync();
    }

    public WeexFrameRateControl(VSyncListener vSyncListener) {
        this.mListener = new WeakReference<>(vSyncListener);
        if (Build.VERSION.SDK_INT > 15) {
            this.mChoreographer = Choreographer.getInstance();
            this.mVSyncFrameCallback = new Choreographer.FrameCallback() { // from class: com.taobao.weex.WeexFrameRateControl.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // android.view.Choreographer.FrameCallback
                public void doFrame(long j) {
                    VSyncListener vSyncListener2;
                    if (WeexFrameRateControl.this.mListener == null || (vSyncListener2 = (VSyncListener) WeexFrameRateControl.this.mListener.get()) == 0) {
                        return;
                    }
                    try {
                        vSyncListener2.OnVSync();
                        WeexFrameRateControl.this.mChoreographer.postFrameCallback(WeexFrameRateControl.this.mVSyncFrameCallback);
                    } catch (UnsatisfiedLinkError e) {
                        if (vSyncListener2 instanceof WXSDKInstance) {
                            ((WXSDKInstance) vSyncListener2).onRenderError(WXErrorCode.WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED.getErrorCode(), Log.getStackTraceString(e));
                        }
                    }
                }
            };
            this.runnable = null;
        } else {
            this.runnable = new Runnable() { // from class: com.taobao.weex.WeexFrameRateControl.2
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    VSyncListener vSyncListener2;
                    if (WeexFrameRateControl.this.mListener == null || (vSyncListener2 = (VSyncListener) WeexFrameRateControl.this.mListener.get()) == 0) {
                        return;
                    }
                    try {
                        vSyncListener2.OnVSync();
                        WXSDKManager.getInstance().getWXRenderManager().postOnUiThread(WeexFrameRateControl.this.runnable, 16L);
                    } catch (UnsatisfiedLinkError e) {
                        if (vSyncListener2 instanceof WXSDKInstance) {
                            ((WXSDKInstance) vSyncListener2).onRenderError(WXErrorCode.WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED.getErrorCode(), Log.getStackTraceString(e));
                        }
                    }
                }
            };
            this.mChoreographer = null;
            this.mVSyncFrameCallback = null;
        }
    }

    public void start() {
        Choreographer choreographer = this.mChoreographer;
        if (choreographer != null) {
            choreographer.postFrameCallback(this.mVSyncFrameCallback);
        } else if (this.runnable != null) {
            WXSDKManager.getInstance().getWXRenderManager().postOnUiThread(this.runnable, 16L);
        }
    }

    public void stop() {
        Choreographer choreographer = this.mChoreographer;
        if (choreographer != null) {
            choreographer.removeFrameCallback(this.mVSyncFrameCallback);
        } else if (this.runnable != null) {
            WXSDKManager.getInstance().getWXRenderManager().removeTask(this.runnable);
        }
    }
}
