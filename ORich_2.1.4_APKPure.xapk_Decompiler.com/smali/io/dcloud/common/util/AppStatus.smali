###### Class io.dcloud.common.util.AppStatus (io.dcloud.common.util.AppStatus)
.class public Lio/dcloud/common/util/AppStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIVE:I = 0x2

.field public static final STOPPED:I

.field private static sMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
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

    sput-object v0, Lio/dcloud/common/util/AppStatus;->sMaps:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppStatus(Ljava/lang/String;)I
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/util/AppStatus;->sMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    sget-object v0, Lio/dcloud/common/util/AppStatus;->sMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x2

    return p0
.end method

.method public static setAppStatus(Ljava/lang/String;I)V
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/util/AppStatus;->sMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
