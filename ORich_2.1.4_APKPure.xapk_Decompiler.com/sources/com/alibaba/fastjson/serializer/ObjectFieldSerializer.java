package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.util.FieldInfo;
import io.dcloud.common.constant.AbsoluteConst;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public class ObjectFieldSerializer extends FieldSerializer {
    private String format;
    private RuntimeSerializerInfo runtimeInfo;
    boolean writeEnumUsingToString;
    boolean writeNullBooleanAsFalse;
    boolean writeNullListAsEmpty;
    boolean writeNullStringAsEmpty;
    boolean writeNumberAsZero;

    public ObjectFieldSerializer(FieldInfo fieldInfo) {
        super(fieldInfo);
        this.writeNumberAsZero = false;
        this.writeNullStringAsEmpty = false;
        this.writeNullBooleanAsFalse = false;
        this.writeNullListAsEmpty = false;
        this.writeEnumUsingToString = false;
        JSONField jSONField = (JSONField) fieldInfo.getAnnotation(JSONField.class);
        if (jSONField != null) {
            String str = jSONField.format();
            this.format = str;
            if (str.trim().length() == 0) {
                this.format = null;
            }
            for (SerializerFeature serializerFeature : jSONField.serialzeFeatures()) {
                if (serializerFeature == SerializerFeature.WriteNullNumberAsZero) {
                    this.writeNumberAsZero = true;
                } else if (serializerFeature == SerializerFeature.WriteNullStringAsEmpty) {
                    this.writeNullStringAsEmpty = true;
                } else if (serializerFeature == SerializerFeature.WriteNullBooleanAsFalse) {
                    this.writeNullBooleanAsFalse = true;
                } else if (serializerFeature == SerializerFeature.WriteNullListAsEmpty) {
                    this.writeNullListAsEmpty = true;
                } else if (serializerFeature == SerializerFeature.WriteEnumUsingToString) {
                    this.writeEnumUsingToString = true;
                }
            }
        }
    }

    @Override // com.alibaba.fastjson.serializer.FieldSerializer
    public void writeProperty(JSONSerializer jSONSerializer, Object obj) throws Exception {
        writePrefix(jSONSerializer);
        writeValue(jSONSerializer, obj);
    }

    @Override // com.alibaba.fastjson.serializer.FieldSerializer
    public void writeValue(JSONSerializer jSONSerializer, Object obj) throws Exception {
        Class<?> fieldClass;
        String str = this.format;
        if (str != null) {
            jSONSerializer.writeWithFormat(obj, str);
            return;
        }
        if (this.runtimeInfo == null) {
            if (obj == null) {
                fieldClass = this.fieldInfo.getFieldClass();
            } else {
                fieldClass = obj.getClass();
            }
            this.runtimeInfo = new RuntimeSerializerInfo(jSONSerializer.getObjectWriter(fieldClass), fieldClass);
        }
        RuntimeSerializerInfo runtimeSerializerInfo = this.runtimeInfo;
        if (obj == null) {
            if (this.writeNumberAsZero && Number.class.isAssignableFrom(runtimeSerializerInfo.runtimeFieldClass)) {
                jSONSerializer.getWriter().write('0');
                return;
            }
            if (this.writeNullStringAsEmpty && String.class == runtimeSerializerInfo.runtimeFieldClass) {
                jSONSerializer.getWriter().write("\"\"");
                return;
            }
            if (this.writeNullBooleanAsFalse && Boolean.class == runtimeSerializerInfo.runtimeFieldClass) {
                jSONSerializer.getWriter().write(AbsoluteConst.FALSE);
                return;
            } else if (this.writeNullListAsEmpty && Collection.class.isAssignableFrom(runtimeSerializerInfo.runtimeFieldClass)) {
                jSONSerializer.getWriter().write("[]");
                return;
            } else {
                runtimeSerializerInfo.fieldSerializer.write(jSONSerializer, null, this.fieldInfo.getName(), null);
                return;
            }
        }
        if (this.writeEnumUsingToString && runtimeSerializerInfo.runtimeFieldClass.isEnum()) {
            jSONSerializer.getWriter().writeString(((Enum) obj).name());
            return;
        }
        Class<?> cls = obj.getClass();
        if (cls == runtimeSerializerInfo.runtimeFieldClass) {
            runtimeSerializerInfo.fieldSerializer.write(jSONSerializer, obj, this.fieldInfo.getName(), this.fieldInfo.getFieldType());
        } else {
            jSONSerializer.getObjectWriter(cls).write(jSONSerializer, obj, this.fieldInfo.getName(), this.fieldInfo.getFieldType());
        }
    }

    static class RuntimeSerializerInfo {
        ObjectSerializer fieldSerializer;
        Class<?> runtimeFieldClass;

        public RuntimeSerializerInfo(ObjectSerializer objectSerializer, Class<?> cls) {
            this.fieldSerializer = objectSerializer;
            this.runtimeFieldClass = cls;
        }
    }
}
