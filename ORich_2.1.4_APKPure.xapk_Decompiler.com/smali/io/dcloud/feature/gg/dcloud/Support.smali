###### Class io.dcloud.feature.gg.dcloud.Support (io.dcloud.feature.gg.dcloud.Support)
.class public interface abstract Lio/dcloud/feature/gg/dcloud/Support;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Surpport:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "dcloud"

    const-string v1, "wanka"

    const-string v2, "youdao"

    const-string v3, "common"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/feature/gg/dcloud/Support;->Surpport:[Ljava/lang/String;

    return-void
.end method
