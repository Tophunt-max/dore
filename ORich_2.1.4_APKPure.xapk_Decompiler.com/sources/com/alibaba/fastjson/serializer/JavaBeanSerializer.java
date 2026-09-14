package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.taobao.weex.el.parse.Operators;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class JavaBeanSerializer implements ObjectSerializer {
    private int features;
    private final FieldSerializer[] getters;
    private final FieldSerializer[] sortedGetters;

    public FieldSerializer[] getGetters() {
        return this.getters;
    }

    public JavaBeanSerializer(Class<?> cls) {
        this(cls, (Map<String, String>) null);
    }

    public JavaBeanSerializer(Class<?> cls, String... strArr) {
        this(cls, createAliasMap(strArr));
    }

    static Map<String, String> createAliasMap(String... strArr) {
        HashMap map = new HashMap();
        for (String str : strArr) {
            map.put(str, str);
        }
        return map;
    }

    public JavaBeanSerializer(Class<?> cls, Map<String, String> map) {
        this.features = 0;
        this.features = TypeUtils.getSerializeFeatures(cls);
        ArrayList arrayList = new ArrayList();
        Iterator<FieldInfo> it = TypeUtils.computeGetters(cls, map, false).iterator();
        while (it.hasNext()) {
            arrayList.add(createFieldSerializer(it.next()));
        }
        this.getters = (FieldSerializer[]) arrayList.toArray(new FieldSerializer[arrayList.size()]);
        ArrayList arrayList2 = new ArrayList();
        Iterator<FieldInfo> it2 = TypeUtils.computeGetters(cls, map, true).iterator();
        while (it2.hasNext()) {
            arrayList2.add(createFieldSerializer(it2.next()));
        }
        this.sortedGetters = (FieldSerializer[]) arrayList2.toArray(new FieldSerializer[arrayList2.size()]);
    }

    protected boolean isWriteClassName(JSONSerializer jSONSerializer, Object obj, Type type, Object obj2) {
        return jSONSerializer.isWriteClassName(type, obj);
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type) throws IOException {
        FieldSerializer[] fieldSerializerArr;
        boolean z;
        Class<?> fieldClass;
        Field field;
        SerializeWriter writer = jSONSerializer.getWriter();
        if (obj == null) {
            writer.writeNull();
            return;
        }
        if (writeReference(jSONSerializer, obj)) {
            return;
        }
        if (writer.isEnabled(SerializerFeature.SortField)) {
            fieldSerializerArr = this.sortedGetters;
        } else {
            fieldSerializerArr = this.getters;
        }
        SerialContext context = jSONSerializer.getContext();
        jSONSerializer.setContext(context, obj, obj2, this.features);
        boolean zIsWriteAsArray = isWriteAsArray(jSONSerializer);
        char c = zIsWriteAsArray ? Operators.ARRAY_START : Operators.BLOCK_START;
        char c2 = zIsWriteAsArray ? Operators.ARRAY_END : Operators.BLOCK_END;
        try {
            try {
                writer.append(c);
                if (fieldSerializerArr.length > 0 && writer.isEnabled(SerializerFeature.PrettyFormat)) {
                    jSONSerializer.incrementIndent();
                    jSONSerializer.println();
                }
                if (!isWriteClassName(jSONSerializer, obj, type, obj2) || obj.getClass() == type) {
                    z = false;
                } else {
                    writer.writeFieldName(JSON.DEFAULT_TYPE_KEY);
                    jSONSerializer.write(obj.getClass());
                    z = true;
                }
                boolean z2 = FilterUtils.writeBefore(jSONSerializer, obj, z ? Operators.ARRAY_SEPRATOR : (char) 0) == ',';
                for (FieldSerializer fieldSerializer : fieldSerializerArr) {
                    if ((!jSONSerializer.isEnabled(SerializerFeature.SkipTransientField) || (field = fieldSerializer.getField()) == null || !Modifier.isTransient(field.getModifiers())) && FilterUtils.applyName(jSONSerializer, obj, fieldSerializer.getName())) {
                        Object propertyValue = fieldSerializer.getPropertyValue(obj);
                        if (FilterUtils.apply(jSONSerializer, obj, fieldSerializer.getName(), propertyValue)) {
                            String strProcessKey = FilterUtils.processKey(jSONSerializer, obj, fieldSerializer.getName(), propertyValue);
                            Object objProcessValue = FilterUtils.processValue(jSONSerializer, obj, fieldSerializer.getName(), propertyValue);
                            if ((objProcessValue != null || zIsWriteAsArray || fieldSerializer.isWriteNull() || jSONSerializer.isEnabled(SerializerFeature.WriteMapNullValue)) && (objProcessValue == null || !jSONSerializer.isEnabled(SerializerFeature.NotWriteDefaultValue) || (((fieldClass = fieldSerializer.fieldInfo.getFieldClass()) != Byte.TYPE || !(objProcessValue instanceof Byte) || ((Byte) objProcessValue).byteValue() != 0) && ((fieldClass != Short.TYPE || !(objProcessValue instanceof Short) || ((Short) objProcessValue).shortValue() != 0) && ((fieldClass != Integer.TYPE || !(objProcessValue instanceof Integer) || ((Integer) objProcessValue).intValue() != 0) && ((fieldClass != Long.TYPE || !(objProcessValue instanceof Long) || ((Long) objProcessValue).longValue() != 0) && ((fieldClass != Float.TYPE || !(objProcessValue instanceof Float) || ((Float) objProcessValue).floatValue() != 0.0f) && ((fieldClass != Double.TYPE || !(objProcessValue instanceof Double) || ((Double) objProcessValue).doubleValue() != 0.0d) && (fieldClass != Boolean.TYPE || !(objProcessValue instanceof Boolean) || ((Boolean) objProcessValue).booleanValue()))))))))) {
                                if (z2) {
                                    writer.append(Operators.ARRAY_SEPRATOR);
                                    if (writer.isEnabled(SerializerFeature.PrettyFormat)) {
                                        jSONSerializer.println();
                                    }
                                }
                                if (strProcessKey != fieldSerializer.getName()) {
                                    if (!zIsWriteAsArray) {
                                        writer.writeFieldName(strProcessKey);
                                    }
                                    jSONSerializer.write(objProcessValue);
                                } else if (propertyValue != objProcessValue) {
                                    if (!zIsWriteAsArray) {
                                        fieldSerializer.writePrefix(jSONSerializer);
                                    }
                                    jSONSerializer.write(objProcessValue);
                                } else if (!zIsWriteAsArray) {
                                    fieldSerializer.writeProperty(jSONSerializer, objProcessValue);
                                } else {
                                    fieldSerializer.writeValue(jSONSerializer, objProcessValue);
                                }
                                z2 = true;
                            }
                        }
                    }
                }
                FilterUtils.writeAfter(jSONSerializer, obj, z2 ? Operators.ARRAY_SEPRATOR : (char) 0);
                if (fieldSerializerArr.length > 0 && writer.isEnabled(SerializerFeature.PrettyFormat)) {
                    jSONSerializer.decrementIdent();
                    jSONSerializer.println();
                }
                writer.append(c2);
            } catch (Exception e) {
                throw new JSONException("write javaBean error", e);
            }
        } finally {
            jSONSerializer.setContext(context);
        }
    }

    public boolean writeReference(JSONSerializer jSONSerializer, Object obj) {
        SerialContext context = jSONSerializer.getContext();
        if ((context != null && context.isEnabled(SerializerFeature.DisableCircularReferenceDetect)) || !jSONSerializer.containsReference(obj)) {
            return false;
        }
        jSONSerializer.writeReference(obj);
        return true;
    }

    public FieldSerializer createFieldSerializer(FieldInfo fieldInfo) {
        if (fieldInfo.getFieldClass() == Number.class) {
            return new NumberFieldSerializer(fieldInfo);
        }
        return new ObjectFieldSerializer(fieldInfo);
    }

    public boolean isWriteAsArray(JSONSerializer jSONSerializer) {
        if (SerializerFeature.isEnabled(this.features, SerializerFeature.BeanToArray)) {
            return true;
        }
        return jSONSerializer.isEnabled(SerializerFeature.BeanToArray);
    }
}
