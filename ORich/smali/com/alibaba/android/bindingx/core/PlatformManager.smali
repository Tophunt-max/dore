###### Class com.alibaba.android.bindingx.core.PlatformManager (com.alibaba.android.bindingx.core.PlatformManager)
.class public Lcom/alibaba/android/bindingx/core/PlatformManager;
.super Ljava/lang/Object;
.source "PlatformManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;,
        Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;,
        Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;,
        Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;
    }
.end annotation


# instance fields
.field private mResolutionTranslator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

.field private mViewFinder:Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;

.field private mViewUpdater:Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/core/PlatformManager$1;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/PlatformManager;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/alibaba/android/bindingx/core/PlatformManager;Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;)Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/PlatformManager;->mViewFinder:Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;

    return-object p1
.end method

.method static synthetic access$202(Lcom/alibaba/android/bindingx/core/PlatformManager;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/PlatformManager;->mResolutionTranslator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/alibaba/android/bindingx/core/PlatformManager;Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;)Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/PlatformManager;->mViewUpdater:Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;

    return-object p1
.end method


# virtual methods
.method public getResolutionTranslator()Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/PlatformManager;->mResolutionTranslator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    return-object v0
.end method

.method public getViewFinder()Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/PlatformManager;->mViewFinder:Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;

    return-object v0
.end method

.method public getViewUpdater()Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/PlatformManager;->mViewUpdater:Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;

    return-object v0
.end method

###### Class com.alibaba.android.bindingx.core.PlatformManager.AnonymousClass1 (com.alibaba.android.bindingx.core.PlatformManager$1)
.class synthetic Lcom/alibaba/android/bindingx/core/PlatformManager$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/PlatformManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.alibaba.android.bindingx.core.PlatformManager.Builder (com.alibaba.android.bindingx.core.PlatformManager$Builder)
.class public Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;
.super Ljava/lang/Object;
.source "PlatformManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/PlatformManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private deviceResolutionTranslator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

.field private viewFinder:Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;

.field private viewUpdater:Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/alibaba/android/bindingx/core/PlatformManager;
    .registers 3

    .line 106
    new-instance v0, Lcom/alibaba/android/bindingx/core/PlatformManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/android/bindingx/core/PlatformManager;-><init>(Lcom/alibaba/android/bindingx/core/PlatformManager$1;)V

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->viewFinder:Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;

    invoke-static {v0, v1}, Lcom/alibaba/android/bindingx/core/PlatformManager;->access$102(Lcom/alibaba/android/bindingx/core/PlatformManager;Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;)Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;

    .line 108
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->deviceResolutionTranslator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v0, v1}, Lcom/alibaba/android/bindingx/core/PlatformManager;->access$202(Lcom/alibaba/android/bindingx/core/PlatformManager;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->viewUpdater:Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;

    invoke-static {v0, v1}, Lcom/alibaba/android/bindingx/core/PlatformManager;->access$302(Lcom/alibaba/android/bindingx/core/PlatformManager;Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;)Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;

    return-object v0
.end method

.method public withDeviceResolutionTranslator(Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->deviceResolutionTranslator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    return-object p0
.end method

.method public withViewFinder(Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;)Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->viewFinder:Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;

    return-object p0
.end method

.method public withViewUpdater(Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;)Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->viewUpdater:Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;

    return-object p0
.end method

###### Class com.alibaba.android.bindingx.core.PlatformManager.IDeviceResolutionTranslator (com.alibaba.android.bindingx.core.PlatformManager$IDeviceResolutionTranslator)
.class public interface abstract Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;
.super Ljava/lang/Object;
.source "PlatformManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/PlatformManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDeviceResolutionTranslator"
.end annotation


# virtual methods
.method public varargs abstract nativeToWeb(D[Ljava/lang/Object;)D
.end method

.method public varargs abstract webToNative(D[Ljava/lang/Object;)D
.end method

###### Class com.alibaba.android.bindingx.core.PlatformManager.IViewFinder (com.alibaba.android.bindingx.core.PlatformManager$IViewFinder)
.class public interface abstract Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;
.super Ljava/lang/Object;
.source "PlatformManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/PlatformManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IViewFinder"
.end annotation


# virtual methods
.method public varargs abstract findViewBy(Ljava/lang/String;[Ljava/lang/Object;)Landroid/view/View;
.end method

###### Class com.alibaba.android.bindingx.core.PlatformManager.IViewUpdater (com.alibaba.android.bindingx.core.PlatformManager$IViewUpdater)
.class public interface abstract Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;
.super Ljava/lang/Object;
.source "PlatformManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/PlatformManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IViewUpdater"
.end annotation


# virtual methods
.method public varargs abstract synchronouslyUpdateViewOnUIThread(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;[Ljava/lang/Object;)V
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
.end method
