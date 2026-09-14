package com.taobao.weex.ui.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import com.taobao.weex.WXEnvironment;
import com.taobao.weex.utils.WXLogUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WXCirclePageAdapter extends PagerAdapter {
    public boolean isRTL;
    private boolean needLoop;
    private List<View> originalViews;
    private List<View> shadow;
    private List<View> views;

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public WXCirclePageAdapter(List<View> list, boolean z) {
        this.views = new ArrayList();
        this.shadow = new ArrayList();
        this.needLoop = true;
        this.isRTL = false;
        this.originalViews = new ArrayList();
        this.views = new ArrayList(list);
        this.originalViews = new ArrayList(list);
        this.needLoop = z;
    }

    public void setLayoutDirectionRTL(boolean z) {
        if (z == this.isRTL) {
            return;
        }
        this.isRTL = z;
        ArrayList arrayList = new ArrayList(this.originalViews);
        this.views = arrayList;
        if (z) {
            Collections.reverse(arrayList);
        }
        ensureShadow();
    }

    public WXCirclePageAdapter() {
        this(true);
    }

    public WXCirclePageAdapter(boolean z) {
        this.views = new ArrayList();
        this.shadow = new ArrayList();
        this.needLoop = true;
        this.isRTL = false;
        this.originalViews = new ArrayList();
        this.needLoop = z;
    }

    public void addPageView(View view) {
        if (WXEnvironment.isApkDebugable()) {
            WXLogUtils.d("onPageSelected >>>> addPageView");
        }
        this.originalViews.add(view);
        if (this.isRTL) {
            this.views.add(0, view);
        } else {
            this.views.add(view);
        }
        ensureShadow();
    }

    public void removePageView(View view) {
        if (WXEnvironment.isApkDebugable()) {
            WXLogUtils.d("onPageSelected >>>> removePageView");
        }
        this.views.remove(view);
        this.originalViews.remove(view);
        ensureShadow();
    }

    public void replacePageView(View view, View view2) {
        if (WXEnvironment.isApkDebugable()) {
            WXLogUtils.d("onPageSelected >>>> replacePageView");
        }
        int iIndexOf = this.views.indexOf(view);
        this.views.remove(iIndexOf);
        this.views.add(iIndexOf, view2);
        ensureShadow();
        int iIndexOf2 = this.originalViews.indexOf(view);
        this.originalViews.remove(iIndexOf2);
        this.originalViews.add(iIndexOf2, view2);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.shadow.size();
    }

    public int getRealCount() {
        return this.views.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View view;
        View view2 = null;
        try {
            view = this.shadow.get(i);
        } catch (Exception e) {
            e = e;
        }
        try {
            if (WXEnvironment.isApkDebugable()) {
                WXLogUtils.d("onPageSelected >>>> instantiateItem >>>>> position:" + i + ",position % getRealCount()" + (i % getRealCount()));
            }
            if (view.getParent() == null) {
                viewGroup.addView(view);
                return view;
            }
            ((ViewGroup) view.getParent()).removeView(view);
            viewGroup.addView(view);
            return view;
        } catch (Exception e2) {
            e = e2;
            view2 = view;
            WXLogUtils.e("[CirclePageAdapter] instantiateItem: ", e);
            return view2;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        if (WXEnvironment.isApkDebugable()) {
            WXLogUtils.d("onPageSelected >>>> destroyItem >>>>> position:" + i);
        }
        if (this.needLoop) {
            return;
        }
        viewGroup.removeView((View) obj);
    }

    public int getPagePosition(View view) {
        return this.views.indexOf(view);
    }

    public int getItemIndex(Object obj) {
        if (obj instanceof View) {
            return this.views.indexOf(obj);
        }
        return -1;
    }

    public List<View> getViews() {
        return this.views;
    }

    private void ensureShadow() {
        ArrayList arrayList = new ArrayList();
        if (this.needLoop && this.views.size() > 2) {
            arrayList.add(0, this.views.get(r1.size() - 1));
            for (View view : this.views) {
                if (view.getParent() != null) {
                    ((ViewGroup) view.getParent()).removeView(view);
                }
                arrayList.add(view);
            }
            arrayList.add(this.views.get(0));
        } else {
            arrayList.addAll(this.views);
        }
        this.shadow.clear();
        notifyDataSetChanged();
        this.shadow.addAll(arrayList);
        notifyDataSetChanged();
    }

    public int getRealPosition(int i) {
        if (i < 0 || i >= this.shadow.size()) {
            return -1;
        }
        return getItemIndex(this.shadow.get(i));
    }

    public int getFirst() {
        return (!this.needLoop || this.views.size() <= 2) ? 0 : 1;
    }
}
