###### Class com.dcloud.android.v4.view.AccessibilityDelegateCompat (com.dcloud.android.v4.view.AccessibilityDelegateCompat)
.class public Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;,
        Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;,
        Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;,
        Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELEGATE:Ljava/lang/Object;

.field private static final IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;


# instance fields
.field final mBridge:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 2
    new-instance v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    goto :goto_21

    :cond_e
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1a

    .line 4
    new-instance v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    goto :goto_21

    .line 6
    :cond_1a
    new-instance v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    .line 8
    :goto_21
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    invoke-interface {v0}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->newAccessiblityDelegateBridge(Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->mBridge:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->getAccessibilityNodeProvider(Ljava/lang/Object;Landroid/view/View;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p1

    return-object p1
.end method

.method getBridge()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->mBridge:Ljava/lang/Object;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->performAccessibilityAction(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 5

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.AccessibilityDelegateCompat.AccessibilityDelegateIcsImpl (com.dcloud.android.v4.view.AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl)
.class Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;
.super Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegateIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatIcs;->dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public newAccessiblityDelegateBridge(Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;-><init>(Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)V

    invoke-static {v0}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatIcs;->newAccessibilityDelegateBridge(Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatIcs;->newAccessibilityDelegateDefaultImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatIcs;->onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    .line 1
    invoke-virtual {p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->getInfo()Ljava/lang/Object;

    move-result-object p3

    .line 2
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatIcs;->onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatIcs;->onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatIcs;->onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatIcs;->sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatIcs;->sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.AccessibilityDelegateCompat.AccessibilityDelegateIcsImpl.AnonymousClass1 (com.dcloud.android.v4.view.AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1)
.class Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;->newAccessiblityDelegateBridge(Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;

.field final synthetic val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;


# direct methods
.method constructor <init>(Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->this$0:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;

    iput-object p2, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    new-instance v1, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.AccessibilityDelegateCompat.AccessibilityDelegateImpl (com.dcloud.android.v4.view.AccessibilityDelegateCompat$AccessibilityDelegateImpl)
.class interface abstract Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AccessibilityDelegateImpl"
.end annotation


# virtual methods
.method public abstract dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.end method

.method public abstract getAccessibilityNodeProvider(Ljava/lang/Object;Landroid/view/View;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;
.end method

.method public abstract newAccessiblityDelegateBridge(Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
.end method

.method public abstract newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;
.end method

.method public abstract onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method public abstract onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.end method

.method public abstract performAccessibilityAction(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
.end method

.method public abstract sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V
.end method

.method public abstract sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.end method

###### Class com.dcloud.android.v4.view.AccessibilityDelegateCompat.AccessibilityDelegateJellyBeanImpl (com.dcloud.android.v4.view.AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl)
.class Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;
.super Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegateJellyBeanImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Ljava/lang/Object;Landroid/view/View;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatJellyBean;->getAccessibilityNodeProvider(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 4
    new-instance p2, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {p2, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    return-object p2

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public newAccessiblityDelegateBridge(Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;-><init>(Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)V

    invoke-static {v0}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatJellyBean;->newAccessibilityDelegateBridge(Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public performAccessibilityAction(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatJellyBean;->performAccessibilityAction(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

###### Class com.dcloud.android.v4.view.AccessibilityDelegateCompat.AccessibilityDelegateJellyBeanImpl.AnonymousClass1 (com.dcloud.android.v4.view.AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1)
.class Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/android/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;->newAccessiblityDelegateBridge(Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;

.field final synthetic val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;


# direct methods
.method constructor <init>(Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->this$0:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;

    iput-object p2, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    .line 2
    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->getAccessibilityNodeProvider(Landroid/view/View;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 3
    invoke-virtual {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;->getProvider()Ljava/lang/Object;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    new-instance v1, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.AccessibilityDelegateCompat.AccessibilityDelegateStubImpl (com.dcloud.android.v4.view.AccessibilityDelegateCompat$AccessibilityDelegateStubImpl)
.class Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegateStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public getAccessibilityNodeProvider(Ljava/lang/Object;Landroid/view/View;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public newAccessiblityDelegateBridge(Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    return-void
.end method

.method public onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    const/4 p1, 0x1

    return p1
.end method

.method public performAccessibilityAction(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    return-void
.end method
