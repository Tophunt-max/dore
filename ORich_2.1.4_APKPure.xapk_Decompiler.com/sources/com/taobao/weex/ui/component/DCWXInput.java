package com.taobao.weex.ui.component;

import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.text.style.UnderlineSpan;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.alibaba.fastjson.JSONObject;
import com.facebook.common.callercontext.ContextChain;
import com.taobao.weex.WXSDKInstance;
import com.taobao.weex.annotation.JSMethod;
import com.taobao.weex.bridge.JSCallback;
import com.taobao.weex.bridge.WXBridgeManager;
import com.taobao.weex.common.Constants;
import com.taobao.weex.common.WXThread;
import com.taobao.weex.dom.CSSConstants;
import com.taobao.weex.dom.WXAttr;
import com.taobao.weex.dom.WXStyle;
import com.taobao.weex.el.parse.Operators;
import com.taobao.weex.layout.ContentBoxMeasurement;
import com.taobao.weex.ui.action.BasicComponentData;
import com.taobao.weex.ui.action.GraphicSize;
import com.taobao.weex.ui.component.WXComponent;
import com.taobao.weex.ui.view.WXEditText;
import com.taobao.weex.utils.TypefaceUtil;
import com.taobao.weex.utils.WXLogUtils;
import com.taobao.weex.utils.WXResourceUtils;
import com.taobao.weex.utils.WXUtils;
import com.taobao.weex.utils.WXViewUtils;
import io.dcloud.common.core.ui.DCKeyboardManager;
import io.dcloud.common.core.ui.keyboard.DCEditText;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.feature.uniapp.annotation.UniJSMethod;
import io.dcloud.feature.uniapp.common.UniConstants;
import io.dcloud.feature.uniapp.utils.UniUtils;
import io.dcloud.feature.uniapp.utils.UniViewUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes.dex */
public class DCWXInput extends WXComponent<WXEditText> {
    private static final int MAX_TEXT_FORMAT_REPEAT = 3;
    final String ADJUST_POSITION;
    final String PASSWORD;
    private int cursor;
    boolean isConfirmHold;
    private AtomicBoolean isLayoutFinished;
    public boolean isNeedConfirm;
    private boolean isPassword;
    float keyboardHeight;
    private String mBeforeText;
    private int mEditorAction;
    private List<TextView.OnEditorActionListener> mEditorActionListeners;
    private int mFormatRepeatCount;
    private TextFormatter mFormatter;
    private WXSDKInstance.FrameViewEventListener mFrameViewEventListener;
    private boolean mIgnoreNextOnInputEvent;
    private final InputMethodManager mInputMethodManager;
    private int mLineHeight;
    private boolean mListeningConfirm;
    private WXComponent.OnFocusChangeListener mOnFocusChangeListener;
    private TextPaint mPaint;
    private String mReturnKeyType;
    private TextWatcher mTextChangedEventDispatcher;
    private List<TextWatcher> mTextChangedListeners;
    private String mType;
    private float measureHeight;
    private float measureWidht;
    private JSONObject placeholderStyle;
    private String placeholderTextAlign;
    private int selectionEnd;
    private int selectionStart;
    private String textAlign;
    final InputFilter underLineFilter;

    private interface ReturnTypes {
        public static final String DEFAULT = "default";
        public static final String DONE = "done";
        public static final String GO = "go";
        public static final String NEXT = "next";
        public static final String SEARCH = "search";
        public static final String SEND = "send";
    }

    protected int getVerticalGravity() {
        return 16;
    }

