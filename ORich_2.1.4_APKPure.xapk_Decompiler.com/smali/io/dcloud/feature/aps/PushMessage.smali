###### Class io.dcloud.feature.aps.PushMessage (io.dcloud.feature.aps.PushMessage)
.class public Lio/dcloud/feature/aps/PushMessage;
.super Ljava/lang/Object;
.source "PushMessage.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# static fields
.field protected static mNotificationId:I = 0x1


# instance fields
.field protected isCover:Z

.field public mContent:Ljava/lang/String;

.field protected mDelay:J

.field public mIconPath:Ljava/lang/String;

.field public mIsStreamApp:Z

.field public mMessageAppid:Ljava/lang/String;

.field public mPayload:Ljava/lang/String;

.field public mPayloadJSON:Lorg/json/JSONObject;

.field public mTitle:Ljava/lang/String;

.field public mUUID:Ljava/lang/String;

.field public mWhen:J

.field public nID:I

.field private needCreateNotifcation:Z

.field public sound:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 6

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lio/dcloud/feature/aps/PushMessage;->needCreateNotifcation:Z

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mMessageAppid:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mUUID:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mContent:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mPayload:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mPayloadJSON:Lorg/json/JSONObject;

    const-string v1, "system"

    .line 60
    iput-object v1, p0, Lio/dcloud/feature/aps/PushMessage;->sound:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 64
    iput-wide v1, p0, Lio/dcloud/feature/aps/PushMessage;->mWhen:J

    .line 68
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mTitle:Ljava/lang/String;

    .line 72
    sget-boolean v3, Lio/dcloud/common/adapter/util/PlatformUtil;->APS_COVER:Z

    iput-boolean v3, p0, Lio/dcloud/feature/aps/PushMessage;->isCover:Z

    .line 76
    iput-wide v1, p0, Lio/dcloud/feature/aps/PushMessage;->mDelay:J

    .line 82
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mIconPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lio/dcloud/feature/aps/PushMessage;->mIsStreamApp:Z

    .line 116
    invoke-virtual {p0, p1}, Lio/dcloud/feature/aps/PushMessage;->parse(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 7

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lio/dcloud/feature/aps/PushMessage;->needCreateNotifcation:Z

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mMessageAppid:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mUUID:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mContent:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mPayload:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mPayloadJSON:Lorg/json/JSONObject;

    const-string v1, "system"

    .line 60
    iput-object v1, p0, Lio/dcloud/feature/aps/PushMessage;->sound:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 64
    iput-wide v1, p0, Lio/dcloud/feature/aps/PushMessage;->mWhen:J

    .line 68
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mTitle:Ljava/lang/String;

    .line 72
    sget-boolean v3, Lio/dcloud/common/adapter/util/PlatformUtil;->APS_COVER:Z

    iput-boolean v3, p0, Lio/dcloud/feature/aps/PushMessage;->isCover:Z

    .line 76
    iput-wide v1, p0, Lio/dcloud/feature/aps/PushMessage;->mDelay:J

    .line 82
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mIconPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lio/dcloud/feature/aps/PushMessage;->mIsStreamApp:Z

    if-eqz p2, :cond_2d

    .line 101
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    move-object v1, v0

    :goto_2e
    if-eqz p2, :cond_34

    .line 102
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_34
    invoke-direct {p0, p1, p2, v1, v0}, Lio/dcloud/feature/aps/PushMessage;->init(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lio/dcloud/feature/aps/PushMessage;->needCreateNotifcation:Z

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mMessageAppid:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mUUID:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mContent:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mPayload:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mPayloadJSON:Lorg/json/JSONObject;

    const-string v1, "system"

    .line 60
    iput-object v1, p0, Lio/dcloud/feature/aps/PushMessage;->sound:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 64
    iput-wide v1, p0, Lio/dcloud/feature/aps/PushMessage;->mWhen:J

    .line 68
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mTitle:Ljava/lang/String;

    .line 72
    sget-boolean v3, Lio/dcloud/common/adapter/util/PlatformUtil;->APS_COVER:Z

    iput-boolean v3, p0, Lio/dcloud/feature/aps/PushMessage;->isCover:Z

    .line 76
    iput-wide v1, p0, Lio/dcloud/feature/aps/PushMessage;->mDelay:J

    .line 82
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mIconPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lio/dcloud/feature/aps/PushMessage;->mIsStreamApp:Z

    .line 97
    invoke-direct {p0, p1, v0, p2, p3}, Lio/dcloud/feature/aps/PushMessage;->init(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private init(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lio/dcloud/feature/aps/PushMessage;->mIsStreamApp:Z

    .line 108
    invoke-virtual {p0}, Lio/dcloud/feature/aps/PushMessage;->getMessageUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mUUID:Ljava/lang/String;

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/feature/aps/PushMessage;->parseJson(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lio/dcloud/feature/aps/PushMessage;->setNotificationID()V

    return-void
.end method

.method private parseJson(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 175
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_b

    :catch_6
    move-exception v0

    .line 177
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x0

    if-eqz v0, :cond_f8

    const-string v2, "appid"

    .line 180
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    .line 182
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 183
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lio/dcloud/feature/aps/PushMessage;->mContent:Ljava/lang/String;

    goto :goto_36

    :cond_23
    const-string v4, "message"

    .line 185
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 186
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lio/dcloud/feature/aps/PushMessage;->mContent:Ljava/lang/String;

    goto :goto_36

    .line 188
    :cond_32
    iput-boolean v1, p0, Lio/dcloud/feature/aps/PushMessage;->needCreateNotifcation:Z

    .line 189
    iput-object p1, p0, Lio/dcloud/feature/aps/PushMessage;->mContent:Ljava/lang/String;

    :goto_36
    const-string v4, "payload"

    .line 192
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 193
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    .line 194
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/aps/PushMessage;->mPayloadJSON:Lorg/json/JSONObject;

    goto :goto_7a

    .line 196
    :cond_4f
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/aps/PushMessage;->mPayload:Ljava/lang/String;

    goto :goto_7a

    :cond_56
    const-string v4, "Payload"

    .line 200
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 201
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    .line 202
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/aps/PushMessage;->mPayloadJSON:Lorg/json/JSONObject;

    goto :goto_7a

    .line 204
    :cond_6f
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/aps/PushMessage;->mPayload:Ljava/lang/String;

    goto :goto_7a

    .line 207
    :cond_76
    iput-boolean v1, p0, Lio/dcloud/feature/aps/PushMessage;->needCreateNotifcation:Z

    .line 208
    iput-object p1, p0, Lio/dcloud/feature/aps/PushMessage;->mPayload:Ljava/lang/String;

    :goto_7a
    const-string p1, "options"

    .line 211
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "title"

    .line 212
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 213
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lio/dcloud/feature/aps/PushMessage;->mTitle:Ljava/lang/String;

    goto :goto_a2

    :cond_8f
    if-eqz p1, :cond_9e

    .line 215
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 216
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lio/dcloud/feature/aps/PushMessage;->mTitle:Ljava/lang/String;

    goto :goto_a2

    .line 218
    :cond_9e
    iput-boolean v1, p0, Lio/dcloud/feature/aps/PushMessage;->needCreateNotifcation:Z

    .line 219
    iput-object p4, p0, Lio/dcloud/feature/aps/PushMessage;->mTitle:Ljava/lang/String;

    :goto_a2
    if-eqz p1, :cond_d6

    const-string p4, "cover"

    .line 223
    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lio/dcloud/feature/aps/PushMessage;->isCover:Z

    const-string p4, "sound"

    .line 224
    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "none"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_bc

    .line 225
    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->sound:Ljava/lang/String;

    :cond_bc
    const-string p4, "when"

    .line 227
    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/feature/aps/PushMessage;->mWhen:J

    const-string p4, "delay"

    .line 228
    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/feature/aps/PushMessage;->mDelay:J

    .line 229
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_d6

    .line 232
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    :cond_d6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_dd

    goto :goto_de

    :cond_dd
    move-object p3, v3

    .line 239
    :goto_de
    iput-object p3, p0, Lio/dcloud/feature/aps/PushMessage;->mMessageAppid:Ljava/lang/String;

    if-eqz p1, :cond_100

    const-string p3, "icon"

    .line 241
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_ef

    invoke-interface {p2, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_f5

    :cond_ef
    iget-object p2, p0, Lio/dcloud/feature/aps/PushMessage;->mMessageAppid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/aps/PushMessage;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_f5
    iput-object p1, p0, Lio/dcloud/feature/aps/PushMessage;->mIconPath:Ljava/lang/String;

    goto :goto_100

    .line 244
    :cond_f8
    iput-boolean v1, p0, Lio/dcloud/feature/aps/PushMessage;->needCreateNotifcation:Z

    .line 245
    iput-object p1, p0, Lio/dcloud/feature/aps/PushMessage;->mContent:Ljava/lang/String;

    .line 246
    iput-object p1, p0, Lio/dcloud/feature/aps/PushMessage;->mPayload:Ljava/lang/String;

    .line 247
    iput-object p4, p0, Lio/dcloud/feature/aps/PushMessage;->mTitle:Ljava/lang/String;

    :cond_100
    :goto_100
    return-void
.end method

.method private setNotificationID()V
    .registers 2

    .line 152
    iget-boolean v0, p0, Lio/dcloud/feature/aps/PushMessage;->isCover:Z

    if-nez v0, :cond_a

    .line 153
    sget v0, Lio/dcloud/feature/aps/PushMessage;->mNotificationId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/dcloud/feature/aps/PushMessage;->mNotificationId:I

    .line 155
    :cond_a
    sget v0, Lio/dcloud/feature/aps/PushMessage;->mNotificationId:I

    iput v0, p0, Lio/dcloud/feature/aps/PushMessage;->nID:I

    return-void
.end method


# virtual methods
.method public convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 252
    :try_start_0
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_d

    if-eqz v0, :cond_11

    return-object p1

    :catch_d
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 257
    :cond_11
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object p1

    :cond_18
    const-string v0, "?"

    .line 260
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_25

    const/4 v1, 0x0

    .line 261
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_25
    const-string v0, "_documents/"

    .line 263
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xb

    if-eqz v0, :cond_46

    .line 264
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1b3

    :cond_46
    const-string v0, "_documents"

    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xa

    if-eqz v0, :cond_67

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1b3

    :cond_67
    const-string v0, "_doc/"

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x5

    const-string v4, "/"

    if-eqz v0, :cond_94

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_DOC_DIR:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1b3

    :cond_94
    const-string v0, "_doc"

    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x4

    if-eqz v0, :cond_bf

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_DOC_DIR:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1b3

    :cond_bf
    const-string v0, "_downloads/"

    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 272
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1b3

    :cond_de
    const-string v0, "_downloads"

    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 274
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1b3

    :cond_fd
    const-string v0, "_www/"

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "/www/"

    if-eqz v0, :cond_14e

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 278
    :try_start_122
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b3

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_148} :catch_149

    goto :goto_1b3

    :catch_149
    move-exception p2

    .line 282
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b3

    :cond_14e
    const-string v0, "_www"

    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 287
    :try_start_171
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b3

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_197
    .catch Ljava/io/IOException; {:try_start_171 .. :try_end_197} :catch_198

    goto :goto_1b3

    :catch_198
    move-exception p2

    .line 291
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b3

    :cond_19d
    const-string p2, "file://"

    .line 293
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1ab

    const/4 p2, 0x7

    .line 294
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1b3

    .line 295
    :cond_1ab
    sget-object p2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1b3

    :cond_1b3
    :goto_1b3
    return-object p1
.end method

.method public getMessageUUID()Ljava/lang/String;
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "androidPushMsg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needCreateNotifcation()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Lio/dcloud/feature/aps/PushMessage;->needCreateNotifcation:Z

    return v0
.end method

.method public parse(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "title"

    .line 302
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mTitle:Ljava/lang/String;

    const-string v0, "content"

    .line 303
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mContent:Ljava/lang/String;

    const-string v0, "nId"

    .line 304
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/aps/PushMessage;->nID:I

    const-string v0, "when"

    .line 305
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/feature/aps/PushMessage;->mWhen:J

    const-string v0, "sound"

    .line 306
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->sound:Ljava/lang/String;

    const-string v0, "appid"

    .line 307
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mMessageAppid:Ljava/lang/String;

    const-string v0, "uuid"

    .line 308
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mUUID:Ljava/lang/String;

    const-string v0, "payload"

    .line 309
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mPayload:Ljava/lang/String;

    const-string v0, "icon"

    .line 310
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/aps/PushMessage;->mIconPath:Ljava/lang/String;

    const-string v0, "isstreamapp"

    .line 311
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/feature/aps/PushMessage;->mIsStreamApp:Z

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 5

    .line 315
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 316
    iget-object v1, p0, Lio/dcloud/feature/aps/PushMessage;->mTitle:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lio/dcloud/feature/aps/PushMessage;->mContent:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget v1, p0, Lio/dcloud/feature/aps/PushMessage;->nID:I

    const-string v2, "nId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    iget-wide v1, p0, Lio/dcloud/feature/aps/PushMessage;->mWhen:J

    const-string v3, "when"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 320
    iget-object v1, p0, Lio/dcloud/feature/aps/PushMessage;->sound:Ljava/lang/String;

    const-string v2, "sound"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lio/dcloud/feature/aps/PushMessage;->mMessageAppid:Ljava/lang/String;

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lio/dcloud/feature/aps/PushMessage;->mUUID:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lio/dcloud/feature/aps/PushMessage;->mPayloadJSON:Lorg/json/JSONObject;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "payload"

    if-nez v1, :cond_4a

    .line 324
    iget-object v1, p0, Lio/dcloud/feature/aps/PushMessage;->mPayloadJSON:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 326
    :cond_4a
    iget-object v1, p0, Lio/dcloud/feature/aps/PushMessage;->mPayload:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :goto_4f
    iget-object v1, p0, Lio/dcloud/feature/aps/PushMessage;->mIconPath:Ljava/lang/String;

    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-boolean v1, p0, Lio/dcloud/feature/aps/PushMessage;->mIsStreamApp:Z

    const-string v2, "isstreamapp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public toJSON()Ljava/lang/String;
    .registers 5

    .line 346
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "__UUID__"

    .line 348
    iget-object v2, p0, Lio/dcloud/feature/aps/PushMessage;->mUUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 349
    iget-object v2, p0, Lio/dcloud/feature/aps/PushMessage;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appid"

    .line 350
    iget-object v2, p0, Lio/dcloud/feature/aps/PushMessage;->mMessageAppid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "content"

    .line 351
    iget-object v2, p0, Lio/dcloud/feature/aps/PushMessage;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    iget-object v1, p0, Lio/dcloud/feature/aps/PushMessage;->mPayloadJSON:Lorg/json/JSONObject;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_27} :catch_46

    const-string v2, "payload"

    if-nez v1, :cond_31

    .line 353
    :try_start_2b
    iget-object v1, p0, Lio/dcloud/feature/aps/PushMessage;->mPayloadJSON:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_30} :catch_46

    goto :goto_4a

    .line 358
    :cond_31
    :try_start_31
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lio/dcloud/feature/aps/PushMessage;->mPayload:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_38} :catch_39
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_38} :catch_46

    goto :goto_3a

    :catch_39
    const/4 v1, 0x0

    :goto_3a
    if-eqz v1, :cond_40

    .line 363
    :try_start_3c
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4a

    .line 365
    :cond_40
    iget-object v1, p0, Lio/dcloud/feature/aps/PushMessage;->mPayload:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception v1

    .line 370
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 372
    :goto_4a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
