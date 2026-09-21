package com.taobao.weex.bridge;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public interface Invoker {
    Type[] getParameterTypes();

    Object invoke(Object obj, Object... objArr) throws IllegalAccessException, InvocationTargetException;

    boolean isRunOnUIThread();
}
