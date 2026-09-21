package com.appsflyer.internal;

import android.util.Base64;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    String AFInAppEventParameterName;
    private byte[] AFInAppEventType;
    String AFKeystoreWrapper;
    String values;

    public h() {
    }

    h(String str, byte[] bArr, String str2) {
        this.AFKeystoreWrapper = str;
        this.AFInAppEventType = bArr;
        this.AFInAppEventParameterName = str2;
    }

    h(char[] cArr) {
        Scanner scanner = new Scanner(new String(cArr));
        int i = 0;
        int i2 = 0;
        while (scanner.hasNextLine()) {
            String strNextLine = scanner.nextLine();
            if (strNextLine.startsWith("url=")) {
                this.AFKeystoreWrapper = strNextLine.substring(4).trim();
            } else if (strNextLine.startsWith("version=")) {
                this.AFInAppEventParameterName = strNextLine.substring(8).trim();
                Matcher matcher = Pattern.compile("^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$").matcher(this.AFInAppEventParameterName);
                if (matcher.matches()) {
                    i = Integer.parseInt(matcher.group(1));
                    i2 = Integer.parseInt(matcher.group(2));
                }
            } else if (strNextLine.startsWith("data=")) {
                String strTrim = strNextLine.substring(5).trim();
                this.AFInAppEventType = (i > 4 || i2 >= 11) ? Base64.decode(strTrim, 2) : strTrim.getBytes();
            }
        }
        scanner.close();
    }

    final byte[] AFKeystoreWrapper() {
        return this.AFInAppEventType;
    }
}
