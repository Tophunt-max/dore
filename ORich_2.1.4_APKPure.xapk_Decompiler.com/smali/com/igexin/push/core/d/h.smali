###### Class com.igexin.push.core.d.h (com.igexin.push.core.d.h)
.class public Lcom/igexin/push/core/d/h;
.super Lcom/igexin/push/g/a/b;


# static fields
.field public static final a:Ljava/lang/String; = "com.igexin.push.core.d.h"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/igexin/push/core/bean/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/igexin/push/core/bean/j;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getBiUploadServiceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/igexin/push/g/a/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/push/core/d/h;->a([BLjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a([BLjava/lang/String;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/igexin/push/core/bean/j;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/igexin/push/core/d/h;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/igexin/push/core/d/h;->h:Ljava/util/ArrayList;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    const-string v0, "action"

    const-string v1, "upload_BI"

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "BIType"

    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "cid"

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {p3, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "BIData"

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/igexin/b/a/b/f;->f([BI)[B

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/igexin/push/core/d/h;->b([B)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_38} :catch_38

    :catch_38
    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ok"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-static {}, Lcom/igexin/push/core/c/aj;->a()Lcom/igexin/push/core/c/aj;

    move-result-object p1

    iget-object v0, p0, Lcom/igexin/push/core/d/h;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/igexin/push/core/d/h;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lcom/igexin/push/core/c/aj;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_29
    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
