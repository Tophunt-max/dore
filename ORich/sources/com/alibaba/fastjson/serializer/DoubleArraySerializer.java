package com.alibaba.fastjson.serializer;

import com.taobao.weex.el.parse.Operators;
import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public class DoubleArraySerializer implements ObjectSerializer {
    public static final DoubleArraySerializer instance = new DoubleArraySerializer();

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
        double[] dArr = (double[]) obj;
        int length = dArr.length - 1;
        if (length == -1) {
            writer.append("[]");
            return;
        }
        writer.append(Operators.ARRAY_START);
        for (int i = 0; i < length; i++) {
            double d = dArr[i];
            if (Double.isNaN(d)) {
                writer.writeNull();
            } else {
                writer.append((CharSequence) Double.toString(d));
            }
            writer.append(Operators.ARRAY_SEPRATOR);
        }
        double d2 = dArr[length];
        if (Double.isNaN(d2)) {
            writer.writeNull();
        } else {
            writer.append((CharSequence) Double.toString(d2));
        }
        writer.append(Operators.ARRAY_END);
    }
}
