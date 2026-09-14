###### Class com.alibaba.android.bindingx.core.internal.BindingXTouchHandler (com.alibaba.android.bindingx.core.internal.BindingXTouchHandler)
.class public Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;
.super Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;
.source "BindingXTouchHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private downTimeMillis:J

.field private downX:F

.field private downY:F

.field private isFlickGestureAvailable:Z

.field private isPanGestureAvailable:Z

.field private mDownX:F

.field private mDownY:F

.field private mDx:D

.field private mDy:D

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private upX:F

.field private upY:F


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    const-wide/16 p2, 0x0

    .line 57
    iput-wide p2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->downTimeMillis:J

    const/4 p2, 0x0

    .line 81
    iput p2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->downX:F

    .line 82
    iput p2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->downY:F

    .line 83
    iput p2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->upX:F

    .line 84
    iput p2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->upY:F

    .line 61
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    if-nez p3, :cond_1d

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    goto :goto_21

    :cond_1d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    :goto_21
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    new-instance p3, Landroid/view/GestureDetector;

    invoke-direct {p3, p1, p0, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private varargs fireEventByState(Ljava/lang/String;DD[Ljava/lang/Object;)V
    .registers 11

    .line 310
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mCallback:Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;

    if-eqz v0, :cond_7e

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "state"

    .line 312
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {v1}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getResolutionTranslator()Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v1, p2, p3, v3}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide p2

    .line 314
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {v1}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getResolutionTranslator()Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v1, p4, p5, v3}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide p4

    .line 315
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "deltaX"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "deltaY"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mToken:Ljava/lang/String;

    const-string v3, "token"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_52

    .line 319
    array-length v1, p6

    if-lez v1, :cond_52

    aget-object v1, p6, v2

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_52

    .line 320
    aget-object p6, p6, v2

    check-cast p6, Ljava/util/Map;

    invoke-interface {v0, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 323
    :cond_52
    iget-object p6, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mCallback:Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;

    invoke-interface {p6, v0}, Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;->callback(Ljava/lang/Object;)V

    .line 324
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ">>>>>>>>>>>fire event:("

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    :cond_7e
    return-void
.end method


# virtual methods
.method isFlickGestureAvailable()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->isFlickGestureAvailable:Z

    return v0
.end method

.method isPanGestureAvailable()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->isPanGestureAvailable:Z

    return v0
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

    .line 245
    invoke-super/range {p0 .. p5}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->onBindExpression(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/util/List;Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;)V

    return-void
.end method

.method public onCreate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mInstanceId:Ljava/lang/String;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mAnchorInstanceId:Ljava/lang/String;

    .line 208
    :goto_d
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {v1}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getViewFinder()Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, p1, v3}, Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;->findViewBy(Ljava/lang/String;[Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_34

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ExpressionTouchHandler] onCreate failed. sourceView not found:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    return v4

    .line 213
    :cond_34
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    :try_start_37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "addPan"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v4

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v4

    .line 218
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    :cond_58
    :goto_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ExpressionTouchHandler] onCreate success. {source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",type:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    return v2
.end method

.method public onDestroy()V
    .registers 3

    .line 283
    invoke-super {p0}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->onDestroy()V

    .line 284
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mExpressionHoldersMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mExpressionHoldersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 286
    iput-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mExpressionHoldersMap:Ljava/util/Map;

    .line 288
    :cond_f
    iput-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mExitExpressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    .line 289
    iput-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mCallback:Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->isFlickGestureAvailable:Z

    .line 291
    iput-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->isPanGestureAvailable:Z

    return-void
.end method

.method public onDisable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 250
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "pan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    const-string v0, "flick"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1c

    .line 255
    :cond_15
    invoke-virtual {p0, v1}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->setFlickGestureAvailable(Z)V

    goto :goto_1c

    .line 252
    :cond_19
    invoke-virtual {p0, v1}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->setPanGestureAvailable(Z)V

    .line 259
    :goto_1c
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->isPanGestureAvailable()Z

    move-result v0

    if-nez v0, :cond_87

    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->isFlickGestureAvailable()Z

    move-result v0

    if-nez v0, :cond_87

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mInstanceId:Ljava/lang/String;

    goto :goto_35

    :cond_33
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mAnchorInstanceId:Ljava/lang/String;

    .line 261
    :goto_35
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {v2}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getViewFinder()Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-interface {v2, p1, v4}, Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;->findViewBy(Ljava/lang/String;[Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_65

    const/4 v2, 0x0

    .line 263
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 265
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "removePan"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 268
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_60} :catch_61

    goto :goto_65

    :catch_61
    move-exception v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    :cond_65
    :goto_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove touch listener success.["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    return v3

    :cond_87
    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected onExit(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "internal_x"

    .line 296
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-string v0, "internal_y"

    .line 297
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 p1, 0x0

    new-array v7, p1, [Ljava/lang/Object;

    const-string v2, "exit"

    move-object v1, p0

    .line 298
    invoke-direct/range {v1 .. v7}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->fireEventByState(Ljava/lang/String;DD[Ljava/lang/Object;)V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 185
    iget-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->isFlickGestureAvailable:Z

    const/4 p2, 0x0

    if-nez p1, :cond_5

    :cond_5
    return p2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12

    .line 140
    iget-boolean p3, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->isPanGestureAvailable:Z

    const/4 p4, 0x0

    if-nez p3, :cond_b

    const-string p1, "pan gesture is not enabled"

    .line 141
    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    return p4

    :cond_b
    if-nez p1, :cond_12

    .line 148
    iget p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownX:F

    .line 149
    iget p3, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownY:F

    goto :goto_1d

    .line 151
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    move v6, p3

    move p3, p1

    move p1, v6

    :goto_1d
    if-nez p2, :cond_20

    return p4

    .line 159
    :cond_20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 160
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr v0, p1

    sub-float/2addr p2, p3

    .line 165
    :try_start_2a
    sget-boolean p1, Lcom/alibaba/android/bindingx/core/LogProxy;->sEnableLog:Z

    if-eqz p1, :cond_4b

    .line 166
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p3, "[TouchHandler] pan moved. (x:%f,y:%f)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, p4

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    .line 168
    :cond_4b
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mScope:Ljava/util/Map;

    float-to-double v1, v0

    float-to-double v3, p2

    iget-object p2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {p2}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getResolutionTranslator()Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/bindingx/core/internal/JSMath;->applyXYToScope(Ljava/util/Map;DDLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V

    .line 169
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mExitExpressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    iget-object p2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mScope:Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->evaluateExitExpression(Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_73

    .line 170
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mExpressionHoldersMap:Ljava/util/Map;

    iget-object p2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mScope:Ljava/util/Map;

    const-string p3, "pan"

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->consumeExpression(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_6c} :catch_6d

    goto :goto_73

    :catch_6d
    move-exception p1

    const-string p2, "runtime error"

    .line 173
    invoke-static {p2, p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_73
    :goto_73
    return p4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 229
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p1, "pan"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_19

    const-string p1, "flick"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_1c

    .line 234
    :cond_15
    invoke-virtual {p0, v0}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->setFlickGestureAvailable(Z)V

    goto :goto_1c

    .line 231
    :cond_19
    invoke-virtual {p0, v0}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->setPanGestureAvailable(Z)V

    :goto_1c
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13

    .line 89
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_88

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_62

    const/4 v1, 0x2

    if-eq p1, v1, :cond_28

    const/4 v1, 0x3

    if-eq p1, v1, :cond_13

    goto/16 :goto_b9

    .line 120
    :cond_13
    iput v2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownX:F

    .line 121
    iput v2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownY:F

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->clearExpressions()V

    const-string v4, "cancel"

    .line 123
    iget-wide v5, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDx:D

    iget-wide v7, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDy:D

    new-array v9, v0, [Ljava/lang/Object;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->fireEventByState(Ljava/lang/String;DD[Ljava/lang/Object;)V

    goto/16 :goto_b9

    .line 99
    :cond_28
    iget p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownX:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_4d

    iget p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownY:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_4d

    .line 100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownX:F

    .line 101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownY:F

    const-string v2, "start"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    new-array v7, v0, [Ljava/lang/Object;

    move-object v1, p0

    .line 102
    invoke-direct/range {v1 .. v7}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->fireEventByState(Ljava/lang/String;DD[Ljava/lang/Object;)V

    goto :goto_b9

    .line 105
    :cond_4d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownX:F

    sub-float/2addr p1, v0

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDx:D

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownY:F

    sub-float/2addr p1, v0

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDy:D

    goto :goto_b9

    .line 109
    :cond_62
    iput v2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownX:F

    .line 110
    iput v2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownY:F

    .line 111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->upX:F

    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->upY:F

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->clearExpressions()V

    const-string v2, "end"

    .line 114
    iget-wide v3, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDx:D

    iget-wide v5, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDy:D

    new-array v7, v0, [Ljava/lang/Object;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->fireEventByState(Ljava/lang/String;DD[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 116
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDx:D

    .line 117
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDy:D

    goto :goto_b9

    .line 91
    :cond_88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownX:F

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownY:F

    const-string v2, "start"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    new-array v7, v0, [Ljava/lang/Object;

    move-object v1, p0

    .line 93
    invoke-direct/range {v1 .. v7}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->fireEventByState(Ljava/lang/String;DD[Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->downTimeMillis:J

    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->downX:F

    .line 96
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->downY:F
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b2} :catch_b3

    goto :goto_b9

    :catch_b3
    move-exception p1

    const-string v0, "runtime error "

    .line 127
    invoke-static {v0, p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :goto_b9
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onUserIntercept(Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
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

    const-string v0, "internal_x"

    .line 303
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-string v0, "internal_y"

    .line 304
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 p2, 0x1

    new-array v7, p2, [Ljava/lang/Object;

    const-string p2, "interceptor"

    .line 305
    invoke-static {p2, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v7, p2

    const-string v2, "interceptor"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->fireEventByState(Ljava/lang/String;DD[Ljava/lang/Object;)V

    return-void
.end method

.method setFlickGestureAvailable(Z)V
    .registers 2

    .line 70
    iput-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->isFlickGestureAvailable:Z

    return-void
.end method

.method setPanGestureAvailable(Z)V
    .registers 2

    .line 66
    iput-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->isPanGestureAvailable:Z

    return-void
.end method
