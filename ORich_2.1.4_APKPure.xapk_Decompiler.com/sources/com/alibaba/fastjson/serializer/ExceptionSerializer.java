package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public class ExceptionSerializer extends JavaBeanSerializer {
    @Override // com.alibaba.fastjson.serializer.JavaBeanSerializer
    protected boolean isWriteClassName(JSONSerializer jSONSerializer, Object obj, Type type, Object obj2) {
        return true;
    }

    public ExceptionSerializer(Class<?> cls) {
        super(cls);
    }
}
