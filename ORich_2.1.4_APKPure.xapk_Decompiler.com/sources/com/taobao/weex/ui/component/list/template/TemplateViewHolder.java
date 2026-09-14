package com.taobao.weex.ui.component.list.template;

import android.os.AsyncTask;
import android.view.View;
import com.taobao.weex.ui.component.list.WXCell;
import com.taobao.weex.ui.view.listview.adapter.ListBaseViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class TemplateViewHolder extends ListBaseViewHolder {
    public AsyncTask<Void, Void, Void> asyncTask;
    public Object data;
    private int holderPosition;
    private WXCell template;
    private WXRecyclerTemplateList templateList;

    public TemplateViewHolder(WXRecyclerTemplateList wXRecyclerTemplateList, WXCell wXCell, int i) {
        super(wXCell, i);
        this.holderPosition = -1;
        this.template = wXCell;
        this.templateList = wXRecyclerTemplateList;
    }

    public TemplateViewHolder(WXRecyclerTemplateList wXRecyclerTemplateList, View view, int i) {
        super(view, i);
        this.holderPosition = -1;
        this.templateList = wXRecyclerTemplateList;
    }

    public int getHolderPosition() {
        return this.holderPosition;
    }

    public void setHolderPosition(int i) {
        this.holderPosition = i;
    }

    public WXCell getTemplate() {
        return this.template;
    }

    public WXRecyclerTemplateList getTemplateList() {
        return this.templateList;
    }
}
