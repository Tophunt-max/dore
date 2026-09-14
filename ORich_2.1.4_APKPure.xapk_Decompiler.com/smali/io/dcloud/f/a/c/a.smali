###### Class io.dcloud.f.a.c.a (io.dcloud.f.a.c.a)
.class public Lio/dcloud/f/a/c/a;
.super Lio/dcloud/f/a/b/a;
.source "SourceFile"


# instance fields
.field e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lorg/json/JSONObject;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/dcloud/f/a/b/a$c;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/f/a/b/a;-><init>(Lio/dcloud/f/a/b/a$c;Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/f/a/c/a;->e:Ljava/util/concurrent/ExecutorService;

    const-string p1, ""

    .line 21
    iput-object p1, p0, Lio/dcloud/f/a/c/a;->f:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lio/dcloud/f/a/c/a;->g:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lio/dcloud/f/a/c/a;->i:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/dcloud/f/a/c/a;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/dcloud/f/a/b/a$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lio/dcloud/f/a/c/a;-><init>(Lio/dcloud/f/a/b/a$c;Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iput-object p5, p0, Lio/dcloud/f/a/c/a;->i:Ljava/lang/String;

    .line 3
    iput-object p6, p0, Lio/dcloud/f/a/c/a;->j:Ljava/lang/String;

    .line 5
    :try_start_7
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "did"

    .line 6
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/f/a/c/a;->m:Ljava/lang/String;

    const-string p2, "adid"

    .line 7
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/f/a/c/a;->n:Ljava/lang/String;

    const-string p2, "url"

    .line 8
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/f/a/c/a;->g:Ljava/lang/String;

    const-string p2, "app"

    .line 9
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/f/a/c/a;->k:Lorg/json/JSONObject;

    const-string p3, "app_id"

    .line 10
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/f/a/c/a;->f:Ljava/lang/String;

    const-string p2, "tid"

    .line 11
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/f/a/c/a;->h:Ljava/lang/String;

    const-string p2, "header"

    .line 12
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_6b

    .line 14
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lio/dcloud/f/a/c/a;->l:Ljava/util/HashMap;

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 16
    :goto_55
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6b

    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 18
    iget-object p4, p0, Lio/dcloud/f/a/c/a;->l:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_6a} :catch_6b

    goto :goto_55

    :catch_6b
    :cond_6b
    return-void
.end method

.method static synthetic a(Lio/dcloud/f/a/c/a;Lio/dcloud/ads/base/entry/AdData;)Lio/dcloud/ads/base/entry/AdData;
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/f/a/b/a;->d:Lio/dcloud/ads/base/entry/AdData;

    return-object p1
.end method

.method static synthetic a(Lio/dcloud/f/a/c/a;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/f/a/c/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lio/dcloud/f/a/c/a;ILjava/lang/String;)V
    .registers 3

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/dcloud/f/a/b/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lio/dcloud/f/a/c/a;Lio/dcloud/ads/base/entry/AdData;)Lio/dcloud/ads/base/entry/AdData;
    .registers 2

    .line 3
    iput-object p1, p0, Lio/dcloud/f/a/b/a;->d:Lio/dcloud/ads/base/entry/AdData;

    return-object p1
.end method

