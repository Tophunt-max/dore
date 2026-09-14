###### Class io.dcloud.common.adapter.ui.RecordView (io.dcloud.common.adapter.ui.RecordView)
.class public Lio/dcloud/common/adapter/ui/RecordView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/ui/RecordView$RecordItem;,
        Lio/dcloud/common/adapter/ui/RecordView$RecordData;,
        Lio/dcloud/common/adapter/ui/RecordView$Utils;
    }
.end annotation


# static fields
.field private static final ASSIST_ARROW_LONG_CLICK_INTERVAL_TIMES:I = 0x64

.field private static final ASSIST_ARROW_LONG_CLICK_TIMER_DELAYED:I = 0x1f4

.field private static final HANDLER_WHAT_LONG_CLICK:I = 0x1

.field private static final HANDLER_WHAT_LONG_CLICK_TIMER:I = 0x0

.field public static final TYPE_ADDRESS:I = 0x4

.field public static final TYPE_COMPANY:I = 0x5

.field public static final TYPE_EMAIL:I = 0x2

.field public static final TYPE_ID:I = 0x7

.field public static final TYPE_NICK:I = 0x3

.field public static final TYPE_PHONE:I = 0x1

.field public static final TYPE_TAX:I = 0x6

.field public static final TYPE_UNKNOW:I = -0x1

.field private static final XORNUMBER:I = 0x5


# instance fields
.field Height:I

.field private isLongClick:Z

.field mAnchorY:I

.field mAppid:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field mMainView:Landroid/view/ViewGroup;

.field mRecordData:Lio/dcloud/common/adapter/ui/RecordView$RecordData;

