package com.alibaba.fastjson.serializer;

import com.taobao.weex.el.parse.Operators;

/* JADX INFO: loaded from: classes.dex */
public class SerialContext {
    private int features;
    private final Object fieldName;
    private final Object object;
    private final SerialContext parent;

    public SerialContext(SerialContext serialContext, Object obj, Object obj2, int i) {
        this.parent = serialContext;
        this.object = obj;
        this.fieldName = obj2;
        this.features = i;
    }

    public SerialContext getParent() {
        return this.parent;
    }

    public Object getObject() {
        return this.object;
    }

    public Object getFieldName() {
        return this.fieldName;
    }

    public String getPath() {
        if (this.parent == null) {
            return Operators.DOLLAR_STR;
        }
        if (this.fieldName instanceof Integer) {
            return this.parent.getPath() + Operators.ARRAY_START_STR + this.fieldName + Operators.ARRAY_END_STR;
        }
        return this.parent.getPath() + Operators.DOT_STR + this.fieldName;
    }

    public String toString() {
        return getPath();
    }

    public boolean isEnabled(SerializerFeature serializerFeature) {
        return SerializerFeature.isEnabled(this.features, serializerFeature);
    }
}
