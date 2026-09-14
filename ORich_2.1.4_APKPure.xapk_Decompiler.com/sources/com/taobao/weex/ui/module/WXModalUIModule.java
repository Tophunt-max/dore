package com.taobao.weex.ui.module;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.widget.EditText;
import android.widget.Toast;
import com.alibaba.fastjson.JSONObject;
import com.taobao.weex.WXSDKEngine;
import com.taobao.weex.annotation.JSMethod;
import com.taobao.weex.bridge.JSCallback;
import com.taobao.weex.utils.WXLogUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class WXModalUIModule extends WXSDKEngine.DestroyableModule {
    public static final String CANCEL = "Cancel";
    public static final String CANCEL_TITLE = "cancelTitle";
    public static final String DATA = "data";
    public static final String DEFAULT = "default";
    public static final String DURATION = "duration";
    public static final String GRAVITY = "gravity";
    public static final String MESSAGE = "message";
    public static final String OK = "OK";
    public static final String OK_TITLE = "okTitle";
    public static final String RESULT = "result";
    private Dialog activeDialog;
    private Toast toast;

    /* JADX WARN: Removed duplicated region for block: B:24:0x004c A[PHI: r1 r2
      0x004c: PHI (r1v3 int) = (r1v2 int), (r1v5 int), (r1v5 int), (r1v5 int) binds: [B:23:0x0047, B:13:0x002e, B:15:0x0036, B:17:0x003e] A[DONT_GENERATE, DONT_INLINE]
      0x004c: PHI (r2v5 java.lang.String) = (r2v4 java.lang.String), (r2v6 java.lang.String), (r2v6 java.lang.String), (r2v6 java.lang.String) binds: [B:23:0x0047, B:13:0x002e, B:15:0x0036, B:17:0x003e] A[DONT_GENERATE, DONT_INLINE]] */
    @com.taobao.weex.annotation.JSMethod(uiThread = true)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void toast(com.alibaba.fastjson.JSONObject r7) {
        /*
            r6 = this;
            java.lang.String r0 = "gravity"
            java.lang.String r1 = "duration"
            com.taobao.weex.WXSDKInstance r2 = r6.mWXSDKInstance
            android.content.Context r2 = r2.getContext()
            if (r2 != 0) goto Ld
            return
        Ld:
            java.lang.String r2 = ""
            r3 = 17
            r4 = 0
            if (r7 == 0) goto L4f
            java.lang.String r5 = "message"
            java.lang.String r2 = r7.getString(r5)     // Catch: java.lang.Exception -> L45
            boolean r5 = r7.containsKey(r1)     // Catch: java.lang.Exception -> L45
            if (r5 == 0) goto L29
            java.lang.Integer r1 = r7.getInteger(r1)     // Catch: java.lang.Exception -> L45
            int r1 = r1.intValue()     // Catch: java.lang.Exception -> L45
            goto L2a
        L29:
            r1 = 0
        L2a:
            boolean r5 = r7.containsKey(r0)     // Catch: java.lang.Exception -> L43
            if (r5 == 0) goto L4c
            java.lang.String r7 = r7.getString(r0)     // Catch: java.lang.Exception -> L43
            boolean r0 = r7 instanceof java.lang.String     // Catch: java.lang.Exception -> L43
            if (r0 == 0) goto L4c
            java.lang.String r0 = "bottom"
            boolean r7 = r7.equals(r0)     // Catch: java.lang.Exception -> L43
            if (r7 == 0) goto L4c
            r7 = 80
            goto L52
        L43:
            r7 = move-exception
            goto L47
        L45:
            r7 = move-exception
            r1 = 0
        L47:
            java.lang.String r0 = "[WXModalUIModule] alert param parse error "
            com.taobao.weex.utils.WXLogUtils.e(r0, r7)
        L4c:
            r7 = 17
            goto L52
        L4f:
            r7 = 17
            r1 = 0
        L52:
            boolean r0 = android.text.TextUtils.isEmpty(r2)
            if (r0 == 0) goto L5e
            java.lang.String r7 = "[WXModalUIModule] toast param parse is null "
            com.taobao.weex.utils.WXLogUtils.e(r7)
            return
        L5e:
            r0 = 3
            if (r1 <= r0) goto L63
            r0 = 1
            goto L64
        L63:
            r0 = 0
        L64:
            android.widget.Toast r1 = r6.toast
            if (r1 != 0) goto L75
            com.taobao.weex.WXSDKInstance r1 = r6.mWXSDKInstance
            android.content.Context r1 = r1.getContext()
            com.dcloud.android.widget.toast.ToastCompat r0 = com.dcloud.android.widget.toast.ToastCompat.makeText(r1, r2, r0)
            r6.toast = r0
            goto L7d
        L75:
            r1.setDuration(r0)
            android.widget.Toast r0 = r6.toast
            r0.setText(r2)
        L7d:
            if (r3 != r7) goto L84
            android.widget.Toast r0 = r6.toast
            r0.setGravity(r7, r4, r4)
        L84:
            android.widget.Toast r7 = r6.toast
            r7.show()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taobao.weex.ui.module.WXModalUIModule.toast(com.alibaba.fastjson.JSONObject):void");
    }

    @JSMethod(uiThread = true)
    public void alert(JSONObject jSONObject, final JSCallback jSCallback) {
        String string;
        String string2;
        if (this.mWXSDKInstance.getContext() instanceof Activity) {
            final String str = OK;
            if (jSONObject != null) {
                try {
                    string = jSONObject.getString("message");
                } catch (Exception e) {
                    e = e;
                    string = "";
                }
                try {
                    string2 = jSONObject.getString(OK_TITLE);
                } catch (Exception e2) {
                    e = e2;
                    WXLogUtils.e("[WXModalUIModule] alert param parse error ", e);
                    string2 = OK;
                }
            } else {
                string2 = OK;
                string = "";
            }
            String str2 = TextUtils.isEmpty(string) ? "" : string;
            AlertDialog.Builder builder = new AlertDialog.Builder(this.mWXSDKInstance.getContext());
            builder.setMessage(str2);
            if (!TextUtils.isEmpty(string2)) {
                str = string2;
            }
            builder.setPositiveButton(str, new DialogInterface.OnClickListener() { // from class: com.taobao.weex.ui.module.WXModalUIModule.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    JSCallback jSCallback2 = jSCallback;
                    if (jSCallback2 != null) {
                        jSCallback2.invoke(str);
                    }
                }
            });
            AlertDialog alertDialogCreate = builder.create();
            alertDialogCreate.setCanceledOnTouchOutside(false);
            alertDialogCreate.show();
            tracking(alertDialogCreate);
            return;
        }
        WXLogUtils.e("[WXModalUIModule] when call alert mWXSDKInstance.getContext() must instanceof Activity");
    }

    @JSMethod(uiThread = true)
    public void confirm(JSONObject jSONObject, final JSCallback jSCallback) {
        String string;
        String string2;
        String string3;
        if (this.mWXSDKInstance.getContext() instanceof Activity) {
            final String str = CANCEL;
            final String str2 = OK;
            if (jSONObject != null) {
                try {
                    string2 = jSONObject.getString("message");
                    try {
                        string = jSONObject.getString(OK_TITLE);
                    } catch (Exception e) {
                        e = e;
                        string = OK;
                    }
                } catch (Exception e2) {
                    e = e2;
                    string = OK;
                    string2 = "";
                }
                try {
                    string3 = jSONObject.getString(CANCEL_TITLE);
                } catch (Exception e3) {
                    e = e3;
                    WXLogUtils.e("[WXModalUIModule] confirm param parse error ", e);
                    string3 = CANCEL;
                }
            } else {
                string3 = CANCEL;
                string = OK;
                string2 = "";
            }
            String str3 = TextUtils.isEmpty(string2) ? "" : string2;
            AlertDialog.Builder builder = new AlertDialog.Builder(this.mWXSDKInstance.getContext());
            builder.setMessage(str3);
            if (!TextUtils.isEmpty(string)) {
                str2 = string;
            }
            if (!TextUtils.isEmpty(string3)) {
                str = string3;
            }
            builder.setPositiveButton(str2, new DialogInterface.OnClickListener() { // from class: com.taobao.weex.ui.module.WXModalUIModule.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    JSCallback jSCallback2 = jSCallback;
                    if (jSCallback2 != null) {
                        jSCallback2.invoke(str2);
                    }
                }
            });
            builder.setNegativeButton(str, new DialogInterface.OnClickListener() { // from class: com.taobao.weex.ui.module.WXModalUIModule.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    JSCallback jSCallback2 = jSCallback;
                    if (jSCallback2 != null) {
                        jSCallback2.invoke(str);
                    }
                }
            });
            AlertDialog alertDialogCreate = builder.create();
            alertDialogCreate.setCanceledOnTouchOutside(false);
            alertDialogCreate.show();
            tracking(alertDialogCreate);
            return;
        }
        WXLogUtils.e("[WXModalUIModule] when call confirm mWXSDKInstance.getContext() must instanceof Activity");
    }

    @JSMethod(uiThread = true)
    public void prompt(JSONObject jSONObject, final JSCallback jSCallback) {
        String string;
        String string2;
        String string3;
        String string4;
        if (this.mWXSDKInstance.getContext() instanceof Activity) {
            final String str = CANCEL;
            final String str2 = OK;
            if (jSONObject != null) {
                try {
                    string3 = jSONObject.getString("message");
                    try {
                        string2 = jSONObject.getString(OK_TITLE);
                        try {
                            string = jSONObject.getString(CANCEL_TITLE);
                        } catch (Exception e) {
                            e = e;
                            string = CANCEL;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        string = CANCEL;
                        string2 = OK;
                    }
                    try {
                        string4 = jSONObject.getString("default");
                    } catch (Exception e3) {
                        e = e3;
                        WXLogUtils.e("[WXModalUIModule] confirm param parse error ", e);
                        string4 = "";
                    }
                } catch (Exception e4) {
                    e = e4;
                    string = CANCEL;
                    string2 = OK;
                    string3 = "";
                }
            } else {
                string = CANCEL;
                string2 = OK;
                string4 = "";
                string3 = string4;
            }
            String str3 = TextUtils.isEmpty(string3) ? "" : string3;
            AlertDialog.Builder builder = new AlertDialog.Builder(this.mWXSDKInstance.getContext());
            builder.setMessage(str3);
            final EditText editText = new EditText(this.mWXSDKInstance.getContext());
            editText.setText(string4);
            builder.setView(editText);
            if (!TextUtils.isEmpty(string2)) {
                str2 = string2;
            }
            if (!TextUtils.isEmpty(string)) {
                str = string;
            }
            builder.setPositiveButton(str2, new DialogInterface.OnClickListener() { // from class: com.taobao.weex.ui.module.WXModalUIModule.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (jSCallback != null) {
                        HashMap map = new HashMap();
                        map.put("result", str2);
                        map.put("data", editText.getText().toString());
                        jSCallback.invoke(map);
                    }
                }
            }).setNegativeButton(str, new DialogInterface.OnClickListener() { // from class: com.taobao.weex.ui.module.WXModalUIModule.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (jSCallback != null) {
                        HashMap map = new HashMap();
                        map.put("result", str);
                        map.put("data", editText.getText().toString());
                        jSCallback.invoke(map);
                    }
                }
            });
            AlertDialog alertDialogCreate = builder.create();
            alertDialogCreate.setCanceledOnTouchOutside(false);
            alertDialogCreate.show();
            tracking(alertDialogCreate);
            return;
        }
        WXLogUtils.e("when call prompt mWXSDKInstance.getContext() must instanceof Activity");
    }

    private void tracking(Dialog dialog) {
        this.activeDialog = dialog;
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.taobao.weex.ui.module.WXModalUIModule.6
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                WXModalUIModule.this.activeDialog = null;
            }
        });
    }

    @Override // com.taobao.weex.common.Destroyable
    public void destroy() {
        Dialog dialog = this.activeDialog;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.activeDialog.dismiss();
    }
}
