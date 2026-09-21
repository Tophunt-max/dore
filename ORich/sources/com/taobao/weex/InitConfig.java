package com.taobao.weex;

import com.taobao.weex.adapter.ClassLoaderAdapter;
import com.taobao.weex.adapter.IDrawableLoader;
import com.taobao.weex.adapter.IWXHttpAdapter;
import com.taobao.weex.adapter.IWXImgLoaderAdapter;
import com.taobao.weex.adapter.IWXJSExceptionAdapter;
import com.taobao.weex.adapter.IWXJsFileLoaderAdapter;
import com.taobao.weex.adapter.IWXJscProcessManager;
import com.taobao.weex.adapter.IWXSoLoaderAdapter;
import com.taobao.weex.adapter.IWXUserTrackAdapter;
import com.taobao.weex.adapter.URIAdapter;
import com.taobao.weex.appfram.storage.IWXStorageAdapter;
import com.taobao.weex.appfram.websocket.IWebSocketAdapterFactory;
import com.taobao.weex.performance.IApmGenerator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class InitConfig {
    private IApmGenerator apmGenerater;
    private ClassLoaderAdapter classLoaderAdapter;
    private IDrawableLoader drawableLoader;
    private String framework;
    private IWXHttpAdapter httpAdapter;
    private IWXImgLoaderAdapter imgAdapter;
    private IWXJsFileLoaderAdapter jsFileLoaderAdapter;
    private IWXJscProcessManager jscProcessManager;
    private IWXJSExceptionAdapter mJSExceptionAdapter;
    private URIAdapter mURIAdapter;
    private List<String> nativeLibraryList;
    private IWXSoLoaderAdapter soLoader;
    private IWXStorageAdapter storageAdapter;
    private IWXUserTrackAdapter utAdapter;
    private IWebSocketAdapterFactory webSocketAdapterFactory;

    public IWXHttpAdapter getHttpAdapter() {
        return this.httpAdapter;
    }

    public IWXImgLoaderAdapter getImgAdapter() {
        return this.imgAdapter;
    }

    public IDrawableLoader getDrawableLoader() {
        return this.drawableLoader;
    }

    public IWXUserTrackAdapter getUtAdapter() {
        return this.utAdapter;
    }

    public IWXSoLoaderAdapter getIWXSoLoaderAdapter() {
        return this.soLoader;
    }

    public String getFramework() {
        return this.framework;
    }

    public IWXStorageAdapter getStorageAdapter() {
        return this.storageAdapter;
    }

    public URIAdapter getURIAdapter() {
        return this.mURIAdapter;
    }

    public IWebSocketAdapterFactory getWebSocketAdapterFactory() {
        return this.webSocketAdapterFactory;
    }

    public ClassLoaderAdapter getClassLoaderAdapter() {
        return this.classLoaderAdapter;
    }

    public IApmGenerator getApmGenerater() {
        return this.apmGenerater;
    }

    public IWXJsFileLoaderAdapter getJsFileLoaderAdapter() {
        return this.jsFileLoaderAdapter;
    }

    public InitConfig setClassLoaderAdapter(ClassLoaderAdapter classLoaderAdapter) {
        this.classLoaderAdapter = classLoaderAdapter;
        return this;
    }

    public IWXJSExceptionAdapter getJSExceptionAdapter() {
        return this.mJSExceptionAdapter;
    }

    public IWXJscProcessManager getJscProcessManager() {
        return this.jscProcessManager;
    }

    Iterable<String> getNativeLibraryList() {
        if (this.nativeLibraryList == null) {
            this.nativeLibraryList = new LinkedList();
        }
        return this.nativeLibraryList;
    }

    private InitConfig() {
    }

    public static class Builder {
        IApmGenerator apmGenerater;
        ClassLoaderAdapter classLoaderAdapter;
        IDrawableLoader drawableLoader;
        String framework;
        IWXHttpAdapter httpAdapter;
        IWXImgLoaderAdapter imgAdapter;
        private IWXJsFileLoaderAdapter jsFileLoaderAdapter;
        IWXJscProcessManager jscProcessManager;
        IWXJSExceptionAdapter mJSExceptionAdapter;
        URIAdapter mURIAdapter;
        private List<String> nativeLibraryList = new LinkedList();
        IWXSoLoaderAdapter soLoader;
        IWXStorageAdapter storageAdapter;
        IWXUserTrackAdapter utAdapter;
        IWebSocketAdapterFactory webSocketAdapterFactory;

        public IWXJscProcessManager getJscProcessManager() {
            return this.jscProcessManager;
        }

        public Builder setJscProcessManager(IWXJscProcessManager iWXJscProcessManager) {
            this.jscProcessManager = iWXJscProcessManager;
            return this;
        }

        public Builder setHttpAdapter(IWXHttpAdapter iWXHttpAdapter) {
            this.httpAdapter = iWXHttpAdapter;
            return this;
        }

        public Builder setImgAdapter(IWXImgLoaderAdapter iWXImgLoaderAdapter) {
            this.imgAdapter = iWXImgLoaderAdapter;
            return this;
        }

        public Builder setDrawableLoader(IDrawableLoader iDrawableLoader) {
            this.drawableLoader = iDrawableLoader;
            return this;
        }

        public Builder setUtAdapter(IWXUserTrackAdapter iWXUserTrackAdapter) {
            this.utAdapter = iWXUserTrackAdapter;
            return this;
        }

        public Builder setStorageAdapter(IWXStorageAdapter iWXStorageAdapter) {
            this.storageAdapter = iWXStorageAdapter;
            return this;
        }

        public Builder setURIAdapter(URIAdapter uRIAdapter) {
            this.mURIAdapter = uRIAdapter;
            return this;
        }

        public Builder setJSExceptionAdapter(IWXJSExceptionAdapter iWXJSExceptionAdapter) {
            this.mJSExceptionAdapter = iWXJSExceptionAdapter;
            return this;
        }

        public Builder setSoLoader(IWXSoLoaderAdapter iWXSoLoaderAdapter) {
            this.soLoader = iWXSoLoaderAdapter;
            return this;
        }

        public Builder setFramework(String str) {
            this.framework = str;
            return this;
        }

        public Builder setWebSocketAdapterFactory(IWebSocketAdapterFactory iWebSocketAdapterFactory) {
            this.webSocketAdapterFactory = iWebSocketAdapterFactory;
            return this;
        }

        public Builder setClassLoaderAdapter(ClassLoaderAdapter classLoaderAdapter) {
            this.classLoaderAdapter = classLoaderAdapter;
            return this;
        }

        public Builder setApmGenerater(IApmGenerator iApmGenerator) {
            this.apmGenerater = iApmGenerator;
            return this;
        }

        public Builder setJsFileLoaderAdapter(IWXJsFileLoaderAdapter iWXJsFileLoaderAdapter) {
            this.jsFileLoaderAdapter = iWXJsFileLoaderAdapter;
            return this;
        }

        public Builder addNativeLibrary(String str) {
            this.nativeLibraryList.add(str);
            return this;
        }

        public InitConfig build() {
            InitConfig initConfig = new InitConfig();
            initConfig.httpAdapter = this.httpAdapter;
            initConfig.imgAdapter = this.imgAdapter;
            initConfig.drawableLoader = this.drawableLoader;
            initConfig.utAdapter = this.utAdapter;
            initConfig.storageAdapter = this.storageAdapter;
            initConfig.soLoader = this.soLoader;
            initConfig.framework = this.framework;
            initConfig.mURIAdapter = this.mURIAdapter;
            initConfig.webSocketAdapterFactory = this.webSocketAdapterFactory;
            initConfig.mJSExceptionAdapter = this.mJSExceptionAdapter;
            initConfig.classLoaderAdapter = this.classLoaderAdapter;
            initConfig.apmGenerater = this.apmGenerater;
            initConfig.jsFileLoaderAdapter = this.jsFileLoaderAdapter;
            initConfig.jscProcessManager = this.jscProcessManager;
            initConfig.nativeLibraryList = this.nativeLibraryList;
            return initConfig;
        }
    }
}
