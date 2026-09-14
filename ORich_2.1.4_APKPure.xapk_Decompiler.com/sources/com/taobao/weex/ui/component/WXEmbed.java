package com.taobao.weex.ui.component;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.taobao.weex.IWXRenderListener;
import com.taobao.weex.R;
import com.taobao.weex.WXEnvironment;
import com.taobao.weex.WXSDKInstance;
import com.taobao.weex.annotation.Component;
import com.taobao.weex.common.Constants;
import com.taobao.weex.common.OnWXScrollListener;
import com.taobao.weex.common.WXErrorCode;
import com.taobao.weex.common.WXRenderStrategy;
import com.taobao.weex.instance.InstanceOnFireEventInterceptor;
import com.taobao.weex.performance.WXInstanceApm;
import com.taobao.weex.ui.action.BasicComponentData;
import com.taobao.weex.ui.component.NestedContainer;
import com.taobao.weex.utils.WXLogUtils;
import com.taobao.weex.utils.WXUtils;
import com.taobao.weex.utils.WXViewUtils;
import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Map;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes.dex */
@Component(lazyload = false)
public class WXEmbed extends WXDiv implements WXSDKInstance.OnInstanceVisibleListener, NestedContainer {
    public static final String ITEM_ID = "itemId";
    public static final String PRIORITY_HIGH = "high";
    public static final String PRIORITY_LOW = "low";
    public static final String PRIORITY_NORMAL = "normal";
    public static final String STRATEGY_HIGH = "high";
    public static final String STRATEGY_NONE = "none";
    public static final String STRATEGY_NORMAL = "normal";
    private long hiddenTime;
    private EmbedInstanceOnScrollFireEventInterceptor mInstanceOnScrollFireEventInterceptor;
    private boolean mIsVisible;
    private EmbedRenderListener mListener;
    protected WXSDKInstance mNestedInstance;
    private String originUrl;
    private String priority;
    private String src;
    private String strategy;
    private static int ERROR_IMG_WIDTH = (int) WXViewUtils.getRealPxByWidth(270.0f, 750);
    private static int ERROR_IMG_HEIGHT = (int) WXViewUtils.getRealPxByWidth(260.0f, 750);

    public interface EmbedManager {
        WXEmbed getEmbed(String str);

        void putEmbed(String str, WXEmbed wXEmbed);
    }

    public static class FailToH5Listener extends ClickToReloadListener {
        @Override // com.taobao.weex.ui.component.WXEmbed.ClickToReloadListener, com.taobao.weex.ui.component.NestedContainer.OnNestedInstanceEventListener
        public void onException(NestedContainer nestedContainer, String str, String str2) {
            if (str != null && (nestedContainer instanceof WXEmbed) && str.startsWith("1|")) {
                ViewGroup viewContainer = nestedContainer.getViewContainer();
                WebView webView = new WebView(viewContainer.getContext());
                webView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                webView.getSettings().setJavaScriptEnabled(true);
                webView.removeJavascriptInterface("searchBoxJavaBridge_");
                webView.removeJavascriptInterface("accessibility");
                webView.removeJavascriptInterface("accessibilityTraversal");
                webView.getSettings().setSavePassword(false);
                viewContainer.removeAllViews();
                viewContainer.addView(webView);
                webView.loadUrl(((WXEmbed) nestedContainer).src);
                return;
            }
            super.onException(nestedContainer, str, str2);
        }
    }

    public static class ClickToReloadListener implements NestedContainer.OnNestedInstanceEventListener {
        @Override // com.taobao.weex.ui.component.NestedContainer.OnNestedInstanceEventListener
        public void onCreated(NestedContainer nestedContainer, WXSDKInstance wXSDKInstance) {
        }

        @Override // com.taobao.weex.ui.component.NestedContainer.OnNestedInstanceEventListener
        public boolean onPreCreate(NestedContainer nestedContainer, String str) {
            return true;
        }

