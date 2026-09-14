###### Class com.taobao.weex.http.WXHttpUtil (com.taobao.weex.http.WXHttpUtil)
.class public Lcom/taobao/weex/http/WXHttpUtil;
.super Ljava/lang/Object;
.source "WXHttpUtil.java"


# static fields
.field public static final KEY_USER_AGENT:Ljava/lang/String; = "user-agent"

.field private static sDefaultUA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 38
    sget-object p0, Lcom/taobao/weex/http/WXHttpUtil;->sDefaultUA:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 39
    invoke-static {}, Ldc/squareup/HttpConstants;->getDefaultUA()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taobao/weex/http/WXHttpUtil;->sDefaultUA:Ljava/lang/String;

    .line 41
    :cond_e
    sget-object p0, Lcom/taobao/weex/http/WXHttpUtil;->sDefaultUA:Ljava/lang/String;

    return-object p0
.end method
