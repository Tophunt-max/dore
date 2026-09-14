package com.taobao.weex.ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import com.taobao.weex.WXSDKInstance;
import com.taobao.weex.WXSDKManager;
import com.taobao.weex.common.Constants;
import com.taobao.weex.common.WXErrorCode;
import com.taobao.weex.ui.component.WXComponent;
import com.taobao.weex.ui.component.WXDiv;
import com.taobao.weex.ui.view.gesture.WXGesture;
import com.taobao.weex.ui.view.gesture.WXGestureObservable;
import com.taobao.weex.utils.WXExceptionUtils;
import com.taobao.weex.utils.WXLogUtils;
import io.dcloud.common.adapter.util.PlatformUtil;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class WXFrameLayout extends BaseFrameLayout implements WXGestureObservable, IRenderStatus<WXDiv>, IRenderResult<WXDiv> {
    private long downTimeMillis;
    private float downX;
    private float downY;
    private Object mOnTouchListener;
    private WeakReference<WXDiv> mWeakReference;
    private float moveX;
    private float moveY;
    private WXGesture wxGesture;

    public WXFrameLayout(Context context) {
        super(context);
    }

    @Override // com.taobao.weex.ui.view.IRenderResult
    public WXDiv getComponent() {
        WeakReference<WXDiv> weakReference = this.mWeakReference;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // com.taobao.weex.ui.view.IRenderStatus
    public void holdComponent(WXDiv wXDiv) {
        this.mWeakReference = new WeakReference<>(wXDiv);
    }

    @Override // com.taobao.weex.ui.view.gesture.WXGestureObservable
    public void registerGestureListener(WXGesture wXGesture) {
        this.wxGesture = wXGesture;
    }

    @Override // com.taobao.weex.ui.view.gesture.WXGestureObservable
    public WXGesture getGestureListener() {
        return this.wxGesture;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        WXGesture wXGesture = this.wxGesture;
        return wXGesture != null ? zDispatchTouchEvent | wXGesture.onTouch(this, motionEvent) : zDispatchTouchEvent;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        Object obj = this.mOnTouchListener;
        if (obj != null) {
            PlatformUtil.invokeMethod(obj.getClass().getName(), "onTouch", this.mOnTouchListener, new Class[]{View.class, MotionEvent.class}, new Object[]{this, motionEvent});
            int action = motionEvent.getAction();
            if (action == 0) {
                this.downTimeMillis = System.currentTimeMillis();
                this.downX = motionEvent.getRawX();
            } else if (action == 1 || action == 2 || action == 3) {
                this.moveX = motionEvent.getRawX();
            }
            if (Math.abs(this.moveX - this.downX) > 30.0f && System.currentTimeMillis() - this.downTimeMillis > 200) {
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    private void addPan(Object obj) {
        this.mOnTouchListener = obj;
    }

    private void removePan() {
        this.mOnTouchListener = null;
    }

    @Override // com.taobao.weex.ui.view.BaseFrameLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        WXSDKInstance sDKInstance;
        try {
            super.dispatchDrawInterval(canvas);
        } catch (Throwable th) {
            if (getComponent() != null) {
                notifyLayerOverFlow();
                if (getComponent() != null && (sDKInstance = WXSDKManager.getInstance().getSDKInstance(getComponent().getInstanceId())) != null && sDKInstance.getApmForInstance() != null && !sDKInstance.getApmForInstance().hasReportLayerOverDraw) {
                    sDKInstance.getApmForInstance().hasReportLayerOverDraw = true;
                    reportLayerOverFlowError();
                }
            }
            WXLogUtils.e("Layer overflow limit error", WXLogUtils.getStackTrace(th));
        }
    }

    private int reportLayerOverFlowError() {
        int iCalLayerDeep = calLayerDeep(this, 0);
        if (getComponent() != null) {
            WXExceptionUtils.commitCriticalExceptionRT(getComponent().getInstanceId(), WXErrorCode.WX_RENDER_ERR_LAYER_OVERFLOW, "draw android view", WXErrorCode.WX_RENDER_ERR_LAYER_OVERFLOW.getErrorMsg() + "Layer overflow limit error: " + iCalLayerDeep + " layers!", null);
        }
        return iCalLayerDeep;
    }

    private int calLayerDeep(View view, int i) {
        int i2 = i + 1;
        return (view.getParent() == null || !(view.getParent() instanceof View)) ? i2 : calLayerDeep((View) view.getParent(), i2);
    }

    public void notifyLayerOverFlow() {
        WXSDKInstance wXDiv;
        if (getComponent() == null || (wXDiv = getComponent().getInstance()) == null || wXDiv.getLayerOverFlowListeners() == null) {
            return;
        }
        for (String str : wXDiv.getLayerOverFlowListeners()) {
            WXComponent wXComponent = WXSDKManager.getInstance().getWXRenderManager().getWXComponent(wXDiv.getInstanceId(), str);
            HashMap map = new HashMap();
            map.put("ref", str);
            map.put(Constants.Weex.INSTANCEID, wXComponent.getInstanceId());
            wXComponent.fireEvent(Constants.Event.LAYEROVERFLOW, map);
        }
    }
}
