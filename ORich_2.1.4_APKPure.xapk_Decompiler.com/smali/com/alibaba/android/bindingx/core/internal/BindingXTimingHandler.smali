###### Class com.alibaba.android.bindingx.core.internal.BindingXTimingHandler (com.alibaba.android.bindingx.core.internal.BindingXTimingHandler)
.class public Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;
.super Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;
.source "BindingXTimingHandler.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;


# instance fields
.field private isFinish:Z

.field private mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

.field private mStartTime:J


# direct methods
.method varargs constructor <init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;[Ljava/lang/Object;)V
    .registers 5

    .line 62
    invoke-direct {p0, p1, p2, p4}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    const-wide/16 p1, 0x0

    .line 46
    iput-wide p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mStartTime:J

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->isFinish:Z

    .line 63
    iput-object p3, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    const-wide/16 p1, 0x0

    .line 46
    iput-wide p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mStartTime:J

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->isFinish:Z

    .line 53
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    if-nez p1, :cond_15

    .line 54
    invoke-static {}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;->newInstance()Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    goto :goto_18

    .line 56
    :cond_15
    invoke-virtual {p1}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;->clear()V

    :goto_18
    return-void
.end method

.method private varargs fireEventByState(Ljava/lang/String;J[Ljava/lang/Object;)V
    .registers 8

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mCallback:Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;

    if-eqz v0, :cond_57

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "state"

    .line 164
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "t"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mToken:Ljava/lang/String;

    const-string v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_31

    .line 168
    array-length v1, p4

    if-lez v1, :cond_31

    const/4 v1, 0x0

    aget-object v2, p4, v1

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_31

    .line 169
    aget-object p4, p4, v1

    check-cast p4, Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 172
    :cond_31
    iget-object p4, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mCallback:Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;

    invoke-interface {p4, v0}, Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;->callback(Ljava/lang/Object;)V

    .line 173
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ">>>>>>>>>>>fire event:("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    :cond_57
    return-void
.end method

.method private handleTimingCallback()V
    .registers 8

    .line 97
    iget-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mStartTime:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_12

    .line 98
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mStartTime:J

    .line 100
    iput-boolean v2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->isFinish:Z

    goto :goto_1a

    .line 102
    :cond_12
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mStartTime:J

    sub-long v3, v0, v3

    .line 106
    :goto_1a
    :try_start_1a
    sget-boolean v0, Lcom/alibaba/android/bindingx/core/LogProxy;->sEnableLog:Z

    if-eqz v0, :cond_34

    .line 107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "[TimingHandler] timing elapsed. (t:%d)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    .line 109
    :cond_34
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mScope:Ljava/util/Map;

    long-to-double v1, v3

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/bindingx/core/internal/JSMath;->applyTimingValuesToScope(Ljava/util/Map;D)V

    .line 110
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->isFinish:Z

    if-nez v0, :cond_47

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mExpressionHoldersMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mScope:Ljava/util/Map;

    const-string v2, "timing"

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->consumeExpression(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 113
    :cond_47
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mExitExpressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mScope:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->evaluateExitExpression(Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/util/Map;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->isFinish:Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_51} :catch_52

    goto :goto_58

    :catch_52
    move-exception v0

    const-string v1, "runtime error"

    .line 115
    invoke-static {v1, v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_58
    return-void
.end method


# virtual methods
.method public doFrame()V
    .registers 1

    .line 179
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->handleTimingCallback()V

    return-void
.end method

.method public onActivityPause()V
    .registers 1

    return-void
.end method

.method public onActivityResume()V
    .registers 1

    return-void
.end method

.method public onBindExpression(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/util/List;Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-super/range {p0 .. p5}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->onBindExpression(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/util/List;Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;)V

    .line 84
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    if-nez p1, :cond_d

    .line 85
    invoke-static {}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;->newInstance()Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    :cond_d
    const-wide/16 p1, 0x0

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string p4, "start"

    .line 88
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->fireEventByState(Ljava/lang/String;J[Ljava/lang/Object;)V

    .line 90
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    invoke-virtual {p1}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;->clear()V

    .line 91
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    invoke-virtual {p1, p0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;->requestAnimationFrame(Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;)V

    return-void
.end method

.method public onCreate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .registers 3

    .line 133
    invoke-super {p0}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->onDestroy()V

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->clearExpressions()V

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    if-eqz v0, :cond_10

    .line 137
    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;->terminate()V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    :cond_10
    const-wide/16 v0, 0x0

    .line 140
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mStartTime:J

    return-void
.end method

.method public onDisable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mStartTime:J

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "end"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->fireEventByState(Ljava/lang/String;J[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->clearExpressions()V

    .line 123
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    if-eqz p1, :cond_19

    .line 124
    invoke-virtual {p1}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;->clear()V

    :cond_19
    const-wide/16 p1, 0x0

    .line 126
    iput-wide p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mStartTime:J

    const/4 p1, 0x1

    return p1
.end method

.method protected onExit(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "t"

    .line 145
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "exit"

    .line 146
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->fireEventByState(Ljava/lang/String;J[Ljava/lang/Object;)V

    .line 148
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    if-eqz p1, :cond_1c

    .line 149
    invoke-virtual {p1}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;->clear()V

    :cond_1c
    const-wide/16 v0, 0x0

    .line 151
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->mStartTime:J

    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected onUserIntercept(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "t"

    .line 156
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "interceptor"

    .line 157
    invoke-static {v2, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, p2, v3

    invoke-direct {p0, v2, v0, v1, p2}, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;->fireEventByState(Ljava/lang/String;J[Ljava/lang/Object;)V

    return-void
.end method
