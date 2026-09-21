package com.google.android.gms.common.util;

import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.util.JSUtil;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class MapUtils {
    public static void writeStringMapToJson(StringBuilder sb, HashMap<String, String> map) {
        sb.append(Operators.BLOCK_START_STR);
        boolean z = true;
        for (String str : map.keySet()) {
            if (z) {
                z = false;
            } else {
                sb.append(",");
            }
            String str2 = map.get(str);
            sb.append(JSUtil.QUOTE);
            sb.append(str);
            sb.append("\":");
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(JSUtil.QUOTE);
                sb.append(str2);
                sb.append(JSUtil.QUOTE);
            }
        }
        sb.append(Operators.BLOCK_END_STR);
    }
}
