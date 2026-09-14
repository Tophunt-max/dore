package io.dcloud.feature.weex.adapter;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import android.widget.ImageView;
import com.facebook.drawee.drawable.ScalingUtils;
import com.facebook.drawee.generic.RoundingParams;
import com.taobao.weex.WXSDKInstance;
import com.taobao.weex.bridge.WXBridgeManager;
import com.taobao.weex.common.Constants;
import com.taobao.weex.dom.CSSConstants;
import com.taobao.weex.layout.ContentBoxMeasurement;
import com.taobao.weex.ui.action.BasicComponentData;
import com.taobao.weex.ui.component.WXComponentProp;
import com.taobao.weex.ui.component.WXImage;
import com.taobao.weex.ui.component.WXVContainer;
import com.taobao.weex.ui.view.border.BorderDrawable;
import com.taobao.weex.utils.WXDomUtils;
import com.taobao.weex.utils.WXUtils;
import com.taobao.weex.utils.WXViewUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class FrescoImageComponent extends WXImage {
    private String mResizeMode;

    public FrescoImageComponent(WXSDKInstance wXSDKInstance, WXVContainer wXVContainer, BasicComponentData basicComponentData) {
        super(wXSDKInstance, wXVContainer, basicComponentData);
        this.mResizeMode = "scaleToFill";
        if (basicComponentData.getStyles().containsKey(Constants.Name.FLEX)) {
            return;
        }
        setContentBoxMeasurement(new ContentBoxMeasurement() { // from class: io.dcloud.feature.weex.adapter.FrescoImageComponent.1
            @Override // com.taobao.weex.layout.ContentBoxMeasurement
            public void layoutAfter(float f, float f2) {
            }

            @Override // com.taobao.weex.layout.ContentBoxMeasurement
            public void layoutBefore() {
            }

            @Override // com.taobao.weex.layout.ContentBoxMeasurement
            public void measureInternal(float f, float f2, int i, int i2) {
                int realPxByWidth = (int) WXViewUtils.getRealPxByWidth(240.0f, FrescoImageComponent.this.getInstance().getInstanceViewPortWidthWithFloat());
                if (CSSConstants.isUndefined(f2)) {
                    f2 = realPxByWidth;
                }
                this.mMeasureHeight = f2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.taobao.weex.ui.component.WXImage, com.taobao.weex.ui.component.WXComponent
    public ImageView initComponentHostView(Context context) {
        FrescoImageView frescoImageView = new FrescoImageView(context);
        frescoImageView.getHierarchy().setActualImageScaleType(ScalingUtils.ScaleType.FIT_XY);
        return frescoImageView;
    }

    @WXComponentProp(name = "fadeShow")
    public void setFadeAnim(String str) {
        if (TextUtils.isEmpty(str) || getHostView() == null) {
            return;
        }
        ((FrescoImageView) getHostView()).setFadeShow(Boolean.valueOf(str).booleanValue());
    }

    @Override // com.taobao.weex.ui.component.WXImage, com.taobao.weex.ui.component.WXComponent
    protected boolean setProperty(String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "resize":
                String string = WXUtils.getString(obj, null);
                if (string != null) {
                    setResizeMode(string);
                }
                return true;
            case "mode":
                String string2 = WXUtils.getString(obj, null);
                if (string2 != null) {
                    setResizeMode(string2);
                }
                return true;
            case "resizeMode":
                String string3 = WXUtils.getString(obj, null);
                if (string3 != null) {
                    setResizeMode(string3);
                }
                return true;
            default:
                return super.setProperty(str, obj);
        }
    }

    @Override // com.taobao.weex.ui.component.WXImage
    public void setResizeMode(String str) {
        FrescoImageView frescoImageView = (FrescoImageView) getHostView();
        ScalingUtils.ScaleType customScaleType = ScalingUtils.ScaleType.FIT_XY;
        this.mResizeMode = str;
        if (!TextUtils.isEmpty(str)) {
            str.hashCode();
            switch (str) {
                case "stretch":
                    customScaleType = ScalingUtils.ScaleType.FIT_XY;
                    break;
                case "top right":
                    customScaleType = new CustomScaleType(1.0f, 0.0f);
                    break;
                case "heightFix":
                case "widthFix":
                    customScaleType = ScalingUtils.ScaleType.FIT_CENTER;
                    break;
                case "bottom":
                    customScaleType = new CustomScaleType(0.5f, 1.0f);
                    break;
                case "center":
                    customScaleType = new CustomScaleType(0.5f, 0.5f);
                    break;
                case "aspectFit":
                    customScaleType = ScalingUtils.ScaleType.FIT_CENTER;
                    break;
                case "top left":
                    customScaleType = new CustomScaleType(0.0f, 0.0f);
                    break;
                case "scaleToFill":
                    customScaleType = ScalingUtils.ScaleType.FIT_XY;
                    break;
                case "bottom left":
                    customScaleType = new CustomScaleType(0.0f, 1.0f);
                    break;
                case "top":
                    customScaleType = new CustomScaleType(0.5f, 0.0f);
                    break;
                case "left":
                    customScaleType = new CustomScaleType(0.0f, 0.5f);
                    break;
                case "cover":
                    customScaleType = ScalingUtils.ScaleType.CENTER_CROP;
                    break;
                case "right":
                    customScaleType = new CustomScaleType(1.0f, 0.5f);
                    break;
                case "aspectFill":
                    customScaleType = ScalingUtils.ScaleType.CENTER_CROP;
                    break;
                case "bottom right":
                    customScaleType = new CustomScaleType(1.0f, 1.0f);
                    break;
                case "contain":
                    customScaleType = ScalingUtils.ScaleType.FIT_CENTER;
                    break;
            }
        }
        frescoImageView.getHierarchy().setActualImageScaleType(customScaleType);
    }

    @Override // com.taobao.weex.ui.component.WXImage
    public void onImageFinish(boolean z, Map map) {
        super.onImageFinish(z, map);
        if (map != null) {
            String str = this.mResizeMode;
            str.hashCode();
            if (str.equals("heightFix")) {
                float f = Integer.parseInt(map.get("width").toString()) * (getLayoutHeight() / Integer.parseInt(map.get("height").toString()));
                if (getLayoutWidth() != f) {
                    WXBridgeManager.getInstance().setStyleWidth(getInstanceId(), getRef(), f);
                    return;
                }
                return;
            }
            if (str.equals("widthFix")) {
                int i = Integer.parseInt(map.get("width").toString());
                float f2 = Integer.parseInt(map.get("height").toString()) * (getLayoutWidth() / i);
                if (getLayoutHeight() != f2) {
                    WXBridgeManager.getInstance().setStyleHeight(getInstanceId(), getRef(), f2);
                }
            }
        }
    }

    public class CustomScaleType implements ScalingUtils.ScaleType {
        private float dxf;
        private float dyf;

        public CustomScaleType(float f, float f2) {
            this.dxf = f;
            this.dyf = f2;
        }

        @Override // com.facebook.drawee.drawable.ScalingUtils.ScaleType
        public Matrix getTransform(Matrix matrix, Rect rect, int i, int i2, float f, float f2) {
            float f3 = i;
            float realPxByWidth = WXViewUtils.getRealPxByWidth(f3, FrescoImageComponent.this.getInstance().getInstanceViewPortWidthWithFloat()) / f3;
            float fWidth = rect.left + ((rect.width() - (f3 * realPxByWidth)) * this.dxf);
            float fHeight = rect.top + ((rect.height() - (i2 * realPxByWidth)) * this.dyf);
            matrix.setScale(realPxByWidth, realPxByWidth);
            matrix.postTranslate(fWidth, fHeight);
            return matrix;
        }
    }

    @Override // com.taobao.weex.ui.component.WXImage, com.taobao.weex.ui.component.WXComponent
    public void updateProperties(Map<String, Object> map) {
        if (getHostView() != null) {
            super.updateProperties(map);
            updateBorderRadius();
        }
    }

    private void updateBorderRadius() {
        BorderDrawable borderDrawable = WXViewUtils.getBorderDrawable(getHostView());
        RoundingParams roundingParams = new RoundingParams();
        roundingParams.setCornersRadii(borderDrawable != null ? borderDrawable.getBorderInnerRadius(new RectF(0.0f, 0.0f, WXDomUtils.getContentWidth(this), WXDomUtils.getContentHeight(this))) : new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f});
        ((FrescoImageView) getHostView()).getHierarchy().setRoundingParams(roundingParams);
    }
}