    public DCWXInput(WXSDKInstance wXSDKInstance, WXVContainer wXVContainer, boolean z, BasicComponentData basicComponentData) {
        super(wXSDKInstance, wXVContainer, z, basicComponentData);
        this.mBeforeText = "";
        this.mType = "text";
        this.isPassword = false;
        this.mEditorAction = 6;
        this.mReturnKeyType = null;
        this.mListeningConfirm = false;
        this.mIgnoreNextOnInputEvent = false;
        this.mFormatter = null;
        this.mFormatRepeatCount = 0;
        this.mPaint = new TextPaint();
        this.mLineHeight = -1;
        this.ADJUST_POSITION = "adjustPosition";
        this.PASSWORD = Constants.Value.PASSWORD;
        this.keyboardHeight = 0.0f;
        this.isConfirmHold = false;
        this.isNeedConfirm = true;
        this.cursor = -1;
        this.selectionStart = Integer.MAX_VALUE;
        this.selectionEnd = Integer.MAX_VALUE;
        this.textAlign = "left";
        this.placeholderStyle = new JSONObject();
        this.measureHeight = -1.0f;
        this.measureWidht = -1.0f;
        this.underLineFilter = new InputFilter() { // from class: com.taobao.weex.ui.component.DCWXInput.2
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                SpannableString spannableString = new SpannableString(charSequence);
                Object[] spans = spannableString.getSpans(0, spannableString.length(), Object.class);
                if (spans == null) {
                    return null;
                }
                for (Object obj : spans) {
                    if (obj instanceof UnderlineSpan) {
                        return "";
                    }
                }
                return null;
            }
        };
        this.mOnFocusChangeListener = new AnonymousClass7();
        this.isLayoutFinished = new AtomicBoolean(false);
        interceptFocusAndBlurEvent();
        this.mInputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        setContentBoxMeasurement(new ContentBoxMeasurement() { // from class: com.taobao.weex.ui.component.DCWXInput.1
            @Override // com.taobao.weex.layout.ContentBoxMeasurement
            public void layoutAfter(float f, float f2) {
            }

            @Override // com.taobao.weex.layout.ContentBoxMeasurement
            public void measureInternal(float f, float f2, int i, int i2) {
                if (DCWXInput.this.getBasicComponentData().getStyles() == null || DCWXInput.this.getBasicComponentData().getStyles().size() == 0) {
                    DCWXInput.this.measureWidht = f;
                }
                if (CSSConstants.isUndefined(f2)) {
                    this.mMeasureHeight = WXViewUtils.getRealPxByWidth(DCWXInput.this.getInstance().getDefaultFontSize() * 1.4f, DCWXInput.this.getInstance().getInstanceViewPortWidthWithFloat());
                    DCWXInput.this.measureHeight = this.mMeasureHeight;
                }
            }

            @Override // com.taobao.weex.layout.ContentBoxMeasurement
            public void layoutBefore() {
                DCWXInput.this.updateStyleAndAttrs();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.taobao.weex.ui.component.WXComponent
    public void setHostLayoutParams(WXEditText wXEditText, int i, int i2, int i3, int i4, int i5, int i6) {
        super.setHostLayoutParams(wXEditText, i, i2, i3, i4, i5, i6);
    }

    @Override // io.dcloud.feature.uniapp.ui.component.AbsBasicComponent
    protected void setLayoutSize(GraphicSize graphicSize) {
        super.setLayoutSize(graphicSize);
    }

    @Override // com.taobao.weex.ui.component.WXComponent
    protected void layoutDirectionDidChanged(boolean z) {
        int textAlign = getTextAlign((String) getStyles().get(Constants.Name.TEXT_ALIGN));
        if (textAlign <= 0) {
            textAlign = GravityCompat.START;
        }
        if (getHostView() != null) {
            getHostView().setGravity(textAlign | getVerticalGravity());
        }
    }

    final float getMeasuredLineHeight() {
        int i = this.mLineHeight;
        return (i == -1 || i <= 0) ? this.mPaint.getFontMetrics(null) : i;
    }

    protected float getMeasureHeight() {
        return WXViewUtils.getRealPxByWidth(getMeasuredLineHeight() >= 50.0f ? getMeasureHeight() : 50.0f, getInstance().getInstanceViewPortWidthWithFloat());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStyleAndAttrs() {
        if (getStyles().size() > 0) {
            int fontSize = getStyles().containsKey(Constants.Name.FONT_SIZE) ? WXStyle.getFontSize(getStyles(), getInstance().getDefaultFontSize(), getViewPortWidth()) : -1;
            String fontFamily = getStyles().containsKey(Constants.Name.FONT_FAMILY) ? WXStyle.getFontFamily(getStyles()) : null;
            int fontStyle = getStyles().containsKey(Constants.Name.FONT_STYLE) ? WXStyle.getFontStyle(getStyles()) : -1;
            int fontWeight = getStyles().containsKey(Constants.Name.FONT_WEIGHT) ? WXStyle.getFontWeight(getStyles()) : -1;
            int lineHeight = WXStyle.getLineHeight(getStyles(), getViewPortWidth());
            if (lineHeight != -1) {
                this.mLineHeight = lineHeight;
            }
            if (fontSize != -1) {
                this.mPaint.setTextSize(fontSize);
            }
            if (fontFamily != null) {
                TypefaceUtil.applyFontStyle(this.mPaint, fontStyle, fontWeight, fontFamily);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.taobao.weex.ui.component.WXComponent
    public WXEditText initComponentHostView(Context context) {
        WXEditText wXEditText = new WXEditText(context, getInstanceId());
        appleStyleAfterCreated(wXEditText);
        wXEditText.setImeOptions(6);
        wXEditText.setFilters(new InputFilter[]{this.underLineFilter});
        return wXEditText;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.taobao.weex.ui.component.WXComponent
    public void onHostViewInitialized(WXEditText wXEditText) {
        super.onHostViewInitialized(wXEditText);
        if (this.measureWidht > 0.0f) {
            WXBridgeManager.getInstance().setStyleWidth(getInstanceId(), getRef(), this.measureWidht);
        }
        if (this.measureHeight > 0.0f) {
            WXBridgeManager.getInstance().setStyleHeight(getInstanceId(), getRef(), this.measureHeight);
        }
        addFocusChangeListener(new WXComponent.OnFocusChangeListener() { // from class: com.taobao.weex.ui.component.DCWXInput.3
            @Override // com.taobao.weex.ui.component.WXComponent.OnFocusChangeListener
            public void onFocusChange(boolean z) {
                if (!z) {
                    DCWXInput.this.decideSoftKeyboard();
                }
                DCWXInput.this.setPseudoClassStatus(Constants.PSEUDO.FOCUS, z);
                if (z) {
                    DCWXInput dCWXInput = DCWXInput.this;
                    dCWXInput.setTextAlign(dCWXInput.textAlign);
                } else {
                    if (DCWXInput.this.getHostView() == null || !PdrUtil.isEmpty(DCWXInput.this.getHostView().getText().toString())) {
                        return;
                    }
                    DCWXInput dCWXInput2 = DCWXInput.this;
                    int textAlign = dCWXInput2.getTextAlign(dCWXInput2.placeholderTextAlign == null ? DCWXInput.this.textAlign : DCWXInput.this.placeholderTextAlign);
                    if (textAlign > 0) {
                        DCWXInput.this.getHostView().setGravity(textAlign | DCWXInput.this.getVerticalGravity());
                    }
                }
            }
        });
        addKeyboardListener(wXEditText);
        if (this.isNeedConfirm) {
            addEditorChangeListener();
        }
    }

    private void addEditorChangeListener() {
        addEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.taobao.weex.ui.component.DCWXInput.4
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (DCWXInput.this.mListeningConfirm && i == DCWXInput.this.mEditorAction) {
                    HashMap map = new HashMap(1);
                    HashMap map2 = new HashMap(1);
                    map2.put("value", textView.getText().toString());
                    map.put("detail", map2);
                    DCWXInput.this.fireEvent("confirm", map);
                    if (!DCWXInput.this.isConfirmHold) {
                        DCWXInput.this.blur();
                    }
                    return true;
                }
                return DCWXInput.this.isConfirmHold;
            }
        });
    }

    @Override // com.taobao.weex.ui.component.WXComponent
    protected boolean isConsumeTouch() {
        return !isDisabled();
    }

    protected void appleStyleAfterCreated(final WXEditText wXEditText) {
        int textAlign = getTextAlign((String) getStyles().get(Constants.Name.TEXT_ALIGN));
        if (textAlign <= 0) {
            textAlign = GravityCompat.START;
        }
        wXEditText.setGravity(textAlign | getVerticalGravity());
        int color = WXResourceUtils.getColor("#999999");
        if (color != Integer.MIN_VALUE) {
            wXEditText.setHintTextColor(color);
        }
        TextWatcher textWatcher = new TextWatcher() { // from class: com.taobao.weex.ui.component.DCWXInput.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (DCWXInput.this.mTextChangedListeners != null) {
                    Iterator it = DCWXInput.this.mTextChangedListeners.iterator();
                    while (it.hasNext()) {
                        ((TextWatcher) it.next()).beforeTextChanged(charSequence, i, i2, i3);
                    }
                }
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (DCWXInput.this.mFormatter != null) {
                    String str = DCWXInput.this.mFormatter.format(DCWXInput.this.mFormatter.recover(charSequence.toString()));
                    if (str.equals(charSequence.toString()) || DCWXInput.this.mFormatRepeatCount >= 3) {
                        DCWXInput.this.mFormatRepeatCount = 0;
                    } else {
                        DCWXInput.this.mFormatRepeatCount++;
                        int length = DCWXInput.this.mFormatter.format(DCWXInput.this.mFormatter.recover(charSequence.subSequence(0, wXEditText.getSelectionStart()).toString())).length();
                        wXEditText.setText(str);
                        wXEditText.setSelection(length);
                        return;
                    }
                }
                if (DCWXInput.this.mTextChangedListeners != null) {
                    Iterator it = DCWXInput.this.mTextChangedListeners.iterator();
                    while (it.hasNext()) {
                        ((TextWatcher) it.next()).onTextChanged(charSequence, i, i2, i3);
                    }
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (DCWXInput.this.mTextChangedListeners != null) {
                    Iterator it = DCWXInput.this.mTextChangedListeners.iterator();
                    while (it.hasNext()) {
                        ((TextWatcher) it.next()).afterTextChanged(editable);
                    }
                }
            }
        };
        this.mTextChangedEventDispatcher = textWatcher;
        wXEditText.addTextChangedListener(textWatcher);
        wXEditText.setTextSize(0, WXStyle.getFontSize(getStyles(), getInstance().getDefaultFontSize(), getInstance().getInstanceViewPortWidthWithFloat()));
        wXEditText.setSingleLine(true);
    }

    @Override // com.taobao.weex.ui.component.WXComponent
    public void addEvent(String str) {
        if (getHostView() == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (str.equals("input")) {
            addTextChangedListener(new TextWatcher() { // from class: com.taobao.weex.ui.component.DCWXInput.6
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    if (DCWXInput.this.mIgnoreNextOnInputEvent) {
                        DCWXInput.this.mIgnoreNextOnInputEvent = false;
                        DCWXInput.this.mBeforeText = charSequence.toString();
                        return;
                    }
                    HashMap map = new HashMap(1);
                    HashMap map2 = new HashMap(3);
                    map2.put("value", charSequence.toString());
                    map2.put("cursor", Integer.valueOf(DCWXInput.this.getHostView().getSelectionEnd()));
                    try {
                    } catch (Exception unused) {
                        map2.put("keyCode", "0");
                    }
                    if (i2 == 0 && i3 != 0) {
                        String string = charSequence.subSequence(i, i3 + i).toString();
                        map2.put("keyCode", Integer.valueOf(Character.codePointAt(string, string.length() - 1)));
                    } else {
                        if (i2 != 0 && i3 == 0) {
                            String string2 = DCWXInput.this.mBeforeText.subSequence(i, i2 + i).toString();
                            map2.put("keyCode", Integer.valueOf(Character.codePointAt(string2, string2.length() - 1)));
                        }
                        DCWXInput.this.mBeforeText = charSequence.toString();
                        map.put("detail", map2);
                        DCWXInput.this.fireEvent("input", map);
                    }
                    DCWXInput.this.mBeforeText = charSequence.toString();
                    map.put("detail", map2);
                    DCWXInput.this.fireEvent("input", map);
                }
            });
        }
        if ("confirm".equals(str)) {
            this.mListeningConfirm = true;
        }
        if (Constants.Event.FOCUS.equals(str) || Constants.Event.BLUR.equals(str)) {
            setFocusAndBlur();
        }
        super.addEvent(str);
    }

    /* JADX INFO: renamed from: com.taobao.weex.ui.component.DCWXInput$7, reason: invalid class name */
    class AnonymousClass7 implements WXComponent.OnFocusChangeListener {
        int count = 0;

        AnonymousClass7() {
        }

        @Override // com.taobao.weex.ui.component.WXComponent.OnFocusChangeListener
        public void onFocusChange(boolean z) {
            WXEditText hostView = DCWXInput.this.getHostView();
            if (hostView == null) {
                return;
            }
            HashMap map = new HashMap(1);
            HashMap map2 = new HashMap(1);
            map2.put("value", hostView.getText().toString());
            if (!z) {
                map.put("detail", map2);
                DCWXInput.this.fireEvent(Constants.Event.BLUR, map);
            } else {
                if (DCWXInput.this.keyboardHeight == 0.0f) {
                    fireEventForFocus(hostView);
                    return;
                }
                map2.put("height", Float.valueOf(DCWXInput.this.keyboardHeight));
                map2.put("value", hostView.getText().toString());
                map.put("detail", map2);
                DCWXInput.this.fireEvent(Constants.Event.FOCUS, map);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fireEventForFocus(final TextView textView) {
            DCWXInput.this.getHostView().postDelayed(new Runnable() { // from class: com.taobao.weex.ui.component.DCWXInput.7.1
                @Override // java.lang.Runnable
                public void run() {
                    if (DCWXInput.this.keyboardHeight == 0.0f) {
                        AnonymousClass7.this.count++;
                        if (AnonymousClass7.this.count <= 3) {
                            AnonymousClass7.this.fireEventForFocus(textView);
                            return;
                        }
                        HashMap map = new HashMap(1);
                        HashMap map2 = new HashMap(1);
                        map2.put("value", textView.getText().toString());
                        map2.put("height", Float.valueOf(DCWXInput.this.keyboardHeight));
                        map.put("detail", map2);
                        DCWXInput.this.fireEvent(Constants.Event.FOCUS, map);
                        return;
                    }
                    AnonymousClass7.this.count = 0;
                    HashMap map3 = new HashMap(1);
                    HashMap map4 = new HashMap(1);
                    map4.put("value", textView.getText().toString());
                    map4.put("height", Float.valueOf(DCWXInput.this.keyboardHeight));
                    map3.put("detail", map4);
                    DCWXInput.this.fireEvent(Constants.Event.FOCUS, map3);
                }
            }, 200L);
        }
    }

    protected void setFocusAndBlur() {
        if (ismHasFocusChangeListener(this.mOnFocusChangeListener)) {
            return;
        }
        addFocusChangeListener(this.mOnFocusChangeListener);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0011  */
    @Override // com.taobao.weex.ui.component.WXComponent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected boolean setProperty(java.lang.String r6, java.lang.Object r7) {
        /*
            Method dump skipped, instruction units count: 748
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taobao.weex.ui.component.DCWXInput.setProperty(java.lang.String, java.lang.Object):boolean");
    }

    @WXComponentProp(name = Constants.Name.RETURN_KEY_TYPE)
    public void setReturnKeyType(String str) {
        if (getHostView() == null || str.equals(this.mReturnKeyType)) {
            return;
        }
        this.mReturnKeyType = str;
        str.hashCode();
        switch (str) {
            case "search":
                this.mEditorAction = 3;
                break;
            case "go":
                this.mEditorAction = 2;
                break;
            case "done":
                this.mEditorAction = 6;
                break;
            case "next":
                this.mEditorAction = 5;
                break;
            case "send":
                this.mEditorAction = 4;
                break;
            case "default":
                this.mEditorAction = 0;
                break;
        }
        blur();
        getHostView().setImeOptions(this.mEditorAction);
    }

    public void setPlaceholder(String str) {
        if (str == null || getHostView() == null) {
            return;
        }
        getHostView().setHint(str);
    }

    @WXComponentProp(name = Constants.Name.PLACEHOLDER_COLOR)
    public void setPlaceholderColor(String str) {
        int color;
        if (getHostView() == null || TextUtils.isEmpty(str) || (color = WXResourceUtils.getColor(str)) == Integer.MIN_VALUE) {
            return;
        }
        getHostView().setHintTextColor(color);
    }

    public void setType(String str) {
        Log.e("weex", "setType=" + str);
        if (str == null || getHostView() == null || this.mType.equals(str)) {
            return;
        }
        this.mType = str;
        getHostView().setInputType(getInputType(this.mType));
    }

    @WXComponentProp(name = Constants.Name.AUTOFOCUS)
    public void setAutofocus(final boolean z) {
        if (getHostView() == null) {
            return;
        }
        final WXEditText hostView = getHostView();
        if (!this.isLayoutFinished.get()) {
            if (getInstance().isFrameViewShow()) {
                getHostView().getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.taobao.weex.ui.component.DCWXInput.8
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        if (DCWXInput.this.getInstance() == null) {
                            return;
                        }
                        if (z) {
                            DCWXInput.this.isLayoutFinished.set(true);
                            DCWXInput.this.hostViewFocus(hostView);
                            DCWXInput dCWXInput = DCWXInput.this;
                            dCWXInput.setSelectionRange(dCWXInput.selectionStart, DCWXInput.this.selectionEnd);
                        } else {
                            hostView.clearFocus();
                        }
                        DCWXInput.this.getHostView().getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    }
                });
                return;
            }
            if (this.mFrameViewEventListener != null) {
                getInstance().removeFrameViewEventListener(this.mFrameViewEventListener);
            }
            this.mFrameViewEventListener = new WXSDKInstance.FrameViewEventListener() { // from class: com.taobao.weex.ui.component.DCWXInput.9
                @Override // com.taobao.weex.WXSDKInstance.FrameViewEventListener
                public void onShowAnimationEnd() {
                    if (DCWXInput.this.getInstance() == null) {
                        return;
                    }
                    if (z) {
                        DCWXInput.this.isLayoutFinished.set(true);
                        DCWXInput.this.hostViewFocus(hostView);
                        DCWXInput dCWXInput = DCWXInput.this;
                        dCWXInput.setSelectionRange(dCWXInput.selectionStart, DCWXInput.this.selectionEnd);
                    } else {
                        hostView.clearFocus();
                    }
                    DCWXInput.this.getInstance().removeFrameViewEventListener(this);
                    DCWXInput.this.mFrameViewEventListener = null;
                }
            };
            getInstance().addFrameViewEventListener(this.mFrameViewEventListener);
            return;
        }
        if (z) {
            hostViewFocus(hostView);
        } else {
            hideSoftKeyboard();
        }
        hostView.clearFocus();
    }

    @WXComponentProp(name = "adjustPosition")
    public void setAdjustPosition(Object obj) {
        if (getHostView() != null) {
            getHostView().setInputSoftMode(WXUtils.getBoolean(obj, true).booleanValue() ? DCKeyboardManager.SOFT_INPUT_MODE_ADJUST_PAN : DCKeyboardManager.SOFT_INPUT_MODE_ADJUST_NOTHING);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hostViewFocus(EditText editText) {
        editText.setFocusable(true);
        editText.setFocusableInTouchMode(true);
        editText.setCursorVisible(true);
        editText.requestFocus();
        showSoftKeyboard();
    }

    @WXComponentProp(name = "value")
    public void setText(String str) {
        WXEditText hostView = getHostView();
        if (hostView == null || TextUtils.equals(hostView.getText(), str)) {
            return;
        }
        this.mIgnoreNextOnInputEvent = true;
        hostView.setText(str);
        int length = this.cursor;
        if (length <= 0) {
            length = str.length();
        }
        if (str == null) {
            length = 0;
        }
        hostView.setSelection(length);
    }

    @WXComponentProp(name = "color")
    public void setColor(String str) {
        int color;
        if (getHostView() == null || TextUtils.isEmpty(str) || (color = WXResourceUtils.getColor(str)) == Integer.MIN_VALUE) {
            return;
        }
        getHostView().setTextColor(color);
    }

    @WXComponentProp(name = Constants.Name.FONT_SIZE)
    public void setFontSize(String str) {
        if (getHostView() == null || str == null) {
            return;
        }
        new HashMap(1).put(Constants.Name.FONT_SIZE, str);
        getHostView().setTextSize(0, WXStyle.getFontSize(r0, getInstance().getDefaultFontSize(), getInstance().getInstanceViewPortWidthWithFloat()));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0088  */
    @com.taobao.weex.ui.component.WXComponentProp(name = "placeholderStyle")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setPlaceholderStyle(com.alibaba.fastjson.JSONObject r18) {
        /*
            Method dump skipped, instruction units count: 678
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taobao.weex.ui.component.DCWXInput.setPlaceholderStyle(com.alibaba.fastjson.JSONObject):void");
    }

    @WXComponentProp(name = "placeholderClass")
    public void setPlaceholderClass(JSONObject jSONObject) {
        setPlaceholderStyle(jSONObject);
    }

    @WXComponentProp(name = Constants.Name.TEXT_ALIGN)
    public void setTextAlign(String str) {
        this.textAlign = str;
        int textAlign = getTextAlign(str);
        if (textAlign > 0) {
            getHostView().setGravity(textAlign | getVerticalGravity());
        }
    }

    @WXComponentProp(name = Constants.Name.SINGLELINE)
    public void setSingleLine(boolean z) {
        if (getHostView() == null) {
            return;
        }
        getHostView().setSingleLine(z);
    }

    @WXComponentProp(name = Constants.Name.LINES)
    public void setLines(int i) {
        if (getHostView() == null) {
            return;
        }
        getHostView().setLines(i);
    }

    @WXComponentProp(name = Constants.Name.MAX_LENGTH)
    public void setMaxLength(int i) {
        if (getHostView() == null) {
            return;
        }
        if (i == -1) {
            i = Integer.MAX_VALUE;
        }
        getHostView().setFilters(new InputFilter[]{new InputFilter.LengthFilter(i), this.underLineFilter});
    }

    @WXComponentProp(name = Constants.Name.MAXLENGTH)
    @Deprecated
    public void setMaxlength(int i) {
        setMaxLength(i);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private int getInputType(String str) {
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case -1034364087:
                if (str.equals("number")) {
                    b = 0;
                }
                break;
            case 114715:
                if (str.equals(Constants.Value.TEL)) {
                    b = 1;
                }
                break;
            case 116079:
                if (str.equals("url")) {
                    b = 2;
                }
                break;
            case 3076014:
                if (str.equals("date")) {
                    b = 3;
                }
                break;
            case 3556653:
                if (str.equals("text")) {
                    b = 4;
                }
                break;
            case 3560141:
                if (str.equals(Constants.Value.TIME)) {
                    b = 5;
                }
                break;
            case 95582509:
                if (str.equals("digit")) {
                    b = 6;
                }
                break;
            case 96619420:
                if (str.equals("email")) {
                    b = 7;
                }
                break;
            case 1216985755:
                if (str.equals(Constants.Value.PASSWORD)) {
                    b = 8;
                }
                break;
            case 1793702779:
                if (str.equals(Constants.Value.DATETIME)) {
                    b = 9;
                }
                break;
        }
        switch (b) {
            case 0:
                return 2;
            case 1:
                return 3;
            case 2:
                return 17;
            case 3:
                getHostView().setFocusable(false);
                return 0;
            case 4:
            default:
                return 1;
            case 5:
                if (getHostView() != null) {
                    getHostView().setFocusable(false);
                }
                return 0;
            case 6:
                return 8194;
            case 7:
                return 33;
            case 8:
                if (getHostView() == null) {
                    return 129;
                }
                getHostView().setTransformationMethod(PasswordTransformationMethod.getInstance());
                return 129;
            case 9:
                return 4;
        }
    }

    @WXComponentProp(name = UniConstants.Name.CURSOR_SPACING)
    public void setCursorSpacing(String str) {
        if (getHostView() != null) {
            getHostView().setCursorSpacing(UniViewUtils.getRealPxByWidth(UniUtils.getFloat(str), getInstance().getInstanceViewPortWidthWithFloat()));
        }
    }

    private void showSoftKeyboard() {
        if (getHostView() == null) {
            return;
        }
        getHostView().postDelayed(WXThread.secure(new Runnable() { // from class: com.taobao.weex.ui.component.DCWXInput.10
            @Override // java.lang.Runnable
            public void run() {
                DCWXInput.this.mInputMethodManager.showSoftInput(DCWXInput.this.getHostView(), 1);
            }
        }), 100L);
    }

    void hideSoftKeyboard() {
        if (getHostView() != null) {
            getHostView().postDelayed(WXThread.secure(new Runnable() { // from class: com.taobao.weex.ui.component.DCWXInput.11
                @Override // java.lang.Runnable
                public void run() {
                    DCWXInput.this.mInputMethodManager.hideSoftInputFromWindow(DCWXInput.this.getHostView().getWindowToken(), 0);
                }
            }), 16L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTextAlign(String str) {
        int i = isLayoutRTL() ? GravityCompat.END : GravityCompat.START;
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        str.hashCode();
        switch (str) {
            case "center":
                return 17;
            case "left":
                return GravityCompat.START;
            case "right":
                return GravityCompat.END;
            default:
                return i;
        }
    }

    @JSMethod
    public void blur() {
        WXEditText hostView = getHostView();
        if (hostView == null || !hostView.hasFocus()) {
            return;
        }
        if (getParent() != null) {
            getParent().interceptFocus();
        }
        hostView.clearFocus();
        hideSoftKeyboard();
    }

    public String getValue() {
        return getHostView().getText().toString();
    }

    @JSMethod
    public void setValue(String str) {
        getHostView().setText(str);
    }

    @JSMethod
    public void focus() {
        WXEditText hostView = getHostView();
        if (hostView == null || hostView.hasFocus()) {
            return;
        }
        if (getParent() != null) {
            getParent().ignoreFocus();
        }
        hostView.requestFocus();
        hostView.setFocusable(true);
        hostView.setFocusableInTouchMode(true);
        showSoftKeyboard();
    }

    @Override // com.taobao.weex.ui.component.WXComponent
    protected Object convertEmptyProperty(String str, Object obj) {
        str.hashCode();
        if (str.equals("color")) {
            return "black";
        }
        if (str.equals(Constants.Name.FONT_SIZE)) {
            return Integer.valueOf(getInstance().getDefaultFontSize());
        }
        return super.convertEmptyProperty(str, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void decideSoftKeyboard() {
        WXEditText hostView = getHostView();
        if (hostView != null) {
            final Context context = getContext();
            if (context instanceof Activity) {
                hostView.postDelayed(WXThread.secure(new Runnable() { // from class: com.taobao.weex.ui.component.DCWXInput.12
                    @Override // java.lang.Runnable
                    public void run() {
                        View currentFocus = ((Activity) context).getCurrentFocus();
                        if (currentFocus == null || (currentFocus instanceof EditText) || currentFocus.isFocused()) {
                            return;
                        }
                        DCWXInput.this.mInputMethodManager.hideSoftInputFromWindow(DCWXInput.this.getHostView().getWindowToken(), 0);
                    }
                }), 16L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSelectionRange(int i, int i2) {
        WXEditText hostView;
        if (i2 == Integer.MAX_VALUE || i == Integer.MAX_VALUE || (hostView = getHostView()) == null) {
            return;
        }
        int length = getHostView().length();
        if (i > i2) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > length) {
            i2 = length;
        }
        hostView.setSelection(i, i2 >= 0 ? i2 : 0);
    }

    @UniJSMethod
    public void getSelectionRange(String str) {
        HashMap map = new HashMap(2);
        WXEditText hostView = getHostView();
        if (hostView != null) {
            int selectionStart = hostView.getSelectionStart();
            int selectionEnd = hostView.getSelectionEnd();
            if (!hostView.hasFocus()) {
                selectionStart = 0;
                selectionEnd = 0;
            }
            map.put(Constants.Name.SELECTION_START, Integer.valueOf(selectionStart));
            map.put(Constants.Name.SELECTION_END, Integer.valueOf(selectionEnd));
        }
        WXBridgeManager.getInstance().callback(getInstanceId(), str, map, false);
    }

    @UniJSMethod
    public void getCursor(JSCallback jSCallback) {
        HashMap map = new HashMap(1);
        if (getHostView() != null && getHostView().isFocused()) {
            map.put("cursor", Integer.valueOf(getHostView().getSelectionEnd()));
        } else {
            map.put("cursor", 0);
        }
        jSCallback.invoke(map);
    }

    @JSMethod
    public void setTextFormatter(JSONObject jSONObject) {
        try {
            String string = jSONObject.getString("formatRule");
            String string2 = jSONObject.getString("formatReplace");
            String string3 = jSONObject.getString("recoverRule");
            String string4 = jSONObject.getString("recoverReplace");
            PatternWrapper toPattern = parseToPattern(string, string2);
            PatternWrapper toPattern2 = parseToPattern(string3, string4);
            if (toPattern == null || toPattern2 == null) {
                return;
            }
            this.mFormatter = new TextFormatter(toPattern, toPattern2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private final void addEditorActionListener(TextView.OnEditorActionListener onEditorActionListener) {
        WXEditText hostView;
        if (onEditorActionListener == null || (hostView = getHostView()) == null) {
            return;
        }
        if (this.mEditorActionListeners == null) {
            this.mEditorActionListeners = new ArrayList();
            hostView.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.taobao.weex.ui.component.DCWXInput.13
                private boolean handled = true;

                @Override // android.widget.TextView.OnEditorActionListener
                public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                    for (TextView.OnEditorActionListener onEditorActionListener2 : DCWXInput.this.mEditorActionListeners) {
                        if (onEditorActionListener2 != null) {
                            this.handled = onEditorActionListener2.onEditorAction(textView, i, keyEvent) & this.handled;
                        }
                    }
                    return this.handled;
                }
            });
        }
        this.mEditorActionListeners.add(onEditorActionListener);
    }

    void addTextChangedListener(TextWatcher textWatcher) {
        if (this.mTextChangedListeners == null) {
            this.mTextChangedListeners = new ArrayList();
        }
        this.mTextChangedListeners.add(textWatcher);
    }

    private void addKeyboardListener(final WXEditText wXEditText) {
        if (wXEditText != null && (wXEditText.getContext() instanceof Activity)) {
            getHostView().setkeyBoardHeightChangeListener(new DCEditText.OnKeyboardHeightChangeListener() { // from class: com.taobao.weex.ui.component.DCWXInput.14
                @Override // io.dcloud.common.core.ui.keyboard.DCEditText.OnKeyboardHeightChangeListener
                public void onChange(boolean z, int i) {
                    if (DCWXInput.this.getInstance() == null || DCWXInput.this.getInstance().isDestroy() || wXEditText == null) {
                        return;
                    }
                    DCWXInput.this.keyboardHeight = (int) WXViewUtils.getWebPxByWidth(i, r0.getInstance().getInstanceViewPortWidthWithFloat());
                    HashMap map = new HashMap(2);
                    map.put("height", Float.valueOf(DCWXInput.this.keyboardHeight));
                    map.put("duration", 0);
                    HashMap map2 = new HashMap(1);
                    map2.put("detail", map);
                    DCWXInput.this.fireEvent("keyboardheightchange", map2);
                    if (wXEditText.isFocused()) {
                        String str = DCWXInput.this.isPassword ? Constants.Value.PASSWORD : DCWXInput.this.mType;
                        if (!z && !DCWXInput.this.isConfirmHold && !str.equalsIgnoreCase(Constants.Value.PASSWORD) && !DCKeyboardManager.getInstance().getFrontInputType().equals(Constants.Value.PASSWORD)) {
                            DCWXInput.this.blur();
                        }
                        if (z) {
                            DCKeyboardManager.getInstance().setFrontInputType(str);
                        }
                    }
                    if (z) {
                        DCWXInput dCWXInput = DCWXInput.this;
                        dCWXInput.keyboardHeight = dCWXInput.keyboardHeight;
                    }
                }
            });
        }
    }

    @Override // com.taobao.weex.ui.component.WXComponent
    public void updateProperties(Map<String, Object> map) {
        String strValueOf;
        if (map != null && map.size() > 0) {
            setType(map.containsKey("type") ? String.valueOf(map.get("type")) : this.mType);
            String str = this.mType;
            if (str != null && str.equals("text") && map.containsKey("confirmType")) {
                if (map.containsKey("confirmType")) {
                    strValueOf = String.valueOf(map.get("confirmType"));
                } else {
                    strValueOf = this.mReturnKeyType;
                    if (strValueOf == null) {
                        strValueOf = "done";
                    }
                }
                setReturnKeyType(strValueOf);
            }
            WXAttr attrs = getAttrs();
            String str2 = Constants.Value.PASSWORD;
            if (attrs.containsKey(Constants.Value.PASSWORD)) {
                boolean zBooleanValue = WXUtils.getBoolean(getAttrs().get(Constants.Value.PASSWORD), false).booleanValue();
                this.isPassword = zBooleanValue;
                if (!zBooleanValue) {
                    str2 = this.mType;
                }
                if (str2 == null || getHostView() == null) {
                    return;
                } else {
                    getHostView().setInputType(getInputType(str2));
                }
            }
            if (map.containsKey("cursor")) {
                this.cursor = WXUtils.getInteger(map.get("cursor"), 0).intValue();
            }
            if (map.containsKey(Constants.Name.SELECTION_START)) {
                this.selectionStart = WXUtils.getInteger(map.get(Constants.Name.SELECTION_START), Integer.MAX_VALUE).intValue();
            }
            if (map.containsKey(Constants.Name.SELECTION_END)) {
                this.selectionEnd = WXUtils.getInteger(map.get(Constants.Name.SELECTION_END), Integer.MAX_VALUE).intValue();
            }
            if (map.containsKey(Constants.Name.PLACEHOLDER)) {
                setPlaceholder(WXUtils.getString(map.get(Constants.Name.PLACEHOLDER), ""));
            }
            if (map.containsKey("placeholderClass")) {
                this.placeholderStyle.putAll((JSONObject) JSONObject.parse(WXUtils.getString(map.get("placeholderClass"), "{}")));
            }
            if (map.containsKey("placeholderStyle")) {
                this.placeholderStyle.putAll((JSONObject) JSONObject.parse(WXUtils.getString(map.get("placeholderStyle"), "{}")));
            }
            if (map.containsKey("adjustPosition")) {
                setAdjustPosition(map.get("adjustPosition"));
            }
        }
        super.updateProperties(map);
    }

    @Override // com.taobao.weex.ui.component.WXComponent
    public void destroy() {
        super.destroy();
        List<TextView.OnEditorActionListener> list = this.mEditorActionListeners;
        if (list != null) {
            list.clear();
        }
        List<TextWatcher> list2 = this.mTextChangedListeners;
        if (list2 != null) {
            list2.clear();
        }
        if (this.mTextChangedEventDispatcher != null) {
            this.mTextChangedEventDispatcher = null;
        }
        if (getHostView() != null) {
            getHostView().destroy();
        }
    }

    private PatternWrapper parseToPattern(String str, String str2) {
        Pattern patternCompile;
        if (str == null || str2 == null) {
            return null;
        }
        if (!Pattern.compile("/[\\S]+/[i]?[m]?[g]?").matcher(str).matches()) {
            WXLogUtils.w("WXInput", "Illegal js pattern syntax: " + str);
            return null;
        }
        String strSubstring = str.substring(str.lastIndexOf(Operators.DIV) + 1);
        String strSubstring2 = str.substring(str.indexOf(Operators.DIV) + 1, str.lastIndexOf(Operators.DIV));
        int i = strSubstring.contains(ContextChain.TAG_INFRA) ? 2 : 0;
        if (strSubstring.contains(WXComponent.PROP_FS_MATCH_PARENT)) {
            i |= 32;
        }
        boolean zContains = strSubstring.contains("g");
        try {
            patternCompile = Pattern.compile(strSubstring2, i);
        } catch (PatternSyntaxException unused) {
            WXLogUtils.w("WXInput", "Pattern syntax error: " + strSubstring2);
            patternCompile = null;
        }
        if (patternCompile == null) {
            return null;
        }
        PatternWrapper patternWrapper = new PatternWrapper();
        patternWrapper.global = zContains;
        patternWrapper.matcher = patternCompile;
        patternWrapper.replace = str2;
        return patternWrapper;
    }

    private static class PatternWrapper {
        private boolean global;
        private Pattern matcher;
        private String replace;

        private PatternWrapper() {
            this.global = false;
        }
    }

    public static class TextFormatter {
        private PatternWrapper format;
        private PatternWrapper recover;

        private TextFormatter(PatternWrapper patternWrapper, PatternWrapper patternWrapper2) {
            this.format = patternWrapper;
            this.recover = patternWrapper2;
        }

        String format(String str) {
            try {
                PatternWrapper patternWrapper = this.format;
                if (patternWrapper != null) {
                    return patternWrapper.global ? this.format.matcher.matcher(str).replaceAll(this.format.replace) : this.format.matcher.matcher(str).replaceFirst(this.format.replace);
                }
            } catch (Throwable th) {
                WXLogUtils.w("WXInput", "[format] " + th.getMessage());
            }
            return str;
        }

        String recover(String str) {
            try {
                PatternWrapper patternWrapper = this.recover;
                if (patternWrapper != null) {
                    return patternWrapper.global ? this.recover.matcher.matcher(str).replaceAll(this.recover.replace) : this.recover.matcher.matcher(str).replaceFirst(this.recover.replace);
                }
            } catch (Throwable th) {
                WXLogUtils.w("WXInput", "[formatted] " + th.getMessage());
            }
            return str;
        }
    }
}
