###### Class com.taobao.weex.ui.component.ConfirmBar (com.taobao.weex.ui.component.ConfirmBar)
.class public Lcom/taobao/weex/ui/component/ConfirmBar;
.super Ljava/lang/Object;
.source "ConfirmBar.java"


# static fields
.field private static instance:Lcom/taobao/weex/ui/component/ConfirmBar;


# instance fields
.field private editText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private listener:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/dcloud/common/DHInterface/ISysEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private rootView:Landroid/view/ViewGroup;

.field private rtl:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->editText:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/ConfirmBar;ZI)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/ConfirmBar;->showConfirm(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/ConfirmBar;)Ljava/util/List;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->editText:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/taobao/weex/ui/component/ConfirmBar;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taobao/weex/ui/component/ConfirmBar;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$402(Lcom/taobao/weex/ui/component/ConfirmBar;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static getInstance()Lcom/taobao/weex/ui/component/ConfirmBar;
    .registers 2

    .line 38
    sget-object v0, Lcom/taobao/weex/ui/component/ConfirmBar;->instance:Lcom/taobao/weex/ui/component/ConfirmBar;

    if-nez v0, :cond_17

    .line 39
    const-class v0, Lcom/taobao/weex/ui/component/ConfirmBar;

    monitor-enter v0

    .line 40
    :try_start_7
    sget-object v1, Lcom/taobao/weex/ui/component/ConfirmBar;->instance:Lcom/taobao/weex/ui/component/ConfirmBar;

    if-nez v1, :cond_12

    .line 41
    new-instance v1, Lcom/taobao/weex/ui/component/ConfirmBar;

    invoke-direct {v1}, Lcom/taobao/weex/ui/component/ConfirmBar;-><init>()V

    sput-object v1, Lcom/taobao/weex/ui/component/ConfirmBar;->instance:Lcom/taobao/weex/ui/component/ConfirmBar;

    .line 43
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 45
    :cond_17
    :goto_17
    sget-object v0, Lcom/taobao/weex/ui/component/ConfirmBar;->instance:Lcom/taobao/weex/ui/component/ConfirmBar;

    return-object v0
.end method

.method private showConfirm(ZI)V
    .registers 6

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    const-string v0, "AppRootView"

    .line 53
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    :cond_10
    const/4 v1, 0x0

    if-eqz p1, :cond_3e

    .line 55
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_24

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    iget v2, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->height:I

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 58
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    :cond_24
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 62
    iget-object p2, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->bringToFront()V

    goto :goto_51

    .line 66
    :cond_3e
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz v0, :cond_51

    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 70
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_51

    :catch_51
    :cond_51
    :goto_51
    return-void
.end method


# virtual methods
.method addComponent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->editText:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method createConfirmBar(Landroid/content/Context;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 7

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v0, :cond_28

    .line 94
    new-instance v0, Lcom/taobao/weex/ui/component/ConfirmBar$1;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/ConfirmBar$1;-><init>(Lcom/taobao/weex/ui/component/ConfirmBar;Landroid/content/Context;)V

    .line 123
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    .line 124
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/ISysEventListener;

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSizeChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, v0, v1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 125
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/ISysEventListener;

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, v0, v1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    :cond_28
    const/4 v0, 0x1

    const/high16 v1, 0x42300000    # 44.0f

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->height:I

    .line 128
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_c4

    .line 129
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    .line 130
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rootView:Landroid/view/ViewGroup;

    const/4 v0, -0x1

    if-eqz p2, :cond_66

    .line 132
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->height:I

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 133
    iget-object v1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    :cond_66
    new-instance p2, Landroid/widget/Button;

    invoke-direct {p2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v1, 0x104000a

    .line 136
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    const/16 v1, 0x11

    .line 137
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setGravity(I)V

    const/16 v1, 0xcd

    const/16 v2, 0x32

    const/16 v3, 0xff

    .line 138
    invoke-static {v3, v2, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, 0x2

    const/high16 v2, 0x40c00000    # 6.0f

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p1, 0x0

    .line 140
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    new-instance p1, Lcom/taobao/weex/ui/component/ConfirmBar$2;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/ConfirmBar$2;-><init>(Lcom/taobao/weex/ui/component/ConfirmBar;)V

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    const/16 p2, 0xdc

    invoke-static {v3, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 170
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    const-string p2, "ConfirmBar"

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 171
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c4} :catch_c4

    :catch_c4
    :cond_c4
    return-void
.end method

.method removeComponent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->editText:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

###### Class com.taobao.weex.ui.component.ConfirmBar.AnonymousClass1 (com.taobao.weex.ui.component.ConfirmBar$1)
.class Lcom/taobao/weex/ui/component/ConfirmBar$1;
.super Ljava/lang/Object;
.source "ConfirmBar.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/ConfirmBar;->createConfirmBar(Landroid/content/Context;Lio/dcloud/common/DHInterface/IApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/ConfirmBar;Landroid/content/Context;)V
    .registers 3

    .line 94
    iput-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 8

    .line 97
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSizeChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_92

    .line 98
    check-cast p2, [I

    check-cast p2, [I

    .line 99
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 100
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x4

    const/4 v2, 0x1

    .line 101
    aget v3, p2, v2

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v3, 0x3

    if-gt p1, v0, :cond_39

    aget p1, p2, v2

    aget v4, p2, v3

    sub-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v0, :cond_a6

    .line 102
    :cond_39
    aget p1, p2, v2

    aget v4, p2, v3

    if-le p1, v4, :cond_54

    aget p1, p2, v2

    aget v3, p2, v3

    sub-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v0, :cond_54

    .line 103
    invoke-static {}, Lcom/taobao/weex/ui/component/ConfirmBar;->getInstance()Lcom/taobao/weex/ui/component/ConfirmBar;

    move-result-object p1

    aget p2, p2, v2

    invoke-static {p1, v1, p2}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$000(Lcom/taobao/weex/ui/component/ConfirmBar;ZI)V

    goto :goto_a6

    .line 105
    :cond_54
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$100(Lcom/taobao/weex/ui/component/ConfirmBar;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 106
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_88

    instance-of v3, v0, Lcom/taobao/weex/ui/component/DCTextArea;

    if-eqz v3, :cond_88

    check-cast v0, Lcom/taobao/weex/ui/component/DCTextArea;

    iget-boolean v0, v0, Lcom/taobao/weex/ui/component/DCTextArea;->isShowConfirm:Z

    if-eqz v0, :cond_88

    .line 107
    invoke-static {}, Lcom/taobao/weex/ui/component/ConfirmBar;->getInstance()Lcom/taobao/weex/ui/component/ConfirmBar;

    move-result-object p1

    aget p2, p2, v2

    invoke-static {p1, v2, p2}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$000(Lcom/taobao/weex/ui/component/ConfirmBar;ZI)V

    goto :goto_a6

    .line 110
    :cond_88
    invoke-static {}, Lcom/taobao/weex/ui/component/ConfirmBar;->getInstance()Lcom/taobao/weex/ui/component/ConfirmBar;

    move-result-object v0

    aget v3, p2, v2

    invoke-static {v0, v1, v3}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$000(Lcom/taobao/weex/ui/component/ConfirmBar;ZI)V

    goto :goto_5e

    .line 115
    :cond_92
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_a6

    .line 116
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$202(Lcom/taobao/weex/ui/component/ConfirmBar;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 117
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$302(Lcom/taobao/weex/ui/component/ConfirmBar;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 118
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$402(Lcom/taobao/weex/ui/component/ConfirmBar;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    :cond_a6
    :goto_a6
    return v1
.end method

###### Class com.taobao.weex.ui.component.ConfirmBar.AnonymousClass2 (com.taobao.weex.ui.component.ConfirmBar$2)
.class Lcom/taobao/weex/ui/component/ConfirmBar$2;
.super Ljava/lang/Object;
.source "ConfirmBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/ConfirmBar;->createConfirmBar(Landroid/content/Context;Lio/dcloud/common/DHInterface/IApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/ConfirmBar;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/ConfirmBar;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$2;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 144
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$2;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$100(Lcom/taobao/weex/ui/component/ConfirmBar;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_79

    const/4 p1, 0x0

    .line 146
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar$2;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$100(Lcom/taobao/weex/ui/component/ConfirmBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 147
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object p1, v1

    :cond_36
    if-eqz p1, :cond_79

    .line 153
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 154
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 155
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "value"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "detail"

    .line 156
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "confirm"

    .line 157
    invoke-virtual {p1, v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 158
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 159
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->interceptFocus()V

    .line 161
    :cond_6d
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 162
    check-cast p1, Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->hideSoftKeyboard()V

    :cond_79
    return-void
.end method
