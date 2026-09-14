###### Class io.dcloud.js.file.FileFeatureImpl (io.dcloud.js.file.FileFeatureImpl)
.class public Lio/dcloud/js/file/FileFeatureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "{code:%d,message:\'%s\'}"

    packed-switch p2, :pswitch_data_148

    :pswitch_8
    new-array v2, v2, [Ljava/lang/Object;

    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_unknown_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_147

    :pswitch_1e
    new-array p1, v2, [Ljava/lang/Object;

    .line 150
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    sget-object p2, Lio/dcloud/common/constant/DOMException;->MSG_PATH_NOT_PRIVATE_ERROR:Ljava/lang/String;

    aput-object p2, p1, v0

    invoke-static {v3, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_147

    :pswitch_30
    new-array v2, v2, [Ljava/lang/Object;

    .line 151
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_path_not_exist:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_147

    :pswitch_46
    new-array v2, v2, [Ljava/lang/Object;

    .line 152
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_path_exists:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_147

    :pswitch_5c
    new-array v2, v2, [Ljava/lang/Object;

    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_type_mismatch:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_147

    :pswitch_72
    new-array v2, v2, [Ljava/lang/Object;

    .line 154
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_perform_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_147

    :pswitch_88
    new-array v2, v2, [Ljava/lang/Object;

    .line 155
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_invalid_modification:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_147

    :pswitch_9e
    new-array v2, v2, [Ljava/lang/Object;

    .line 156
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_grammar_mistakes:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_147

    :pswitch_b4
    new-array v2, v2, [Ljava/lang/Object;

    .line 157
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_invalid_state:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_147

    :pswitch_ca
    new-array v2, v2, [Ljava/lang/Object;

    .line 158
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_no_modification_allowed:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_147

    :pswitch_df
    new-array v2, v2, [Ljava/lang/Object;

    .line 159
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_coding_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_147

    :pswitch_f4
    new-array v2, v2, [Ljava/lang/Object;

    .line 160
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_file_not_read:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_147

    :pswitch_109
    new-array v2, v2, [Ljava/lang/Object;

    .line 161
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_147

    :pswitch_11e
    new-array v2, v2, [Ljava/lang/Object;

    .line 162
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_without_authorization:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_147

    :pswitch_133
    new-array v2, v2, [Ljava/lang/Object;

    .line 163
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_file_not_found:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_147
    return-object p1

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_133
        :pswitch_11e
        :pswitch_109
        :pswitch_f4
        :pswitch_df
        :pswitch_ca
        :pswitch_b4
        :pswitch_9e
        :pswitch_88
        :pswitch_72
        :pswitch_5c
        :pswitch_46
        :pswitch_8
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 124
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "PRIVATE_WWW"

    const-string v3, "fsRoot"

    const-string v4, "fsName"

    const-string v5, "type"

    const/4 v6, 0x1

    if-eqz v1, :cond_2b

    .line 125
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_c1

    .line 128
    :cond_2b
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x2

    .line 129
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRIVATE_DOCUMENTS"

    .line 130
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_c1

    .line 132
    :cond_4b
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    const/4 v1, 0x3

    .line 133
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PUBLIC_DOCUMENTS"

    .line 134
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_c1

    .line 136
    :cond_6a
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 v1, 0x4

    .line 137
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PUBLIC_DOWNLOADS"

    .line 138
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_c1

    .line 140
    :cond_89
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 141
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_c1

    .line 144
    :cond_a5
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c1

    const/4 v1, 0x5

    .line 145
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PUBLIC_DEVICE_ROOT"

    .line 146
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c1
    :goto_c1
    return-object v0
.end method

.method private a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 11

    .line 148
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v0, 0x0

    .line 3
    aget-object v3, p3, v0

    .line 4
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    aput-object v3, v4, v0

    invoke-static {v1, v4}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const/16 p2, 0xf

    .line 6
    invoke-direct {p0, p2, p1, p4}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_18
    invoke-interface {p2, v3}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    .line 10
    aget-object v2, p3, v2

    invoke-static {v2, v0}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v0, 0x2

    .line 11
    aget-object p3, p3, v0

    const/4 v0, -0x1

    invoke-static {p3, v0}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v1, :cond_38

    .line 12
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->isOnAppRunningMode()Z

    move-result p2

    if-eqz p2, :cond_38

    const/16 p2, 0xa

    .line 13
    invoke-direct {p0, p2, p1, p4}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto :goto_44

    .line 15
    :cond_38
    new-instance p2, Lio/dcloud/js/file/FileFeatureImpl$f;

    move-object v1, p2

    move-object v2, p0

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/dcloud/js/file/FileFeatureImpl$f;-><init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;IILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {p2}, Lio/dcloud/common/adapter/util/AsyncTaskHandler;->executeThreadTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V

    :goto_44
    return-void
.end method

.method static synthetic a(Lio/dcloud/js/file/FileFeatureImpl;ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 18

    move-object v0, p1

    const-string v1, "/"

    const-string v2, "{code:%d,message:\'%s\'}"

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 164
    :try_start_a
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 165
    iput-boolean v6, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 166
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_19} :catch_155
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_19} :catch_132

    const-string v9, "Orientation"

    const/4 v10, 0x0

    if-nez v8, :cond_40

    :try_start_1e
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v8, v11, :cond_40

    .line 168
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    if-eqz v8, :cond_3e

    .line 170
    invoke-static {v8, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 171
    new-instance v11, Landroid/media/ExifInterface;

    invoke-direct {v11, v8}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 172
    invoke-virtual {v11, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 173
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_4c

    :cond_3e
    move-object v9, v10

    goto :goto_4c

    .line 176
    :cond_40
    new-instance v8, Landroid/media/ExifInterface;

    invoke-direct {v8, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v8, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 178
    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 181
    :goto_4c
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 182
    iget v11, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 183
    iget-object v7, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 184
    invoke-static {v7}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_66

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_66

    .line 185
    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 186
    array-length v7, v1

    sub-int/2addr v7, v6

    aget-object v7, v1, v7

    .line 189
    :cond_66
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ea

    const/4 v1, -0x1

    .line 190
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    packed-switch v10, :pswitch_data_178

    goto :goto_d0

    :pswitch_75
    const-string v10, "8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    const/16 v1, 0x9

    goto :goto_d0

    :pswitch_80
    const-string v10, "7"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    const/16 v1, 0x8

    goto :goto_d0

    :pswitch_8b
    const-string v10, "6"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    const/4 v1, 0x7

    goto :goto_d0

    :pswitch_95
    const-string v10, "5"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    const/4 v1, 0x6

    goto :goto_d0

    :pswitch_9f
    const-string v10, "4"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    const/4 v1, 0x5

    goto :goto_d0

    :pswitch_a9
    const-string v10, "3"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    const/4 v1, 0x4

    goto :goto_d0

    :pswitch_b3
    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    const/4 v1, 0x3

    goto :goto_d0

    :pswitch_bd
    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    const/4 v1, 0x2

    goto :goto_d0

    :pswitch_c7
    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_cd} :catch_155
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_cd} :catch_132

    if-eqz v9, :cond_d0

    const/4 v1, 0x1

    :cond_d0
    :goto_d0
    packed-switch v1, :pswitch_data_18e

    const-string v10, "up"

    goto :goto_ea

    :pswitch_d6
    const-string v10, "left"

    goto :goto_ea

    :pswitch_d9
    const-string v10, "right-mirrored"

    goto :goto_ea

    :pswitch_dc
    const-string v10, "right"

    goto :goto_ea

    :pswitch_df
    const-string v10, "left-mirrored"

    goto :goto_ea

    :pswitch_e2
    const-string v10, "down-mirrored"

    goto :goto_ea

    :pswitch_e5
    const-string v10, "down"

    goto :goto_ea

    :pswitch_e8
    const-string v10, "up-mirrored"

    .line 220
    :cond_ea
    :goto_ea
    :try_start_ea
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ef} :catch_155
    .catch Lorg/json/JSONException; {:try_start_ea .. :try_end_ef} :catch_132

    const-string v9, "path"

    .line 221
    :try_start_f1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "width"

    .line 222
    invoke-virtual {v1, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "height"

    .line 223
    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "orientation"

    .line 224
    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_114} :catch_155
    .catch Lorg/json/JSONException; {:try_start_f1 .. :try_end_114} :catch_132

    const-string v0, "type"

    .line 225
    :try_start_116
    invoke-static {v7}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11d

    goto :goto_121

    :cond_11d
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    :goto_121
    invoke-virtual {v1, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    sget v0, Lio/dcloud/common/util/JSUtil;->OK:I
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_126} :catch_155
    .catch Lorg/json/JSONException; {:try_start_116 .. :try_end_126} :catch_132

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    :try_start_12a
    invoke-static {v7, v8, v1, v0, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12d} :catch_130
    .catch Lorg/json/JSONException; {:try_start_12a .. :try_end_12d} :catch_12e

    goto :goto_177

    :catch_12e
    move-exception v0

    goto :goto_137

    :catch_130
    move-exception v0

    goto :goto_15a

    :catch_132
    move-exception v0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    :goto_137
    new-array v1, v5, [Ljava/lang/Object;

    .line 230
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget v10, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static/range {v7 .. v12}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_177

    :catch_155
    move-exception v0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    :goto_15a
    new-array v1, v5, [Ljava/lang/Object;

    .line 231
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget v10, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static/range {v7 .. v12}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_177
    return-void

    :pswitch_data_178
    .packed-switch 0x30
        :pswitch_c7
        :pswitch_bd
        :pswitch_b3
        :pswitch_a9
        :pswitch_9f
        :pswitch_95
        :pswitch_8b
        :pswitch_80
        :pswitch_75
    .end packed-switch

    :pswitch_data_18e
    .packed-switch 0x3
        :pswitch_e8
        :pswitch_e5
        :pswitch_e2
        :pswitch_df
        :pswitch_dc
        :pswitch_d9
        :pswitch_d6
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 22

    .line 16
    invoke-static/range {p1 .. p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277

    invoke-static/range {p1 .. p1}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_277

    .line 17
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apps/"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_33
    const-string v1, "/android_asset/"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_44

    const-string v1, "/android_asset"

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_44
    const-string v1, "android_asset/"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v1, "android_asset"

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 25
    :cond_52
    :goto_52
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    goto :goto_77

    :cond_75
    const/4 v1, 0x0

    goto :goto_78

    :cond_77
    :goto_77
    const/4 v1, 0x1

    :goto_78
    if-nez v1, :cond_86

    const/16 v0, 0xf

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 28
    invoke-direct {v1, v0, v9, v8}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    :cond_86
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 31
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v5, 0x2

    if-nez v3, :cond_b8

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v3, -0x4

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    sget-object v3, Lio/dcloud/common/constant/DOMException;->MSG_FILE_NOT_EXIST:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "{code:%d,message:\'%s\'}"

    invoke-static {v2, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 33
    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_279

    .line 36
    :cond_b8
    :try_start_b8
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 37
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 38
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_dc

    .line 40
    :cond_cb
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lio/dcloud/common/util/FileUtil;->getVideoFileUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_dc

    .line 42
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v7, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_dc
    :goto_dc
    const/16 v6, 0x9

    .line 46
    invoke-virtual {v3, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x12

    .line 47
    invoke-virtual {v3, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x13

    .line 48
    invoke-virtual {v3, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    .line 49
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "getVideoInfo"

    move-object/from16 v13, p4

    .line 50
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_fb} :catch_251

    const/high16 v13, 0x447a0000    # 1000.0f

    if-eqz v12, :cond_22d

    if-eqz v7, :cond_11c

    if-eqz v10, :cond_11c

    const-string v12, "resolution"

    .line 52
    :try_start_105
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "*"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_11c} :catch_251

    :cond_11c
    if-eqz v7, :cond_128

    const-string v12, "width"

    .line 56
    :try_start_120
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-double v14, v7

    invoke-virtual {v11, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_128} :catch_134

    :cond_128
    if-eqz v10, :cond_134

    const-string v7, "height"

    .line 59
    :try_start_12c
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    float-to-double v14, v10

    invoke-virtual {v11, v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_134} :catch_134

    :catch_134
    :cond_134
    const-string v7, "size"

    .line 62
    :try_start_136
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v11, v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/16 v7, 0x20

    .line 63
    invoke-virtual {v3, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_14c} :catch_251

    const-string v12, "fps"

    if-eqz v10, :cond_1a1

    .line 65
    :try_start_150
    new-instance v7, Landroid/media/MediaExtractor;

    invoke-direct {v7}, Landroid/media/MediaExtractor;-><init>()V

    .line 66
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v0}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_163

    .line 67
    invoke-virtual {v7, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_175

    .line 69
    :cond_163
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v0}, Lio/dcloud/common/util/FileUtil;->getVideoFileUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_175

    .line 71
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v14, 0x0

    invoke-virtual {v7, v10, v0, v14}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 74
    :cond_175
    :goto_175
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v10, 0x0

    :goto_17a
    if-ge v10, v0, :cond_1b4

    .line 76
    invoke-virtual {v7, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v14
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_180} :catch_251

    :try_start_180
    const-string v15, "mime"

    .line 78
    invoke-virtual {v14, v15}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 79
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_19d

    const-string v4, "video/"

    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19d

    const-string v4, "frame-rate"

    .line 80
    invoke-virtual {v14, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 81
    invoke-virtual {v11, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_19d} :catch_19d

    :catch_19d
    :cond_19d
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_17a

    .line 87
    :cond_1a1
    :try_start_1a1
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    div-float/2addr v0, v4

    mul-float v0, v0, v13

    float-to-double v14, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    invoke-virtual {v11, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1b4} :catch_1b4

    :catch_1b4
    :cond_1b4
    const/16 v0, 0x18

    .line 89
    :try_start_1b6
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v10, 0x717

    if-eq v7, v10, :cond_1e2

    const v10, 0xbee9

    if-eq v7, v10, :cond_1d8

    const v10, 0xc28b

    if-eq v7, v10, :cond_1ce

    goto :goto_1eb

    :cond_1ce
    const-string v7, "270"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    const/4 v4, 0x1

    goto :goto_1eb

    :cond_1d8
    const-string v7, "180"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    const/4 v4, 0x2

    goto :goto_1eb

    :cond_1e2
    const-string v7, "90"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1e8} :catch_251

    if-eqz v0, :cond_1eb

    const/4 v4, 0x0

    :cond_1eb
    :goto_1eb
    if-eqz v4, :cond_1fa

    if-eq v4, v2, :cond_1f7

    if-eq v4, v5, :cond_1f4

    const-string v0, "up"

    goto :goto_1fc

    :cond_1f4
    const-string v0, "down"

    goto :goto_1fc

    :cond_1f7
    const-string v0, "left"

    goto :goto_1fc

    :cond_1fa
    const-string v0, "right"

    :goto_1fc
    :try_start_1fc
    const-string v2, "orientation"

    .line 103
    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v0, 0xc

    .line 104
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_212

    const-string v2, "type"

    .line 106
    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_212
    const/16 v0, 0x14

    .line 108
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_21c} :catch_251

    if-nez v2, :cond_22d

    const-string v2, "bitrate"

    .line 110
    :try_start_220
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_22d} :catch_22d

    :catch_22d
    :cond_22d
    const-string v0, "duration"

    .line 113
    :try_start_22f
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v13

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v5, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_22f .. :try_end_241} :catch_241

    .line 114
    :catch_241
    :try_start_241
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_250
    .catch Ljava/lang/Exception; {:try_start_241 .. :try_end_250} :catch_251

    goto :goto_279

    :catch_251
    move-exception v0

    .line 116
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_257
    const-string v3, "code"

    const/16 v4, 0xd

    .line 118
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_25e
    .catch Lorg/json/JSONException; {:try_start_257 .. :try_end_25e} :catch_267

    const-string v3, "message"

    .line 119
    :try_start_260
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_267
    .catch Lorg/json/JSONException; {:try_start_260 .. :try_end_267} :catch_267

    .line 122
    :catch_267
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_279

    :cond_277
    move-object/from16 v1, p0

    :goto_279
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 232
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_21

    aget-object v0, p2, v1

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 234
    :try_start_c
    new-instance v0, Lorg/json/JSONArray;

    aget-object p2, p2, v1

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->jsonArrayToStringArr(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object p1
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception p2

    .line 236
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const/16 p2, 0x8

    .line 237
    invoke-direct {p0, p2, p1, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :cond_21
    const/4 p1, 0x0

    :goto_22
    return-object p1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 51
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 53
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method private b(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x0

    .line 1
    :try_start_1
    aget-object v7, p2, v0

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    aput-object v7, v3, v0

    invoke-static {v1, v3}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const/16 p2, 0xf

    .line 4
    invoke-direct {p0, p2, p1, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_18
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    .line 8
    invoke-interface {v0, v7}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    .line 9
    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 10
    aget-object v1, p2, v2

    if-eqz v1, :cond_40

    if-eqz v0, :cond_32

    goto :goto_40

    .line 14
    :cond_32
    new-instance v0, Lio/dcloud/js/file/FileFeatureImpl$e;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lio/dcloud/js/file/FileFeatureImpl$e;-><init>(Lio/dcloud/js/file/FileFeatureImpl;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lio/dcloud/common/adapter/util/AsyncTaskHandler;->executeThreadTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V

    goto :goto_4a

    :cond_40
    :goto_40
    const/4 p2, 0x4

    .line 15
    invoke-direct {p0, p2, p1, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_44} :catch_45

    return-void

    :catch_45
    const/16 p2, 0xa

    .line 50
    invoke-direct {p0, p2, p1, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :goto_4a
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_www/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_a2

    .line 3
    :cond_29
    sget-object v0, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_doc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a2

    .line 5
    :cond_51
    sget-object v0, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_documents/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a2

    .line 7
    :cond_79
    sget-object v0, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_downloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a2

    :cond_a1
    const/4 p1, 0x0

    :goto_a2
    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p1}, Lio/dcloud/js/file/FileFeatureImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    const/4 v0, -0x1

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_4b

    .line 8
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 9
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 10
    :cond_22
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 p1, 0x2

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 12
    :cond_30
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 p1, 0x3

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 14
    :cond_3e
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4b

    const/4 p1, 0x4

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_4b
    :goto_4b
    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "_www"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "_documents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "_downloads"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "_doc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "_www/"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "_documents/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "_downloads/"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "_doc/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_43

    :cond_41
    const/4 p1, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 p1, 0x1

    :goto_44
    return p1
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 24

    move-object/from16 v9, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "MD5"

    const/4 v8, 0x0

    .line 1
    aget-object v10, v1, v8

    .line 3
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v11

    .line 4
    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IApp;->isOnAppRunningMode()Z

    move-result v3

    .line 5
    invoke-interface {v11, v8}, Lio/dcloud/common/DHInterface/IApp;->getPathByType(B)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    const/4 v4, -0x1

    .line 6
    invoke-interface {v11, v4}, Lio/dcloud/common/DHInterface/IApp;->getPathByType(B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lio/dcloud/js/file/FileFeatureImpl;->b:Ljava/lang/String;

    const/4 v12, 0x1

    .line 7
    invoke-interface {v11, v12}, Lio/dcloud/common/DHInterface/IApp;->getPathByType(B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    const/4 v5, 0x2

    .line 8
    invoke-interface {v11, v5}, Lio/dcloud/common/DHInterface/IApp;->getPathByType(B)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    const/4 v6, 0x3

    .line 9
    invoke-interface {v11, v6}, Lio/dcloud/common/DHInterface/IApp;->getPathByType(B)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    .line 10
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_c42

    goto/16 :goto_18d

    :sswitch_47
    const-string v13, "chooseFile"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_51

    goto/16 :goto_18d

    :cond_51
    const/16 v13, 0x18

    goto/16 :goto_18e

    :sswitch_55
    const-string v13, "readEntries"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5f

    goto/16 :goto_18d

    :cond_5f
    const/16 v13, 0x17

    goto/16 :goto_18e

    :sswitch_63
    const-string v13, "truncate"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6d

    goto/16 :goto_18d

    :cond_6d
    const/16 v13, 0x16

    goto/16 :goto_18e

    :sswitch_71
    const-string v13, "getMetadata"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7b

    goto/16 :goto_18d

    :cond_7b
    const/16 v13, 0x15

    goto/16 :goto_18e

    :sswitch_7f
    const-string v13, "resolveLocalFileSystemURL"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_89

    goto/16 :goto_18d

    :cond_89
    const/16 v13, 0x14

    goto/16 :goto_18e

    :sswitch_8d
    const-string v13, "removeRecursively"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_97

    goto/16 :goto_18d

    :cond_97
    const/16 v13, 0x13

    goto/16 :goto_18e

    :sswitch_9b
    const-string v13, "getFileInfo"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a5

    goto/16 :goto_18d

    :cond_a5
    const/16 v13, 0x12

    goto/16 :goto_18e

    :sswitch_a9
    const-string v13, "getVideoInfo"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b3

    goto/16 :goto_18d

    :cond_b3
    const/16 v13, 0x11

    goto/16 :goto_18e

    :sswitch_b7
    const-string v13, "readAsBase64"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c1

    goto/16 :goto_18d

    :cond_c1
    const/16 v13, 0x10

    goto/16 :goto_18e

    :sswitch_c5
    const-string v13, "getParent"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_cf

    goto/16 :goto_18d

    :cond_cf
    const/16 v13, 0xf

    goto/16 :goto_18e

    :sswitch_d3
    const-string v13, "writeAsBinary"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_dd

    goto/16 :goto_18d

    :cond_dd
    const/16 v13, 0xe

    goto/16 :goto_18e

    :sswitch_e1
    const-string v13, "readAsDataURL"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_eb

    goto/16 :goto_18d

    :cond_eb
    const/16 v13, 0xd

    goto/16 :goto_18e

    :sswitch_ef
    const-string v13, "convertAbsoluteFileSystem"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f9

    goto/16 :goto_18d

    :cond_f9
    const/16 v13, 0xc

    goto/16 :goto_18e

    :sswitch_fd
    const-string v13, "getAudioInfo"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_107

    goto/16 :goto_18d

    :cond_107
    const/16 v13, 0xb

    goto/16 :goto_18e

    :sswitch_10b
    const-string v13, "write"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_115

    goto/16 :goto_18d

    :cond_115
    const/16 v13, 0xa

    goto/16 :goto_18e

    :sswitch_119
    const-string v13, "getFile"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_123

    goto/16 :goto_18d

    :cond_123
    const/16 v13, 0x9

    goto/16 :goto_18e

    :sswitch_127
    const-string v13, "getFileMetadata"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_131

    goto/16 :goto_18d

    :cond_131
    const/16 v13, 0x8

    goto/16 :goto_18e

    :sswitch_135
    const-string v13, "getImageInfo"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_13e

    goto :goto_18d

    :cond_13e
    const/4 v13, 0x7

    goto :goto_18e

    :sswitch_140
    const-string v13, "remove"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_149

    goto :goto_18d

    :cond_149
    const/4 v13, 0x6

    goto :goto_18e

    :sswitch_14b
    const-string v13, "convertLocalFileSystemURL"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_154

    goto :goto_18d

    :cond_154
    const/4 v13, 0x5

    goto :goto_18e

    :sswitch_156
    const-string v13, "getDirectory"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_15f

    goto :goto_18d

    :cond_15f
    const/4 v13, 0x4

    goto :goto_18e

    :sswitch_161
    const-string v13, "readAsText"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16a

    goto :goto_18d

    :cond_16a
    const/4 v13, 0x3

    goto :goto_18e

    :sswitch_16c
    const-string v13, "moveTo"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_175

    goto :goto_18d

    :cond_175
    const/4 v13, 0x2

    goto :goto_18e

    :sswitch_177
    const-string v13, "requestFileSystem"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_180

    goto :goto_18d

    :cond_180
    const/4 v13, 0x1

    goto :goto_18e

    :sswitch_182
    const-string v13, "copyTo"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18b

    goto :goto_18d

    :cond_18b
    const/4 v13, 0x0

    goto :goto_18e

    :goto_18d
    const/4 v13, -0x1

    :goto_18e
    const-string v6, "android_asset/"

    const-string v4, "/android_asset/"

    const-string v5, "apps/"

    const-string v14, "filePath"

    const-string v15, ""

    const-string v12, "/"

    const/16 v19, 0x0

    packed-switch v13, :pswitch_data_ca8

    goto/16 :goto_c41

    .line 808
    :pswitch_1a1
    aget-object v6, v1, v8

    .line 810
    array-length v0, v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1c1

    aget-object v0, v1, v2

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 812
    :try_start_1af
    new-instance v0, Lorg/json/JSONObject;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "multiple"

    .line 813
    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1bc} :catch_1bd

    goto :goto_1c2

    :catch_1bd
    move-exception v0

    .line 815
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c1
    const/4 v0, 0x0

    .line 818
    :goto_1c2
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v10

    .line 819
    new-instance v12, Lio/dcloud/js/file/FileFeatureImpl$d;

    move-object v1, v12

    move-object/from16 v2, p0

    move v3, v10

    move-object v4, v11

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/js/file/FileFeatureImpl$d;-><init>(Lio/dcloud/js/file/FileFeatureImpl;ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v11, v12, v1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 865
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    if-nez v0, :cond_1e6

    .line 867
    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1ea

    :cond_1e6
    const/4 v3, 0x1

    .line 869
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1ea
    const-string v0, "*/*"

    .line 875
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.OPENABLE"

    .line 876
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_c41

    .line 878
    :pswitch_1fd
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_205

    goto/16 :goto_c41

    .line 882
    :cond_205
    aget-object v0, v0, v8

    .line 883
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v8

    invoke-static {v1, v4}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21f

    invoke-static {v0}, Lio/dcloud/common/util/FileUtil;->getPathForPublicType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21d

    goto :goto_21f

    :cond_21d
    const/4 v1, 0x0

    goto :goto_220

    :cond_21f
    :goto_21f
    const/4 v1, 0x1

    :goto_220
    if-nez v1, :cond_229

    const/16 v1, 0xf

    .line 885
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 888
    :cond_229
    invoke-interface {v11, v0}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_235

    if-eqz v3, :cond_235

    :goto_231
    move-object/from16 v0, v19

    const/4 v12, 0x0

    goto :goto_244

    .line 895
    :cond_235
    :try_start_235
    invoke-interface {v11, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/js/file/a;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_235 .. :try_end_23d} :catch_23f

    const/4 v12, 0x1

    goto :goto_244

    :catch_23f
    move-exception v0

    .line 897
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_231

    :goto_244
    if-eqz v12, :cond_24d

    .line 902
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v10, v0, v1, v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;IZ)V

    goto/16 :goto_c41

    :cond_24d
    const/16 v1, 0xa

    .line 904
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 1265
    :pswitch_254
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25c

    goto/16 :goto_c41

    .line 1272
    :cond_25c
    :try_start_25c
    aget-object v1, v0, v8

    .line 1273
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object v1, v4, v8

    invoke-static {v2, v4}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27a

    const/16 v2, 0xf

    .line 1275
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_272
    .catch Ljava/lang/Exception; {:try_start_25c .. :try_end_272} :catch_312
    .catchall {:try_start_25c .. :try_end_272} :catchall_30e

    .line 1309
    invoke-static/range {v19 .. v19}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 1310
    invoke-static/range {v19 .. v19}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_c41

    .line 1311
    :cond_27a
    :try_start_27a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1312
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_284
    .catch Ljava/lang/Exception; {:try_start_27a .. :try_end_284} :catch_312
    .catchall {:try_start_27a .. :try_end_284} :catchall_30e

    .line 1313
    :try_start_284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1314
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1315
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2bb
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_2bb} :catch_30a
    .catchall {:try_start_284 .. :try_end_2bb} :catchall_308

    const/4 v1, 0x1

    .line 1316
    :try_start_2bc
    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    .line 1317
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int v5, v4, v1

    const/16 v6, 0x2800

    .line 1318
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1319
    new-array v5, v5, [B

    const/4 v6, 0x0

    .line 1322
    :goto_2d4
    invoke-virtual {v11, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2f2

    sub-int v14, v1, v6

    sub-int v15, v13, v4

    .line 1323
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-lez v14, :cond_2e9

    .line 1325
    invoke-virtual {v12, v5, v4, v14}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v6, v14

    :cond_2e9
    if-lt v6, v1, :cond_2ec

    goto :goto_2f2

    :cond_2ec
    if-lez v4, :cond_2f0

    sub-int/2addr v4, v13

    goto :goto_2d4

    :cond_2f0
    const/4 v4, 0x0

    goto :goto_2d4

    .line 1335
    :cond_2f2
    :goto_2f2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1336
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v1, 0x1

    .line 1337
    aget-object v3, v0, v1

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_305
    .catch Ljava/lang/Exception; {:try_start_2bc .. :try_end_305} :catch_306
    .catchall {:try_start_2bc .. :try_end_305} :catchall_326

    goto :goto_31e

    :catch_306
    move-exception v0

    goto :goto_316

    :catchall_308
    move-exception v0

    goto :goto_329

    :catch_30a
    move-exception v0

    move-object/from16 v12, v19

    goto :goto_316

    :catchall_30e
    move-exception v0

    move-object/from16 v11, v19

    goto :goto_329

    :catch_312
    move-exception v0

    move-object/from16 v11, v19

    move-object v12, v11

    .line 1339
    :goto_316
    :try_start_316
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, 0xa

    .line 1340
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_31e
    .catchall {:try_start_316 .. :try_end_31e} :catchall_326

    .line 1342
    :goto_31e
    invoke-static {v11}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 1343
    invoke-static {v12}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_c41

    :catchall_326
    move-exception v0

    move-object/from16 v19, v12

    .line 1344
    :goto_329
    invoke-static {v11}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 1345
    invoke-static/range {v19 .. v19}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 1346
    throw v0

    .line 1347
    :pswitch_330
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_338

    goto/16 :goto_c41

    .line 1351
    :cond_338
    aget-object v1, v0, v8

    .line 1352
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v1, v5, v8

    invoke-static {v2, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_356

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_354

    goto :goto_356

    :cond_354
    const/4 v2, 0x0

    goto :goto_357

    :cond_356
    :goto_356
    const/4 v2, 0x1

    :goto_357
    if-nez v2, :cond_360

    const/16 v2, 0xf

    .line 1354
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 1357
    :cond_360
    invoke-interface {v11, v1}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36c

    if-eqz v3, :cond_36c

    :goto_368
    move-object/from16 v0, v19

    const/4 v12, 0x0

    goto :goto_392

    .line 1365
    :cond_36c
    :try_start_36c
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_386

    const/4 v2, 0x1

    aget-object v3, v0, v2

    if-eqz v3, :cond_386

    aget-object v3, v0, v2

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_386

    .line 1366
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_387

    :cond_386
    const/4 v0, 0x0

    .line 1368
    :goto_387
    invoke-static {v1, v0}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_38b
    .catch Ljava/lang/Exception; {:try_start_36c .. :try_end_38b} :catch_38d

    const/4 v12, 0x1

    goto :goto_392

    :catch_38d
    move-exception v0

    .line 1370
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_368

    :goto_392
    if-eqz v12, :cond_39b

    .line 1375
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v10, v0, v1, v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_c41

    :cond_39b
    const/16 v1, 0xa

    .line 1377
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 1859
    :pswitch_3a2
    :try_start_3a2
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3aa

    goto/16 :goto_c41

    .line 1867
    :cond_3aa
    aget-object v0, v1, v8

    invoke-direct {v9, v0}, Lio/dcloud/js/file/FileFeatureImpl;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c2

    .line 1870
    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IApp;->isOnAppRunningMode()Z

    move-result v2

    if-eqz v2, :cond_3c2

    aget-object v2, v1, v8

    invoke-interface {v11, v2}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/4 v2, 0x1

    goto :goto_3c3

    :cond_3c2
    const/4 v2, 0x0

    .line 1872
    :goto_3c3
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v8

    invoke-interface {v11, v3, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v2, :cond_3f5

    .line 1874
    invoke-direct {v9, v13}, Lio/dcloud/js/file/FileFeatureImpl;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3d3
    .catch Lorg/json/JSONException; {:try_start_3a2 .. :try_end_3d3} :catch_457

    const-string v12, "_www"

    const/4 v14, 0x1

    const-string v15, "_www"

    :try_start_3d8
    const-string v1, "fsName"

    .line 1876
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const-string v1, "fsRoot"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 1877
    invoke-static/range {v12 .. v18}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1879
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v10, v0, v1, v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_c41

    .line 1881
    :cond_3f5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1882
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_3fe
    .catch Lorg/json/JSONException; {:try_start_3d8 .. :try_end_3fe} :catch_457

    if-nez v3, :cond_422

    if-eqz v0, :cond_422

    .line 1885
    :try_start_402
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1886
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_40f

    .line 1887
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1889
    :cond_40f
    invoke-static {v13}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    move-result v0
    :try_end_417
    .catch Ljava/lang/Exception; {:try_start_402 .. :try_end_417} :catch_41e

    const/4 v3, 0x1

    if-ne v3, v0, :cond_41c

    const/4 v12, 0x1

    goto :goto_423

    :cond_41c
    const/4 v12, 0x0

    goto :goto_423

    :catch_41e
    move-exception v0

    .line 1891
    :try_start_41f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_422
    move v12, v3

    :goto_423
    if-eqz v12, :cond_450

    .line 1895
    invoke-direct {v9, v13}, Lio/dcloud/js/file/FileFeatureImpl;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1896
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v14

    aget-object v15, v1, v8

    const-string v1, "fsName"

    .line 1897
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const-string v1, "fsRoot"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 1898
    invoke-static/range {v12 .. v18}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1900
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v10, v0, v1, v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_c41

    :cond_450
    const/16 v1, 0xe

    .line 1902
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_455
    .catch Lorg/json/JSONException; {:try_start_41f .. :try_end_455} :catch_457

    goto/16 :goto_c41

    :catch_457
    const/16 v1, 0xa

    .line 1907
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 1908
    :pswitch_45e
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_466

    goto/16 :goto_c41

    .line 1912
    :cond_466
    aget-object v1, v0, v8

    invoke-static {v7, v10, v1}, Lio/dcloud/common/util/JSUtil;->checkOperateDirErrorAndCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46f

    return-object v19

    .line 1915
    :cond_46f
    aget-object v0, v0, v8

    .line 1916
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_487

    const/16 v1, 0xf

    .line 1918
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 1921
    :cond_487
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1922
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4d1

    .line 1924
    :try_start_492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/io/DHFile;->rename(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4cb
    .catch Ljava/io/IOException; {:try_start_492 .. :try_end_4cb} :catch_4cd

    move-object v1, v2

    goto :goto_4d1

    :catch_4cd
    move-exception v0

    .line 1928
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1931
    :cond_4d1
    :goto_4d1
    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4de

    .line 1932
    sget v0, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v10, v15, v0, v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_c41

    :cond_4de
    const/16 v1, 0xa

    .line 1934
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 2147
    :pswitch_4e5
    aget-object v0, v1, v8

    .line 2151
    :try_start_4e7
    new-instance v3, Lorg/json/JSONObject;

    const/4 v13, 0x1

    aget-object v1, v1, v13

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2152
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4f3
    .catch Lorg/json/JSONException; {:try_start_4e7 .. :try_end_4f3} :catch_4fa

    :try_start_4f3
    const-string v13, "digestAlgorithm"

    .line 2153
    invoke-virtual {v3, v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4f9
    .catch Lorg/json/JSONException; {:try_start_4f3 .. :try_end_4f9} :catch_4fb

    goto :goto_4fb

    :catch_4fa
    move-object v1, v15

    :catch_4fb
    :goto_4fb
    move-object v13, v2

    .line 2156
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c41

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c41

    .line 2157
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2158
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 p2, v13

    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/String;

    aput-object v1, v13, v8

    invoke-static {v3, v13}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_532

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_530

    goto :goto_532

    :cond_530
    const/4 v1, 0x0

    goto :goto_533

    :cond_532
    :goto_532
    const/4 v1, 0x1

    :goto_533
    if-nez v1, :cond_53c

    const/16 v1, 0xf

    .line 2160
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 2163
    :cond_53c
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_551

    .line 2164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2165
    :cond_551
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55e

    const-string v1, "/android_asset"

    .line 2166
    invoke-virtual {v2, v1, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_56a

    .line 2167
    :cond_55e
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56a

    const-string v1, "android_asset"

    .line 2168
    invoke-virtual {v2, v1, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2170
    :cond_56a
    :goto_56a
    invoke-interface {v11, v2}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2171
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2172
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_59a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, -0x4

    .line 2173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    sget-object v2, Lio/dcloud/common/constant/DOMException;->MSG_FILE_NOT_EXIST:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "{code:%d,message:\'%s\'}"

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2174
    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_c41

    .line 2177
    :cond_59a
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v8

    new-instance v10, Lio/dcloud/js/file/FileFeatureImpl$c;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/js/file/FileFeatureImpl$c;-><init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/io/File;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    goto/16 :goto_c41

    .line 2178
    :pswitch_5b0
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5b8

    goto/16 :goto_c41

    .line 2182
    :cond_5b8
    invoke-direct {v9, v7, v11, v0, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 2294
    :pswitch_5bd
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5c5

    goto/16 :goto_c41

    .line 2299
    :cond_5c5
    aget-object v0, v0, v8

    .line 2300
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    aput-object v0, v3, v8

    invoke-static {v1, v3}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5e3

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e1

    goto :goto_5e3

    :cond_5e1
    const/4 v1, 0x0

    goto :goto_5e4

    :cond_5e3
    :goto_5e3
    const/4 v1, 0x1

    :goto_5e4
    if-nez v1, :cond_5ed

    const/16 v1, 0xf

    .line 2302
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    :cond_5ed
    if-eqz v0, :cond_5fa

    .line 2305
    invoke-direct {v9, v0}, Lio/dcloud/js/file/FileFeatureImpl;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5fa

    const/4 v1, 0x4

    .line 2306
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v19

    .line 2309
    :cond_5fa
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2310
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_620

    .line 2311
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 2312
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 2314
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v10, v0, v1, v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    const/4 v8, 0x1

    :cond_620
    if-nez v8, :cond_c41

    const/16 v1, 0xa

    .line 2317
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 2318
    :pswitch_629
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_631

    goto/16 :goto_c41

    .line 2322
    :cond_631
    invoke-direct {v9, v7, v0, v10}, Lio/dcloud/js/file/FileFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 2510
    :pswitch_636
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_63e

    goto/16 :goto_c41

    .line 2514
    :cond_63e
    aget-object v0, v0, v8

    .line 2515
    invoke-interface {v11, v0}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64c

    if-eqz v3, :cond_64c

    :goto_648
    move-object/from16 v0, v19

    const/4 v12, 0x0

    goto :goto_679

    .line 2521
    :cond_64c
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->readAll(Ljava/lang/Object;)[B

    move-result-object v1

    .line 2524
    :try_start_650
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2525
    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_660

    const/4 v2, 0x2

    .line 2526
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    goto :goto_665

    :cond_660
    const/4 v2, 0x2

    .line 2528
    invoke-static {v1}, Lio/dcloud/common/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1
    :try_end_665
    .catch Ljava/lang/Exception; {:try_start_650 .. :try_end_665} :catch_674

    :goto_665
    const-string v3, "data:%s;base64,%s"

    :try_start_667
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v8

    const/4 v4, 0x1

    aput-object v1, v2, v4

    .line 2530
    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_672
    .catch Ljava/lang/Exception; {:try_start_667 .. :try_end_672} :catch_674

    const/4 v12, 0x1

    goto :goto_679

    :catch_674
    move-exception v0

    .line 2532
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_648

    :goto_679
    if-eqz v12, :cond_682

    .line 2537
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v10, v0, v1, v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_c41

    :cond_682
    const/16 v1, 0xa

    .line 2539
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 2598
    :pswitch_689
    aget-object v0, v1, v8

    .line 2599
    invoke-interface {v11, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_695
    const/4 v2, 0x1

    .line 2768
    aget-object v3, v1, v8

    .line 2771
    :try_start_698
    new-instance v4, Lorg/json/JSONObject;

    aget-object v1, v1, v2

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2772
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_6a3
    .catch Lorg/json/JSONException; {:try_start_698 .. :try_end_6a3} :catch_6a3

    .line 2775
    :catch_6a3
    invoke-direct {v9, v15, v3, v7, v0}, Lio/dcloud/js/file/FileFeatureImpl;->a(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 2776
    :pswitch_6a8
    :try_start_6a8
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6b0

    goto/16 :goto_c41

    .line 2780
    :cond_6b0
    aget-object v1, v0, v8

    .line 2781
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object v1, v4, v8

    invoke-static {v2, v4}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c8

    const/16 v2, 0xf

    .line 2783
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 2786
    :cond_6c8
    invoke-interface {v11, v1}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    .line 2787
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    .line 2788
    aget-object v5, v0, v4

    if-eqz v5, :cond_6f5

    if-eqz v2, :cond_6df

    goto :goto_6f5

    .line 2792
    :cond_6df
    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2793
    invoke-static {v0, v3, v1}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V

    .line 2794
    array-length v0, v0

    int-to-double v3, v0

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;DIZ)V

    goto/16 :goto_c41

    :cond_6f5
    :goto_6f5
    const/4 v0, 0x4

    .line 2795
    invoke-direct {v9, v0, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_6f9
    .catch Ljava/lang/Exception; {:try_start_6a8 .. :try_end_6f9} :catch_6fa

    return-object v19

    :catch_6fa
    const/16 v1, 0xa

    .line 2802
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 2847
    :pswitch_701
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_709

    goto/16 :goto_c41

    .line 2851
    :cond_709
    aget-object v1, v0, v8

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-interface {v11, v1, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2852
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_727

    const/16 v2, 0xf

    .line 2854
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 2857
    :cond_727
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2859
    :try_start_72c
    new-instance v3, Lorg/json/JSONObject;

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 2860
    aget-object v0, v0, v4

    const-string v0, "create"

    .line 2861
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "exclusive"

    .line 2862
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2864
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_768

    if-eqz v0, :cond_762

    .line 2866
    invoke-static {v2}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    move-result v0

    .line 2867
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v0, v4, :cond_75c

    const/4 v4, -0x2

    if-ne v0, v4, :cond_776

    if-nez v3, :cond_75c

    goto :goto_776

    .line 2869
    :cond_75c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_762
    const/16 v1, 0xe

    .line 2872
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v19

    :cond_768
    if-eqz v0, :cond_772

    if-eqz v3, :cond_772

    const/16 v0, 0xc

    .line 2876
    invoke-direct {v9, v0, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v19

    .line 2879
    :cond_772
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2881
    :cond_776
    :goto_776
    invoke-interface {v11, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0, v8}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 2882
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v10, v0, v1, v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_783
    .catch Ljava/lang/Exception; {:try_start_72c .. :try_end_783} :catch_785

    goto/16 :goto_c41

    :catch_785
    const/16 v1, 0xa

    .line 2884
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 2885
    :pswitch_78c
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_794

    goto/16 :goto_c41

    .line 2889
    :cond_794
    aget-object v0, v0, v8

    .line 2890
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v8

    invoke-static {v1, v4}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7b2

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b0

    goto :goto_7b2

    :cond_7b0
    const/4 v1, 0x0

    goto :goto_7b3

    :cond_7b2
    :goto_7b2
    const/4 v1, 0x1

    :goto_7b3
    if-nez v1, :cond_7bc

    const/16 v1, 0xf

    .line 2892
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 2895
    :cond_7bc
    invoke-interface {v11, v0}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c8

    if-eqz v3, :cond_7c8

    :goto_7c4
    move-object/from16 v0, v19

    const/4 v12, 0x0

    goto :goto_7d7

    .line 2902
    :cond_7c8
    :try_start_7c8
    invoke-direct {v9, v0}, Lio/dcloud/js/file/FileFeatureImpl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_7d0
    .catch Ljava/lang/Exception; {:try_start_7c8 .. :try_end_7d0} :catch_7d2

    const/4 v12, 0x1

    goto :goto_7d7

    :catch_7d2
    move-exception v0

    .line 2904
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7c4

    :goto_7d7
    if-eqz v12, :cond_7e0

    .line 2909
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v10, v0, v1, v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_c41

    :cond_7e0
    const/16 v1, 0xa

    .line 2911
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 3411
    :pswitch_7e7
    aget-object v2, v1, v8

    const/4 v3, 0x1

    .line 3412
    aget-object v0, v1, v3

    .line 3413
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c41

    .line 3416
    array-length v3, v1

    const/4 v13, 0x2

    if-le v3, v13, :cond_845

    aget-object v3, v1, v13

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_845

    .line 3417
    aget-object v1, v1, v13

    .line 3418
    invoke-virtual {v1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_815

    .line 3419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3420
    :cond_815
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_847

    :cond_845
    move-object/from16 v1, v19

    .line 3422
    :goto_847
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_87a

    .line 3425
    :try_start_84d
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->asFile()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v3, Lio/dcloud/js/file/FileFeatureImpl$b;

    invoke-direct {v3, v9, v1, v7, v2}, Lio/dcloud/js/file/FileFeatureImpl$b;-><init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    :try_end_865
    .catch Ljava/lang/Exception; {:try_start_84d .. :try_end_865} :catch_867

    goto/16 :goto_c41

    :catch_867
    const-string v0, "Failed to load resource"

    const/16 v1, 0xd

    .line 3450
    invoke-static {v1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_c41

    .line 3453
    :cond_87a
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3454
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    aput-object v0, v13, v8

    invoke-static {v1, v13}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_89b

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89c

    :cond_89b
    const/4 v8, 0x1

    :cond_89c
    if-nez v8, :cond_8a5

    const/16 v1, 0xf

    .line 3456
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 3459
    :cond_8a5
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8ba

    .line 3460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3461
    :cond_8ba
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c7

    const-string v1, "/android_asset"

    .line 3462
    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8d3

    .line 3463
    :cond_8c7
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d3

    const-string v1, "android_asset"

    .line 3464
    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3466
    :cond_8d3
    :goto_8d3
    invoke-interface {v11, v0}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3467
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8e9

    const/16 v1, 0xe

    .line 3468
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 3470
    :cond_8e9
    invoke-direct {v9, v0, v7, v2}, Lio/dcloud/js/file/FileFeatureImpl;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 3471
    :pswitch_8ee
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8f6

    goto/16 :goto_c41

    .line 3475
    :cond_8f6
    aget-object v0, v0, v8

    .line 3476
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_90e

    const/16 v1, 0xf

    .line 3478
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 3481
    :cond_90e
    invoke-interface {v11, v0}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_919

    const/4 v1, 0x4

    .line 3484
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v19

    .line 3487
    :cond_919
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3488
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_92b

    .line 3489
    sget v0, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v10, v15, v0, v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_c41

    :cond_92b
    const/16 v1, 0xa

    .line 3491
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 3999
    :pswitch_932
    aget-object v0, v1, v8

    .line 4000
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4001
    :pswitch_942
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_94a

    goto/16 :goto_c41

    .line 4005
    :cond_94a
    aget-object v1, v0, v8

    if-eqz v1, :cond_969

    aget-object v1, v0, v8

    invoke-virtual {v1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_969

    .line 4006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 4008
    :cond_969
    aget-object v1, v0, v8

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-interface {v11, v1, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4009
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_987

    const/16 v3, 0xf

    .line 4011
    invoke-direct {v9, v3, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 4015
    :cond_987
    aget-object v3, v0, v8

    if-eqz v3, :cond_9a7

    aget-object v3, v0, v2

    if-eqz v3, :cond_9a7

    aget-object v3, v0, v2

    const-string v2, "../"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9a7

    aget-object v2, v0, v8

    invoke-direct {v9, v2}, Lio/dcloud/js/file/FileFeatureImpl;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9a7

    const/4 v2, 0x4

    .line 4016
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v19

    .line 4019
    :cond_9a7
    invoke-virtual {v1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9bc

    .line 4020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4022
    :cond_9bc
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4024
    :try_start_9c1
    new-instance v3, Lorg/json/JSONObject;

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "create"

    .line 4025
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "exclusive"

    .line 4026
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 4028
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9f6

    if-eqz v4, :cond_9f0

    .line 4030
    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_9ea

    const/4 v4, -0x2

    if-ne v2, v4, :cond_9ff

    if-nez v3, :cond_9ea

    goto :goto_9ff

    .line 4032
    :cond_9ea
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9f0
    const/16 v2, 0xe

    .line 4035
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v19

    :cond_9f6
    if-eqz v3, :cond_9ff

    if-eqz v3, :cond_9ff

    const/16 v2, 0xc

    .line 4041
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :cond_9ff
    :goto_9ff
    const/4 v2, 0x1

    .line 4043
    aget-object v0, v0, v2

    invoke-interface {v11, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 4044
    sget v2, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v10, v0, v2, v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_a0f
    .catch Ljava/lang/Exception; {:try_start_9c1 .. :try_end_a0f} :catch_a11

    goto/16 :goto_c41

    .line 4046
    :catch_a11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not Found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 4047
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 4048
    :pswitch_a2c
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a34

    goto/16 :goto_c41

    .line 4052
    :cond_a34
    aget-object v4, v0, v8

    .line 4053
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    aput-object v4, v5, v8

    invoke-static {v1, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a4c

    const/16 v1, 0xf

    .line 4055
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 4058
    :cond_a4c
    invoke-interface {v11, v4}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    .line 4059
    aget-object v6, v0, v2

    const/4 v2, 0x2

    .line 4060
    aget-object v2, v0, v2

    invoke-static {v2, v8}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v2, 0x3

    .line 4061
    aget-object v0, v0, v2

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_a6c

    if-eqz v3, :cond_a6c

    const/16 v1, 0xa

    .line 4063
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 4065
    :cond_a6c
    new-instance v11, Lio/dcloud/js/file/FileFeatureImpl$a;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object v3, v4

    move v4, v0

    move-object/from16 v7, p1

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lio/dcloud/js/file/FileFeatureImpl$a;-><init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {v11}, Lio/dcloud/common/adapter/util/AsyncTaskHandler;->executeThreadTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V

    goto/16 :goto_c41

    .line 4066
    :pswitch_a7e
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a86

    goto/16 :goto_c41

    .line 4070
    :cond_a86
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4071
    aget-object v2, v0, v8

    invoke-interface {v11, v2}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ab4

    invoke-interface {v11, v1}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab2

    goto :goto_ab4

    :cond_ab2
    const/4 v2, 0x0

    goto :goto_ab5

    :cond_ab4
    :goto_ab4
    const/4 v2, 0x1

    :goto_ab5
    if-eqz v2, :cond_abe

    const/16 v2, 0xa

    .line 4073
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 4075
    :cond_abe
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v0, v8

    invoke-interface {v11, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4076
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    aput-object v1, v5, v8

    const/4 v4, 0x1

    aput-object v2, v5, v4

    invoke-static {v3, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ae1

    const/16 v3, 0xf

    .line 4078
    invoke-direct {v9, v3, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 4081
    :cond_ae1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4082
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 4084
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4085
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_b07

    .line 4087
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 4088
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_b02

    .line 4089
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 4091
    :cond_b02
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    goto :goto_b08

    :cond_b07
    const/4 v3, 0x0

    :goto_b08
    if-eqz v3, :cond_b1c

    const/4 v3, 0x2

    .line 4094
    aget-object v0, v0, v3

    invoke-interface {v11, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 4095
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v10, v0, v1, v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_c41

    :cond_b1c
    const/16 v1, 0xa

    .line 4097
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 4410
    :pswitch_b23
    :try_start_b23
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b2b

    goto/16 :goto_c41

    .line 4414
    :cond_b2b
    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_b31
    .catch Ljava/lang/Exception; {:try_start_b23 .. :try_end_b31} :catch_b85

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b71

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b63

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b55

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b47

    const-string v0, "PUBLIC_DEVICE_ROOT"

    .line 4430
    :try_start_b3f
    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    const/4 v2, 0x5

    .line 4446
    invoke-static {v0, v2, v1, v1, v1}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_b46
    .catch Ljava/lang/Exception; {:try_start_b3f .. :try_end_b46} :catch_b85

    goto :goto_b7e

    :cond_b47
    const-string v0, "PUBLIC_DOWNLOADS"

    .line 4431
    :try_start_b49
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PUBLIC_DOWNLOADS_DIR:Ljava/lang/String;

    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    const-string v3, "_downloads"

    const/4 v4, 0x4

    invoke-static {v0, v4, v1, v2, v3}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_b54
    .catch Ljava/lang/Exception; {:try_start_b49 .. :try_end_b54} :catch_b85

    goto :goto_b7e

    :cond_b55
    const-string v0, "PUBLIC_DOCUMENTS"

    .line 4432
    :try_start_b57
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PUBLIC_DOCUMENTS_DIR:Ljava/lang/String;

    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    const-string v3, "_documents"

    const/4 v4, 0x3

    invoke-static {v0, v4, v1, v2, v3}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_b62
    .catch Ljava/lang/Exception; {:try_start_b57 .. :try_end_b62} :catch_b85

    goto :goto_b7e

    :cond_b63
    const-string v0, "PRIVATE_DOCUMENTS"

    .line 4433
    :try_start_b65
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_DOC_DIR:Ljava/lang/String;

    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    const-string v3, "_doc"

    const/4 v4, 0x2

    invoke-static {v0, v4, v1, v2, v3}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_b70
    .catch Ljava/lang/Exception; {:try_start_b65 .. :try_end_b70} :catch_b85

    goto :goto_b7e

    :cond_b71
    const-string v0, "PRIVATE_WWW"

    .line 4434
    :try_start_b73
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_WWW_DIR:Ljava/lang/String;

    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    const-string v3, "_www"

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2, v3}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4449
    :goto_b7e
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v10, v0, v1, v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_b83
    .catch Ljava/lang/Exception; {:try_start_b73 .. :try_end_b83} :catch_b85

    goto/16 :goto_c41

    :catch_b85
    move-exception v0

    .line 4451
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, 0xa

    .line 4452
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_c41

    .line 4453
    :pswitch_b90
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b98

    goto/16 :goto_c41

    :cond_b98
    const/4 v2, 0x1

    .line 4457
    aget-object v0, v1, v2

    if-eqz v0, :cond_bbb

    .line 4458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bb2

    goto :goto_bb3

    :cond_bb2
    move-object v15, v4

    :goto_bb3
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_bbd

    .line 4460
    :cond_bbb
    aget-object v0, v1, v2

    .line 4462
    :goto_bbd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v0, v1, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4463
    aget-object v0, v1, v8

    .line 4464
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    aput-object v2, v5, v8

    const/4 v3, 0x1

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bef

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bed

    goto :goto_bef

    :cond_bed
    const/4 v3, 0x0

    goto :goto_bf0

    :cond_bef
    :goto_bef
    const/4 v3, 0x1

    :goto_bf0
    if-nez v3, :cond_bf8

    const/16 v3, 0xf

    .line 4466
    invoke-direct {v9, v3, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto :goto_c41

    .line 4469
    :cond_bf8
    invoke-interface {v11, v2}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_c1f

    .line 4473
    :try_start_c00
    invoke-static {v2}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c1f

    .line 4475
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c13

    .line 4476
    invoke-static {v0, v2}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_c1f

    goto :goto_c19

    .line 4479
    :cond_c13
    invoke-static {v0, v2}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_c17
    .catch Ljava/io/IOException; {:try_start_c00 .. :try_end_c17} :catch_c1b

    if-eqz v0, :cond_c1f

    :goto_c19
    const/4 v12, 0x1

    goto :goto_c20

    :catch_c1b
    move-exception v0

    .line 4485
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c1f
    const/4 v12, 0x0

    :goto_c20
    if-eqz v12, :cond_c3c

    const/4 v3, 0x2

    .line 4488
    aget-object v0, v1, v3

    invoke-interface {v11, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 4489
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v10, v0, v1, v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_c41

    :cond_c3c
    const/16 v1, 0xa

    .line 4491
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :cond_c41
    :goto_c41
    return-object v19

    :sswitch_data_c42
    .sparse-switch
        -0x50bf4f30 -> :sswitch_182
        -0x48fb9146 -> :sswitch_177
        -0x3fac69d4 -> :sswitch_16c
        -0x3ca3664b -> :sswitch_161
        -0x39f27049 -> :sswitch_156
        -0x381a8bf4 -> :sswitch_14b
        -0x37b5077c -> :sswitch_140
        -0x34ef320d -> :sswitch_135
        -0x574d4bf -> :sswitch_127
        -0x480a20e -> :sswitch_119
        0x6c257df -> :sswitch_10b
        0xaa00aee -> :sswitch_fd
        0x1350fab5 -> :sswitch_ef
        0x1f8c3fdd -> :sswitch_e1
        0x284c03d2 -> :sswitch_d3
        0x29c22ba0 -> :sswitch_c5
        0x3faaefd7 -> :sswitch_b7
        0x4edba913 -> :sswitch_a9
        0x4ffdedc0 -> :sswitch_9b
        0x50a1221b -> :sswitch_8d
        0x5db49c05 -> :sswitch_7f
        0x6107b8a5 -> :sswitch_71
        0x6e724d66 -> :sswitch_63
        0x750fee1a -> :sswitch_55
        0x7897fc33 -> :sswitch_47
    .end sparse-switch

    :pswitch_data_ca8
    .packed-switch 0x0
        :pswitch_b90
        :pswitch_b23
        :pswitch_a7e
        :pswitch_a2c
        :pswitch_942
        :pswitch_932
        :pswitch_8ee
        :pswitch_7e7
        :pswitch_78c
        :pswitch_701
        :pswitch_6a8
        :pswitch_695
        :pswitch_689
        :pswitch_636
        :pswitch_629
        :pswitch_5bd
        :pswitch_5b0
        :pswitch_695
        :pswitch_4e5
        :pswitch_45e
        :pswitch_3a2
        :pswitch_330
        :pswitch_254
        :pswitch_1fd
        :pswitch_1a1
    .end packed-switch
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

###### Class io.dcloud.js.file.FileFeatureImpl.a (io.dcloud.js.file.FileFeatureImpl$a)
.class Lio/dcloud/js/file/FileFeatureImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/file/FileFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lio/dcloud/js/file/FileFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->g:Lio/dcloud/js/file/FileFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->a:Ljava/lang/String;

    iput p3, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->b:I

    iput p4, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->c:I

    iput-object p5, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->d:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p7, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onExecuteBegin()V
    .registers 1

    return-void
.end method

.method public onExecuteEnd(Ljava/lang/Object;)V
    .registers 8

    if-eqz p1, :cond_12

    .line 1
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->f:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_1d

    .line 3
    :cond_12
    iget-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->g:Lio/dcloud/js/file/FileFeatureImpl;

    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->f:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {p1, v2, v0, v1}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/js/file/FileFeatureImpl;ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method public onExecuting()Ljava/lang/Object;
    .registers 11

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_87
    .catchall {:try_start_1 .. :try_end_b} :catchall_84

    .line 2
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_82
    .catchall {:try_start_b .. :try_end_f} :catchall_80

    .line 4
    :try_start_f
    new-instance v3, Lio/dcloud/common/adapter/io/UnicodeInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lio/dcloud/common/adapter/io/UnicodeInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_1e
    .catchall {:try_start_f .. :try_end_1c} :catchall_80

    move-object v1, v3

    goto :goto_22

    :catch_1e
    move-exception v3

    .line 6
    :try_start_1f
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_22
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_82
    .catchall {:try_start_1f .. :try_end_27} :catchall_80

    .line 9
    :try_start_27
    iget v4, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->b:I

    const/4 v5, 0x0

    if-lez v4, :cond_42

    if-lt v4, v2, :cond_30

    add-int/lit8 v4, v2, -0x1

    .line 14
    :cond_30
    iget v2, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->c:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    .line 15
    new-array v6, v4, [B

    int-to-long v7, v2

    .line 16
    invoke-virtual {v1, v7, v8}, Ljava/io/InputStream;->skip(J)J

    .line 17
    invoke-virtual {v1, v6, v5, v4}, Ljava/io/InputStream;->read([BII)I

    .line 18
    invoke-virtual {v3, v6, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4e

    :cond_42
    :goto_42
    const v2, 0x32000

    new-array v2, v2, [B

    .line 22
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_73

    .line 30
    :goto_4e
    iget-object v2, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->d:Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_61

    :cond_5b
    iget-object v2, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_61
    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_65} :catch_79
    .catchall {:try_start_27 .. :try_end_65} :catchall_77

    if-eqz v1, :cond_6a

    .line 38
    :try_start_67
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 41
    :cond_6a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6d} :catch_6e

    goto :goto_a2

    :catch_6e
    move-exception v1

    .line 44
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a2

    .line 45
    :cond_73
    :try_start_73
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_79
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    goto :goto_42

    :catchall_77
    move-exception v0

    goto :goto_a7

    :catch_79
    move-exception v2

    move-object v9, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_8d

    :catchall_80
    move-exception v2

    goto :goto_a9

    :catch_82
    move-exception v2

    goto :goto_8a

    :catchall_84
    move-exception v2

    move-object v1, v0

    goto :goto_a9

    :catch_87
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_8a
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 53
    :goto_8d
    :try_start_8d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_a3

    if-eqz v2, :cond_98

    .line 57
    :try_start_92
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_98

    :catch_96
    move-exception v0

    goto :goto_9e

    :cond_98
    :goto_98
    if-eqz v0, :cond_a1

    .line 60
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9d} :catch_96

    goto :goto_a1

    .line 63
    :goto_9e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a1
    :goto_a1
    move-object v0, v1

    :goto_a2
    return-object v0

    :catchall_a3
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    :goto_a7
    move-object v2, v0

    move-object v0, v3

    :goto_a9
    if-eqz v1, :cond_b1

    .line 64
    :try_start_ab
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_b1

    :catch_af
    move-exception v0

    goto :goto_b7

    :cond_b1
    :goto_b1
    if-eqz v0, :cond_ba

    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b6} :catch_af

    goto :goto_ba

    .line 70
    :goto_b7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    :cond_ba
    :goto_ba
    throw v2
.end method

###### Class io.dcloud.js.file.FileFeatureImpl.b (io.dcloud.js.file.FileFeatureImpl$b)
.class Lio/dcloud/js/file/FileFeatureImpl$b;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/file/FileFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/js/file/FileFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->d:Lio/dcloud/js/file/FileFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->a:Ljava/lang/String;

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 2
    iget-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->d:Lio/dcloud/js/file/FileFeatureImpl;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->c:Ljava/lang/String;

    invoke-static {p2, p1, v0, v1}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto :goto_42

    .line 4
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_37

    .line 5
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->c:Ljava/lang/String;

    const/16 p1, 0xd

    const-string p2, "Failed to load resource"

    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_42

    .line 7
    :cond_37
    iget-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->d:Lio/dcloud/js/file/FileFeatureImpl;

    iget-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->a:Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :goto_42
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->c:Ljava/lang/String;

    const/16 p1, 0xd

    const-string v2, "Failed to load resource"

    invoke-static {p1, v2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/js/file/FileFeatureImpl$b;->a(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method

###### Class io.dcloud.js.file.FileFeatureImpl.c (io.dcloud.js.file.FileFeatureImpl$c)
.class Lio/dcloud/js/file/FileFeatureImpl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/file/FileFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/io/File;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->a:Ljava/io/File;

    iput-object p3, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->a:Ljava/io/File;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/common/util/Md5Utils;->md5(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "size"

    .line 4
    :try_start_f
    iget-object v3, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_18} :catch_25

    if-eqz v0, :cond_25

    const-string v2, "digest"

    .line 6
    :try_start_1c
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_25} :catch_25

    .line 9
    :catch_25
    :cond_25
    iget-object v3, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.js.file.FileFeatureImpl.d (io.dcloud.js.file.FileFeatureImpl$d)
.class Lio/dcloud/js/file/FileFeatureImpl$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/file/FileFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/js/file/FileFeatureImpl;ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput p2, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->a:I

    iput-object p3, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->b:Lio/dcloud/common/DHInterface/IApp;

    iput-object p4, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 10

    .line 1
    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    .line 4
    aget-object p2, p2, v2

    check-cast p2, Landroid/content/Intent;

    .line 5
    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v3, :cond_ae

    .line 6
    iget p1, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->a:I

    if-ne v1, p1, :cond_ae

    .line 7
    iget-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1, p0, v3}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    if-eqz p2, :cond_8f

    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2b

    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 10
    :cond_2b
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 13
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    const/4 v2, 0x0

    :goto_3b
    if-ge v2, p2, :cond_70

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 17
    iget-object v4, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lio/dcloud/common/util/FileUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 21
    :cond_55
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 22
    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2}, Lio/dcloud/common/util/FileUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 24
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    :cond_6d
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 28
    :cond_70
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_75
    const-string v1, "files"

    .line 30
    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_75 .. :try_end_7a} :catch_7b

    goto :goto_7f

    :catch_7b
    move-exception p1

    .line 32
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 34
    :goto_7f
    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_ae

    :cond_8f
    new-array p1, v2, [Ljava/lang/Object;

    const/4 p2, -0x2

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    sget-object p2, Lio/dcloud/common/constant/DOMException;->MSG_USER_CANCEL:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, p1, v1

    const-string p2, "{code:%d,message:\'%s\'}"

    invoke-static {p2, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 37
    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_ae
    :goto_ae
    return v0
.end method

###### Class io.dcloud.js.file.FileFeatureImpl.e (io.dcloud.js.file.FileFeatureImpl$e)
.class Lio/dcloud/js/file/FileFeatureImpl$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/file/FileFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/js/file/FileFeatureImpl;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 1
    iput-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->a:[Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->c:Ljava/lang/String;

    iput p5, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->d:I

    iput-object p6, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onExecuteBegin()V
    .registers 1

    return-void
.end method

.method public onExecuteEnd(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public onExecuting()Ljava/lang/Object;
    .registers 11

    .line 1
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 2
    invoke-static {v0}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_3c

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v3, 0x10

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    iget-object v3, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lio/dcloud/base/R$string;->dcloud_io_write_non_base64:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "{code:%d,message:\'%s\'}"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object v2

    .line 9
    :cond_3c
    iget v1, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->d:I

    iget-object v3, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->e:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V

    .line 10
    iget-object v4, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v5, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->c:Ljava/lang/String;

    array-length v0, v0

    int-to-double v6, v0

    sget v8, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;DIZ)V

    return-object v2
.end method

###### Class io.dcloud.js.file.FileFeatureImpl.f (io.dcloud.js.file.FileFeatureImpl$f)
.class Lio/dcloud/js/file/FileFeatureImpl$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lio/dcloud/js/file/FileFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;IILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->f:Lio/dcloud/js/file/FileFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->a:Ljava/lang/String;

    iput p3, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->b:I

    iput p4, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->c:I

    iput-object p5, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->d:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p6, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onExecuteBegin()V
    .registers 1

    return-void
.end method

.method public onExecuteEnd(Ljava/lang/Object;)V
    .registers 8

    if-eqz p1, :cond_12

    .line 1
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->d:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_1d

    .line 3
    :cond_12
    iget-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->f:Lio/dcloud/js/file/FileFeatureImpl;

    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->d:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->e:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {p1, v2, v0, v1}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/js/file/FileFeatureImpl;ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method public onExecuting()Ljava/lang/Object;
    .registers 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_3
    iget-object v3, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->a:Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_75
    .catchall {:try_start_3 .. :try_end_d} :catchall_72

    .line 2
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 4
    iget v5, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->b:I

    if-lez v5, :cond_2c

    if-lt v5, v4, :cond_19

    add-int/lit8 v5, v4, -0x1

    .line 9
    :cond_19
    iget v4, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->c:I

    sub-int/2addr v5, v4

    add-int/2addr v5, v0

    .line 10
    new-array v6, v5, [B

    int-to-long v7, v4

    .line 11
    invoke-virtual {v3, v7, v8}, Ljava/io/InputStream;->skip(J)J

    .line 12
    invoke-virtual {v3, v6, v1, v5}, Ljava/io/InputStream;->read([BII)I

    .line 13
    invoke-static {v6}, Lio/dcloud/common/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    goto :goto_48

    .line 15
    :cond_2c
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_31} :catch_70
    .catchall {:try_start_d .. :try_end_31} :catchall_6d

    :goto_31
    const v5, 0x32000

    :try_start_34
    new-array v5, v5, [B

    .line 18
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_62

    .line 26
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v5
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_45} :catch_68
    .catchall {:try_start_34 .. :try_end_45} :catchall_66

    move-object v14, v5

    move-object v5, v4

    move-object v4, v14

    .line 29
    :goto_48
    :try_start_48
    invoke-static {v4}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4c} :catch_60
    .catchall {:try_start_48 .. :try_end_4c} :catchall_5e

    if-eqz v3, :cond_54

    .line 37
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_54

    :catch_52
    move-exception v0

    goto :goto_5a

    :cond_54
    :goto_54
    if-eqz v5, :cond_ab

    .line 40
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_59} :catch_52

    goto :goto_ab

    .line 43
    :goto_5a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ab

    :catchall_5e
    move-exception v0

    goto :goto_af

    :catch_60
    move-exception v4

    goto :goto_78

    .line 44
    :cond_62
    :try_start_62
    invoke-virtual {v4, v5, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_68
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_31

    :catchall_66
    move-exception v0

    goto :goto_b0

    :catch_68
    move-exception v5

    move-object v14, v5

    move-object v5, v4

    move-object v4, v14

    goto :goto_78

    :catchall_6d
    move-exception v0

    move-object v5, v2

    goto :goto_ad

    :catch_70
    move-exception v4

    goto :goto_77

    :catchall_72
    move-exception v0

    move-object v5, v2

    goto :goto_ae

    :catch_75
    move-exception v4

    move-object v3, v2

    :goto_77
    move-object v5, v2

    :goto_78
    const-string v6, "{code:%d,message:\'%s\'}"

    const/4 v7, 0x2

    :try_start_7b
    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0xd

    .line 54
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v6, v7}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 55
    iget-object v8, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->d:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v9, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->e:Ljava/lang/String;

    sget v11, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_9a
    .catchall {:try_start_7b .. :try_end_9a} :catchall_ac

    if-eqz v3, :cond_a2

    .line 59
    :try_start_9c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_a2

    :catch_a0
    move-exception v0

    goto :goto_a8

    :cond_a2
    :goto_a2
    if-eqz v5, :cond_ab

    .line 62
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a7} :catch_a0

    goto :goto_ab

    .line 65
    :goto_a8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_ab
    :goto_ab
    return-object v2

    :catchall_ac
    move-exception v0

    :goto_ad
    move-object v2, v3

    :goto_ae
    move-object v3, v2

    :goto_af
    move-object v4, v5

    :goto_b0
    if-eqz v3, :cond_b8

    .line 66
    :try_start_b2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_b8

    :catch_b6
    move-exception v1

    goto :goto_be

    :cond_b8
    :goto_b8
    if-eqz v4, :cond_c1

    .line 69
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_bd} :catch_b6

    goto :goto_c1

    .line 72
    :goto_be
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    :cond_c1
    :goto_c1
    throw v0
.end method