.field mShowed:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/RecordView;->mShowed:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/RecordView;->mMainView:Landroid/view/ViewGroup;

    .line 8
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/RecordView;->mHandler:Landroid/os/Handler;

    .line 9
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/RecordView;->isLongClick:Z

    .line 185
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/RecordView;->mRecordData:Lio/dcloud/common/adapter/ui/RecordView$RecordData;

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/RecordView;->mHandler:Landroid/os/Handler;

    .line 187
    iput-object p3, p0, Lio/dcloud/common/adapter/ui/RecordView;->mAppid:Ljava/lang/String;

    const/high16 p3, 0x42380000    # 46.0f

    .line 189
    invoke-static {p1, p3}, Lio/dcloud/common/adapter/ui/RecordView;->dp2px(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lio/dcloud/common/adapter/ui/RecordView;->Height:I

    .line 190
    new-instance p3, Lio/dcloud/common/adapter/ui/RecordView$RecordData;

    invoke-direct {p3, p0}, Lio/dcloud/common/adapter/ui/RecordView$RecordData;-><init>(Lio/dcloud/common/adapter/ui/RecordView;)V

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/RecordView;->mRecordData:Lio/dcloud/common/adapter/ui/RecordView$RecordData;

    .line 191
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 192
    iput-object p3, p0, Lio/dcloud/common/adapter/ui/RecordView;->mMainView:Landroid/view/ViewGroup;

    .line 194
    invoke-direct {p0, p1, p3}, Lio/dcloud/common/adapter/ui/RecordView;->initView2(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 195
    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 198
    invoke-direct {p0, p1, p3}, Lio/dcloud/common/adapter/ui/RecordView;->initView1(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p1

    .line 199
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 201
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lio/dcloud/common/adapter/ui/RecordView;->Height:I

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 202
    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/adapter/ui/RecordView;Landroid/view/MotionEvent;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView;->handleAssistInputPreviousOrNextButtOnTouch(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/common/adapter/ui/RecordView;Landroid/widget/TextView;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->requestCurrentLocation(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$200(Lio/dcloud/common/adapter/ui/RecordView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView;->getRecordDatas(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/RecordView;->setRcordDatas(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private checkLocationPermission(Landroid/app/Activity;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkLocationPermission(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method private checkLocationService(Landroid/app/Activity;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkLocationService(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method static dp2px(Landroid/content/Context;F)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getAssisBundleData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "assis_input"

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v0, p1, v1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAssisBundleData(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/ui/RecordView;->getAssisBundleData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRecordDatas(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1f

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_input_text"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->getAssisBundleData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x5

    .line 4
    invoke-static {p0, p1, p2}, Lio/dcloud/common/util/Base64;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return-object p0
.end method

.method public static getRecordDatas(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2
    invoke-static {p0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView;->getRecordDatas0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRecordDatas(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->getRecordDatas0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRecordDatas0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "address_home"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    sget-object p0, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    iget-object p0, p0, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/AssistInputUtil;->getHomeAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    :cond_15
    const-string v0, "address_work"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 4
    sget-object p0, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    iget-object p0, p0, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/AssistInputUtil;->getWorkAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 6
    :cond_2a
    invoke-static {p2}, Lio/dcloud/common/adapter/ui/RecordView$Utils;->convertInt(Ljava/lang/String;)I

    move-result p2

    .line 7
    invoke-static {p0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView;->getRecordDatas(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :goto_32
    return-object p0
.end method

.method private getTextView(Landroid/view/View;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 2
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_b

    .line 3
    check-cast p1, Landroid/widget/TextView;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1, p2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private handleAssistInputPreviousOrNextButtOnTouch(Landroid/view/MotionEvent;I)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    goto :goto_36

    .line 11
    :cond_b
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/RecordView;->isLongClick:Z

    if-nez p1, :cond_1e

    .line 15
    sget-object p1, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->update(I)V

    .line 17
    :cond_1e
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/RecordView;->isLongClick:Z

    goto :goto_36

    .line 18
    :cond_21
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/RecordView;->isLongClick:Z

    .line 19
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 20
    iput v0, p1, Landroid/os/Message;->what:I

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/RecordView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_36
    return-void
.end method

.method private initArrowView(Landroid/view/View;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "dcloud_record_arrow_left_layout"

    .line 1
    invoke-direct {p0, p1, v0}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 5
    new-instance v2, Lio/dcloud/common/adapter/ui/RecordView$1;

    invoke-direct {v2, p0}, Lio/dcloud/common/adapter/ui/RecordView$1;-><init>(Lio/dcloud/common/adapter/ui/RecordView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1a
    const-string v0, "dcloud_record_arrow_right_layout"

    .line 13
    invoke-direct {p0, p1, v0}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 17
    new-instance v0, Lio/dcloud/common/adapter/ui/RecordView$2;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/RecordView$2;-><init>(Lio/dcloud/common/adapter/ui/RecordView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_30
    return-void
.end method

.method private initView1(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string v0, "layout"

    const-string v1, "dcloud_record_default"

    invoke-static {p1, v0, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const-string p2, "dcloud_record_scroll_view"

    .line 2
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const-string p2, "dcloud_record_view_1"

    .line 3
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "dcloud_record_view_2"

    .line 4
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->initArrowView(Landroid/view/View;)V

    return-object p1
.end method

.method private initView2(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string v0, "layout"

    const-string v1, "dcloud_record_address"

    invoke-static {p1, v0, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const-string p2, "dcloud_record_scroll_view"

    .line 2
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const-string p2, "dcloud_record_address_view_1"

    .line 3
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "dcloud_record_address_view_2"

    .line 4
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "dcloud_record_address_view_3"

    .line 5
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->initArrowView(Landroid/view/View;)V

    return-object p1
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";this="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestCurrentLocation(Landroid/widget/TextView;)V
    .registers 8

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lio/dcloud/common/adapter/ui/RecordView;->checkLocationPermission(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_3c

    .line 3
    invoke-direct {p0, v0}, Lio/dcloud/common/adapter/ui/RecordView;->checkLocationService(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 4
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->requestCurrentLocation0(Landroid/widget/TextView;)V

    goto :goto_5c

    .line 6
    :cond_1b
    sget v1, Lio/dcloud/base/R$string;->dcloud_geo_open_service:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/String;

    sget v5, Lio/dcloud/base/R$string;->dcloud_common_set_up:I

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    new-instance v2, Lio/dcloud/common/adapter/ui/RecordView$4;

    invoke-direct {v2, p0, p1, v0}, Lio/dcloud/common/adapter/ui/RecordView$4;-><init>(Lio/dcloud/common/adapter/ui/RecordView;Landroid/widget/TextView;Landroid/app/Activity;)V

    invoke-direct {p0, v0, v1, v4, v2}, Lio/dcloud/common/adapter/ui/RecordView;->showConfrim(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_5c

    .line 39
    :cond_3c
    sget v1, Lio/dcloud/base/R$string;->dcloud_geo_open_permissions:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/String;

    sget v5, Lio/dcloud/base/R$string;->dcloud_common_set_up:I

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    new-instance v2, Lio/dcloud/common/adapter/ui/RecordView$5;

    invoke-direct {v2, p0, p1, v0}, Lio/dcloud/common/adapter/ui/RecordView$5;-><init>(Lio/dcloud/common/adapter/ui/RecordView;Landroid/widget/TextView;Landroid/app/Activity;)V

    invoke-direct {p0, v0, v1, v4, v2}, Lio/dcloud/common/adapter/ui/RecordView;->showConfrim(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_5c
    return-void
.end method

.method private requestCurrentLocation0(Landroid/widget/TextView;)V
    .registers 8

    .line 1
    sget v0, Lio/dcloud/base/R$string;->dcloud_geo_loading:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2
    new-instance v0, Lio/dcloud/common/adapter/ui/RecordView$6;

    const-string v1, "record_address"

    invoke-direct {v0, p0, v1, p1}, Lio/dcloud/common/adapter/ui/RecordView$6;-><init>(Lio/dcloud/common/adapter/ui/RecordView;Ljava/lang/Object;Landroid/widget/TextView;)V

    .line 13
    invoke-static {v0}, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher;->registerListener(Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$MessageListener;)V

    .line 14
    sget-object p1, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 15
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v1

    .line 16
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lio/dcloud/common/adapter/ui/RecordView$6;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const/4 v0, 0x1

    .line 19
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    const-string v3, "null"

    .line 20
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v4, ""

    .line 21
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 22
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 23
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 24
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 25
    sget-object v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "Geolocation"

    aput-object p1, v4, v0

    const/4 p1, 0x2

    const-string v5, "getCurrentPosition"

    aput-object v5, v4, p1

    const/4 p1, 0x3

    aput-object v2, v4, p1

    invoke-interface {v1, v3, v0, v4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setAssisBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "assis_input"

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, p1, p2, v1}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static setRcordDatas(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    const/4 p1, -0x1

    if-eq p2, p1, :cond_25

    const/4 p1, 0x1

    const/4 v0, 0x5

    .line 1
    invoke-static {p3, p1, v0}, Lio/dcloud/common/util/Base64;->encodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    const-string p1, ""

    .line 5
    :cond_11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_input_text"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lio/dcloud/common/adapter/ui/RecordView;->setAssisBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public static setRcordDatas(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 6
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/RecordView;->setRcordDatas0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setRcordDatas0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p2}, Lio/dcloud/common/adapter/ui/RecordView$Utils;->convertInt(Ljava/lang/String;)I

    move-result p2

    .line 2
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/RecordView;->setRcordDatas(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private showConfrim(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 7

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/util/DialogUtil;->initDialogTheme(Landroid/app/Activity;Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5
    aget-object p2, p3, v1

    const/4 v1, -0x2

    invoke-virtual {p1, v1, p2, p4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 6
    aget-object p2, p3, v0

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2, p4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 7
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method conceal()V
    .registers 1

    return-void
.end method

.method display()V
    .registers 1

    return-void
.end method

.method public declared-synchronized dispose()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/RecordView;->isLongClick:Z

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/RecordView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_c
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/RecordView;->mHandler:Landroid/os/Handler;
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x64

    const/4 v3, 0x1

    if-eqz v0, :cond_2f

    if-eq v0, v3, :cond_a

    goto :goto_40

    .line 13
    :cond_a
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/RecordView;->isLongClick:Z

    if-eqz v0, :cond_40

    .line 14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_1f

    .line 15
    sget-object v4, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->update(I)V

    .line 17
    :cond_1f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 18
    iput v3, v0, Landroid/os/Message;->what:I

    .line 19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_40

    .line 21
    :cond_2f
    iput-boolean v3, p0, Lio/dcloud/common/adapter/ui/RecordView;->isLongClick:Z

    .line 22
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 23
    iput v3, v0, Landroid/os/Message;->what:I

    .line 24
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_40
    :goto_40
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "dcloud_record_address_view_1"

    .line 3
    invoke-static {v1, v2, v3}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_18

    .line 4
    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->requestCurrentLocation(Landroid/widget/TextView;)V

    goto :goto_5f

    :cond_18
    const-string v3, "dcloud_record_address_view_2"

    .line 5
    invoke-static {v1, v2, v3}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_34

    .line 7
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/RecordView;->mAppid:Ljava/lang/String;

    const-string v1, "address_home"

    invoke-static {p1, v0, v1}, Lio/dcloud/common/adapter/ui/RecordView;->getRecordDatas(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object v0, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->setText(Ljava/lang/String;)V

    goto :goto_5f

    :cond_34
    const-string v3, "dcloud_record_address_view_3"

    .line 9
    invoke-static {v1, v2, v3}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_50

    .line 11
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/RecordView;->mAppid:Ljava/lang/String;

    const-string v1, "address_work"

    invoke-static {p1, v0, v1}, Lio/dcloud/common/adapter/ui/RecordView;->getRecordDatas(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-object v0, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->setText(Ljava/lang/String;)V

    goto :goto_5f

    .line 14
    :cond_50
    sget-object v0, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->setText(Ljava/lang/String;)V

    :goto_5f
    return-void
.end method

.method record(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_8

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/RecordView;->mRecordData:Lio/dcloud/common/adapter/ui/RecordView$RecordData;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->record(Ljava/lang/String;I)V

    :cond_8
    return-void
.end method

.method update(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/RecordView;->mMainView:Landroid/view/ViewGroup;

    new-instance v1, Lio/dcloud/common/adapter/ui/RecordView$3;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView$3;-><init>(Lio/dcloud/common/adapter/ui/RecordView;II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method update0(II)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/RecordView;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iget v1, p0, Lio/dcloud/common/adapter/ui/RecordView;->Height:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 4
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/RecordView;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iput p1, p0, Lio/dcloud/common/adapter/ui/RecordView;->mAnchorY:I

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 7
    :goto_1f
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/RecordView;->mMainView:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    if-eqz v1, :cond_27

    const/4 v4, 0x0

    goto :goto_29

    :cond_27
    const/16 v4, 0x8

    :goto_29
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/RecordView;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->bringToFront()V

    .line 9
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/RecordView;->mRecordData:Lio/dcloud/common/adapter/ui/RecordView$RecordData;

    invoke-virtual {v2, p2}, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->checkType(I)V

    .line 11
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/RecordView;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 12
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/RecordView;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    const-string v6, "dcloud_record_line_1"

    if-ne p2, v5, :cond_c5

    .line 16
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    const-string p2, "dcloud_record_address_view_1"

    .line 18
    invoke-direct {p0, v2, p2}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-direct {p0, v2, p2}, Lio/dcloud/common/adapter/ui/RecordView;->getTextView(Landroid/view/View;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p2

    sget v4, Lio/dcloud/base/R$string;->dcloud_current_address:I

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 21
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/RecordView;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/RecordView;->mAppid:Ljava/lang/String;

    const-string v5, "address_home"

    invoke-static {p2, v4, v5}, Lio/dcloud/common/adapter/ui/RecordView;->getRecordDatas(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-direct {p0, v2, v6}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7a

    const/16 v5, 0x8

    goto :goto_7b

    :cond_7a
    const/4 v5, 0x0

    :goto_7b
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const-string v4, "dcloud_record_address_view_2"

    .line 24
    invoke-direct {p0, v2, v4}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8d

    const/16 p2, 0x8

    goto :goto_8e

    :cond_8d
    const/4 p2, 0x0

    :goto_8e
    invoke-virtual {v4, p2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/RecordView;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/RecordView;->mAppid:Ljava/lang/String;

    const-string v5, "address_work"

    invoke-static {p2, v4, v5}, Lio/dcloud/common/adapter/ui/RecordView;->getRecordDatas(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "dcloud_record_line_2"

    .line 28
    invoke-direct {p0, v2, v4}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ae

    const/16 v5, 0x8

    goto :goto_af

    :cond_ae
    const/4 v5, 0x0

    :goto_af
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const-string v4, "dcloud_record_address_view_3"

    .line 29
    invoke-direct {p0, v2, v4}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c0

    const/16 v0, 0x8

    :cond_c0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_13b

    .line 32
    :cond_c5
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/RecordView;->mRecordData:Lio/dcloud/common/adapter/ui/RecordView$RecordData;

    iget-object p2, p2, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    aget-object p2, p2, v0

    if-eqz p2, :cond_f3

    const-string p2, "dcloud_record_view_1"

    .line 37
    invoke-direct {p0, v4, p2}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_dd

    const/4 v5, 0x0

    goto :goto_df

    :cond_dd
    const/16 v5, 0x8

    :goto_df
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-direct {p0, v4, p2}, Lio/dcloud/common/adapter/ui/RecordView;->getTextView(Landroid/view/View;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/RecordView;->mRecordData:Lio/dcloud/common/adapter/ui/RecordView$RecordData;

    iget-object v2, v2, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;->mContent:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    goto :goto_f9

    .line 40
    :cond_f3
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/RecordView;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 p2, 0x0

    .line 42
    :goto_f9
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/RecordView;->mRecordData:Lio/dcloud/common/adapter/ui/RecordView$RecordData;

    iget-object v2, v2, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    aget-object v2, v2, p1

    const-string v5, "dcloud_record_view_2"

    if-eqz v2, :cond_12c

    .line 43
    invoke-direct {p0, v4, v6}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_10b

    const/4 v6, 0x0

    goto :goto_10d

    :cond_10b
    const/16 v6, 0x8

    :goto_10d
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-direct {p0, v4, v5}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_117

    goto :goto_119

    :cond_117
    const/16 v0, 0x8

    :goto_119
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    invoke-direct {p0, v4, v5}, Lio/dcloud/common/adapter/ui/RecordView;->getTextView(Landroid/view/View;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/RecordView;->mRecordData:Lio/dcloud/common/adapter/ui/RecordView$RecordData;

    iget-object v2, v2, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    aget-object p1, v2, p1

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;->mContent:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13a

    .line 47
    :cond_12c
    invoke-direct {p0, v4, v6}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 48
    invoke-direct {p0, v4, v5}, Lio/dcloud/common/adapter/ui/RecordView;->getView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_13a
    move p1, p2

    :goto_13b
    if-eqz v1, :cond_143

    if-eqz p1, :cond_143

    .line 52
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/RecordView;->display()V

    goto :goto_146

    .line 54
    :cond_143
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/RecordView;->conceal()V

    :goto_146
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.RecordView.AnonymousClass1 (io.dcloud.common.adapter.ui.RecordView$1)
.class Lio/dcloud/common/adapter/ui/RecordView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/RecordView;->initArrowView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/RecordView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/RecordView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$1;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$1;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Lio/dcloud/common/adapter/ui/RecordView;->access$000(Lio/dcloud/common/adapter/ui/RecordView;Landroid/view/MotionEvent;I)V

    const/4 p1, 0x1

    return p1
.end method

###### Class io.dcloud.common.adapter.ui.RecordView.AnonymousClass2 (io.dcloud.common.adapter.ui.RecordView$2)
.class Lio/dcloud/common/adapter/ui/RecordView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/RecordView;->initArrowView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/RecordView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/RecordView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$2;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$2;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lio/dcloud/common/adapter/ui/RecordView;->access$000(Lio/dcloud/common/adapter/ui/RecordView;Landroid/view/MotionEvent;I)V

    return v0
.end method

###### Class io.dcloud.common.adapter.ui.RecordView.AnonymousClass3 (io.dcloud.common.adapter.ui.RecordView$3)
.class Lio/dcloud/common/adapter/ui/RecordView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/RecordView;->update(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/RecordView;

.field final synthetic val$anchorY:I

.field final synthetic val$recordType:I


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/RecordView;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$3;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    iput p2, p0, Lio/dcloud/common/adapter/ui/RecordView$3;->val$anchorY:I

    iput p3, p0, Lio/dcloud/common/adapter/ui/RecordView$3;->val$recordType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/RecordView$3;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    iget v1, p0, Lio/dcloud/common/adapter/ui/RecordView$3;->val$anchorY:I

    iget v2, p0, Lio/dcloud/common/adapter/ui/RecordView$3;->val$recordType:I

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/adapter/ui/RecordView;->update0(II)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.RecordView.AnonymousClass4 (io.dcloud.common.adapter.ui.RecordView$4)
.class Lio/dcloud/common/adapter/ui/RecordView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/RecordView;->requestCurrentLocation(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/RecordView;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/RecordView;Landroid/widget/TextView;Landroid/app/Activity;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$4;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/RecordView$4;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/RecordView$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const-string p1, "AssistantInput"

    const/4 v0, -0x2

    if-ne p2, v0, :cond_74

    .line 1
    sget-object p2, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    iget-object p2, p2, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    new-instance v0, Lio/dcloud/common/adapter/ui/RecordView$4$1;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/RecordView$4$1;-><init>(Lio/dcloud/common/adapter/ui/RecordView$4;)V

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, v0, v1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 12
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    :try_start_1e
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/RecordView$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 15
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/RecordView$4;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLocationService successful "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lio/dcloud/common/adapter/ui/RecordView;->access$200(Lio/dcloud/common/adapter/ui/RecordView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1e .. :try_end_43} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_43} :catch_44

    goto :goto_74

    :catch_44
    move-exception p1

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Permission"

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    :catch_5c
    move-exception p2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkLocationService ActivityNotFoundException ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_74
    :goto_74
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.RecordView.AnonymousClass4.AnonymousClass1 (io.dcloud.common.adapter.ui.RecordView$4$1)
.class Lio/dcloud/common/adapter/ui/RecordView$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/RecordView$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/common/adapter/ui/RecordView$4;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/RecordView$4;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$4$1;->this$1:Lio/dcloud/common/adapter/ui/RecordView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 4

    .line 1
    sget-object p2, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    iget-object p2, p2, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, v0}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    if-ne p1, v0, :cond_18

    .line 3
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$4$1;->this$1:Lio/dcloud/common/adapter/ui/RecordView$4;

    iget-object p2, p1, Lio/dcloud/common/adapter/ui/RecordView$4;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/RecordView$4;->val$view:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/ui/RecordView;->access$100(Lio/dcloud/common/adapter/ui/RecordView;Landroid/widget/TextView;)V

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.common.adapter.ui.RecordView.AnonymousClass5 (io.dcloud.common.adapter.ui.RecordView$5)
.class Lio/dcloud/common/adapter/ui/RecordView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/RecordView;->requestCurrentLocation(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/RecordView;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/RecordView;Landroid/widget/TextView;Landroid/app/Activity;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$5;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/RecordView$5;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/RecordView$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const-string p1, "AssistantInput"

    const/4 v0, -0x2

    if-ne p2, v0, :cond_4b

    .line 1
    sget-object p2, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    iget-object p2, p2, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    new-instance v0, Lio/dcloud/common/adapter/ui/RecordView$5$1;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/RecordView$5$1;-><init>(Lio/dcloud/common/adapter/ui/RecordView$5;)V

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, v0, v1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 13
    :try_start_17
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/RecordView$5;->val$activity:Landroid/app/Activity;

    invoke-static {p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->goSafeCenter(Landroid/app/Activity;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_1c} :catch_33
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_4b

    :catch_1d
    move-exception p2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    :catch_33
    move-exception p2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkLocationService ActivityNotFoundException ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_4b
    :goto_4b
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.RecordView.AnonymousClass5.AnonymousClass1 (io.dcloud.common.adapter.ui.RecordView$5$1)
.class Lio/dcloud/common/adapter/ui/RecordView$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/RecordView$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/common/adapter/ui/RecordView$5;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/RecordView$5;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$5$1;->this$1:Lio/dcloud/common/adapter/ui/RecordView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 4

    .line 1
    sget-object p2, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    iget-object p2, p2, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, v0}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    if-ne p1, v0, :cond_18

    .line 3
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$5$1;->this$1:Lio/dcloud/common/adapter/ui/RecordView$5;

    iget-object p2, p1, Lio/dcloud/common/adapter/ui/RecordView$5;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/RecordView$5;->val$view:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/ui/RecordView;->access$100(Lio/dcloud/common/adapter/ui/RecordView;Landroid/widget/TextView;)V

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.common.adapter.ui.RecordView.AnonymousClass6 (io.dcloud.common.adapter.ui.RecordView$6)
.class Lio/dcloud/common/adapter/ui/RecordView$6;
.super Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$StrongMessageListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/RecordView;->requestCurrentLocation0(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/RecordView;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/RecordView;Ljava/lang/Object;Landroid/widget/TextView;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$6;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/RecordView$6;->val$view:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$StrongMessageListener;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onReceiver(Ljava/lang/Object;)V
    .registers 3

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->setText(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$6;->val$view:Landroid/widget/TextView;

    sget v0, Lio/dcloud/base/R$string;->dcloud_geo_current_address:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1a

    .line 5
    :cond_13
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$6;->val$view:Landroid/widget/TextView;

    sget v0, Lio/dcloud/base/R$string;->dcloud_geo_current_address:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1a
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.RecordView.RecordData (io.dcloud.common.adapter.ui.RecordView$RecordData)
.class Lio/dcloud/common/adapter/ui/RecordView$RecordData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/RecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordData"
.end annotation


# instance fields
.field mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

.field mRecordType:I

.field final synthetic this$0:Lio/dcloud/common/adapter/ui/RecordView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/RecordView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    .line 2
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    return-void
.end method


# virtual methods
.method checkType(I)V
    .registers 10

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    goto/16 :goto_87

    .line 1
    :cond_5
    iget v0, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordType:I

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->hasChanged(I)Z

    move-result v0

    if-eqz v0, :cond_87

    :cond_16
    const/4 v0, -0x1

    if-eq p1, v0, :cond_87

    .line 2
    iput p1, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordType:I

    const/4 v0, 0x2

    new-array v0, v0, [Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    .line 3
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    .line 4
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lio/dcloud/common/adapter/ui/RecordView;->access$300(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_87

    .line 6
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecordView checkType load recordType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";value="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AssistantInput"

    invoke-static {v1, v2, p1}, Lio/dcloud/common/adapter/ui/RecordView;->access$200(Lio/dcloud/common/adapter/ui/RecordView;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "&"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    :goto_55
    array-length v2, p1

    if-ge v1, v2, :cond_87

    .line 9
    aget-object v2, p1, v1

    const-string v3, "-"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 11
    aget-object v3, v2, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_84

    .line 13
    :try_start_68
    aget-object v2, v2, v0

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    new-instance v4, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    iget-object v5, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v2, v6, v7}, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;-><init>(Lio/dcloud/common/adapter/ui/RecordView;Ljava/lang/String;J)V

    aput-object v4, v3, v1
    :try_end_7f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_68 .. :try_end_7f} :catch_80

    goto :goto_84

    :catch_80
    move-exception v2

    .line 16
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_84
    :goto_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_87
    :goto_87
    return-void
.end method

.method hasChanged(I)Z
    .registers 4

    .line 1
    sget-object p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    const-string v0, "assis_input"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lio/dcloud/common/adapter/util/SP;->hasChanged(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method record(Ljava/lang/String;I)V
    .registers 10

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    goto/16 :goto_c7

    .line 1
    :cond_5
    invoke-static {p2}, Lio/dcloud/common/adapter/ui/RecordView$Utils;->needRecord(I)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 2
    new-instance v0, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;-><init>(Lio/dcloud/common/adapter/ui/RecordView;Ljava/lang/String;J)V

    .line 3
    invoke-virtual {p0, p2}, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->checkType(I)V

    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x7

    const-string v3, "utf-8"

    const/4 v4, 0x0

    if-eq p2, v2, :cond_85

    const/4 v2, 0x5

    if-eq p2, v2, :cond_85

    const/4 v2, 0x6

    if-ne p2, v2, :cond_2b

    goto :goto_85

    .line 13
    :cond_2b
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    aget-object v5, v2, v4

    const/4 v6, 0x1

    if-eqz v5, :cond_42

    .line 14
    aget-object v2, v2, v4

    iget-object v2, v2, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;->mContent:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_42

    .line 15
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    aget-object v2, p1, v4

    aput-object v2, p1, v6

    .line 18
    :cond_42
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    aput-object v0, p1, v4

    .line 20
    aget-object p1, p1, v4

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;->mContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_99

    .line 22
    :try_start_50
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    aget-object p1, p1, v4

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;->mContent:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    aget-object v0, p1, v6

    if-eqz v0, :cond_99

    aget-object p1, p1, v6

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;->mContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_99

    const-string p1, "&"

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    aget-object p1, p1, v6

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;->mContent:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_50 .. :try_end_7f} :catch_80

    goto :goto_99

    :catch_80
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_99

    .line 29
    :cond_85
    :goto_85
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->mRecordItems:[Lio/dcloud/common/adapter/ui/RecordView$RecordItem;

    aput-object v0, p1, v4

    .line 31
    :try_start_89
    aget-object p1, p1, v4

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;->mContent:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_94
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_89 .. :try_end_94} :catch_95

    goto :goto_99

    :catch_95
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 55
    :cond_99
    :goto_99
    sget-object p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v0}, Lio/dcloud/common/adapter/ui/RecordView;->access$400(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordData;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecordView record recordType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";value="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AssistantInput"

    invoke-static {p1, v0, p2}, Lio/dcloud/common/adapter/ui/RecordView;->access$200(Lio/dcloud/common/adapter/ui/RecordView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c7
    :goto_c7
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.RecordView.RecordItem (io.dcloud.common.adapter.ui.RecordView$RecordItem)
.class Lio/dcloud/common/adapter/ui/RecordView$RecordItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/RecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordItem"
.end annotation


# instance fields
.field mContent:Ljava/lang/String;

.field mTime:J

.field final synthetic this$0:Lio/dcloud/common/adapter/ui/RecordView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/RecordView;Ljava/lang/String;J)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;->this$0:Lio/dcloud/common/adapter/ui/RecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;->mContent:Ljava/lang/String;

    .line 3
    iput-wide p3, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;->mTime:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dcloud/common/adapter/ui/RecordView$RecordItem;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.common.adapter.ui.RecordView.Utils (io.dcloud.common.adapter.ui.RecordView$Utils)
.class Lio/dcloud/common/adapter/ui/RecordView$Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/RecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Utils"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertInt(Ljava/lang/String;)I
    .registers 3

    const-string v0, "nick"

    .line 1
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_b

    const/4 v1, 0x3

    goto :goto_4f

    :cond_b
    const-string v0, "address"

    .line 3
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v1, 0x4

    goto :goto_4f

    :cond_15
    const-string v0, "tel"

    .line 5
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x1

    goto :goto_4f

    :cond_1f
    const-string v0, "email"

    .line 7
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v1, 0x2

    goto :goto_4f

    :cond_29
    const-string v0, "none"

    .line 9
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_4f

    :cond_32
    const-string v0, "company"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v1, 0x5

    goto :goto_4f

    :cond_3c
    const-string v0, "tax"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v1, 0x6

    goto :goto_4f

    :cond_46
    const-string v0, "id"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4f

    const/4 v1, 0x7

    :cond_4f
    :goto_4f
    return v1
.end method

.method static needRecord(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    .line 1
    invoke-static {}, Lio/dcloud/common/util/AssistInputUtil;->useAssistSettingPhone()Z

    move-result p0

    if-eqz p0, :cond_3c

    goto :goto_3b

    :cond_a
    const/4 v1, 0x5

    if-ne p0, v1, :cond_14

    .line 5
    invoke-static {}, Lio/dcloud/common/util/AssistInputUtil;->useAssistSettingCompany()Z

    move-result p0

    if-eqz p0, :cond_3c

    goto :goto_3b

    :cond_14
    const/4 v1, 0x6

    if-ne p0, v1, :cond_1e

    .line 9
    invoke-static {}, Lio/dcloud/common/util/AssistInputUtil;->useAssistSettingTax()Z

    move-result p0

    if-eqz p0, :cond_3c

    goto :goto_3b

    :cond_1e
    const/4 v1, 0x7

    if-ne p0, v1, :cond_28

    .line 13
    invoke-static {}, Lio/dcloud/common/util/AssistInputUtil;->useAssistSettingId()Z

    move-result p0

    if-eqz p0, :cond_3c

    goto :goto_3b

    :cond_28
    const/4 v1, 0x3

    if-ne p0, v1, :cond_32

    .line 17
    invoke-static {}, Lio/dcloud/common/util/AssistInputUtil;->useAssistSettingName()Z

    move-result p0

    if-eqz p0, :cond_3c

    goto :goto_3b

    :cond_32
    const/4 v1, 0x2

    if-ne p0, v1, :cond_3c

    .line 21
    invoke-static {}, Lio/dcloud/common/util/AssistInputUtil;->useAssistSettingEmail()Z

    move-result p0

    if-eqz p0, :cond_3c

    :goto_3b
    const/4 v0, 0x0

    :cond_3c
    return v0
.end method
