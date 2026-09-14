###### Class io.dcloud.common.constant.StringConst (io.dcloud.common.constant.StringConst)
.class public final Lio/dcloud/common/constant/StringConst;
.super Lio/dcloud/common/adapter/util/AndroidResources;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/constant/AbsoluteConst;


# static fields
.field static T_URL_BASE_DATA:Ljava/lang/String; = "appid=%s&imei=%s&net=%d&md=%s&os=%d&vb=%s&sf=%d&p=a&d1=%d&sfd=%s&vd=%s&pn=%s"

.field private static sChangeTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/AndroidResources;-><init>()V

    return-void
.end method

.method public static STREAMAPP_KEY_BASESERVICEURL()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lio/dcloud/common/constant/StringConst;->mainHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static backupHost()Ljava/lang/String;
    .registers 1

    const-string v0, "https://stream.mobihtml5.com/"

    return-object v0
.end method

.method public static canChangeHost(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {}, Lio/dcloud/common/constant/StringConst;->backupHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    goto :goto_14

    :cond_c
    invoke-static {}, Lio/dcloud/common/constant/StringConst;->mainHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    :goto_14
    return p0
.end method

.method public static changeHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/constant/StringConst;->mainHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/dcloud/common/constant/StringConst;->backupHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntSF(Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "barcode"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x2

    return p0

    :cond_10
    const-string v0, "scheme"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p0, 0x3

    return p0

    :cond_1a
    const-string v0, "stream"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 p0, 0x6

    return p0

    :cond_24
    const-string v0, "shortcut"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 p0, 0x5

    return p0

    :cond_2e
    const-string v0, "push"

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 p0, 0x4

    return p0

    :cond_38
    const-string v0, "myapp"

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 p0, 0x7

    return p0

    :cond_42
    const-string v0, "browser"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/16 p0, 0x8

    return p0

    :cond_4d
    const-string v0, "third:"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_58

    const/16 p0, 0x9

    return p0

    :cond_58
    const-string v0, "favorite"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    const/16 p0, 0xa

    return p0

    :cond_63
    const-string v0, "engines"

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const/16 p0, 0xb

    return p0

    :cond_6e
    const-string v0, "apush"

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    const/16 p0, 0x28

    return p0

    :cond_79
    const-string v0, "speech"

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_84

    const/16 p0, 0x1e

    return p0

    :cond_84
    const/4 p0, 0x1

    return p0
.end method

.method private static mainHost()Ljava/lang/String;
    .registers 1

    const-string v0, "https://stream.dcloud.net.cn/"

    return-object v0
.end method