.method static synthetic b(Lio/dcloud/f/a/c/a;)Ljava/util/HashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/f/a/c/a;->l:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic b(Lio/dcloud/f/a/c/a;ILjava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/dcloud/f/a/b/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lio/dcloud/f/a/c/a;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/f/a/b/a;->a()V

    return-void
.end method

.method static synthetic c(Lio/dcloud/f/a/c/a;ILjava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/dcloud/f/a/b/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lio/dcloud/f/a/c/a;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/f/a/c/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lio/dcloud/f/a/c/a;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/f/a/b/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lio/dcloud/f/a/c/a;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/f/a/c/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lio/dcloud/f/a/c/a;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/f/a/c/a;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lio/dcloud/f/a/c/a;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/f/a/c/a;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lio/dcloud/f/a/c/a;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/f/a/b/a;->a()V

    return-void
.end method

.method static synthetic j(Lio/dcloud/f/a/c/a;)Lio/dcloud/ads/base/entry/AdData;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/f/a/b/a;->d:Lio/dcloud/ads/base/entry/AdData;

    return-object p0
.end method


# virtual methods
.method public c()V
    .registers 5

    .line 3
    iget-object v0, p0, Lio/dcloud/f/a/c/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0xea61

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u5730\u5740\u51fa\u9519"

    .line 4
    invoke-virtual {p0, v0, v1}, Lio/dcloud/f/a/b/a;->a(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_11
    iget-object v0, p0, Lio/dcloud/f/a/c/a;->k:Lorg/json/JSONObject;

    if-eqz v0, :cond_b1

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1d

    goto/16 :goto_b1

    .line 11
    :cond_1d
    iget-object v0, p0, Lio/dcloud/f/a/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 13
    :try_start_25
    iget-object v0, p0, Lio/dcloud/f/a/c/a;->k:Lorg/json/JSONObject;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_27} :catch_2e

    const-string v1, "adp_id"

    :try_start_29
    iget-object v2, p0, Lio/dcloud/f/a/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_2e} :catch_2e

    .line 16
    :catch_2e
    :cond_2e
    invoke-virtual {p0}, Lio/dcloud/f/a/b/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/f/a/c/b/g;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "app"

    .line 18
    :try_start_38
    iget-object v2, p0, Lio/dcloud/f/a/c/a;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_3d} :catch_3e

    goto :goto_3f

    :catch_3e
    nop

    .line 21
    :goto_3f
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lio/dcloud/f/a/c/a;->i:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 24
    :try_start_4d
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lio/dcloud/f/a/c/a;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "method"

    .line 25
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "key"

    .line 26
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "iv"

    .line 27
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v0}, Lio/dcloud/f/a/c/b/h;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 29
    invoke-static {v3, v2, v1}, Lio/dcloud/f/a/c/b/a;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    .line 30
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_72} :catch_a6

    :try_start_72
    const-string v2, "utf-8"

    .line 32
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_78
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_72 .. :try_end_78} :catch_78
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_78} :catch_a6

    .line 35
    :catch_78
    :try_start_78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edata="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_89} :catch_a6

    goto :goto_a6

    .line 39
    :cond_8a
    iget-object v1, p0, Lio/dcloud/f/a/c/a;->l:Ljava/util/HashMap;

    if-nez v1, :cond_95

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/dcloud/f/a/c/a;->l:Ljava/util/HashMap;

    .line 42
    :cond_95
    iget-object v1, p0, Lio/dcloud/f/a/c/a;->l:Ljava/util/HashMap;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 43
    iget-object v1, p0, Lio/dcloud/f/a/c/a;->l:Ljava/util/HashMap;

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :catch_a6
    :cond_a6
    :goto_a6
    iget-object v1, p0, Lio/dcloud/f/a/c/a;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/dcloud/f/a/c/a$a;

    invoke-direct {v2, p0, v0}, Lio/dcloud/f/a/c/a$a;-><init>(Lio/dcloud/f/a/c/a;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_b1
    :goto_b1
    const v0, 0xea62

    const-string v1, "\u5e7f\u544a\u914d\u7f6e\u5f02\u5e38"

    .line 48
    invoke-virtual {p0, v0, v1}, Lio/dcloud/f/a/b/a;->a(ILjava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.f.a.c.a.RunnableC0039a (io.dcloud.f.a.c.a$a)
.class Lio/dcloud/f/a/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/f/a/c/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/f/a/c/a;


# direct methods
.method constructor <init>(Lio/dcloud/f/a/c/a;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    iput-object p2, p0, Lio/dcloud/f/a/c/a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-static {v2}, Lio/dcloud/f/a/c/a;->a(Lio/dcloud/f/a/c/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/f/a/c/a$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-static {v4}, Lio/dcloud/f/a/c/a;->b(Lio/dcloud/f/a/c/a;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lio/dcloud/f/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 6
    :try_start_1c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v1, Lio/dcloud/ads/base/entry/AdData;

    invoke-direct {v1}, Lio/dcloud/ads/base/entry/AdData;-><init>()V

    .line 10
    iget-object v3, p0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-virtual {v3}, Lio/dcloud/f/a/b/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/dcloud/ads/base/entry/AdData;->c(Landroid/content/Context;)V
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_2f} :catch_6f

    const-string v3, "appid"

    .line 11
    :try_start_31
    iget-object v4, p0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-static {v4}, Lio/dcloud/f/a/c/a;->d(Lio/dcloud/f/a/c/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_3a} :catch_6f

    const-string v3, "adpid"

    .line 12
    :try_start_3c
    iget-object v4, p0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-static {v4}, Lio/dcloud/f/a/c/a;->e(Lio/dcloud/f/a/c/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_45} :catch_6f

    const-string v3, "tid"

    .line 13
    :try_start_47
    iget-object v4, p0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-static {v4}, Lio/dcloud/f/a/c/a;->f(Lio/dcloud/f/a/c/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_50} :catch_6f

    const-string v3, "did"

    .line 14
    :try_start_52
    iget-object v4, p0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-static {v4}, Lio/dcloud/f/a/c/a;->g(Lio/dcloud/f/a/c/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_5b} :catch_6f

    const-string v3, "adid"

    .line 15
    :try_start_5d
    iget-object v4, p0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-static {v4}, Lio/dcloud/f/a/c/a;->h(Lio/dcloud/f/a/c/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    new-instance v3, Lio/dcloud/f/a/c/a$a$a;

    invoke-direct {v3, p0, v1}, Lio/dcloud/f/a/c/a$a$a;-><init>(Lio/dcloud/f/a/c/a$a;Lio/dcloud/ads/base/entry/AdData;)V

    invoke-virtual {v1, v2, v3, v0}, Lio/dcloud/ads/base/entry/AdData;->a(Lorg/json/JSONObject;Lio/dcloud/ads/base/entry/AdData$e;Z)V
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_6e} :catch_6f

    goto :goto_a0

    :catch_6f
    move-exception v0

    .line 50
    iget-object v1, p0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const v2, 0xea66

    invoke-static {v1, v2, v0}, Lio/dcloud/f/a/c/a;->b(Lio/dcloud/f/a/c/a;ILjava/lang/String;)V

    goto :goto_a0

    .line 54
    :cond_7d
    iget-object v0, p0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    const v2, 0xea63

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    if-nez v5, :cond_94

    const-string v1, "data null"

    goto :goto_96

    :cond_94
    aget-object v1, v1, v4

    :goto_96
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lio/dcloud/f/a/c/a;->c(Lio/dcloud/f/a/c/a;ILjava/lang/String;)V

    :goto_a0
    return-void
.end method

###### Class io.dcloud.f.a.c.a.RunnableC0039a.C0040a (io.dcloud.f.a.c.a$a$a)
.class Lio/dcloud/f/a/c/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/ads/base/entry/AdData$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/f/a/c/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/ads/base/entry/AdData;

.field final synthetic b:Lio/dcloud/f/a/c/a$a;


# direct methods
.method constructor <init>(Lio/dcloud/f/a/c/a$a;Lio/dcloud/ads/base/entry/AdData;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/f/a/c/a$a$a;->b:Lio/dcloud/f/a/c/a$a;

    iput-object p2, p0, Lio/dcloud/f/a/c/a$a$a;->a:Lio/dcloud/ads/base/entry/AdData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/f/a/c/a$a$a;->b:Lio/dcloud/f/a/c/a$a;

    iget-object v0, v0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    iget-object v1, p0, Lio/dcloud/f/a/c/a$a$a;->a:Lio/dcloud/ads/base/entry/AdData;

    invoke-static {v0, v1}, Lio/dcloud/f/a/c/a;->b(Lio/dcloud/f/a/c/a;Lio/dcloud/ads/base/entry/AdData;)Lio/dcloud/ads/base/entry/AdData;

    .line 2
    iget-object v0, p0, Lio/dcloud/f/a/c/a$a$a;->b:Lio/dcloud/f/a/c/a$a;

    iget-object v0, v0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-static {v0}, Lio/dcloud/f/a/c/a;->i(Lio/dcloud/f/a/c/a;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 7

    .line 3
    invoke-static {}, Lio/dcloud/f/a/c/b/f;->a()Lio/dcloud/f/a/c/b/f;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/f/a/c/a$a$a;->b:Lio/dcloud/f/a/c/a$a;

    iget-object v1, v1, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-virtual {v1}, Lio/dcloud/f/a/b/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/f/a/c/b/f;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 5
    :try_start_10
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/ads/base/entry/a;

    .line 6
    invoke-virtual {v1}, Lio/dcloud/ads/base/entry/a;->b()Z

    move-result v2

    if-nez v2, :cond_83

    .line 7
    new-instance v2, Lio/dcloud/ads/base/entry/AdData;

    invoke-direct {v2}, Lio/dcloud/ads/base/entry/AdData;-><init>()V

    .line 8
    iget-object v3, p0, Lio/dcloud/f/a/c/a$a$a;->b:Lio/dcloud/f/a/c/a$a;

    iget-object v3, v3, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-virtual {v3}, Lio/dcloud/f/a/b/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lio/dcloud/ads/base/entry/a;->a(Landroid/content/Context;Lio/dcloud/ads/base/entry/AdData;)V

    .line 9
    invoke-virtual {v2}, Lio/dcloud/ads/base/entry/AdData;->m()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v2}, Lio/dcloud/ads/base/entry/AdData;->l()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v2}, Lio/dcloud/ads/base/entry/AdData;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/f/a/c/a$a$a;->b:Lio/dcloud/f/a/c/a$a;

    iget-object v3, v3, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-static {v3}, Lio/dcloud/f/a/c/a;->d(Lio/dcloud/f/a/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v2}, Lio/dcloud/ads/base/entry/AdData;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/f/a/c/a$a$a;->b:Lio/dcloud/f/a/c/a$a;

    iget-object v3, v3, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-static {v3}, Lio/dcloud/f/a/c/a;->f(Lio/dcloud/f/a/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 10
    iget-object v1, p0, Lio/dcloud/f/a/c/a$a$a;->b:Lio/dcloud/f/a/c/a$a;

    iget-object v1, v1, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-static {v1}, Lio/dcloud/f/a/c/a;->j(Lio/dcloud/f/a/c/a;)Lio/dcloud/ads/base/entry/AdData;

    move-result-object v1

    if-nez v1, :cond_18

    .line 11
    iget-object v0, p0, Lio/dcloud/f/a/c/a$a$a;->b:Lio/dcloud/f/a/c/a$a;

    iget-object v0, v0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-static {v0, v2}, Lio/dcloud/f/a/c/a;->a(Lio/dcloud/f/a/c/a;Lio/dcloud/ads/base/entry/AdData;)Lio/dcloud/ads/base/entry/AdData;

    .line 12
    iget-object v0, p0, Lio/dcloud/f/a/c/a$a$a;->b:Lio/dcloud/f/a/c/a$a;

    iget-object v0, v0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-static {v0}, Lio/dcloud/f/a/c/a;->c(Lio/dcloud/f/a/c/a;)V

    return-void

    .line 17
    :cond_83
    invoke-static {}, Lio/dcloud/f/a/c/b/f;->a()Lio/dcloud/f/a/c/b/f;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/f/a/c/a$a$a;->b:Lio/dcloud/f/a/c/a$a;

    iget-object v3, v3, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-virtual {v3}, Lio/dcloud/f/a/b/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lio/dcloud/ads/base/entry/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lio/dcloud/f/a/c/b/f;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_96} :catch_97

    goto :goto_18

    .line 22
    :catch_97
    :cond_97
    iget-object v0, p0, Lio/dcloud/f/a/c/a$a$a;->b:Lio/dcloud/f/a/c/a$a;

    iget-object v0, v0, Lio/dcloud/f/a/c/a$a;->b:Lio/dcloud/f/a/c/a;

    invoke-static {v0, p1, p2}, Lio/dcloud/f/a/c/a;->a(Lio/dcloud/f/a/c/a;ILjava/lang/String;)V

    return-void
.end method
