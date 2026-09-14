package com.alibaba.fastjson.serializer;

import com.taobao.weex.el.parse.Operators;
import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public class BooleanArraySerializer implements ObjectSerializer {
    public static BooleanArraySerializer instance = new BooleanArraySerializer();

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
        boolean[] zArr = (boolean[]) obj;
        writer.write(Operators.ARRAY_START);
        for (int i = 0; i < zArr.length; i++) {
            if (i != 0) {
                writer.write(Operators.ARRAY_SEPRATOR);
            }
            writer.write(zArr[i]);
        }
        writer.write(Operators.ARRAY_END);
    }
}
