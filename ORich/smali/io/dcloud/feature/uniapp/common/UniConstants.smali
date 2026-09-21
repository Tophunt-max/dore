###### Class io.dcloud.feature.uniapp.common.UniConstants (io.dcloud.feature.uniapp.common.UniConstants)
.class public Lio/dcloud/feature/uniapp/common/UniConstants;
.super Lcom/taobao/weex/common/Constants;
.source "UniConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/uniapp/common/UniConstants$Name;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/taobao/weex/common/Constants;-><init>()V

    return-void
.end method

###### Class io.dcloud.feature.uniapp.common.UniConstants.Name (io.dcloud.feature.uniapp.common.UniConstants$Name)
.class public interface abstract Lio/dcloud/feature/uniapp/common/UniConstants$Name;
.super Ljava/lang/Object;
.source "UniConstants.java"

# interfaces
.implements Lcom/taobao/weex/common/Constants$Name;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/common/UniConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Name"
.end annotation


# static fields
.field public static final CURSOR_SPACING:Ljava/lang/String; = "cursorSpacing"
