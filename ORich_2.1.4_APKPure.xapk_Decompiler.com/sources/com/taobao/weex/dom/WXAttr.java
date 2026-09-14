package com.taobao.weex.dom;

import androidx.collection.ArrayMap;
import com.taobao.weex.dom.binding.WXStatement;
import io.dcloud.feature.uniapp.dom.AbsAttr;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class WXAttr extends AbsAttr {
    public WXAttr() {
    }

    public WXAttr(Map<String, Object> map) {
        super(map);
    }

    public WXAttr(Map<String, Object> map, int i) {
        super(map, i);
    }

    @Override // io.dcloud.feature.uniapp.dom.AbsAttr
    /* JADX INFO: renamed from: clone */
    public WXAttr mo10clone() {
        WXAttr wXAttr = new WXAttr();
        wXAttr.skipFilterPutAll(getAttr());
        if (getBindingAttrs() != null) {
            wXAttr.setBindingAttrs(new ArrayMap<>(getBindingAttrs()));
        }
        if (getStatement() != null) {
            wXAttr.setStatement(new WXStatement(getStatement()));
        }
        return wXAttr;
    }
}
