package com.appsflyer.oaid;

import android.content.Context;
import android.text.TextUtils;
import com.appsflyer.oaid.OaidClient;
import com.bun.miitmdid.core.ErrorCode;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
class OaidMsaClient {
    OaidMsaClient() {
    }

    static OaidClient.Info fetchMsa(Context context, final Logger logger, long j, TimeUnit timeUnit) {
        String strValueOf;
        try {
            final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
            int iInitSdk = MdidSdkHelper.InitSdk(context, logger.getLevel() == null, new IIdentifierListener() { // from class: com.appsflyer.oaid.OaidMsaClient.1
                public void OnSupport(boolean z, IdSupplier idSupplier) {
                    try {
                        linkedBlockingQueue.offer(idSupplier == null ? "" : idSupplier.getOAID());
                    } catch (Throwable th) {
                        logger.info(th.getMessage());
                    }
                }
            });
            if (iInitSdk != 0) {
                switch (iInitSdk) {
                    case ErrorCode.INIT_ERROR_BEGIN /* 1008610 */:
                        strValueOf = "Init error begin";
                        break;
                    case ErrorCode.INIT_ERROR_MANUFACTURER_NOSUPPORT /* 1008611 */:
                        strValueOf = "Unsupported manufacturer";
                        break;
                    case ErrorCode.INIT_ERROR_DEVICE_NOSUPPORT /* 1008612 */:
                        strValueOf = "Unsupported device";
                        break;
                    case ErrorCode.INIT_ERROR_LOAD_CONFIGFILE /* 1008613 */:
                        strValueOf = "Error loading configuration file";
                        break;
                    case ErrorCode.INIT_ERROR_RESULT_DELAY /* 1008614 */:
                        strValueOf = "Callback will be executed in a different thread";
                        break;
                    case ErrorCode.INIT_HELPER_CALL_ERROR /* 1008615 */:
                        strValueOf = "Reflection call error";
                        break;
                    default:
                        strValueOf = String.valueOf(iInitSdk);
                        break;
                }
                logger.warning(strValueOf);
            }
            String str = (String) linkedBlockingQueue.poll(j, timeUnit);
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return new OaidClient.Info(str);
        } catch (Throwable th) {
            logger.info(th.getMessage());
            return null;
        }
    }
}
