###### Class com.alibaba.android.bindingx.core.BindingXPropertyInterceptor (com.alibaba.android.bindingx.core.BindingXPropertyInterceptor)
.class public Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;
.super Ljava/lang/Object;
.source "BindingXPropertyInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$IPropertyUpdateInterceptor;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;


# instance fields
.field private final mPropertyInterceptors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$IPropertyUpdateInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final sUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->sInstance:Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->sUIHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->mPropertyInterceptors:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;)Ljava/util/LinkedList;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->mPropertyInterceptors:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static getInstance()Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;
    .registers 1

    .line 48
    sget-object v0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->sInstance:Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;

    return-object v0
.end method


# virtual methods
.method public addInterceptor(Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$IPropertyUpdateInterceptor;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->mPropertyInterceptors:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public clear()V
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->mPropertyInterceptors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public clearCallbacks()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->sUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public getInterceptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$IPropertyUpdateInterceptor;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->mPropertyInterceptors:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs performIntercept(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;[Ljava/lang/Object;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    .line 74
    iget-object v0, v8, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->mPropertyInterceptors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 78
    :cond_a
    iget-object v9, v8, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->sUIHandler:Landroid/os/Handler;

    new-instance v10, Lcom/alibaba/android/bindingx/core/WeakRunnable;

    new-instance v11, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;-><init>(Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;[Ljava/lang/Object;)V

    invoke-direct {v10, v11}, Lcom/alibaba/android/bindingx/core/WeakRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeInterceptor(Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$IPropertyUpdateInterceptor;)Z
    .registers 3

    if-eqz p1, :cond_9

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->mPropertyInterceptors:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

###### Class com.alibaba.android.bindingx.core.BindingXPropertyInterceptor.AnonymousClass1 (com.alibaba.android.bindingx.core.BindingXPropertyInterceptor$1)
.class Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;
.super Ljava/lang/Object;
.source "BindingXPropertyInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->performIntercept(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$extension:[Ljava/lang/Object;

.field final synthetic val$propertyName:Ljava/lang/String;

.field final synthetic val$propertyValue:Ljava/lang/Object;

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;[Ljava/lang/Object;)V
    .registers 8

    .line 78
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;->this$0:Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;->val$targetView:Landroid/view/View;

    iput-object p3, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;->val$propertyName:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;->val$propertyValue:Ljava/lang/Object;

    iput-object p5, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    iput-object p6, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;->val$config:Ljava/util/Map;

    iput-object p7, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;->val$extension:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;->this$0:Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->access$000(Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$IPropertyUpdateInterceptor;

    .line 82
    iget-object v3, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;->val$targetView:Landroid/view/View;

    iget-object v4, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;->val$propertyName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;->val$propertyValue:Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    iget-object v7, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;->val$config:Ljava/util/Map;

    iget-object v8, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;->val$extension:[Ljava/lang/Object;

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$IPropertyUpdateInterceptor;->updateView(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;[Ljava/lang/Object;)Z

    goto :goto_a

    :cond_27
    return-void
.end method

###### Class com.alibaba.android.bindingx.core.BindingXPropertyInterceptor.IPropertyUpdateInterceptor (com.alibaba.android.bindingx.core.BindingXPropertyInterceptor$IPropertyUpdateInterceptor)
.class public interface abstract Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$IPropertyUpdateInterceptor;
.super Ljava/lang/Object;
.source "BindingXPropertyInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPropertyUpdateInterceptor"
.end annotation


# virtual methods
.method public varargs abstract updateView(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;[Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method
