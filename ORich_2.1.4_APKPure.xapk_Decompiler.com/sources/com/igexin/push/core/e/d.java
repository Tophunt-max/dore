package com.igexin.push.core.e;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static c a(String str) {
        str.hashCode();
        switch (str) {
            case "LENOVO":
            case "ZUI":
                return new q();
            case "SAMSUNG":
                return new n();
            case "XIAOMI":
            case "BLACKSHARK":
            case "REDMI":
                return new p();
            case "ASUS":
                return new j();
            case "IQOO":
            case "VIVO":
                return new o();
            case "OPPO":
                return new m();
            case "HONOR":
            case "HUA_WEI":
            case "HUAWEI":
                return new k();
            case "MEIZU":
                return new l();
            default:
                return null;
        }
    }
}
