package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.util.FieldInfo;
import com.taobao.weex.el.parse.Operators;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class FieldSerializer {
    private final String double_quoted_fieldPrefix;
    protected final FieldInfo fieldInfo;
    private final String single_quoted_fieldPrefix;
    private final String un_quoted_fieldPrefix;
    private boolean writeNull;

    public abstract void writeProperty(JSONSerializer jSONSerializer, Object obj) throws Exception;

    public abstract void writeValue(JSONSerializer jSONSerializer, Object obj) throws Exception;

    public FieldSerializer(FieldInfo fieldInfo) {
        this.writeNull = false;
        this.fieldInfo = fieldInfo;
        fieldInfo.setAccessible(true);
        this.double_quoted_fieldPrefix = '\"' + fieldInfo.getName() + "\":";
        this.single_quoted_fieldPrefix = Operators.SINGLE_QUOTE + fieldInfo.getName() + "':";
        StringBuilder sb = new StringBuilder();
        sb.append(fieldInfo.getName());
        sb.append(":");
        this.un_quoted_fieldPrefix = sb.toString();
        JSONField jSONField = (JSONField) fieldInfo.getAnnotation(JSONField.class);
        if (jSONField != null) {
            for (SerializerFeature serializerFeature : jSONField.serialzeFeatures()) {
                if (serializerFeature == SerializerFeature.WriteMapNullValue) {
                    this.writeNull = true;
                }
            }
        }
    }

    public boolean isWriteNull() {
        return this.writeNull;
    }

    public Field getField() {
        return this.fieldInfo.getField();
    }

    public String getName() {
        return this.fieldInfo.getName();
    }

    public Method getMethod() {
        return this.fieldInfo.getMethod();
    }

    public void writePrefix(JSONSerializer jSONSerializer) throws IOException {
        SerializeWriter writer = jSONSerializer.getWriter();
        if (jSONSerializer.isEnabled(SerializerFeature.QuoteFieldNames)) {
            if (jSONSerializer.isEnabled(SerializerFeature.UseSingleQuotes)) {
                writer.write(this.single_quoted_fieldPrefix);
                return;
            } else {
                writer.write(this.double_quoted_fieldPrefix);
                return;
            }
        }
        writer.write(this.un_quoted_fieldPrefix);
    }

    public Object getPropertyValue(Object obj) throws Exception {
        try {
            return this.fieldInfo.get(obj);
        } catch (Exception e) {
            throw new JSONException("get property error。 " + this.fieldInfo.gerQualifiedName(), e);
        }
    }
}
