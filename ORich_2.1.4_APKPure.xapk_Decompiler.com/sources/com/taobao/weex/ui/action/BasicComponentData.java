package com.taobao.weex.ui.action;

import android.view.View;
import com.taobao.weex.dom.CSSShorthand;
import com.taobao.weex.dom.WXAttr;
import com.taobao.weex.dom.WXEvent;
import com.taobao.weex.dom.WXStyle;
import com.taobao.weex.ui.component.list.template.jni.NativeRenderObjectUtils;
import io.dcloud.feature.uniapp.ui.action.AbsComponentData;

/* JADX INFO: loaded from: classes.dex */
public class BasicComponentData<T extends View> extends AbsComponentData {
    public BasicComponentData(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    @Override // io.dcloud.feature.uniapp.ui.action.AbsComponentData
    public WXStyle getStyles() {
        return (WXStyle) super.getStyles();
    }

    @Override // io.dcloud.feature.uniapp.ui.action.AbsComponentData
    public WXAttr getAttrs() {
        return (WXAttr) super.getAttrs();
    }

    @Override // io.dcloud.feature.uniapp.ui.action.AbsComponentData
    public WXEvent getEvents() {
        return (WXEvent) super.getEvents();
    }

    @Override // io.dcloud.feature.uniapp.ui.action.AbsComponentData
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BasicComponentData mo13clone() throws CloneNotSupportedException {
        BasicComponentData basicComponentData = new BasicComponentData(this.mRef, this.mComponentType, this.mParentRef);
        basicComponentData.setBorders(getBorder().mo9clone());
        basicComponentData.setMargins(getMargin().mo9clone());
        basicComponentData.setPaddings(getPadding().mo9clone());
        WXAttr attrs = getAttrs();
        if (attrs != null) {
            basicComponentData.mAttributes = attrs.mo10clone();
        }
        if (this.mStyles != null) {
            basicComponentData.mStyles = this.mStyles.mo11clone();
        }
        if (this.mEvents != null) {
            basicComponentData.mEvents = this.mEvents.clone();
        }
        if (this.renderObjectPr != 0) {
            basicComponentData.setRenderObjectPr(NativeRenderObjectUtils.nativeCopyRenderObject(this.renderObjectPr));
        }
        return basicComponentData;
    }

    @Override // io.dcloud.feature.uniapp.ui.action.AbsComponentData
    public CSSShorthand getBorder() {
        return (CSSShorthand) super.getBorder();
    }

    @Override // io.dcloud.feature.uniapp.ui.action.AbsComponentData
    public CSSShorthand getMargin() {
        return (CSSShorthand) super.getMargin();
    }

    @Override // io.dcloud.feature.uniapp.ui.action.AbsComponentData
    public CSSShorthand getPadding() {
        return (CSSShorthand) super.getPadding();
    }
}
