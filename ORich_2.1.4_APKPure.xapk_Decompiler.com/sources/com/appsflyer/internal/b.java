package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.PointF;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.appsflyer.AFLogger;
import com.taobao.weex.el.parse.Operators;
import com.taobao.weex.ui.component.list.template.TemplateDom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
final class b {
    private static int getLevel = 1;
    private static int init;
    private static char[] AFInAppEventType = {24770, 58554, 26665, 60852, 28944, 63129, 31245, 65484, 17263, 51433, 19561, 53723, 21831, 56000, 24142, 41524, 10154, 43882, 12457, 46099, 14723, 48389, 745, 34426, 3044, 36690, 5324, 39011, 7622, 25014, 58672, 27309, 60966, 29574, '0', 'j', 33814, 2200, 36100, 4594, 38458, 6821, 40815, 9164, 43074, 11478, 45433, 13821, 47737, 43847, 12156, 41959, 9838, 47836, 15710, 38412, 4688, 40644, 6985, 34808, 'o', 36080, 2403, 46514, 15896, 47754, 10039, 41899, 11312, 43172, 21721, 53585};
    private static long AFInAppEventParameterName = 7346225891104818295L;
    private static int valueOf = 0;
    private static char values = 0;
    private static long AFKeystoreWrapper = -8381164938660999162L;

