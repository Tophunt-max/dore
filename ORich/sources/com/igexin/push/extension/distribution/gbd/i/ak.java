package com.igexin.push.extension.distribution.gbd.i;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ak<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Comparator<E> f403a;
    private int b;

    public ak(Comparator<E> comparator) {
        a(comparator);
    }

    private boolean a(List<E> list, int i, int i2, E e) {
        boolean z;
        while (true) {
            z = true;
            if (i > i2) {
                z = false;
                break;
            }
            int i3 = (i + i2) >> 1;
            int iCompare = this.f403a.compare(list.get(i3), e);
            if (iCompare == 0) {
                i = i3;
                break;
            }
            if (iCompare < 0) {
                i = i3 + 1;
            } else {
                i2 = i3 - 1;
            }
        }
        this.b = i;
        return z;
    }

    public List<E> a(List<E> list, List<E> list2) {
        if (this.f403a == null || list == null || list.isEmpty() || list2 == null || list2.isEmpty()) {
            return null;
        }
        int size = list.size();
        int size2 = list2.size();
        int i = size - 1;
        int i2 = size2 - 1;
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        int i4 = 0;
        while (i3 < size && i4 < size2) {
            E e = list.get(i3);
            E e2 = list2.get(i4);
            int iCompare = this.f403a.compare(e, e2);
            if (iCompare == 0) {
                arrayList.add(e);
            } else if (iCompare >= 0) {
                if (a(list2, i4 + 1, i2, e)) {
                    arrayList.add(e);
                    i4 = this.b + 1;
                } else {
                    i4 = this.b;
                }
                i3++;
            } else if (a(list, i3 + 1, i, e2)) {
                arrayList.add(e2);
                i3 = this.b;
            } else {
                i3 = this.b;
                i4++;
            }
            i3++;
            i4++;
        }
        return arrayList;
    }

    public void a(Comparator<E> comparator) {
        this.f403a = comparator;
    }
}
