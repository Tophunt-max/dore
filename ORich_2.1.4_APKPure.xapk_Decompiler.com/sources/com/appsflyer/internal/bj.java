package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.util.net.NetWork;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class bj {
    private final int valueOf;

    public bj(int i) {
        this.valueOf = i;
    }

    public final bi<String> valueOf(v vVar) throws Throwable {
        HttpURLConnection httpURLConnection = null;
        BufferedOutputStream bufferedOutputStream = null;
        try {
            StringBuilder sb = new StringBuilder("HTTP: url: ");
            sb.append(vVar.valueOf);
            AFLogger.AFInAppEventType(sb.toString());
            if (vVar.AFInAppEventType != null) {
                StringBuilder sb2 = new StringBuilder("HTTP: data: ");
                sb2.append(new String(vVar.AFInAppEventType));
                AFLogger.AFInAppEventType(sb2.toString());
            }
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(vVar.valueOf).openConnection();
            try {
                httpURLConnection2.setRequestMethod(vVar.AFKeystoreWrapper);
                httpURLConnection2.setConnectTimeout(this.valueOf);
                httpURLConnection2.setReadTimeout(this.valueOf);
                httpURLConnection2.addRequestProperty(NetWork.CONTENT_TYPE, "application/json");
                for (Map.Entry<String, String> entry : vVar.AFInAppEventParameterName.entrySet()) {
                    httpURLConnection2.setRequestProperty(entry.getKey(), entry.getValue());
                }
                boolean z = true;
                if (vVar.AFInAppEventType != null) {
                    byte[] bArr = vVar.AFInAppEventType;
                    httpURLConnection2.setDoOutput(true);
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(bArr.length);
                    httpURLConnection2.setRequestProperty("Content-Length", sb3.toString());
                    try {
                        BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(httpURLConnection2.getOutputStream());
                        try {
                            bufferedOutputStream2.write(bArr);
                            bufferedOutputStream2.close();
                        } catch (Throwable th) {
                            th = th;
                            bufferedOutputStream = bufferedOutputStream2;
                            if (bufferedOutputStream != null) {
                                bufferedOutputStream.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                int responseCode = httpURLConnection2.getResponseCode();
                if (responseCode / 100 != 2) {
                    z = false;
                }
                String strValues = values(httpURLConnection2, z);
                StringBuilder sb4 = new StringBuilder("HTTP: response code: ");
                sb4.append(responseCode);
                sb4.append(Operators.SPACE_STR);
                sb4.append(httpURLConnection2.getResponseMessage());
                AFLogger.AFInAppEventType(sb4.toString());
                AFLogger.AFInAppEventType("HTTP: response body: ".concat(String.valueOf(strValues)));
                bi<String> biVar = new bi<>(strValues, httpURLConnection2.getResponseCode(), z);
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                return biVar;
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection = httpURLConnection2;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    private static String values(HttpURLConnection httpURLConnection, boolean z) throws Throwable {
        BufferedReader bufferedReader;
        InputStream errorStream;
        InputStreamReader inputStreamReader = null;
        try {
            try {
                if (z) {
                    errorStream = httpURLConnection.getInputStream();
                } else {
                    errorStream = httpURLConnection.getErrorStream();
                }
                if (errorStream == null) {
                    return "";
                }
                StringBuilder sb = new StringBuilder();
                InputStreamReader inputStreamReader2 = new InputStreamReader(errorStream);
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader2);
                    boolean z2 = true;
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line != null) {
                                if (!z2) {
                                    sb.append('\n');
                                }
                                sb.append(line);
                                z2 = false;
                            } else {
                                String string = sb.toString();
                                inputStreamReader2.close();
                                bufferedReader2.close();
                                return string;
                            }
                        } catch (IOException e) {
                            e = e;
                            StringBuilder sb2 = new StringBuilder("Could not read connection response from: ");
                            sb2.append(httpURLConnection.getURL().toString());
                            AFLogger.valueOf(sb2.toString(), e);
                            throw e;
                        } catch (Exception e2) {
                            e = e2;
                            StringBuilder sb3 = new StringBuilder("Could not read connection response from: ");
                            sb3.append(httpURLConnection.getURL().toString());
                            AFLogger.valueOf(sb3.toString(), e);
                            StringBuilder sb4 = new StringBuilder("Could not read connection response: ");
                            sb4.append(e.getMessage());
                            throw new bq(sb4.toString(), e);
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            inputStreamReader = inputStreamReader2;
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            throw th;
                        }
                    }
                } catch (IOException e3) {
                    e = e3;
                } catch (Exception e4) {
                    e = e4;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = null;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e5) {
            e = e5;
        } catch (Exception e6) {
            e = e6;
        } catch (Throwable th4) {
            th = th4;
            bufferedReader = null;
        }
        StringBuilder sb22 = new StringBuilder("Could not read connection response from: ");
        sb22.append(httpURLConnection.getURL().toString());
        AFLogger.valueOf(sb22.toString(), e);
        throw e;
    }
}