    b() {
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0333  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static java.lang.String AFInAppEventParameterName(android.content.Context r27, long r28) {
        /*
            Method dump skipped, instruction units count: 966
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.b.AFInAppEventParameterName(android.content.Context, long):java.lang.String");
    }

    private static String values(String str, Long l) {
        int i = init;
        int i2 = i + 9;
        getLevel = i2 % 128;
        int i3 = i2 % 2;
        if ((str != null ? 'b' : 'H') != 'H') {
            int i4 = i + 27;
            getLevel = i4 % 128;
            int i5 = i4 % 2;
            if (l != null && str.length() == 32) {
                StringBuilder sb = new StringBuilder(str);
                String string = l.toString();
                int numericValue = 0;
                for (int i6 = 0; i6 < string.length(); i6++) {
                    numericValue += Character.getNumericValue(string.charAt(i6));
                }
                String hexString = Integer.toHexString(numericValue);
                sb.replace(7, hexString.length() + 7, hexString);
                long numericValue2 = 0;
                int i7 = 0;
                while (true) {
                    if (!(i7 < sb.length())) {
                        break;
                    }
                    int i8 = getLevel + 111;
                    init = i8 % 128;
                    int i9 = i8 % 2;
                    numericValue2 += (long) Character.getNumericValue(sb.charAt(i7));
                    i7++;
                }
                while (true) {
                    if (numericValue2 <= 100) {
                        break;
                    }
                    numericValue2 %= 100;
                }
                sb.insert(23, (int) numericValue2);
                if (numericValue2 < 10) {
                    sb.insert(23, valueOf((char) ExpandableListView.getPackedPositionGroup(0L), 1 - (ViewConfiguration.getDoubleTapTimeout() >> 16), 34 - Color.alpha(0)).intern());
                }
                return sb.toString();
            }
        }
        return valueOf("ဆ쌧Ụ记", "鿷\u2b74ጇ⋿", TextUtils.getOffsetBefore("", 0), "狟뫦ዥ渖脋┻煑\uf2f2ﺬ\ue37e툐鼰罼絕䇳甫멪瘖뤐⣒犤내곐呪鋹뭟ࡂ赚\ueedbᚦﺎ價", (char) (65299 - Color.alpha(0))).intern();
    }

    private static boolean AFInAppEventParameterName(String str) {
        int i = init + 47;
        getLevel = i % 128;
        boolean z = true;
        try {
            if (i % 2 != 0) {
                Class.forName(str);
            } else {
                Class.forName(str);
                z = false;
            }
            return z;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x005a, code lost:
    
        if (r15.contains(valueOf("ဆ쌧Ụ记", "㸮⾗縜\ue97d", android.text.TextUtils.getTrimmedLength("") + 472880958, "ꈵ", (char) (32127 - (android.media.AudioTrack.getMaxVolume() > 0.0f ? 1 : (android.media.AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)))).intern()) == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x005c, code lost:
    
        return r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x005d, code lost:
    
        r15 = r15.split(valueOf("ဆ쌧Ụ记", "\ue1d7ퟺ携ꃸ", (android.os.Process.getThreadPriority(0) + 20) >> 6, "뚘鵳", (char) (63588 - (android.media.AudioTrack.getMinVolume() > 0.0f ? 1 : (android.media.AudioTrack.getMinVolume() == 0.0f ? 0 : -1)))).intern());
        r0 = r15.length;
        r1 = new java.lang.StringBuilder();
        r0 = r0 - 1;
        r1.append(r15[r0]);
        r1.append(valueOf("ဆ쌧Ụ记", "㸮⾗縜\ue97d", 472880958 - (android.view.ViewConfiguration.getDoubleTapTimeout() >> 16), "ꈵ", (char) ((android.media.AudioTrack.getMinVolume() > 0.0f ? 1 : (android.media.AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 32126)).intern());
        r2 = com.appsflyer.internal.b.init + 109;
        com.appsflyer.internal.b.getLevel = r2 % 128;
        r2 = r2 % 2;
        r2 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00b3, code lost:
    
        if (r2 >= r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00b5, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00b7, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00b8, code lost:
    
        if (r9 == true) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00ba, code lost:
    
        r9 = com.appsflyer.internal.b.getLevel + 9;
        com.appsflyer.internal.b.init = r9 % 128;
        r9 = r9 % 2;
        r1.append(r15[r2]);
        r1.append(valueOf("ဆ쌧Ụ记", "㸮⾗縜\ue97d", android.view.KeyEvent.getDeadChar(0, 0) + 472880958, "ꈵ", (char) (32127 - (android.os.Process.getElapsedCpuTime() > 0 ? 1 : (android.os.Process.getElapsedCpuTime() == 0 ? 0 : -1)))).intern());
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00e7, code lost:
    
        r1.append(r15[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00f0, code lost:
    
        return r1.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003d, code lost:
    
        if ((r15.contains(valueOf("ဆ쌧Ụ记", "㸮⾗縜\ue97d", 472880958 - android.text.TextUtils.getTrimmedLength(""), "ꈵ", (char) (3788 % (android.media.AudioTrack.getMaxVolume() > 2.0f ? 1 : (android.media.AudioTrack.getMaxVolume() == 2.0f ? 0 : -1)))).intern())) != true) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String values(java.lang.String r15) {
        /*
            Method dump skipped, instruction units count: 241
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.b.values(java.lang.String):java.lang.String");
    }

    private static String AFInAppEventParameterName(Context context) {
        if (System.getProperties().containsKey(valueOf((char) ((-1) - TextUtils.indexOf((CharSequence) "", '0')), (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 14, 35 - (Process.myTid() >> 22)).intern())) {
            try {
                Matcher matcher = Pattern.compile(valueOf("ဆ쌧Ụ记", "㕇酱嘑瑯", Color.argb(0, 0, 0, 0), "䆷誇\ue617န튼鮾⸌䃄\u137d䶰", (char) (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1))).intern()).matcher(context.getCacheDir().getPath().replace(valueOf((char) ((ViewConfiguration.getScrollDefaultDelay() >> 16) + 43880), 6 - (ViewConfiguration.getDoubleTapTimeout() >> 16), 50 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1))).intern(), ""));
                strGroup = (matcher.find() ? Operators.CONDITION_IF : (char) 23) != 23 ? matcher.group(1) : null;
                int i = getLevel + 29;
                init = i % 128;
                int i2 = i % 2;
            } catch (Exception e2) {
                if (ak.valueOf == null) {
                    ak.valueOf = new ak();
                }
                ak akVar = ak.valueOf;
                String strIntern = valueOf((char) (Color.rgb(0, 0, 0) + 16815695), 21 - AndroidCharacter.getEastAsianWidth('0'), TextUtils.indexOf((CharSequence) "", '0') + 56).intern();
                StringBuilder sb = new StringBuilder();
                sb.append(valueOf("ဆ쌧Ụ记", "䛿࿆馼\ue65e", (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) - 1139816890, "㴭癐䉙꼨ᥩ⅏➹秨䵖팟뵐葠\ue57e⅔加\ue412ꨵŜ䎃ટ㚫㕃䶹㙲컿惥ꑷ蟀帼豜\uf348⒁ᩢꩾ麳ᅿ跚捻뢎墕嬓", (char) (TextUtils.indexOf("", "", 0) + 24217)).intern());
                sb.append(e2);
                akVar.AFKeystoreWrapper(null, strIntern, sb.toString());
                int i3 = getLevel + 119;
                init = i3 % 128;
                if ((i3 % 2 == 0 ? 'U' : (char) 1) != 'U') {
                    super.hashCode();
                    return null;
                }
            }
        }
        return strGroup;
    }

    private static String valueOf(Context context) {
        int i = init + 55;
        getLevel = i % 128;
        int i2 = i % 2;
        Object[] objArr = null;
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
            int i3 = init + 111;
            getLevel = i3 % 128;
            if (!(i3 % 2 == 0)) {
                return str;
            }
            int length = objArr.length;
            return str;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    static class e extends HashMap<String, Object> {
        private static int AFInAppEventParameterName = 1687238226;
        private static int AFKeystoreWrapper = 29;
        private static short[] AFVersionDeclaration = null;
        private static int onAttributionFailureNative = 0;
        private static int onInstallConversionDataLoadedNative = 1;
        private static int values = 546913058;
        private final Context AFInAppEventType;
        private final Map<String, Object> valueOf;
        private static byte[] AFLogger$LogLevel = {3, 12, -19, 1, 14, -8, 4, -11, 21, -7, 5, -10, 13, -17, 16, 0, 0, 0, -45, 1, -6, 4, -6, 6, -8, -4, -53, -15, 69, -26, -52, -1, 6, -11, 4, 11, 2, -21, 19, 69, -72, -12, 11, -14, 87, -69, -16, 9, 11, -21, 86, -70, 1, -6, 75, -71, -7, 5, -11, 19, -17, 13, -9, 9, -2, 71, -68, -1, -7, 3, 8, -5, 7, 1, -2, -52, 53, -8, -43, 52, -4, -1, 5, -53, 4, -4, 3, 1, -1, -13, -3, 1, 19, -17, 13, -11, 3, 8, -15, 82, 77, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        private static int AppsFlyer2dXConversionCallback = 12;
        private static char[] getLevel = {'Z', Operators.ARRAY_START, 'k', 'N', '^', 'M', 'P', 'w', 'q', 'r', 'm', 'u', 'x', 'p', Operators.ARRAY_SEPRATOR, 's', 'z', '~', 128, 133, 131, 't', 132, 'o', '|', Operators.BLOCK_START, 'F', 127, 'X', 129, Operators.CONDITION_IF_MIDDLE, '`', 'Q', 'e', 'O', 'T', 'S', 'D', 'B', 'n', Typography.less, Operators.BLOCK_END, '=', Typography.greater, 'y'};
        private static boolean onAppOpenAttributionNative = true;
        private static boolean init = true;

        e(Map<String, Object> map, Context context) {
            this.valueOf = map;
            this.AFInAppEventType = context;
            put(AFInAppEventParameterName(), AFInAppEventType());
        }

        private static StringBuilder valueOf(String... strArr) throws Exception {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i < 3) {
                int i2 = onAttributionFailureNative + 1;
                onInstallConversionDataLoadedNative = i2 % 128;
                int i3 = i2 % 2;
                arrayList.add(Integer.valueOf(strArr[i].length()));
                i++;
                int i4 = onAttributionFailureNative + 121;
                onInstallConversionDataLoadedNative = i4 % 128;
                int i5 = i4 % 2;
            }
            Collections.sort(arrayList);
            int iIntValue = ((Integer) arrayList.get(0)).intValue();
            StringBuilder sb = new StringBuilder();
            int i6 = 0;
            while (true) {
                if (!(i6 >= iIntValue)) {
                    Integer numValueOf = null;
                    for (int i7 = 0; i7 < 3; i7++) {
                        int iCharAt = strArr[i7].charAt(i6);
                        if ((numValueOf == null ? (char) 4 : '=') == '=') {
                            iCharAt ^= numValueOf.intValue();
                        }
                        numValueOf = Integer.valueOf(iCharAt);
                    }
                    sb.append(Integer.toHexString(numValueOf.intValue()));
                    i6++;
                } else {
                    int i8 = onAttributionFailureNative + 121;
                    onInstallConversionDataLoadedNative = i8 % 128;
                    int i9 = i8 % 2;
                    return sb;
                }
            }
        }

        private String AFInAppEventParameterName() {
            int i = onInstallConversionDataLoadedNative + 99;
            onAttributionFailureNative = i % 128;
            int i2 = i % 2;
            Object obj = null;
            try {
                String string = Integer.toString(Build.VERSION.SDK_INT);
                String string2 = this.valueOf.get(values((-546912961) - (ViewConfiguration.getDoubleTapTimeout() >> 16), (short) ((Process.getThreadPriority(0) + 20) >> 6), (byte) (Color.rgb(0, 0, 0) + 16777216), TextUtils.indexOf("", "", 0, 0) - 17, View.MeasureSpec.makeMeasureSpec(0, 0) - 1687238226).intern()).toString();
                String string3 = this.valueOf.get(values((-546912960) - Color.blue(0), (short) (Process.myTid() >> 22), (byte) (ViewConfiguration.getScrollBarFadeDuration() >> 16), (-24) - ExpandableListView.getPackedPositionGroup(0L), AndroidCharacter.getMirror('0') - 13943).intern()).toString();
                if (!(string3 != null)) {
                    int i3 = onInstallConversionDataLoadedNative + 39;
                    onAttributionFailureNative = i3 % 128;
                    string3 = (i3 % 2 != 0 ? AFInAppEventParameterName("\u0087\u0081\u0086\u0085\u0084\u0083\u0082\u0081", null, null, 32248 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))) : AFInAppEventParameterName("\u0087\u0081\u0086\u0085\u0084\u0083\u0082\u0081", null, null, 128 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)))).intern();
                    int i4 = onAttributionFailureNative + 99;
                    onInstallConversionDataLoadedNative = i4 % 128;
                    int i5 = i4 % 2;
                }
                StringBuilder sb = new StringBuilder(string2);
                sb.reverse();
                StringBuilder sbValueOf = valueOf(string, string3, sb.toString());
                int length = sbValueOf.length();
                if (length > 4) {
                    sbValueOf.delete(4, length);
                } else {
                    while (length < 4) {
                        length++;
                        sbValueOf.append('1');
                    }
                }
                sbValueOf.insert(0, AFInAppEventParameterName("\u008a\u0089\u0088", null, null, 127 - ExpandableListView.getPackedPositionGroup(0L)).intern());
                String string4 = sbValueOf.toString();
                int i6 = onInstallConversionDataLoadedNative + 27;
                onAttributionFailureNative = i6 % 128;
                if (i6 % 2 == 0) {
                    return string4;
                }
                super.hashCode();
                return string4;
            } catch (Exception e) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(AFInAppEventParameterName("\u008f\u009b\u0091\u009a\u008c\u0093\u0099\u0089\u0098\u0097\u0089\u008f\u0096\u0093\u008c\u0095\u008f\u0094\u0089\u0088\u008f\u008a\u0089\u0088\u008f\u0090\u0091\u008c\u0093\u008b\u0092\u0089\u0091\u0089\u0090\u008f\u008e\u0089\u008d\u008c\u008b\u008a", null, null, 127 - Color.green(0)).intern());
                sb2.append(e);
                AFLogger.values(sb2.toString());
                return values(Color.blue(0) - 546912951, (short) (ViewConfiguration.getWindowTouchSlop() >> 8), (byte) (ViewConfiguration.getEdgeSlop() >> 16), (-22) - ((Process.getThreadPriority(0) + 20) >> 6), (-1687238211) - Color.green(0)).intern();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x01ff  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private java.lang.String AFInAppEventType() {
            /*
                Method dump skipped, instruction units count: 864
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.b.e.AFInAppEventType():java.lang.String");
        }

        public static class a {
            public final Boolean AFInAppEventParameterName;
            Boolean AFInAppEventType;
            public final String valueOf;

            a() {
            }

            static byte[] AFInAppEventType(String str) throws Exception {
                return str.getBytes();
            }

            static byte[] valueOf(byte[] bArr) throws Exception {
                for (int i = 0; i < bArr.length; i++) {
                    bArr[i] = (byte) (bArr[i] ^ ((i % 2) + 42));
                }
                return bArr;
            }

            static String values(byte[] bArr) throws Exception {
                StringBuilder sb = new StringBuilder();
                for (byte b : bArr) {
                    String hexString = Integer.toHexString(b);
                    if (hexString.length() == 1) {
                        hexString = "0".concat(String.valueOf(hexString));
                    }
                    sb.append(hexString);
                }
                return sb.toString();
            }

            a(String str, Boolean bool) {
                this.valueOf = str;
                this.AFInAppEventParameterName = bool;
            }
        }

        private static String values(int i, short s, byte b, int i2, int i3) {
            int i4;
            int i5;
            StringBuilder sb = new StringBuilder();
            int i6 = AFKeystoreWrapper;
            int i7 = i2 + i6;
            int i8 = 0;
            int i9 = 1;
            boolean z = i7 == -1;
            if (z) {
                byte[] bArr = AFLogger$LogLevel;
                if ((bArr != null ? Operators.ARRAY_END : 'U') != 'U') {
                    i7 = (byte) (bArr[AFInAppEventParameterName + i3] + i6);
                } else {
                    i7 = (short) (AFVersionDeclaration[AFInAppEventParameterName + i3] + i6);
                }
            }
            if (i7 > 0) {
                int i10 = ((i3 + i7) - 2) + AFInAppEventParameterName;
                if (z) {
                    int i11 = onInstallConversionDataLoadedNative + 51;
                    onAttributionFailureNative = i11 % 128;
                    int i12 = i11 % 2;
                    i8 = 1;
                }
                int i13 = i10 + i8;
                char c = (char) (i + values);
                sb.append(c);
                while (i9 < i7) {
                    byte[] bArr2 = AFLogger$LogLevel;
                    if ((bArr2 != null ? '#' : (char) 16) == '#') {
                        i4 = i13 - 1;
                        i5 = (byte) (bArr2[i13] + s);
                    } else {
                        i4 = i13 - 1;
                        i5 = (short) (AFVersionDeclaration[i13] + s);
                    }
                    c = (char) (c + (i5 ^ b));
                    i13 = i4;
                    sb.append(c);
                    i9++;
                    int i14 = onAttributionFailureNative + 95;
                    onInstallConversionDataLoadedNative = i14 % 128;
                    int i15 = i14 % 2;
                }
            }
            return sb.toString();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0020  */
        /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r7v1, types: [char[]] */
        /* JADX WARN: Type inference failed for: r7v2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private static java.lang.String AFInAppEventParameterName(java.lang.String r5, int[] r6, java.lang.String r7, int r8) throws java.io.UnsupportedEncodingException {
            /*
                Method dump skipped, instruction units count: 201
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.b.e.AFInAppEventParameterName(java.lang.String, int[], java.lang.String, int):java.lang.String");
        }
    }

    private static String valueOf(char c, int i, int i2) {
        char[] cArr = new char[i];
        int i3 = 0;
        while (true) {
            if ((i3 < i ? 'A' : 'U') == 'A') {
                int i4 = init;
                int i5 = i4 + 9;
                getLevel = i5 % 128;
                int i6 = i5 % 2;
                cArr[i3] = (char) ((((long) AFInAppEventType[i2 + i3]) ^ (((long) i3) * AFInAppEventParameterName)) ^ ((long) c));
                i3++;
                int i7 = i4 + 111;
                getLevel = i7 % 128;
                int i8 = i7 % 2;
            } else {
                return new String(cArr);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v5, types: [char[]] */
    private static String valueOf(String str, String str2, int i, String str3, char c) {
        int i2 = init + 61;
        int i3 = i2 % 128;
        getLevel = i3;
        int i4 = i2 % 2;
        char c2 = str3 != null ? TemplateDom.SEPARATOR : (char) 17;
        Object charArray = str3;
        if (c2 != 17) {
            int i5 = i3 + 3;
            init = i5 % 128;
            if (i5 % 2 != 0) {
                int i6 = 22 / 0;
                charArray = str3.toCharArray();
            } else {
                charArray = str3.toCharArray();
            }
        }
        char[] cArr = (char[]) charArray;
        if (!(str2 == 0)) {
            str2 = str2.toCharArray();
        }
        char[] cArr2 = (char[]) str2;
        Object charArray2 = str;
        if (str != null) {
            int i7 = getLevel + 59;
            init = i7 % 128;
            if ((i7 % 2 != 0 ? '\"' : Operators.DOT) != '\"') {
                charArray2 = str.toCharArray();
            } else {
                char[] charArray3 = str.toCharArray();
                Object obj = null;
                super.hashCode();
                charArray2 = charArray3;
            }
        }
        char[] cArr3 = (char[]) cArr2.clone();
        char[] cArr4 = (char[]) ((char[]) charArray2).clone();
        cArr3[0] = (char) (c ^ cArr3[0]);
        cArr4[2] = (char) (cArr4[2] + ((char) i));
        int length = cArr.length;
        char[] cArr5 = new char[length];
        for (int i8 = 0; i8 < length; i8++) {
            ct.AFInAppEventType(cArr3, cArr4, i8);
            cArr5[i8] = (char) (((((long) (cArr[i8] ^ cArr3[(i8 + 3) % 4])) ^ AFKeystoreWrapper) ^ ((long) valueOf)) ^ ((long) values));
        }
        return new String(cArr5);
    }
}
