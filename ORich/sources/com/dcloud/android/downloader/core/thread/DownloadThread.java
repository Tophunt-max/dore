package com.dcloud.android.downloader.core.thread;

import android.os.Process;
import android.util.Log;
import com.dcloud.android.downloader.config.Config;
import com.dcloud.android.downloader.core.DownloadResponse;
import com.dcloud.android.downloader.domain.DownloadInfo;
import com.dcloud.android.downloader.domain.DownloadThreadInfo;
import com.dcloud.android.downloader.exception.DownloadException;
import com.dcloud.android.downloader.exception.DownloadPauseException;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.adapter.util.DCloudTrustManager;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public class DownloadThread implements Runnable {
    public static final String TAG = "DownloadThread";
    private final Config config;
    private final DownloadInfo downloadInfo;
    private final DownloadProgressListener downloadProgressListener;
    private final DownloadResponse downloadResponse;
    private final DownloadThreadInfo downloadThreadInfo;
    private InputStream inputStream;
    private long lastProgress;
    private int retryDownloadCount = 0;

    public interface DownloadProgressListener {
        void onDownloadSuccess();

        void onProgress();
    }

    public DownloadThread(DownloadThreadInfo downloadThreadInfo, DownloadResponse downloadResponse, Config config, DownloadInfo downloadInfo, DownloadProgressListener downloadProgressListener) {
        this.downloadThreadInfo = downloadThreadInfo;
        this.downloadResponse = downloadResponse;
        this.config = config;
        this.downloadInfo = downloadInfo;
        this.lastProgress = downloadThreadInfo.getProgress();
        this.downloadProgressListener = downloadProgressListener;
    }

    private void checkPause() {
        if (this.downloadInfo.isPause()) {
            throw new DownloadPauseException(7);
        }
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x01fb: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:82:0x01fb */
    private void executeDownload() throws Throwable {
        NoSuchAlgorithmException e;
        KeyManagementException e2;
        IOException e3;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        HttpURLConnection httpURLConnection3 = null;
        try {
            try {
                try {
                    httpURLConnection2 = (HttpURLConnection) new URL(this.downloadThreadInfo.getUri()).openConnection();
                    try {
                        if (httpURLConnection2 instanceof HttpsURLConnection) {
                            SSLSocketFactory sSLSocketFactory = DCloudTrustManager.getSSLSocketFactory();
                            if (sSLSocketFactory != null) {
                                ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(sSLSocketFactory);
                            }
                            ((HttpsURLConnection) httpURLConnection2).setHostnameVerifier(DCloudTrustManager.getHostnameVerifier(false));
                        }
                        httpURLConnection2.setConnectTimeout(this.config.getConnectTimeout());
                        httpURLConnection2.setReadTimeout(this.config.getReadTimeout());
                        httpURLConnection2.setRequestMethod(this.config.getMethod());
                        long start = this.downloadThreadInfo.getStart() + this.lastProgress;
                        if (this.downloadInfo.isSupportRanges()) {
                            if (start > this.downloadThreadInfo.getEnd()) {
                                this.lastProgress = 0L;
                                start = 0;
                            }
                            if (this.config.getEachDownloadThread() == 1) {
                                httpURLConnection2.setRequestProperty("Range", "bytes=" + start + Operators.SUB);
                            } else {
                                httpURLConnection2.setRequestProperty("Range", "bytes=" + start + Operators.SUB + this.downloadThreadInfo.getEnd());
                            }
                        }
                        int responseCode = httpURLConnection2.getResponseCode();
                        long j = ((long) Integer.parseInt(httpURLConnection2.getHeaderField("Content-Length"))) + start;
                        if (this.config.getEachDownloadThread() == 1 && j != this.downloadThreadInfo.getEnd()) {
                            if (j - this.downloadThreadInfo.getEnd() != 1) {
                                throw new DownloadException(5, "IO error Data source change");
                            }
                            start--;
                            this.lastProgress--;
                        }
                        if (responseCode != 206 && responseCode != 200) {
                            throw new DownloadException(8, "UnSupported response code:" + responseCode);
                        }
                        this.inputStream = httpURLConnection2.getInputStream();
                        RandomAccessFile randomAccessFile = new RandomAccessFile(this.downloadInfo.getPath(), "rwd");
                        if (this.config.getEachDownloadThread() == 1 && randomAccessFile.length() < this.lastProgress) {
                            throw new DownloadException(5, "IO error Have small download size");
                        }
                        randomAccessFile.seek(start);
                        byte[] bArr = new byte[4096];
                        int i = 0;
                        while (true) {
                            checkPause();
                            int i2 = this.inputStream.read(bArr);
                            if (i2 == -1) {
                                break;
                            }
                            randomAccessFile.write(bArr, 0, i2);
                            i += i2;
                            this.downloadThreadInfo.setProgress(this.lastProgress + ((long) i));
                            this.downloadProgressListener.onProgress();
                            Log.d(TAG, "downloadInfo:" + this.downloadInfo.getId() + " thread:" + this.downloadThreadInfo.getThreadId() + " progress:" + this.downloadThreadInfo.getProgress() + ",start:" + this.downloadThreadInfo.getStart() + ",end:" + this.downloadThreadInfo.getEnd());
                        }
                        this.downloadProgressListener.onDownloadSuccess();
                        checkPause();
                    } catch (DownloadPauseException unused) {
                        httpURLConnection3 = httpURLConnection2;
                        if (httpURLConnection3 == null) {
                            return;
                        } else {
                            httpURLConnection2 = httpURLConnection3;
                        }
                    } catch (ProtocolException e4) {
                        e = e4;
                        throw new DownloadException(4, "Protocol error", e);
                    } catch (IOException e5) {
                        e3 = e5;
                        throw new DownloadException(5, "IO error", e3);
                    } catch (KeyManagementException e6) {
                        e2 = e6;
                        throw new DownloadException(5, "Key management", e2);
                    } catch (NoSuchAlgorithmException e7) {
                        e = e7;
                        throw new DownloadException(5, "NO such", e);
                    }
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection3 = httpURLConnection;
                    if (httpURLConnection3 != null) {
                        httpURLConnection3.disconnect();
                    }
                    throw th;
                }
            } catch (DownloadPauseException unused2) {
            } catch (ProtocolException e8) {
                e = e8;
            } catch (IOException e9) {
                e3 = e9;
            } catch (KeyManagementException e10) {
                e2 = e10;
            } catch (NoSuchAlgorithmException e11) {
                e = e11;
            }
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        Process.setThreadPriority(10);
        checkPause();
        try {
            executeDownload();
        } catch (DownloadException e) {
            this.downloadInfo.setStatus(6);
            this.downloadInfo.setException(e);
            this.downloadResponse.onStatusChanged(this.downloadInfo);
            this.downloadResponse.handleException(e);
        } catch (Exception e2) {
            DownloadException downloadException = new DownloadException(9, "other error", e2);
            this.downloadInfo.setStatus(6);
            this.downloadInfo.setException(downloadException);
            this.downloadResponse.onStatusChanged(this.downloadInfo);
            this.downloadResponse.handleException(downloadException);
        }
    }
}
