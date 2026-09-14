package com.google.firebase.messaging;

/* JADX INFO: loaded from: classes.dex */
public final class SendException extends Exception {
    public static final int ERROR_INVALID_PARAMETERS = 1;
    public static final int ERROR_SIZE = 2;
    public static final int ERROR_TOO_MANY_MESSAGES = 4;
    public static final int ERROR_TTL_EXCEEDED = 3;
    public static final int ERROR_UNKNOWN = 0;
    private final int errorCode;

    /* JADX WARN: Removed duplicated region for block: B:32:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    SendException(java.lang.String r8) {
        /*
            r7 = this;
            r7.<init>(r8)
            r0 = 4
            r1 = 3
            r2 = 2
            r3 = 1
            r4 = 0
            if (r8 == 0) goto L5c
            java.util.Locale r5 = java.util.Locale.US
            java.lang.String r8 = r8.toLowerCase(r5)
            r8.hashCode()
            r5 = -1
            int r6 = r8.hashCode()
            switch(r6) {
                case -1743242157: goto L48;
                case -1290953729: goto L3d;
                case -920906446: goto L32;
                case -617027085: goto L27;
                case -95047692: goto L1c;
                default: goto L1b;
            }
        L1b:
            goto L52
        L1c:
            java.lang.String r6 = "missing_to"
            boolean r8 = r8.equals(r6)
            if (r8 != 0) goto L25
            goto L52
        L25:
            r5 = 4
            goto L52
        L27:
            java.lang.String r6 = "messagetoobig"
            boolean r8 = r8.equals(r6)
            if (r8 != 0) goto L30
            goto L52
        L30:
            r5 = 3
            goto L52
        L32:
            java.lang.String r6 = "invalid_parameters"
            boolean r8 = r8.equals(r6)
            if (r8 != 0) goto L3b
            goto L52
        L3b:
            r5 = 2
            goto L52
        L3d:
            java.lang.String r6 = "toomanymessages"
            boolean r8 = r8.equals(r6)
            if (r8 != 0) goto L46
            goto L52
        L46:
            r5 = 1
            goto L52
        L48:
            java.lang.String r6 = "service_not_available"
            boolean r8 = r8.equals(r6)
            if (r8 != 0) goto L51
            goto L52
        L51:
            r5 = 0
        L52:
            switch(r5) {
                case 0: goto L5a;
                case 1: goto L5d;
                case 2: goto L58;
                case 3: goto L56;
                case 4: goto L58;
                default: goto L55;
            }
        L55:
            goto L5c
        L56:
            r0 = 2
            goto L5d
        L58:
            r0 = 1
            goto L5d
        L5a:
            r0 = 3
            goto L5d
        L5c:
            r0 = 0
        L5d:
            r7.errorCode = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.SendException.<init>(java.lang.String):void");
    }

    public final int getErrorCode() {
        return this.errorCode;
    }
}
