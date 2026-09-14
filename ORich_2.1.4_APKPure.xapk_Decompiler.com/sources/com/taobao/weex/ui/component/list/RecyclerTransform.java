package com.taobao.weex.ui.component.list;

import androidx.recyclerview.widget.RecyclerView;
import com.taobao.weex.ui.view.listview.adapter.TransformItemDecoration;
import com.taobao.weex.utils.WXLogUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerTransform {
    private static final String TAG = "RecyclerTransform";
    public static final String TRANSFORM = "transform";
    private static final Pattern transformPattern = Pattern.compile("([a-z]+)\\(([0-9\\.]+),?([0-9\\.]+)?\\)");

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static RecyclerView.ItemDecoration parseTransforms(int i, String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = transformPattern.matcher(str);
        float f = 0.0f;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        float f2 = 0.0f;
        float f3 = 0.0f;
        while (matcher.find()) {
            String strGroup = matcher.group();
            String strGroup2 = matcher.group(1);
            byte b = -1;
            try {
                switch (strGroup2.hashCode()) {
                    case -1267206133:
                        if (strGroup2.equals("opacity")) {
                            b = 2;
                        }
                        break;
                    case -925180581:
                        if (strGroup2.equals("rotate")) {
                            b = 3;
                        }
                        break;
                    case 109250890:
                        if (strGroup2.equals("scale")) {
                            b = 0;
                        }
                        break;
                    case 1052832078:
                        if (strGroup2.equals("translate")) {
                            b = 1;
                        }
                        break;
                }
                if (b == 0) {
                    f2 = Float.parseFloat(matcher.group(2));
                    f3 = Float.parseFloat(matcher.group(3));
                } else if (b == 1) {
                    i2 = Integer.parseInt(matcher.group(2));
                    i3 = Integer.parseInt(matcher.group(3));
                } else if (b == 2) {
                    f = Float.parseFloat(matcher.group(2));
                } else if (b == 3) {
                    i4 = Integer.parseInt(matcher.group(2));
                } else {
                    WXLogUtils.e(TAG, "Invaild transform expression:" + strGroup);
                }
            } catch (NumberFormatException e) {
                WXLogUtils.e("", e);
                WXLogUtils.e(TAG, "Invaild transform expression:" + strGroup);
            }
        }
        return new TransformItemDecoration(i == 1, f, i2, i3, i4, f2, f3);
    }
}
