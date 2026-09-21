package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public class ByteArraySerializer implements ObjectSerializer {
    public static ByteArraySerializer instance = new ByteArraySerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public final void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type) throws IOException {
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
        writer.writeByteArray((byte[]) obj);
    }
}
