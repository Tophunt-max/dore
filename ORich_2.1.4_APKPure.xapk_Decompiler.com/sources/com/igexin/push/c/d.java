package com.igexin.push.c;

/* JADX INFO: loaded from: classes.dex */
public enum d {
    NORMAL(0),
    BACKUP(1),
    TRY_NORMAL(2);

    private int d;

    d(int i) {
        this.d = -1;
        this.d = i;
    }

    public static d a(int i) {
        for (d dVar : values()) {
            if (dVar.b() == i) {
                return dVar;
            }
        }
        return null;
    }

    public int b() {
        return this.d;
    }
}
