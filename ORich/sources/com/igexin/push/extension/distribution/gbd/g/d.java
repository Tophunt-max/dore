package com.igexin.push.extension.distribution.gbd.g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.push.extension.distribution.gbd.i.h;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.igexin.sdk.PushConsts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d extends BroadcastReceiver {
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x008f -> B:40:0x009f). Please report as a decompilation issue!!! */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        byte[] byteArray;
        try {
            j.b("GBD_TransmissionReceiver", "TReceiver received.");
            Bundle extras = intent.getExtras();
            if (extras != null && extras.containsKey("appid") && extras.containsKey(PushConsts.CMD_ACTION) && extras.containsKey(AssistPushConsts.MSG_TYPE_PAYLOAD) && extras.getInt(PushConsts.CMD_ACTION) == 10001 && "QOkj0EWj4X5ymiTKHegll8".equals(extras.getString("appid"))) {
                try {
                    h.a(extras.getString("taskid"), extras.getString("messageid"), "20012");
                } catch (Throwable th) {
                    j.a(th);
                }
                try {
                    byteArray = extras.getByteArray(AssistPushConsts.MSG_TYPE_PAYLOAD);
                } catch (Throwable th2) {
                    j.a(th2);
                }
                if (byteArray == null) {
                    return;
                }
                JSONObject jSONObject = new JSONObject(new String(byteArray));
                if (com.igexin.push.extension.distribution.gbd.c.c.c != null) {
                    if (com.igexin.push.extension.distribution.gbd.c.c.f.get()) {
                        j.b("GBD_TransmissionReceiver", "guard list Reported.");
                        Message messageObtain = Message.obtain();
                        messageObtain.what = 101;
                        messageObtain.arg1 = 11;
                        messageObtain.obj = jSONObject;
                        com.igexin.push.extension.distribution.gbd.c.c.c.sendMessage(messageObtain);
                    } else {
                        j.b("GBD_TransmissionReceiver", "guard list not Reported.");
                        com.igexin.push.extension.distribution.gbd.c.c.g = jSONObject;
                    }
                }
            }
        } catch (Throwable th3) {
            j.a(th3);
            j.b("GBD_TransmissionReceiver", th3.toString());
        }
    }
}
