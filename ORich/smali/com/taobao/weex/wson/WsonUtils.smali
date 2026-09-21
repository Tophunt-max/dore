###### Class com.taobao.weex.wson.WsonUtils (com.taobao.weex.wson.WsonUtils)
.class public Lcom/taobao/weex/wson/WsonUtils;
.super Ljava/lang/Object;
.source "WsonUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parseWson([B)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 36
    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/taobao/weex/wson/Wson;->parse([B)Ljava/lang/Object;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    const-string v1, "weex wson parse error "

    .line 38
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final toWson(Ljava/lang/Object;)[B
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 48
    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/taobao/weex/wson/Wson;->toWson(Ljava/lang/Object;)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    const-string v1, "weex wson to wson error "

    .line 50
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
