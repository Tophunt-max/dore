package com.alibaba.fastjson.serializer;

import com.taobao.weex.el.parse.Operators;
import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public class LongArraySerializer implements ObjectSerializer {
    public static LongArraySerializer instance = new LongArraySerializer();

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
        long[] jArr = (long[]) obj;
        writer.write(Operators.ARRAY_START);
        for (int i = 0; i < jArr.length; i++) {
            if (i != 0) {
                writer.write(Operators.ARRAY_SEPRATOR);
            }
            writer.writeLong(jArr[i]);
        }
        writer.write(Operators.ARRAY_END);
    }
}
