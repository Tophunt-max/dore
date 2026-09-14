package com.alibaba.fastjson.serializer;

import com.taobao.weex.el.parse.Operators;
import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public class IntArraySerializer implements ObjectSerializer {
    public static IntArraySerializer instance = new IntArraySerializer();

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
        int[] iArr = (int[]) obj;
        writer.write(Operators.ARRAY_START);
        for (int i = 0; i < iArr.length; i++) {
            if (i != 0) {
                writer.write(Operators.ARRAY_SEPRATOR);
            }
            writer.writeInt(iArr[i]);
        }
        writer.write(Operators.ARRAY_END);
    }
}
