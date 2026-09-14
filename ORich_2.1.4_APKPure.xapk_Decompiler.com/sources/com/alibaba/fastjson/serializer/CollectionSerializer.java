package com.alibaba.fastjson.serializer;

import com.taobao.weex.el.parse.Operators;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashSet;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public class CollectionSerializer implements ObjectSerializer {
    public static final CollectionSerializer instance = new CollectionSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type) throws IOException {
        SerializeWriter writer = jSONSerializer.getWriter();
        if (obj == null) {
            if (writer.isEnabled(SerializerFeature.WriteNullListAsEmpty)) {
                writer.write("[]");
                return;
            } else {
                writer.writeNull();
                return;
            }
        }
        Type type2 = null;
        int i = 0;
        if (jSONSerializer.isEnabled(SerializerFeature.WriteClassName) && (type instanceof ParameterizedType)) {
            type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        }
        Collection collection = (Collection) obj;
        SerialContext context = jSONSerializer.getContext();
        jSONSerializer.setContext(context, obj, obj2, 0);
        if (jSONSerializer.isEnabled(SerializerFeature.WriteClassName)) {
            if (HashSet.class == collection.getClass()) {
                writer.append("Set");
            } else if (TreeSet.class == collection.getClass()) {
                writer.append("TreeSet");
            }
        }
        try {
            writer.append(Operators.ARRAY_START);
            for (Object obj3 : collection) {
                int i2 = i + 1;
                if (i != 0) {
                    writer.append(Operators.ARRAY_SEPRATOR);
                }
                if (obj3 == null) {
                    writer.writeNull();
                } else {
                    Class<?> cls = obj3.getClass();
                    if (cls == Integer.class) {
                        writer.writeInt(((Integer) obj3).intValue());
                    } else if (cls == Long.class) {
                        writer.writeLong(((Long) obj3).longValue());
                        if (writer.isEnabled(SerializerFeature.WriteClassName)) {
                            writer.write('L');
                        }
                    } else {
                        jSONSerializer.getObjectWriter(cls).write(jSONSerializer, obj3, Integer.valueOf(i2 - 1), type2);
                    }
                }
                i = i2;
            }
            writer.append(Operators.ARRAY_END);
        } finally {
            jSONSerializer.setContext(context);
        }
    }
}
