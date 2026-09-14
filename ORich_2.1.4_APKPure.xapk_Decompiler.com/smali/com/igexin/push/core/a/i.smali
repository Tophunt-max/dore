###### Class com.igexin.push.core.a.i (com.igexin.push.core.a.i)
.class public Lcom/igexin/push/core/a/i;
.super Lcom/igexin/push/core/a/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/igexin/push/core/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/igexin/push/config/j;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/a/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/igexin/push/core/a/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/a/i;->b:Ljava/util/Map;

    new-instance v1, Lcom/igexin/push/core/a/s;

    invoke-direct {v1}, Lcom/igexin/push/core/a/s;-><init>()V

    const-string v2, "redirect_server"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/i;->b:Ljava/util/Map;

    new-instance v1, Lcom/igexin/push/core/a/u;

    invoke-direct {v1}, Lcom/igexin/push/core/a/u;-><init>()V

    const-string v2, "response_deviceid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/i;->b:Ljava/util/Map;

    new-instance v1, Lcom/igexin/push/core/a/q;

    invoke-direct {v1}, Lcom/igexin/push/core/a/q;-><init>()V

    const-string v2, "pushmessage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/i;->b:Ljava/util/Map;

    new-instance v1, Lcom/igexin/push/core/a/r;

    invoke-direct {v1}, Lcom/igexin/push/core/a/r;-><init>()V

    const-string v2, "received"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/i;->b:Ljava/util/Map;

    new-instance v1, Lcom/igexin/push/core/a/v;

    invoke-direct {v1}, Lcom/igexin/push/core/a/v;-><init>()V

    const-string v2, "sendmessage_feedback"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/i;->b:Ljava/util/Map;

    new-instance v1, Lcom/igexin/push/core/a/d;

    invoke-direct {v1}, Lcom/igexin/push/core/a/d;-><init>()V

    const-string v2, "block_client"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/i;->b:Ljava/util/Map;

    new-instance v1, Lcom/igexin/push/core/a/w;

    invoke-direct {v1}, Lcom/igexin/push/core/a/w;-><init>()V

    const-string v2, "settag_result"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/i;->b:Ljava/util/Map;

    new-instance v1, Lcom/igexin/push/core/a/c;

    invoke-direct {v1}, Lcom/igexin/push/core/a/c;-><init>()V

    const-string v2, "response_bind"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/i;->b:Ljava/util/Map;

    new-instance v1, Lcom/igexin/push/core/a/x;

    invoke-direct {v1}, Lcom/igexin/push/core/a/x;-><init>()V

    const-string v2, "response_unbind"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/d/e;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 7

    const-string v0, "id"

    const-string v1, "action"

    instance-of v2, p1, Lcom/igexin/push/e/c/o;

    if-eqz v2, :cond_66

    move-object v2, p1

    check-cast v2, Lcom/igexin/push/e/c/o;

    invoke-virtual {v2}, Lcom/igexin/push/e/c/o;->a()Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, v2, Lcom/igexin/push/e/c/o;->e:Ljava/lang/Object;

    if-eqz v3, :cond_66

    :try_start_15
    new-instance v3, Lorg/json/JSONObject;

    iget-object v2, v2, Lcom/igexin/push/e/c/o;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "received"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "redirect_server"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;)V

    :cond_4d
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/a/i;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/a/b;

    if-eqz v0, :cond_66

    invoke-virtual {v0, p1, v3}, Lcom/igexin/push/core/a/b;->a(Ljava/lang/Object;Lorg/json/JSONObject;)Z

    move-result p1
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_65} :catch_66

    return p1

    :catch_66
    :cond_66
    const/4 p1, 0x0

    return p1
.end method
