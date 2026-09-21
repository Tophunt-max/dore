package com.igexin.push.extension.distribution.basic.j;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Properties f317a;

    private d() throws IOException {
        Properties properties = new Properties();
        this.f317a = properties;
        properties.load(new FileInputStream(new File("/system/build.prop")));
    }

    public static d a() {
        return new d();
    }

    public String a(String str, String str2) {
        return this.f317a.getProperty(str, str2);
    }
}
