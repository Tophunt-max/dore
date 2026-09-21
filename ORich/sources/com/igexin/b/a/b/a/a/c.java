package com.igexin.b.a.b.a.a;

import android.text.TextUtils;
import com.igexin.push.config.SDKUrlConfig;
import io.dcloud.feature.gg.dcloud.ADSim;
import java.net.InetSocketAddress;
import java.net.Socket;

/* JADX INFO: loaded from: classes.dex */
public final class c extends a {
    private com.igexin.b.a.b.a.a.a.d i;
    private Socket j;

    public c(com.igexin.b.a.b.a.a.a.d dVar) {
        super(-2037, null, null);
        this.i = dVar;
    }

    @Override // com.igexin.b.a.d.a.e
    public final int b() {
        return -2037;
    }

    @Override // com.igexin.b.a.d.e
    public void b_() throws Exception {
        super.b_();
        com.igexin.push.c.i.a().d().a();
        String cmAddress = SDKUrlConfig.getCmAddress();
        try {
            String[] strArrA = com.igexin.b.a.b.f.a(cmAddress);
            String str = strArrA[1];
            int i = Integer.parseInt(strArrA[2]);
            com.igexin.b.a.c.b.a("GS-C|start connect :  " + cmAddress + " *********");
            com.igexin.b.a.b.a.a.a.d dVar = this.i;
            if (dVar != null) {
                dVar.a(cmAddress);
            }
            Socket socket = new Socket();
            this.j = socket;
            try {
                socket.connect(new InetSocketAddress(str, i), ADSim.INTISPLSH);
                com.igexin.b.a.c.b.a("GS-C|connected :  " + cmAddress + " #########");
                com.igexin.b.a.c.b.a("GS-C|local-" + this.j.getLocalAddress() + ":" + this.j.getLocalPort());
                if (this.f != b.INTERRUPT) {
                    this.f = b.NORMAL;
                }
            } catch (Exception e) {
                if (this.f != b.INTERRUPT) {
                    this.f = b.EXCEPTION;
                    this.g = e.toString();
                }
            }
            this.e = true;
        } catch (Exception e2) {
            com.igexin.b.a.c.b.a("GS-C|ips invalid, " + e2.toString());
            throw e2;
        }
    }

    @Override // com.igexin.b.a.b.e, com.igexin.b.a.d.e
    public void f() {
        Socket socket;
        super.f();
        com.igexin.b.a.c.b.a("GS-C|sc dispose");
        if (this.i != null) {
            if (this.f == b.INTERRUPT) {
                this.i.a(this);
            } else if (this.f == b.EXCEPTION) {
                if (!TextUtils.isEmpty(this.g)) {
                    this.i.a(new Exception(this.g));
                }
            } else if (this.f == b.NORMAL && (socket = this.j) != null) {
                this.i.a(socket);
            }
        }
        this.i = null;
    }

    public void j() {
        this.f = b.INTERRUPT;
    }
}
