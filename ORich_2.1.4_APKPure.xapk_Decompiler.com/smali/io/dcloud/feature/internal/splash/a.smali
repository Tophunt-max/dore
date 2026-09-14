###### Class io.dcloud.feature.internal.splash.a (io.dcloud.feature.internal.splash.a)
.class public Lio/dcloud/feature/internal/splash/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/dcloud/feature/internal/splash/a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/feature/internal/splash/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/feature/internal/splash/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
