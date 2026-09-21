package com.taobao.weex.utils.batch;

/* JADX INFO: loaded from: classes.dex */
public interface BactchExecutor {
    void post(Runnable runnable);

    void setInterceptor(Interceptor interceptor);
}
