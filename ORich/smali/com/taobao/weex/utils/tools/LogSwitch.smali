###### Class com.taobao.weex.utils.tools.LogSwitch (com.taobao.weex.utils.tools.LogSwitch)
.class public Lcom/taobao/weex/utils/tools/LogSwitch;
.super Ljava/lang/Object;
.source "LogSwitch.java"


# instance fields
.field private high_level:I

.field private log_switch:I

.field private low_level:I

.field private medium_level:I

.field private showHighLevelLog:Z

.field private showLowLevelLog:Z

.field private showMediumLevelLog:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 23
    iput v0, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->low_level:I

    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->medium_level:I

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->high_level:I

    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->log_switch:I

    .line 27
    iput-boolean v1, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->showLowLevelLog:Z

    .line 28
    iput-boolean v1, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->showMediumLevelLog:Z

    .line 29
    iput-boolean v0, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->showHighLevelLog:Z

    return-void
.end method


# virtual methods
.method public getLog_switch()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->log_switch:I

    return v0
.end method

.method public setLog_switch()V
    .registers 3

    .line 36
    iget-boolean v0, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->showLowLevelLog:Z

    if-eqz v0, :cond_b

    .line 37
    iget v0, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->log_switch:I

    iget v1, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->low_level:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->log_switch:I

    .line 39
    :cond_b
    iget-boolean v0, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->showMediumLevelLog:Z

    if-eqz v0, :cond_16

    .line 40
    iget v0, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->log_switch:I

    iget v1, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->medium_level:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->log_switch:I

    .line 43
    :cond_16
    iget-boolean v0, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->showHighLevelLog:Z

    if-eqz v0, :cond_21

    .line 44
    iget v0, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->log_switch:I

    iget v1, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->high_level:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/taobao/weex/utils/tools/LogSwitch;->log_switch:I

    :cond_21
    return-void
.end method
