package com.taobao.weex.ui.view;

import android.content.Context;
import android.view.MotionEvent;
import androidx.appcompat.widget.SwitchCompat;
import com.taobao.weex.ui.view.gesture.WXGesture;
import com.taobao.weex.ui.view.gesture.WXGestureObservable;

/* JADX INFO: loaded from: classes.dex */
public class WXSwitchView extends SwitchCompat implements WXGestureObservable {
    private WXGesture wxGesture;

    public WXSwitchView(Context context) {
        super(context);
        setShowText(false);
        setGravity(16);
    }

    @Override // com.taobao.weex.ui.view.gesture.WXGestureObservable
    public void registerGestureListener(WXGesture wXGesture) {
        this.wxGesture = wXGesture;
    }

    @Override // com.taobao.weex.ui.view.gesture.WXGestureObservable
    public WXGesture getGestureListener() {
        return this.wxGesture;
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        WXGesture wXGesture = this.wxGesture;
        return wXGesture != null ? zOnTouchEvent | wXGesture.onTouch(this, motionEvent) : zOnTouchEvent;
    }
}
