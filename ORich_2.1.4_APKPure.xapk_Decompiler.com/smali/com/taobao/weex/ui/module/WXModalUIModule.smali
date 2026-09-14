###### Class com.taobao.weex.ui.module.WXModalUIModule (com.taobao.weex.ui.module.WXModalUIModule)
.class public Lcom/taobao/weex/ui/module/WXModalUIModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "WXModalUIModule.java"


# static fields
.field public static final CANCEL:Ljava/lang/String; = "Cancel"

.field public static final CANCEL_TITLE:Ljava/lang/String; = "cancelTitle"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final GRAVITY:Ljava/lang/String; = "gravity"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final OK:Ljava/lang/String; = "OK"

.field public static final OK_TITLE:Ljava/lang/String; = "okTitle"

.field public static final RESULT:Ljava/lang/String; = "result"


# instance fields
.field private activeDialog:Landroid/app/Dialog;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/module/WXModalUIModule;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->activeDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private tracking(Landroid/app/Dialog;)V
    .registers 3

    .line 262
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->activeDialog:Landroid/app/Dialog;

    .line 263
    new-instance v0, Lcom/taobao/weex/ui/module/WXModalUIModule$6;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/module/WXModalUIModule$6;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public alert(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 7
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_5f

    const-string v0, "OK"

    const-string v1, ""

    if-eqz p1, :cond_28

    :try_start_10
    const-string v2, "message"

    .line 119
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_1f

    :try_start_16
    const-string v3, "okTitle"

    .line 120
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_1d

    goto :goto_2a

    :catch_1d
    move-exception p1

    goto :goto_21

    :catch_1f
    move-exception p1

    move-object v2, v1

    :goto_21
    const-string v3, "[WXModalUIModule] alert param parse error "

    .line 122
    invoke-static {v3, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_2a

    :cond_28
    move-object p1, v0

    move-object v2, v1

    .line 125
    :goto_2a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_32

    :cond_31
    move-object v1, v2

    .line 128
    :goto_32
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_48

    :cond_47
    move-object v0, p1

    .line 132
    :goto_48
    new-instance p1, Lcom/taobao/weex/ui/module/WXModalUIModule$1;

    invoke-direct {p1, p0, p2, v0}, Lcom/taobao/weex/ui/module/WXModalUIModule$1;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V

    invoke-virtual {v2, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 141
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 142
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 143
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/module/WXModalUIModule;->tracking(Landroid/app/Dialog;)V

    goto :goto_64

    :cond_5f
    const-string p1, "[WXModalUIModule] when call alert mWXSDKInstance.getContext() must instanceof Activity"

    .line 145
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_64
    return-void
.end method

.method public confirm(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_7c

    const-string v0, "Cancel"

    const-string v1, "OK"

    const-string v2, ""

    if-eqz p1, :cond_34

    :try_start_12
    const-string v3, "message"

    .line 159
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_2a

    :try_start_18
    const-string v4, "okTitle"

    .line 160
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_27

    :try_start_1e
    const-string v5, "cancelTitle"

    .line 161
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_25

    goto :goto_37

    :catch_25
    move-exception p1

    goto :goto_2d

    :catch_27
    move-exception p1

    move-object v4, v1

    goto :goto_2d

    :catch_2a
    move-exception p1

    move-object v4, v1

    move-object v3, v2

    :goto_2d
    const-string v5, "[WXModalUIModule] confirm param parse error "

    .line 163
    invoke-static {v5, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_37

    :cond_34
    move-object p1, v0

    move-object v4, v1

    move-object v3, v2

    .line 166
    :goto_37
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object v2, v3

    .line 169
    :goto_3f
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 172
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_55

    :cond_54
    move-object v1, v4

    .line 173
    :goto_55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_5d

    :cond_5c
    move-object v0, p1

    .line 175
    :goto_5d
    new-instance p1, Lcom/taobao/weex/ui/module/WXModalUIModule$2;

    invoke-direct {p1, p0, p2, v1}, Lcom/taobao/weex/ui/module/WXModalUIModule$2;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V

    invoke-virtual {v3, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    new-instance p1, Lcom/taobao/weex/ui/module/WXModalUIModule$3;

    invoke-direct {p1, p0, p2, v0}, Lcom/taobao/weex/ui/module/WXModalUIModule$3;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V

    invoke-virtual {v3, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 192
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 193
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 194
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/module/WXModalUIModule;->tracking(Landroid/app/Dialog;)V

    goto :goto_81

    :cond_7c
    const-string p1, "[WXModalUIModule] when call confirm mWXSDKInstance.getContext() must instanceof Activity"

    .line 196
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_81
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->activeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 274
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->activeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    return-void
.end method

.method public prompt(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 10
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_9a

    const-string v0, "Cancel"

    const-string v1, "OK"

    const-string v2, ""

    if-eqz p1, :cond_3f

    :try_start_12
    const-string v3, "message"

    .line 210
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_34

    :try_start_18
    const-string v4, "okTitle"

    .line 211
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_30

    :try_start_1e
    const-string v5, "cancelTitle"

    .line 212
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_2d

    :try_start_24
    const-string v6, "default"

    .line 213
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_2b

    goto :goto_43

    :catch_2b
    move-exception p1

    goto :goto_38

    :catch_2d
    move-exception p1

    move-object v5, v0

    goto :goto_38

    :catch_30
    move-exception p1

    move-object v5, v0

    move-object v4, v1

    goto :goto_38

    :catch_34
    move-exception p1

    move-object v5, v0

    move-object v4, v1

    move-object v3, v2

    :goto_38
    const-string v6, "[WXModalUIModule] confirm param parse error "

    .line 215
    invoke-static {v6, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v2

    goto :goto_43

    :cond_3f
    move-object v5, v0

    move-object v4, v1

    move-object p1, v2

    move-object v3, p1

    .line 219
    :goto_43
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4a

    goto :goto_4b

    :cond_4a
    move-object v2, v3

    .line 222
    :goto_4b
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v6}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 225
    new-instance v2, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v6}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_71

    goto :goto_72

    :cond_71
    move-object v1, v4

    .line 229
    :goto_72
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_79

    goto :goto_7a

    :cond_79
    move-object v0, v5

    .line 230
    :goto_7a
    new-instance p1, Lcom/taobao/weex/ui/module/WXModalUIModule$5;

    invoke-direct {p1, p0, p2, v1, v2}, Lcom/taobao/weex/ui/module/WXModalUIModule$5;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v3, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/taobao/weex/ui/module/WXModalUIModule$4;

    invoke-direct {v1, p0, p2, v0, v2}, Lcom/taobao/weex/ui/module/WXModalUIModule$4;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Landroid/widget/EditText;)V

    .line 240
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 253
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 254
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 255
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/module/WXModalUIModule;->tracking(Landroid/app/Dialog;)V

    goto :goto_9f

    :cond_9a
    const-string p1, "when call prompt mWXSDKInstance.getContext() must instanceof Activity"

    .line 257
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_9f
    return-void
.end method

.method public toast(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    const-string v0, "gravity"

    const-string v1, "duration"

    .line 66
    iget-object v2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    const-string v2, ""

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-eqz p1, :cond_4f

    :try_start_14
    const-string v5, "message"

    .line 74
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 76
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_45

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    .line 78
    :goto_2a
    :try_start_2a
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 79
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4c

    const-string v0, "bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3e} :catch_43

    if-eqz p1, :cond_4c

    const/16 p1, 0x50

    goto :goto_52

    :catch_43
    move-exception p1

    goto :goto_47

    :catch_45
    move-exception p1

    const/4 v1, 0x0

    :goto_47
    const-string v0, "[WXModalUIModule] alert param parse error "

    .line 85
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4c
    const/16 p1, 0x11

    goto :goto_52

    :cond_4f
    const/16 p1, 0x11

    const/4 v1, 0x0

    .line 88
    :goto_52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string p1, "[WXModalUIModule] toast param parse is null "

    .line 89
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    :cond_5e
    const/4 v0, 0x3

    if-le v1, v0, :cond_63

    const/4 v0, 0x1

    goto :goto_64

    :cond_63
    const/4 v0, 0x0

    .line 98
    :goto_64
    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    if-nez v1, :cond_75

    .line 99
    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    goto :goto_7d

    .line 101
    :cond_75
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 102
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_7d
    if-ne v3, p1, :cond_84

    .line 105
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 107
    :cond_84
    iget-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

###### Class com.taobao.weex.ui.module.WXModalUIModule.AnonymousClass1 (com.taobao.weex.ui.module.WXModalUIModule$1)
.class Lcom/taobao/weex/ui/module/WXModalUIModule$1;
.super Ljava/lang/Object;
.source "WXModalUIModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/module/WXModalUIModule;->alert(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$okTitle_f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V
    .registers 4

    .line 132
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$1;->this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;

    iput-object p2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$1;->val$okTitle_f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 135
    iget-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_9

    .line 136
    iget-object p2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$1;->val$okTitle_f:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

###### Class com.taobao.weex.ui.module.WXModalUIModule.AnonymousClass2 (com.taobao.weex.ui.module.WXModalUIModule$2)
.class Lcom/taobao/weex/ui/module/WXModalUIModule$2;
.super Ljava/lang/Object;
.source "WXModalUIModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/module/WXModalUIModule;->confirm(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$okTitleFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V
    .registers 4

    .line 175
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$2;->this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;

    iput-object p2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$2;->val$okTitleFinal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 178
    iget-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_9

    .line 179
    iget-object p2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$2;->val$okTitleFinal:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

###### Class com.taobao.weex.ui.module.WXModalUIModule.AnonymousClass3 (com.taobao.weex.ui.module.WXModalUIModule$3)
.class Lcom/taobao/weex/ui/module/WXModalUIModule$3;
.super Ljava/lang/Object;
.source "WXModalUIModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/module/WXModalUIModule;->confirm(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$cancelTitleFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V
    .registers 4

    .line 183
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$3;->this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;

    iput-object p2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$3;->val$cancelTitleFinal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 186
    iget-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_9

    .line 187
    iget-object p2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$3;->val$cancelTitleFinal:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

###### Class com.taobao.weex.ui.module.WXModalUIModule.AnonymousClass4 (com.taobao.weex.ui.module.WXModalUIModule$4)
.class Lcom/taobao/weex/ui/module/WXModalUIModule$4;
.super Ljava/lang/Object;
.source "WXModalUIModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/module/WXModalUIModule;->prompt(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$cancelTitleFinal:Ljava/lang/String;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Landroid/widget/EditText;)V
    .registers 5

    .line 240
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$4;->this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;

    iput-object p2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$4;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$4;->val$cancelTitleFinal:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$4;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 243
    iget-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$4;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_24

    .line 244
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 245
    iget-object p2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$4;->val$cancelTitleFinal:Ljava/lang/String;

    const-string v0, "result"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object p2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "data"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object p2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$4;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_24
    return-void
.end method

###### Class com.taobao.weex.ui.module.WXModalUIModule.AnonymousClass5 (com.taobao.weex.ui.module.WXModalUIModule$5)
.class Lcom/taobao/weex/ui/module/WXModalUIModule$5;
.super Ljava/lang/Object;
.source "WXModalUIModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/module/WXModalUIModule;->prompt(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$okTitleFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Landroid/widget/EditText;)V
    .registers 5

    .line 230
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$5;->this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;

    iput-object p2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$5;->val$okTitleFinal:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$5;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 233
    iget-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_24

    .line 234
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 235
    iget-object p2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$5;->val$okTitleFinal:Ljava/lang/String;

    const-string v0, "result"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object p2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$5;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "data"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object p2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_24
    return-void
.end method

###### Class com.taobao.weex.ui.module.WXModalUIModule.AnonymousClass6 (com.taobao.weex.ui.module.WXModalUIModule$6)
.class Lcom/taobao/weex/ui/module/WXModalUIModule$6;
.super Ljava/lang/Object;
.source "WXModalUIModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/module/WXModalUIModule;->tracking(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/module/WXModalUIModule;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$6;->this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 266
    iget-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$6;->this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/module/WXModalUIModule;->access$002(Lcom/taobao/weex/ui/module/WXModalUIModule;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