        @Override // com.taobao.weex.ui.component.NestedContainer.OnNestedInstanceEventListener
        public String transformUrl(String str) {
            return str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.taobao.weex.ui.component.NestedContainer.OnNestedInstanceEventListener
        public void onException(NestedContainer nestedContainer, String str, String str2) {
            if (TextUtils.equals(str, WXErrorCode.WX_DEGRAD_ERR_NETWORK_BUNDLE_DOWNLOAD_FAILED.getErrorCode()) && (nestedContainer instanceof WXEmbed)) {
                final WXEmbed wXEmbed = (WXEmbed) nestedContainer;
                final ImageView imageView = new ImageView(wXEmbed.getContext());
                imageView.setImageResource(R.drawable.weex_error);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(WXEmbed.ERROR_IMG_WIDTH, WXEmbed.ERROR_IMG_HEIGHT);
                layoutParams.gravity = 17;
                imageView.setLayoutParams(layoutParams);
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                imageView.setAdjustViewBounds(true);
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.taobao.weex.ui.component.WXEmbed.ClickToReloadListener.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        imageView.setOnClickListener(null);
                        imageView.setEnabled(false);
                        wXEmbed.loadContent();
                    }
                });
                FrameLayout frameLayout = (FrameLayout) wXEmbed.getHostView();
                frameLayout.removeAllViews();
                frameLayout.addView(imageView);
                WXLogUtils.e("WXEmbed", "NetWork failure :" + str + ",\n error message :" + str2);
            }
        }
    }

    static class EmbedRenderListener implements IWXRenderListener {
        WXEmbed mComponent;
        NestedContainer.OnNestedInstanceEventListener mEventListener = new ClickToReloadListener();

        @Override // com.taobao.weex.IWXRenderListener
        public void onRefreshSuccess(WXSDKInstance wXSDKInstance, int i, int i2) {
        }

        @Override // com.taobao.weex.IWXRenderListener
        public void onRenderSuccess(WXSDKInstance wXSDKInstance, int i, int i2) {
        }

        EmbedRenderListener(WXEmbed wXEmbed) {
            this.mComponent = wXEmbed;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.taobao.weex.IWXRenderListener
        public void onViewCreated(WXSDKInstance wXSDKInstance, View view) {
            FrameLayout frameLayout = (FrameLayout) this.mComponent.getHostView();
            frameLayout.removeAllViews();
            frameLayout.addView(view);
        }

        @Override // com.taobao.weex.IWXRenderListener
        public void onException(WXSDKInstance wXSDKInstance, String str, String str2) {
            NestedContainer.OnNestedInstanceEventListener onNestedInstanceEventListener = this.mEventListener;
            if (onNestedInstanceEventListener != null) {
                onNestedInstanceEventListener.onException(this.mComponent, str, str2);
            }
        }
    }

    @Deprecated
    public WXEmbed(WXSDKInstance wXSDKInstance, WXVContainer wXVContainer, String str, boolean z, BasicComponentData basicComponentData) {
        this(wXSDKInstance, wXVContainer, basicComponentData);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WXEmbed(WXSDKInstance wXSDKInstance, WXVContainer wXVContainer, BasicComponentData basicComponentData) {
        Object obj;
        super(wXSDKInstance, wXVContainer, basicComponentData);
        this.mIsVisible = true;
        this.priority = "normal";
        this.strategy = "normal";
        this.mListener = new EmbedRenderListener(this);
        this.mInstanceOnScrollFireEventInterceptor = new EmbedInstanceOnScrollFireEventInterceptor(this);
        ERROR_IMG_WIDTH = (int) WXViewUtils.getRealPxByWidth(270.0f, wXSDKInstance.getInstanceViewPortWidthWithFloat());
        ERROR_IMG_HEIGHT = (int) WXViewUtils.getRealPxByWidth(260.0f, wXSDKInstance.getInstanceViewPortWidthWithFloat());
        if ((wXSDKInstance instanceof EmbedManager) && (obj = getAttrs().get(ITEM_ID)) != null) {
            ((EmbedManager) wXSDKInstance).putEmbed(obj.toString(), this);
        }
        this.priority = WXUtils.getString(getAttrs().get("priority"), "normal");
        this.strategy = WXUtils.getString(getAttrs().get(Constants.Name.STRATEGY), "none");
        wXSDKInstance.getApmForInstance().updateDiffStats(WXInstanceApm.KEY_PAGE_STATS_EMBED_COUNT, 1.0d);
    }

    @Override // com.taobao.weex.ui.component.NestedContainer
    public void setOnNestEventListener(NestedContainer.OnNestedInstanceEventListener onNestedInstanceEventListener) {
        this.mListener.mEventListener = onNestedInstanceEventListener;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.taobao.weex.ui.component.NestedContainer
    public ViewGroup getViewContainer() {
        return (ViewGroup) getHostView();
    }

    @Override // com.taobao.weex.ui.component.WXComponent
    protected boolean setProperty(String str, Object obj) {
        str.hashCode();
        if (str.equals("priority")) {
            String string = WXUtils.getString(obj, null);
            if (string != null) {
                setPriority(string);
            }
            return true;
        }
        if (str.equals("src")) {
            String string2 = WXUtils.getString(obj, null);
            if (string2 != null) {
                setSrc(string2);
            }
            return true;
        }
        return super.setProperty(str, obj);
    }

    @Override // com.taobao.weex.ui.component.NestedContainer
    public void renderNewURL(String str) {
        this.src = str;
        loadContent();
    }

    @Override // com.taobao.weex.ui.component.NestedContainer
    public void reload() {
        if (TextUtils.isEmpty(this.src)) {
            return;
        }
        loadContent();
    }

    public String getOriginUrl() {
        return this.originUrl;
    }

    public void setOriginUrl(String str) {
        this.originUrl = str;
    }

    @Override // com.taobao.weex.ui.component.WXComponent
    public void addEvent(String str) {
        super.addEvent(str);
        if (Constants.Event.SCROLL_START.equals(str)) {
            this.mInstanceOnScrollFireEventInterceptor.addInterceptEvent(str);
        } else if (Constants.Event.SCROLL_END.equals(str)) {
            this.mInstanceOnScrollFireEventInterceptor.addInterceptEvent(str);
        } else if ("scroll".equals(str)) {
            this.mInstanceOnScrollFireEventInterceptor.addInterceptEvent(str);
        }
    }

    @WXComponentProp(name = "src")
    public void setSrc(String str) {
        this.originUrl = str;
        this.src = str;
        WXSDKInstance wXSDKInstance = this.mNestedInstance;
        if (wXSDKInstance != null) {
            wXSDKInstance.destroy();
            this.mNestedInstance = null;
        }
        if (!this.mIsVisible || TextUtils.isEmpty(this.src)) {
            return;
        }
        loadContent();
    }

    public String getSrc() {
        return this.src;
    }

    @WXComponentProp(name = "priority")
    public void setPriority(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.priority = str;
    }

    protected void loadContent() {
        WXSDKInstance wXSDKInstance = this.mNestedInstance;
        if (wXSDKInstance != null) {
            wXSDKInstance.destroy();
        }
        this.mNestedInstance = createInstance();
        EmbedRenderListener embedRenderListener = this.mListener;
        if (embedRenderListener == null || embedRenderListener.mEventListener == null || this.mListener.mEventListener.onPreCreate(this, this.src)) {
            return;
        }
        this.mListener.mEventListener.onCreated(this, this.mNestedInstance);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int getLevel(WXEmbed wXEmbed) {
        String str = wXEmbed.priority;
        if (!"high".equals(wXEmbed.strategy)) {
            if (TextUtils.equals(str, "low")) {
                return 0;
            }
            if (TextUtils.equals(str, "high")) {
                return 10;
            }
        }
        return 5;
    }

    private WXSDKInstance createInstance() {
        WXSDKInstance wXSDKInstanceCreateNestedInstance = getInstance().createNestedInstance(this);
        wXSDKInstanceCreateNestedInstance.setParentInstance(getInstance());
        if (!getAttrs().containsKey("disableInstanceVisibleListener")) {
            getInstance().addOnInstanceVisibleListener(this);
        }
        wXSDKInstanceCreateNestedInstance.registerRenderListener(this.mListener);
        this.mInstanceOnScrollFireEventInterceptor.resetFirstLaterScroller();
        wXSDKInstanceCreateNestedInstance.addInstanceOnFireEventInterceptor(this.mInstanceOnScrollFireEventInterceptor);
        wXSDKInstanceCreateNestedInstance.registerOnWXScrollListener(this.mInstanceOnScrollFireEventInterceptor);
        String strTransformUrl = this.src;
        EmbedRenderListener embedRenderListener = this.mListener;
        if (embedRenderListener != null && embedRenderListener.mEventListener != null) {
            strTransformUrl = this.mListener.mEventListener.transformUrl(this.src);
            if (!this.mListener.mEventListener.onPreCreate(this, this.src)) {
                return null;
            }
        }
        String str = strTransformUrl;
        if (TextUtils.isEmpty(str)) {
            this.mListener.mEventListener.onException(this, WXErrorCode.WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR.getErrorCode(), WXErrorCode.WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR.getErrorMsg() + "!!wx embed src url is null");
            return wXSDKInstanceCreateNestedInstance;
        }
        wXSDKInstanceCreateNestedInstance.setContainerInfo(WXInstanceApm.KEY_PAGE_PROPERTIES_INSTANCE_TYPE, WXBasicComponentType.EMBED);
        wXSDKInstanceCreateNestedInstance.setContainerInfo(WXInstanceApm.KEY_PAGE_PROPERTIES_PARENT_PAGE, getInstance().getWXPerformance().pageName);
        wXSDKInstanceCreateNestedInstance.renderByUrl(str, str, null, null, WXRenderStrategy.APPEND_ASYNC);
        return wXSDKInstanceCreateNestedInstance;
    }

    @Override // com.taobao.weex.ui.component.WXComponent
    public void setVisibility(String str) {
        WXSDKInstance wXSDKInstance;
        super.setVisibility(str);
        boolean zEquals = TextUtils.equals(str, "visible");
        if (this.mIsVisible != zEquals) {
            if (!TextUtils.isEmpty(this.src) && zEquals) {
                WXSDKInstance wXSDKInstance2 = this.mNestedInstance;
                if (wXSDKInstance2 == null) {
                    loadContent();
                } else {
                    wXSDKInstance2.onViewAppear();
                }
            }
            if (!zEquals && (wXSDKInstance = this.mNestedInstance) != null) {
                wXSDKInstance.onViewDisappear();
            }
            this.mIsVisible = zEquals;
            doAutoEmbedMemoryStrategy();
        }
    }

    @Override // io.dcloud.feature.uniapp.ui.component.AbsVContainer, com.taobao.weex.ui.component.WXComponent
    public void destroy() {
        super.destroy();
        destoryNestInstance();
        this.src = null;
        if (getInstance() != null) {
            getInstance().removeOnInstanceVisibleListener(this);
        }
    }

    private void doAutoEmbedMemoryStrategy() {
        if ("none".equals(this.strategy)) {
            return;
        }
        if (!this.mIsVisible && this.mNestedInstance != null) {
            if ("low".equals(this.priority)) {
                destoryNestInstance();
            } else {
                if (getInstance().hiddenEmbeds == null) {
                    getInstance().hiddenEmbeds = new PriorityQueue<>(8, new Comparator<WXEmbed>() { // from class: com.taobao.weex.ui.component.WXEmbed.1
                        @Override // java.util.Comparator
                        public int compare(WXEmbed wXEmbed, WXEmbed wXEmbed2) {
                            int level = WXEmbed.getLevel(wXEmbed) - WXEmbed.getLevel(wXEmbed2);
                            return level != 0 ? level : (int) (wXEmbed.hiddenTime - wXEmbed2.hiddenTime);
                        }
                    });
                }
                if (!getInstance().hiddenEmbeds.contains(this)) {
                    this.hiddenTime = System.currentTimeMillis();
                    getInstance().hiddenEmbeds.add(this);
                }
                if (getInstance().hiddenEmbeds != null && getInstance().getMaxHiddenEmbedsNum() >= 0) {
                    while (getInstance().hiddenEmbeds.size() > getInstance().getMaxHiddenEmbedsNum()) {
                        WXEmbed wXEmbedPoll = getInstance().hiddenEmbeds.poll();
                        if (!wXEmbedPoll.mIsVisible && wXEmbedPoll != null) {
                            wXEmbedPoll.destoryNestInstance();
                        }
                    }
                }
            }
        }
        if (!this.mIsVisible || this.mNestedInstance == null || getInstance().hiddenEmbeds == null || !getInstance().hiddenEmbeds.contains(this)) {
            return;
        }
        getInstance().hiddenEmbeds.remove(this);
    }

    @Override // com.taobao.weex.WXSDKInstance.OnInstanceVisibleListener
    public void onAppear() {
        WXSDKInstance wXSDKInstance;
        WXComponent rootComponent;
        if (!this.mIsVisible || (wXSDKInstance = this.mNestedInstance) == null || (rootComponent = wXSDKInstance.getRootComponent()) == null) {
            return;
        }
        rootComponent.fireEvent(Constants.Event.VIEWAPPEAR);
    }

    @Override // com.taobao.weex.WXSDKInstance.OnInstanceVisibleListener
    public void onDisappear() {
        WXSDKInstance wXSDKInstance;
        WXComponent rootComponent;
        if (!this.mIsVisible || (wXSDKInstance = this.mNestedInstance) == null || (rootComponent = wXSDKInstance.getRootComponent()) == null) {
            return;
        }
        rootComponent.fireEvent(Constants.Event.VIEWDISAPPEAR);
    }

    @Override // io.dcloud.feature.uniapp.ui.component.AbsVContainer, com.taobao.weex.ui.component.WXComponent, com.taobao.weex.IWXActivityStateListener
    public void onActivityStart() {
        super.onActivityStart();
        WXSDKInstance wXSDKInstance = this.mNestedInstance;
        if (wXSDKInstance != null) {
            wXSDKInstance.onActivityStart();
        }
    }

    @Override // io.dcloud.feature.uniapp.ui.component.AbsVContainer, com.taobao.weex.ui.component.WXComponent, com.taobao.weex.IWXActivityStateListener
    public void onActivityResume() {
        super.onActivityResume();
        WXSDKInstance wXSDKInstance = this.mNestedInstance;
        if (wXSDKInstance != null) {
            wXSDKInstance.onActivityResume();
        }
    }

    @Override // io.dcloud.feature.uniapp.ui.component.AbsVContainer, com.taobao.weex.ui.component.WXComponent, com.taobao.weex.IWXActivityStateListener
    public void onActivityPause() {
        super.onActivityPause();
        WXSDKInstance wXSDKInstance = this.mNestedInstance;
        if (wXSDKInstance != null) {
            wXSDKInstance.onActivityPause();
        }
    }

    @Override // io.dcloud.feature.uniapp.ui.component.AbsVContainer, com.taobao.weex.ui.component.WXComponent, com.taobao.weex.IWXActivityStateListener
    public void onActivityStop() {
        super.onActivityStop();
        WXSDKInstance wXSDKInstance = this.mNestedInstance;
        if (wXSDKInstance != null) {
            wXSDKInstance.onActivityStop();
        }
    }

    @Override // io.dcloud.feature.uniapp.ui.component.AbsVContainer, com.taobao.weex.ui.component.WXComponent, com.taobao.weex.IWXActivityStateListener
    public void onActivityDestroy() {
        super.onActivityDestroy();
        WXSDKInstance wXSDKInstance = this.mNestedInstance;
        if (wXSDKInstance != null) {
            wXSDKInstance.onActivityDestroy();
        }
    }

    public void setStrategy(String str) {
        this.strategy = str;
    }

    private void destoryNestInstance() {
        if (getInstance().hiddenEmbeds != null && getInstance().hiddenEmbeds.contains(this)) {
            getInstance().hiddenEmbeds.remove(this);
        }
        WXSDKInstance wXSDKInstance = this.mNestedInstance;
        if (wXSDKInstance != null) {
            wXSDKInstance.destroy();
            this.mNestedInstance = null;
        }
        if (WXEnvironment.isApkDebugable()) {
            StringBuilder sb = new StringBuilder();
            sb.append("WXEmbed destoryNestInstance priority ");
            sb.append(this.priority);
            sb.append(" index ");
            sb.append(getAttrs().get("index"));
            sb.append("  ");
            sb.append(this.hiddenTime);
            sb.append(" embeds size ");
            sb.append(getInstance().hiddenEmbeds == null ? 0 : getInstance().hiddenEmbeds.size());
            sb.append(" strategy ");
            sb.append(this.strategy);
            WXLogUtils.w(sb.toString());
        }
    }

    @Override // com.taobao.weex.ui.component.WXComponent
    public void addLayerOverFlowListener(String str) {
        WXSDKInstance wXSDKInstance = this.mNestedInstance;
        if (wXSDKInstance != null) {
            wXSDKInstance.addLayerOverFlowListener(getRef());
        }
    }

    @Override // com.taobao.weex.ui.component.WXComponent
    public void removeLayerOverFlowListener(String str) {
        WXSDKInstance wXSDKInstance = this.mNestedInstance;
        if (wXSDKInstance != null) {
            wXSDKInstance.removeLayerOverFlowListener(str);
        }
    }

    static class EmbedInstanceOnScrollFireEventInterceptor extends InstanceOnFireEventInterceptor implements OnWXScrollListener {
        private WXComponent firstLayerScroller;
        private WXEmbed mEmbed;

        @Override // com.taobao.weex.common.OnWXScrollListener
        public void onScrollStateChanged(View view, int i, int i2, int i3) {
        }

        public EmbedInstanceOnScrollFireEventInterceptor(WXEmbed wXEmbed) {
            this.mEmbed = wXEmbed;
        }

        public void resetFirstLaterScroller() {
            this.firstLayerScroller = null;
        }

        @Override // com.taobao.weex.instance.InstanceOnFireEventInterceptor
        public void onFireEvent(String str, String str2, String str3, Map<String, Object> map, Map<String, Object> map2) {
            WXEmbed wXEmbed = this.mEmbed;
            if (wXEmbed == null || wXEmbed.mNestedInstance == null || !this.mEmbed.mNestedInstance.getInstanceId().equals(str)) {
                return;
            }
            if (this.firstLayerScroller == null) {
                initFirstLayerScroller();
            }
            WXComponent wXComponent = this.firstLayerScroller;
            if (wXComponent != null && wXComponent.getRef().equals(str2)) {
                this.mEmbed.getInstance().fireEvent(this.mEmbed.getRef(), str3, map, map2);
            }
        }

        private void initFirstLayerScroller() {
            if (this.firstLayerScroller == null) {
                WXComponent wXComponentFindFirstLayerScroller = findFirstLayerScroller();
                this.firstLayerScroller = wXComponentFindFirstLayerScroller;
                if (wXComponentFindFirstLayerScroller != null) {
                    for (String str : getListenEvents()) {
                        if (!this.firstLayerScroller.containsEvent(str)) {
                            this.firstLayerScroller.getEvents().add(str);
                            this.firstLayerScroller.addEvent(str);
                        }
                    }
                }
            }
        }

        private WXComponent findFirstLayerScroller() {
            WXComponent wXComponent;
            if (this.mEmbed.mNestedInstance == null) {
                return null;
            }
            WXComponent rootComponent = this.mEmbed.mNestedInstance.getRootComponent();
            if (rootComponent instanceof Scrollable) {
                return rootComponent;
            }
            ArrayDeque arrayDeque = new ArrayDeque();
            arrayDeque.offer(rootComponent);
            while (!arrayDeque.isEmpty() && (wXComponent = (WXComponent) arrayDeque.poll()) != null) {
                if (wXComponent instanceof Scrollable) {
                    return wXComponent;
                }
                if (wXComponent instanceof WXVContainer) {
                    WXVContainer wXVContainer = (WXVContainer) wXComponent;
                    for (int i = 0; i < wXVContainer.getChildCount(); i++) {
                        arrayDeque.offer(wXVContainer.getChild(i));
                    }
                }
            }
            return null;
        }

        @Override // com.taobao.weex.common.OnWXScrollListener
        public void onScrolled(View view, int i, int i2) {
            if (this.firstLayerScroller == null && getListenEvents().size() > 0) {
                initFirstLayerScroller();
            }
        }
    }
}
