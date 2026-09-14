###### Class io.dcloud.g.a.b (io.dcloud.g.a.b)
.class public Lio/dcloud/g/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/INativeAppInfo;


# instance fields
.field private a:Lio/dcloud/common/DHInterface/IConfusionMgr;

.field private b:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/g/a/b;->a(Landroid/app/Application;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/g/a/b;->a:Lio/dcloud/common/DHInterface/IConfusionMgr;

    invoke-direct {p0, p1}, Lio/dcloud/g/a/b;->a(Lio/dcloud/common/DHInterface/IConfusionMgr;)V

    return-void
.end method

.method private a(Landroid/app/Application;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object v0, p0, Lio/dcloud/g/a/b;->b:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IConfusionMgr;)V
    .registers 2

    if-nez p1, :cond_6

    .line 3
    invoke-static {}, Lio/dcloud/g/b/b;->c()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object p1

    .line 5
    :cond_6
    iput-object p1, p0, Lio/dcloud/g/a/b;->a:Lio/dcloud/common/DHInterface/IConfusionMgr;

    return-void
.end method


# virtual methods
.method public getApplication()Landroid/app/Application;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/b;->b:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCofusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/b;->a:Lio/dcloud/common/DHInterface/IConfusionMgr;

    return-object v0
.end method
