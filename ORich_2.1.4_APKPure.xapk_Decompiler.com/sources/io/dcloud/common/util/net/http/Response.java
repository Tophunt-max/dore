package io.dcloud.common.util.net.http;

import io.dcloud.common.DHInterface.AbsMgr;
import io.dcloud.common.DHInterface.IMgr;
import io.dcloud.common.adapter.util.DeviceInfo;
import io.dcloud.common.adapter.util.Logger;
import io.dcloud.common.adapter.util.PlatformUtil;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.util.IOUtil;
import io.dcloud.common.util.PdrUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* JADX INFO: loaded from: classes2.dex */
public class Response implements Runnable {
    AbsMgr mNetMgr;
    Socket mSocket;
    private static final byte CR = 13;
    private static final byte LF = 10;
    private static final byte[] CRLF = {CR, LF};
    String mUrl = null;
    final int BUFFER_SIZE = 10240;

    public Response(Socket socket, AbsMgr absMgr) {
        this.mSocket = null;
        this.mNetMgr = null;
        this.mSocket = socket;
        this.mNetMgr = absMgr;
        new Thread(this).start();
    }

    private void addResponseHead(long j, OutputStream outputStream) throws IOException {
        writeHeader(outputStream, "HTTP/1.1 200 OK");
        writeHeader(outputStream, "Content-Type: " + PdrUtil.getMimeType(this.mUrl));
        writeHeader(outputStream, "Access-Control-Allow-Origin: *");
        writeHeader(outputStream, "Access-Control-Allow-Headers: *");
        writeHeader(outputStream, "Content-Length: " + j);
        outputStream.write(CRLF);
        outputStream.flush();
    }

    private void write(OutputStream outputStream, String str) throws IOException {
        outputStream.write(str.getBytes());
    }

    private void writeRequest(OutputStream outputStream, String str) throws IOException {
        outputStream.write("GET /index.html HTTP/1.1".getBytes());
        byte[] bArr = CRLF;
        outputStream.write(bArr);
        outputStream.write(("Host: " + str).getBytes());
        outputStream.write(bArr);
        outputStream.write(bArr);
        outputStream.flush();
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        InputStream inputStream;
        Throwable th;
        InputStream inputStream2;
        IOException e;
        InputStream inputStream3;
        Request request;
        String data;
        InputStream inputStream4;
        InputStream inputStream5;
        InputStream resInputStream;
        InputStream inputStream6;
        OutputStream outputStream = null;
        try {
            inputStream3 = this.mSocket.getInputStream();
            try {
                request = new Request(inputStream3);
                request.parse();
                data = request.getData();
            } catch (IOException e2) {
                e = e2;
                inputStream2 = inputStream3;
                inputStream = null;
            } catch (Throwable th2) {
                th = th2;
                inputStream2 = inputStream3;
                inputStream = null;
            }
        } catch (IOException e3) {
            inputStream = null;
            e = e3;
            inputStream2 = null;
        } catch (Throwable th3) {
            inputStream = null;
            th = th3;
            inputStream2 = null;
        }
        if (!data.startsWith(AbsoluteConst.SOCKET_NATIVE_COMMAND)) {
            if (data.startsWith(AbsoluteConst.SOCKET_CONNECTION)) {
                String strSubstring = data.substring(6);
                OutputStream outputStream2 = this.mSocket.getOutputStream();
                try {
                    String str = PdrUtil.isEquals(strSubstring, AbsoluteConst.SOCKET_CONN_REQUEST_ROOT_PATH) ? DeviceInfo.sDeviceRootDir : "";
                    Logger.d("miniserver", strSubstring, str);
                    outputStream2.write(str.getBytes());
                    inputStream6 = null;
                    outputStream = outputStream2;
                } catch (IOException e4) {
                    inputStream5 = inputStream3;
                    inputStream = null;
                    outputStream = outputStream2;
                    e = e4;
                    inputStream2 = inputStream5;
                    try {
                        e.printStackTrace();
                        try {
                            IOUtil.close(inputStream2);
                            IOUtil.close(inputStream);
                            IOUtil.close(outputStream);
                            this.mSocket.close();
                            return;
                        } catch (Exception e5) {
                            e5.printStackTrace();
                            return;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                } catch (Throwable th5) {
                    inputStream4 = inputStream3;
                    inputStream = null;
                    outputStream = outputStream2;
                    th = th5;
                    inputStream2 = inputStream4;
                    IOUtil.close(inputStream2);
                    IOUtil.close(inputStream);
                    IOUtil.close(outputStream);
                    this.mSocket.close();
                    throw th;
                }
            } else {
                String uri = request.getUri();
                this.mUrl = uri;
                if (uri == null) {
                    try {
                        IOUtil.close(inputStream3);
                        IOUtil.close((InputStream) null);
                        IOUtil.close((OutputStream) null);
                        this.mSocket.close();
                        return;
                    } catch (Exception e6) {
                        e6.printStackTrace();
                        return;
                    }
                }
                OutputStream outputStream3 = this.mSocket.getOutputStream();
                try {
                    byte[] bArr = new byte[10240];
                    if (this.mUrl.startsWith(AbsoluteConst.MINI_SERVER_BASE_RES)) {
                        resInputStream = PlatformUtil.getResInputStream("res/" + this.mUrl.substring(5));
                    } else {
                        resInputStream = (InputStream) this.mNetMgr.processEvent(IMgr.MgrType.AppMgr, 2, this.mUrl);
                    }
                    if (resInputStream != null) {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        while (true) {
                            int i = resInputStream.read(bArr);
                            if (i <= 0) {
                                break;
                            } else {
                                byteArrayOutputStream.write(bArr, 0, i);
                            }
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        addResponseHead(byteArray.length, outputStream3);
                        outputStream3.write(byteArray);
                    } else {
                        Logger.i("miniserver", "error url=" + this.mUrl);
                        outputStream3.write("HTTP/1.1 404 File Not Found\r\nContent-Type: text/html\r\nContent-Length: 23\r\n\r\n<h1>File Not Found</h1>".getBytes());
                    }
                    inputStream6 = resInputStream;
                    outputStream = outputStream3;
                } catch (IOException e7) {
                    e = e7;
                    inputStream5 = inputStream3;
                    inputStream = null;
                    outputStream = outputStream3;
                    inputStream2 = inputStream5;
                    e.printStackTrace();
                    IOUtil.close(inputStream2);
                    IOUtil.close(inputStream);
                    IOUtil.close(outputStream);
                    this.mSocket.close();
                    return;
                } catch (Throwable th6) {
                    th = th6;
                    inputStream4 = inputStream3;
                    inputStream = null;
                    outputStream = outputStream3;
                    inputStream2 = inputStream4;
                    IOUtil.close(inputStream2);
                    IOUtil.close(inputStream);
                    IOUtil.close(outputStream);
                    this.mSocket.close();
                    throw th;
                }
            }
            try {
                IOUtil.close(inputStream2);
                IOUtil.close(inputStream);
                IOUtil.close(outputStream);
                this.mSocket.close();
            } catch (Exception e8) {
                e8.printStackTrace();
            }
            throw th;
        }
        this.mNetMgr.processEvent(IMgr.MgrType.AppMgr, 7, data);
        inputStream6 = null;
        try {
            IOUtil.close(inputStream3);
            IOUtil.close(inputStream6);
            IOUtil.close(outputStream);
            this.mSocket.close();
        } catch (Exception e9) {
            e9.printStackTrace();
        }
    }

    void writeHeader(OutputStream outputStream, String str) throws IOException {
        write(outputStream, str);
        outputStream.write(CRLF);
    }
}
