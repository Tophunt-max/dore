###### Class io.dcloud.common.adapter.util.InvokeExecutorHelper (io.dcloud.common.adapter.util.InvokeExecutorHelper)
.class public Lio/dcloud/common/adapter/util/InvokeExecutorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;

    invoke-direct {v0}, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;-><init>()V

    .line 3
    :try_start_5
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    iput-object p0, v0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mCls:Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_b

    :catch_b
    return-object v0
.end method

.method public static varargs createInvokeExecutor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;
    .registers 5

    .line 1
    new-instance v0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;

    invoke-direct {v0}, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;-><init>()V

    .line 3
    :try_start_5
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mCls:Ljava/lang/Class;

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mObj:Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_2e

    :catch_16
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createInvokeExecutor clsName="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    :goto_2e
    return-object v0
.end method

###### Class io.dcloud.common.adapter.util.InvokeExecutorHelper.InvokeExecutor (io.dcloud.common.adapter.util.InvokeExecutorHelper$InvokeExecutor)
.class public Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/InvokeExecutorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvokeExecutor"
.end annotation


# instance fields
.field mCls:Ljava/lang/Class;

.field mObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mCls:Ljava/lang/Class;

    .line 87
    iput-object v0, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getInt(Ljava/lang/String;)I
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mCls:Ljava/lang/Class;

    if-eqz v0, :cond_19

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mObj:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return p1

    :catch_15
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    const/16 p1, -0x2710

    return p1
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mCls:Ljava/lang/Class;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mObj:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public final hasObject()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mObj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final varargs invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 21
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mCls:Ljava/lang/Class;

    if-eqz v0, :cond_11

    .line 22
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 24
    iget-object p2, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mObj:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mCls:Ljava/lang/Class;

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 4
    iget-object v0, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mObj:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    const-string p1, ""

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 9
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mCls:Ljava/lang/Class;

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 10
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 12
    iget-object v0, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mObj:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p1

    :catch_1f
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    return-object p2
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 9

    .line 17
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mCls:Ljava/lang/Class;

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 18
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 20
    iget-object v0, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mObj:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    return p1

    :catch_23
    :cond_23
    return p3
.end method

.method public final setInstance(Ljava/lang/Object;)Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->mObj:Ljava/lang/Object;

    return-object p0
.end method
