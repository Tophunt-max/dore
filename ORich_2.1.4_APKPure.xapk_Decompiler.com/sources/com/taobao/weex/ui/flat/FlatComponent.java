package com.taobao.weex.ui.flat;

import com.taobao.weex.ui.flat.widget.Widget;

/* JADX INFO: loaded from: classes.dex */
public interface FlatComponent<T extends Widget> {
    T getOrCreateFlatWidget();

    boolean promoteToView(boolean z);
}
