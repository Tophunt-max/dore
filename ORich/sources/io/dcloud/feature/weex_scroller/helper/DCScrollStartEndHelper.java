package io.dcloud.feature.weex_scroller.helper;

/* JADX INFO: loaded from: classes2.dex */
public class DCScrollStartEndHelper {
    public static boolean isScrollEvent(String str) {
        str.hashCode();
        switch (str) {
            case "scroll":
            case "scrollend":
            case "scrolltolower":
            case "scrolltoupper":
            case "scrollstart":
                return true;
            default:
                return false;
        }
    }
}
