###### Class io.dcloud.common.core.ui.f (io.dcloud.common.core.ui.f)
.class Lio/dcloud/common/core/ui/f;
.super Lio/dcloud/common/adapter/ui/AdaFrameItem;
.source "SourceFile"


# static fields
.field static a:Lio/dcloud/common/core/ui/f;


# direct methods
.method public static b()V
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/core/ui/f;->a:Lio/dcloud/common/core/ui/f;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->dispose()V

    :cond_7
    return-void
.end method
