###### Class com.taobao.weex.utils.StaticLayoutProxy (com.taobao.weex.utils.StaticLayoutProxy)
.class public Lcom/taobao/weex/utils/StaticLayoutProxy;
.super Ljava/lang/Object;
.source "StaticLayoutProxy.java"


# static fields
.field private static layoutConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZ)Landroid/text/StaticLayout;
    .registers 17

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_26

    if-eqz p7, :cond_26

    .line 40
    sget-object v4, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 41
    invoke-static/range {v0 .. v7}, Lcom/taobao/weex/utils/StaticLayoutProxy;->createInternal(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)Landroid/text/StaticLayout;

    move-result-object v0

    if-eqz v0, :cond_18

    return-object v0

    .line 45
    :cond_18
    new-instance v0, Landroid/text/StaticLayout;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .line 48
    :cond_26
    new-instance v0, Landroid/text/StaticLayout;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private static createInternal(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)Landroid/text/StaticLayout;
    .registers 21

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-ge v0, v2, :cond_8

    return-object v1

    .line 59
    :cond_8
    :try_start_8
    sget-object v0, Lcom/taobao/weex/utils/StaticLayoutProxy;->layoutConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-nez v0, :cond_40

    .line 60
    const-class v0, Landroid/text/StaticLayout;

    new-array v11, v10, [Ljava/lang/Class;

    .line 61
    const-class v12, Ljava/lang/CharSequence;

    aput-object v12, v11, v9

    const-class v12, Landroid/text/TextPaint;

    aput-object v12, v11, v8

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v7

    const-class v12, Landroid/text/Layout$Alignment;

    aput-object v12, v11, v6

    const-class v12, Landroid/text/TextDirectionHeuristic;

    aput-object v12, v11, v5

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v4

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v3

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v2

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 65
    sput-object v0, Lcom/taobao/weex/utils/StaticLayoutProxy;->layoutConstructor:Ljava/lang/reflect/Constructor;

    .line 67
    :cond_40
    sget-object v0, Lcom/taobao/weex/utils/StaticLayoutProxy;->layoutConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_71

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p0, v10, v9

    aput-object p1, v10, v8

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v7

    aput-object p3, v10, v6

    aput-object p4, v10, v5

    .line 69
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v10, v4

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v10, v3

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v10, v2

    .line 68
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;
    :try_end_6c
    .catchall {:try_start_8 .. :try_end_6c} :catchall_6d

    return-object v0

    :catchall_6d
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_71
    return-object v1
.end method
