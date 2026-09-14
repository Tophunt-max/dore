package com.taobao.weex.ui.component.list.template;

import com.alibaba.fastjson.JSONAware;

/* JADX INFO: loaded from: classes.dex */
public class PositionRef extends Number implements JSONAware {
    private CellRenderState renderState;

    public PositionRef(CellRenderState cellRenderState) {
        this.renderState = cellRenderState;
    }

    @Override // java.lang.Number
    public int intValue() {
        return getPosition();
    }

    @Override // java.lang.Number
    public long longValue() {
        return getPosition();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return getPosition();
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return getPosition();
    }

    private int getPosition() {
        CellRenderState cellRenderState = this.renderState;
        if (cellRenderState == null) {
            return -1;
        }
        return cellRenderState.position;
    }

    public String toString() {
        return String.valueOf(getPosition());
    }

    @Override // com.alibaba.fastjson.JSONAware
    public String toJSONString() {
        return String.valueOf(getPosition());
    }
}
