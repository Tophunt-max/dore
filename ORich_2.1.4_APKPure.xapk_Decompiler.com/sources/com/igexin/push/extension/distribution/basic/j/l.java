package com.igexin.push.extension.distribution.basic.j;

import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.taobao.weex.el.parse.Operators;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class l {
    private static String a(int i) {
        String strTrim;
        try {
            strTrim = b(String.format("/proc/%d/cmdline", Integer.valueOf(i))).trim();
        } catch (Exception unused) {
            strTrim = null;
        }
        try {
            if (TextUtils.isEmpty(strTrim)) {
                return b(String.format("/proc/%d/stat", Integer.valueOf(i))).split("\\s+")[1].replace(Operators.BRACKET_START_STR, "").replace(Operators.BRACKET_END_STR, "");
            }
        } catch (Exception unused2) {
        }
        return strTrim;
    }

    private static String a(String str) {
        if (Pattern.compile("^([a-zA-Z]+[.][a-zA-Z]+)[.]*.*").matcher(str).find() && !str.startsWith("com.android") && !str.startsWith("android.process") && !str.startsWith("org.")) {
            if (str.contains(":")) {
                str = str.split(":")[0];
            }
            try {
                int i = com.igexin.push.core.f.f.getPackageManager().getPackageInfo(str, 0).applicationInfo.flags;
                if ((i & 1) == 0 || (i & 128) != 0) {
                    return str;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return null;
    }

    public static List<String> a() {
        List<String> listB = b();
        if (listB != null) {
            com.igexin.b.a.c.b.a("EXT-RecentAppUtil|" + Build.VERSION.SDK_INT + ",running = " + listB.toString());
        }
        return listB;
    }

    private static String b(String str) throws Throwable {
        FileReader fileReader;
        Throwable th;
        BufferedReader bufferedReader;
        try {
            StringBuilder sb = new StringBuilder();
            fileReader = new FileReader(str);
            try {
                bufferedReader = new BufferedReader(fileReader);
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                        sb.append("\n");
                    } catch (Exception unused) {
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (Exception unused2) {
                            }
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Exception unused3) {
                            }
                        }
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (Exception unused4) {
                            }
                        }
                        if (bufferedReader == null) {
                            throw th;
                        }
                        try {
                            bufferedReader.close();
                            throw th;
                        } catch (Exception unused5) {
                            throw th;
                        }
                    }
                }
                if (sb.length() > 2) {
                    String strSubstring = sb.substring(0, sb.length() - 2);
                    try {
                        fileReader.close();
                    } catch (Exception unused6) {
                    }
                    try {
                        bufferedReader.close();
                    } catch (Exception unused7) {
                    }
                    return strSubstring;
                }
                String string = sb.toString();
                try {
                    fileReader.close();
                } catch (Exception unused8) {
                }
                try {
                    bufferedReader.close();
                } catch (Exception unused9) {
                }
                return string;
            } catch (Exception unused10) {
                bufferedReader = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (Exception unused11) {
            bufferedReader = null;
            fileReader = null;
        } catch (Throwable th4) {
            fileReader = null;
            th = th4;
            bufferedReader = null;
        }
    }

    private static List<String> b() {
        ArrayList arrayList = new ArrayList();
        for (File file : new File("/proc").listFiles(new m())) {
            try {
                String strA = a(Integer.parseInt(file.getName()));
                if (!TextUtils.isEmpty(strA)) {
                    strA = a(strA);
                }
                if (!TextUtils.isEmpty(strA) && !arrayList.contains(strA)) {
                    arrayList.add(strA);
                }
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }
}
