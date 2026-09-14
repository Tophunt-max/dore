###### Class com.taobao.weex.ui.component.AbstractEditComponent (com.taobao.weex.ui.component.AbstractEditComponent)
.class public abstract Lcom/taobao/weex/ui/component/AbstractEditComponent;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "AbstractEditComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;,
        Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;,
        Lcom/taobao/weex/ui/component/AbstractEditComponent$ReturnTypes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Lcom/taobao/weex/ui/view/WXEditText;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_TEXT_FORMAT_REPEAT:I = 0x3


# instance fields
.field private mAutoFocus:Z

.field private mBeforeText:Ljava/lang/String;

.field private mEditorAction:I

.field private mEditorActionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView$OnEditorActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFormatRepeatCount:I

.field private mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

.field private mIgnoreNextOnInputEvent:Z

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mKeepSelectionIndex:Z

.field private mLastValue:Ljava/lang/String;

.field private mLineHeight:I

.field private mListeningKeyboard:Z

.field private mMax:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mOnClickListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

.field private mPaint:Landroid/text/TextPaint;

.field private mReturnKeyType:Ljava/lang/String;

.field private mTextChangedEventDispatcher:Landroid/text/TextWatcher;

.field private mTextChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;

.field private mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    const-string p1, ""

    .line 78
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mBeforeText:Ljava/lang/String;

    const-string p2, "text"

    .line 80
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    const/4 p2, 0x0

    .line 81
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMax:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMin:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLastValue:Ljava/lang/String;

    const/4 p1, 0x6

    .line 84
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    .line 85
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mReturnKeyType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mListeningKeyboard:Z

    .line 89
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    .line 90
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mKeepSelectionIndex:Z

    .line 91
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    .line 94
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatRepeatCount:I

    .line 97
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    const/4 p1, -0x1

    .line 98
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLineHeight:I

    .line 210
    new-instance p1, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mOnClickListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

    .line 102
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 103
    new-instance p1, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->decideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLastValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLastValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I
    .registers 1

    .line 75
    iget p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    return p0
.end method

.method static synthetic access$1300(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Z
    .registers 1

    .line 75
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/taobao/weex/ui/component/AbstractEditComponent;Z)Z
    .registers 2

    .line 75
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mBeforeText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mBeforeText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mReturnKeyType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Z
    .registers 1

    .line 75
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mListeningKeyboard:Z

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMax:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I
    .registers 1

    .line 75
    iget p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatRepeatCount:I

    return p0
.end method

.method static synthetic access$902(Lcom/taobao/weex/ui/component/AbstractEditComponent;I)I
    .registers 2

    .line 75
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatRepeatCount:I

    return p1
.end method

.method private addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 922
    :cond_3
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 923
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1b

    .line 924
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;->registerKeyboardEventListener(Landroid/app/Activity;Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;)Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    :cond_1b
    return-void
.end method

.method private applyOnClickListener()V
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mOnClickListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V

    return-void
.end method

.method private decideSoftKeyboard()V
    .registers 5

    .line 820
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 821
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 822
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1e

    .line 823
    new-instance v2, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1e
    return-void
.end method

.method private fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    if-eqz p1, :cond_3c

    .line 406
    new-instance v4, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "value"

    .line 407
    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timeStamp"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 411
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 412
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "attrs"

    .line 413
    invoke-interface {v5, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_3c
    return-void
.end method

.method private getInputType(Ljava/lang/String;)I
    .registers 8

    .line 688
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_b8

    goto/16 :goto_76

    :sswitch_11
    const-string v0, "datetime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_76

    :cond_1b
    const/16 v5, 0x8

    goto/16 :goto_76

    :sswitch_1f
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_76

    :cond_28
    const/4 v5, 0x7

    goto :goto_76

    :sswitch_2a
    const-string v0, "email"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_76

    :cond_33
    const/4 v5, 0x6

    goto :goto_76

    :sswitch_35
    const-string v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_76

    :cond_3e
    const/4 v5, 0x5

    goto :goto_76

    :sswitch_40
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_76

    :cond_49
    const/4 v5, 0x4

    goto :goto_76

    :sswitch_4b
    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    goto :goto_76

    :cond_54
    const/4 v5, 0x3

    goto :goto_76

    :sswitch_56
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    goto :goto_76

    :cond_5f
    const/4 v5, 0x2

    goto :goto_76

    :sswitch_61
    const-string v0, "tel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto :goto_76

    :cond_6a
    const/4 v5, 0x1

    goto :goto_76

    :sswitch_6c
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_75

    goto :goto_76

    :cond_75
    const/4 v5, 0x0

    :goto_76
    packed-switch v5, :pswitch_data_de

    goto :goto_a3

    :pswitch_7a
    const/16 v1, 0x81

    .line 704
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b7

    .line 705
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_b7

    :pswitch_90
    const/16 v1, 0x21

    goto :goto_b7

    .line 713
    :pswitch_93
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_ae

    .line 714
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v4}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    goto :goto_ae

    :goto_a3
    :pswitch_a3
    const/4 v1, 0x1

    goto :goto_b7

    .line 694
    :pswitch_a5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v4}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    :cond_ae
    :goto_ae
    const/4 v1, 0x0

    goto :goto_b7

    :pswitch_b0
    const/16 v1, 0x11

    goto :goto_b7

    :pswitch_b3
    const/4 v1, 0x3

    goto :goto_b7

    :pswitch_b5
    const/16 v1, 0x2002

    :cond_b7
    :goto_b7
    :pswitch_b7
    return v1

    :sswitch_data_b8
    .sparse-switch
        -0x3da724b7 -> :sswitch_6c
        0x1c01b -> :sswitch_61
        0x1c56f -> :sswitch_56
        0x2eefae -> :sswitch_4b
        0x36452d -> :sswitch_40
        0x3652cd -> :sswitch_35
        0x5c24b9c -> :sswitch_2a
        0x4889ba9b -> :sswitch_1f
        0x6ae9bb7b -> :sswitch_11
    .end sparse-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_b5
        :pswitch_b3
        :pswitch_b0
        :pswitch_a5
        :pswitch_a3
        :pswitch_93
        :pswitch_90
        :pswitch_7a
        :pswitch_b7
    .end packed-switch
.end method

.method private getTextAlign(Ljava/lang/String;)I
    .registers 6

    .line 765
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->isLayoutRTL()Z

    move-result v0

    const v1, 0x800005

    const v2, 0x800003

    if-eqz v0, :cond_10

    const v0, 0x800005

    goto :goto_13

    :cond_10
    const v0, 0x800003

    .line 767
    :goto_13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return v0

    :cond_1a
    const-string v3, "left"

    .line 771
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const v1, 0x800003

    goto :goto_3b

    :cond_26
    const-string v2, "center"

    .line 773
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/16 v1, 0x11

    goto :goto_3b

    :cond_31
    const-string v2, "right"

    .line 775
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v0

    :goto_3b
    return v1
.end method

.method private hideSoftKeyboard()V
    .registers 5

    .line 754
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 755
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$10;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$10;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/WXEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method

.method private parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_8e

    if-nez p2, :cond_7

    goto/16 :goto_8e

    :cond_7
    const-string v1, "/[\\S]+/[i]?[m]?[g]?"

    .line 972
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "WXInput"

    if-nez v1, :cond_2e

    .line 973
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal js pattern syntax: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2e
    const/4 v1, 0x0

    const-string v3, "/"

    .line 979
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 980
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v3, "i"

    .line 982
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_52

    const/4 v1, 0x2

    :cond_52
    const-string v3, "m"

    .line 986
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5c

    or-int/lit8 v1, v1, 0x20

    :cond_5c
    const-string v3, "g"

    .line 990
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 996
    :try_start_62
    invoke-static {p1, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_66
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_62 .. :try_end_66} :catch_67

    goto :goto_7c

    .line 998
    :catch_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pattern syntax error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_7c
    if-nez p1, :cond_7f

    return-object v0

    .line 1004
    :cond_7f
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-direct {v1, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$1;)V

    .line 1005
    invoke-static {v1, v3}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2102(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Z)Z

    .line 1006
    invoke-static {v1, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2202(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 1007
    invoke-static {v1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2302(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :cond_8e
    :goto_8e
    return-object v0
.end method

.method private showSoftKeyboard()Z
    .registers 5

    .line 740
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 743
    :cond_8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$9;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$9;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/WXEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected final addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .registers 4

    if-eqz p1, :cond_22

    .line 890
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_22

    .line 891
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    if-nez v1, :cond_1d

    .line 892
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    .line 893
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 907
    :cond_1d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .registers 4

    .line 310
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5a

    .line 314
    :cond_10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "change"

    .line 316
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 317
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/widget/TextView;)V

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    .line 333
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/widget/TextView;)V

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_3f

    :cond_2f
    const-string v0, "input"

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 353
    new-instance v0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3f
    :goto_3f
    const-string v0, "return"

    .line 383
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 384
    new-instance v0, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_4f
    const-string v0, "keyboard"

    .line 399
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    const/4 p1, 0x1

    .line 400
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mListeningKeyboard:Z

    :cond_5a
    :goto_5a
    return-void
.end method

.method public final addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3

    .line 912
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    .line 915
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 6

    .line 247
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "textAlign"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getTextAlign(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_15

    const v0, 0x800003

    .line 252
    :cond_15
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getVerticalGravity()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setGravity(I)V

    const-string v0, "#999999"

    .line 253
    invoke-static {v0}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2a

    .line 255
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setHintTextColor(I)V

    .line 258
    :cond_2a
    new-instance v0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Lcom/taobao/weex/ui/view/WXEditText;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedEventDispatcher:Landroid/text/TextWatcher;

    .line 302
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setTextSize(IF)V

    return-void
.end method

.method public blur()V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 783
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v0, :cond_21

    .line 784
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 785
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 786
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->interceptFocus()V

    .line 788
    :cond_1b
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->clearFocus()V

    .line 789
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->hideSoftKeyboard()V

    :cond_21
    return-void
.end method

.method protected convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 809
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "fontSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 815
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 811
    :cond_18
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_25
    const-string p1, "black"

    return-object p1
.end method

.method public destroy()V
    .registers 3

    .line 952
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 953
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 954
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->destroy()V

    .line 956
    :cond_12
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    if-eqz v0, :cond_23

    .line 958
    :try_start_16
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;->execute()V

    const/4 v0, 0x0

    .line 959
    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1d

    goto :goto_23

    :catchall_1d
    move-exception v0

    const-string v1, "Unregister throw "

    .line 961
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public focus()V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 795
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v0, :cond_28

    .line 796
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_28

    .line 797
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 798
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->ignoreFocus()V

    .line 800
    :cond_1b
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->requestFocus()Z

    const/4 v1, 0x1

    .line 801
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    .line 802
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusableInTouchMode(Z)V

    .line 803
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->showSoftKeyboard()Z

    :cond_28
    return-void
.end method

.method protected getMeasureHeight()F
    .registers 2

    .line 145
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getMeasuredLineHeight()F

    move-result v0

    return v0
.end method

.method protected final getMeasuredLineHeight()F
    .registers 3

    .line 141
    iget v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLineHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    if-lez v0, :cond_9

    int-to-float v0, v0

    goto :goto_10

    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    :goto_10
    return v0
.end method

.method public getSelectionRange(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 852
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 853
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 854
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 855
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    .line 857
    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 863
    :cond_1f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "selectionStart"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "selectionEnd"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    :cond_31
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1, v0, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method protected getVerticalGravity()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 75
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXEditText;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXEditText;
    .registers 4

    .line 183
    new-instance v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/ui/view/WXEditText;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-object v0
.end method

.method protected isConsumeTouch()Z
    .registers 2

    .line 207
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->isDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected layoutDirectionDidChanged(Z)V
    .registers 4

    .line 130
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    const-string v0, "textAlign"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 131
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getTextAlign(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_15

    const p1, 0x800003

    .line 135
    :cond_15
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v0, :cond_2b

    .line 136
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getVerticalGravity()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setGravity(I)V

    :cond_2b
    return-void
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .registers 2

    .line 75
    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 3

    .line 190
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onHostViewInitialized(Landroid/view/View;)V

    .line 191
    new-instance v0, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-void
.end method

.method public performOnChange(Ljava/lang/String;)V
    .registers 4

    .line 420
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 421
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "change"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 422
    :goto_14
    invoke-direct {p0, v1, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public setAutofocus(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autofocus"
    .end annotation

    .line 589
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 592
    :cond_7
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mAutoFocus:Z

    .line 593
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 594
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mAutoFocus:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    .line 595
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 596
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 597
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 598
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->showSoftKeyboard()Z

    goto :goto_24

    .line 600
    :cond_21
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->hideSoftKeyboard()V

    :goto_24
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "color"
    .end annotation

    .line 623
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 624
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1d

    .line 626
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setTextColor(I)V

    :cond_1d
    return-void
.end method

.method public setFontSize(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "fontSize"
    .end annotation

    .line 633
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    if-eqz p1, :cond_32

    .line 634
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "fontSize"

    .line 635
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setTextSize(IF)V

    :cond_32
    return-void
.end method

.method public setLines(I)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "lines"
    .end annotation

    .line 658
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 661
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setLines(I)V

    return-void
.end method

.method public setMax(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "max"
    .end annotation

    .line 731
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMax:Ljava/lang/String;

    return-void
.end method

.method public setMaxLength(I)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "maxLength"
    .end annotation

    .line 670
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 673
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setMaxlength(I)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "maxlength"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 683
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMaxLength(I)V

    return-void
.end method

.method public setMin(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "min"
    .end annotation

    .line 736
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMin:Ljava/lang/String;

    return-void
.end method

.method public setPlaceholder(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "placeholder"
    .end annotation

    if-eqz p1, :cond_12

    .line 555
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 558
    :cond_9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public setPlaceholderColor(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "placeholderColor"
    .end annotation

    .line 563
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 564
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1d

    .line 566
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setHintTextColor(I)V

    :cond_1d
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .line 428
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_1e0

    goto/16 :goto_e4

    :sswitch_f
    const-string v0, "autofocus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_e4

    :cond_19
    const/16 v3, 0x10

    goto/16 :goto_e4

    :sswitch_1d
    const-string v0, "allowCopyPaste"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_e4

    :cond_27
    const/16 v3, 0xf

    goto/16 :goto_e4

    :sswitch_2b
    const-string v0, "returnKeyType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_e4

    :cond_35
    const/16 v3, 0xe

    goto/16 :goto_e4

    :sswitch_39
    const-string v0, "singleline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_e4

    :cond_43
    const/16 v3, 0xd

    goto/16 :goto_e4

    :sswitch_47
    const-string v0, "placeholder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_e4

    :cond_51
    const/16 v3, 0xc

    goto/16 :goto_e4

    :sswitch_55
    const-string v0, "fontSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_e4

    :cond_5f
    const/16 v3, 0xb

    goto/16 :goto_e4

    :sswitch_63
    const-string v0, "disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_e4

    :cond_6d
    const/16 v3, 0xa

    goto/16 :goto_e4

    :sswitch_71
    const-string v0, "maxlength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_e4

    :cond_7b
    const/16 v3, 0x9

    goto/16 :goto_e4

    :sswitch_7f
    const-string v0, "lines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_e4

    :cond_89
    const/16 v3, 0x8

    goto/16 :goto_e4

    :sswitch_8d
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto :goto_e4

    :cond_96
    const/4 v3, 0x7

    goto :goto_e4

    :sswitch_98
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_e4

    :cond_a1
    const/4 v3, 0x6

    goto :goto_e4

    :sswitch_a3
    const-string v0, "min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    goto :goto_e4

    :cond_ac
    const/4 v3, 0x5

    goto :goto_e4

    :sswitch_ae
    const-string v0, "max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    goto :goto_e4

    :cond_b7
    const/4 v3, 0x4

    goto :goto_e4

    :sswitch_b9
    const-string v0, "maxLength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c2

    goto :goto_e4

    :cond_c2
    const/4 v3, 0x3

    goto :goto_e4

    :sswitch_c4
    const-string v0, "textAlign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    goto :goto_e4

    :cond_cd
    const/4 v3, 0x2

    goto :goto_e4

    :sswitch_cf
    const-string v0, "placeholderColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d8

    goto :goto_e4

    :cond_d8
    const/4 v3, 0x1

    goto :goto_e4

    :sswitch_da
    const-string v0, "keepSelectionIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e3

    goto :goto_e4

    :cond_e3
    const/4 v3, 0x0

    :goto_e4
    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_226

    .line 516
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 457
    :pswitch_ed
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_fa

    .line 459
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setAutofocus(Z)V

    :cond_fa
    return v2

    .line 510
    :pswitch_fb
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 511
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_116

    .line 512
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setAllowCopyPaste(Z)V

    :cond_116
    return v2

    .line 503
    :pswitch_117
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setReturnKeyType(Ljava/lang/String;)V

    return v2

    .line 477
    :pswitch_11f
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_12c

    .line 479
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setSingleLine(Z)V

    :cond_12c
    return v2

    .line 442
    :pswitch_12d
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_136

    .line 444
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setPlaceholder(Ljava/lang/String;)V

    :cond_136
    return v2

    .line 467
    :pswitch_137
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_140

    .line 469
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setFontSize(Ljava/lang/String;)V

    :cond_140
    return v2

    .line 430
    :pswitch_141
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_16e

    .line 431
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mHost:Landroid/view/View;

    if-eqz p2, :cond_16e

    .line 432
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_160

    .line 433
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mHost:Landroid/view/View;

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    .line 434
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mHost:Landroid/view/View;

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusableInTouchMode(Z)V

    goto :goto_16e

    .line 436
    :cond_160
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mHost:Landroid/view/View;

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v2}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusableInTouchMode(Z)V

    .line 437
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mHost:Landroid/view/View;

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v2}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    :cond_16e
    :goto_16e
    return v2

    .line 492
    :pswitch_16f
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_17c

    .line 494
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMaxLength(I)V

    :cond_17c
    return v2

    .line 482
    :pswitch_17d
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_18a

    .line 484
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setLines(I)V

    :cond_18a
    return v2

    .line 462
    :pswitch_18b
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_194

    .line 464
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setColor(Ljava/lang/String;)V

    :cond_194
    return v2

    .line 452
    :pswitch_195
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19e

    .line 454
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setType(Ljava/lang/String;)V

    :cond_19e
    return v2

    .line 500
    :pswitch_19f
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMin(Ljava/lang/String;)V

    return v2

    .line 497
    :pswitch_1a7
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMax(Ljava/lang/String;)V

    return v2

    .line 487
    :pswitch_1af
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1bc

    .line 489
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMaxLength(I)V

    :cond_1bc
    return v2

    .line 472
    :pswitch_1bd
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1c6

    .line 474
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setTextAlign(Ljava/lang/String;)V

    :cond_1c6
    return v2

    .line 447
    :pswitch_1c7
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d0

    .line 449
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setPlaceholderColor(Ljava/lang/String;)V

    :cond_1d0
    return v2

    .line 506
    :pswitch_1d1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 507
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mKeepSelectionIndex:Z

    return v2

    :sswitch_data_1e0
    .sparse-switch
        -0x712b3675 -> :sswitch_da
        -0x5dfbd650 -> :sswitch_cf
        -0x3f826a28 -> :sswitch_c4
        -0x2f2bce96 -> :sswitch_b9
        0x1a564 -> :sswitch_ae
        0x1a652 -> :sswitch_a3
        0x368f3a -> :sswitch_98
        0x5a72f63 -> :sswitch_8d
        0x6234eff -> :sswitch_7f
        0x76f454a -> :sswitch_71
        0x10263a7c -> :sswitch_63
        0x15caa0f0 -> :sswitch_55
        0x23a88573 -> :sswitch_47
        0x367fd03c -> :sswitch_39
        0x38797ee9 -> :sswitch_2b
        0x60e3fed5 -> :sswitch_1d
        0x6365ac89 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_226
    .packed-switch 0x0
        :pswitch_1d1
        :pswitch_1c7
        :pswitch_1bd
        :pswitch_1af
        :pswitch_1a7
        :pswitch_19f
        :pswitch_195
        :pswitch_18b
        :pswitch_17d
        :pswitch_16f
        :pswitch_141
        :pswitch_137
        :pswitch_12d
        :pswitch_11f
        :pswitch_117
        :pswitch_fb
        :pswitch_ed
    .end packed-switch
.end method

.method public setReturnKeyType(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "returnKeyType"
    .end annotation

    .line 521
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mReturnKeyType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_88

    .line 524
    :cond_10
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mReturnKeyType:Ljava/lang/String;

    .line 525
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    sparse-switch v1, :sswitch_data_8a

    goto :goto_64

    :sswitch_23
    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_64

    :cond_2c
    const/4 v0, 0x5

    goto :goto_64

    :sswitch_2e
    const-string v1, "send"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_64

    :cond_37
    const/4 v0, 0x4

    goto :goto_64

    :sswitch_39
    const-string v1, "next"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto :goto_64

    :cond_42
    const/4 v0, 0x3

    goto :goto_64

    :sswitch_44
    const-string v1, "done"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto :goto_64

    :cond_4d
    const/4 v0, 0x2

    goto :goto_64

    :sswitch_4f
    const-string v1, "go"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    goto :goto_64

    :cond_58
    const/4 v0, 0x1

    goto :goto_64

    :sswitch_5a
    const-string v1, "search"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    goto :goto_64

    :cond_63
    const/4 v0, 0x0

    :goto_64
    packed-switch v0, :pswitch_data_a4

    goto :goto_7a

    .line 527
    :pswitch_68
    iput v6, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_7a

    .line 539
    :pswitch_6b
    iput v3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_7a

    .line 533
    :pswitch_6e
    iput v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_7a

    :pswitch_71
    const/4 p1, 0x6

    .line 542
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_7a

    .line 530
    :pswitch_75
    iput v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_7a

    .line 536
    :pswitch_78
    iput v4, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    .line 549
    :goto_7a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->blur()V

    .line 550
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    iget v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setImeOptions(I)V

    :cond_88
    :goto_88
    return-void

    nop

    :sswitch_data_8a
    .sparse-switch
        -0x36059a58 -> :sswitch_5a
        0xce8 -> :sswitch_4f
        0x2f2382 -> :sswitch_44
        0x338af3 -> :sswitch_39
        0x35cf88 -> :sswitch_2e
        0x5c13d641 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_78
        :pswitch_75
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
    .end packed-switch
.end method

.method public setSelectionRange(II)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 839
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1e

    .line 840
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->length()I

    move-result v1

    if-gt p1, v1, :cond_1e

    if-le p2, v1, :cond_17

    goto :goto_1e

    .line 844
    :cond_17
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->focus()V

    .line 845
    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    nop

    :cond_1e
    :goto_1e
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "singleline"
    .end annotation

    .line 650
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 653
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setSingleLine(Z)V

    return-void
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "textAlign"
    .end annotation

    .line 642
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getTextAlign(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_14

    .line 644
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getVerticalGravity()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setGravity(I)V

    :cond_14
    return-void
.end method

.method public setTextFormatter(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    :try_start_0
    const-string v0, "formatRule"

    .line 872
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "formatReplace"

    .line 873
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recoverRule"

    .line 874
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "recoverReplace"

    .line 875
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 877
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    move-result-object v0

    .line 878
    invoke-direct {p0, v2, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    move-result-object p1

    if-eqz v0, :cond_31

    if-eqz p1, :cond_31

    .line 881
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$1;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception p1

    .line 884
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_31
    :goto_31
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "type"
    .end annotation

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "weex"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_51

    .line 574
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_51

    .line 577
    :cond_27
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    .line 578
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInputType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 579
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    goto :goto_51

    .line 582
    :cond_4e
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->applyOnClickListener()V

    :cond_51
    :goto_51
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "value"
    .end annotation

    .line 607
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-nez v0, :cond_9

    return-void

    .line 610
    :cond_9
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    :cond_14
    const/4 v1, 0x1

    .line 614
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    .line 615
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->getSelectionStart()I

    move-result v1

    .line 616
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-boolean v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mKeepSelectionIndex:Z

    if-eqz v2, :cond_23

    goto :goto_27

    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_27
    if-nez p1, :cond_2a

    const/4 v1, 0x0

    .line 618
    :cond_2a
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setSelection(I)V

    return-void
.end method

.method protected updateStyleAndAttrs()V
    .registers 8

    .line 149
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->size()I

    move-result v0

    if-lez v0, :cond_8d

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    const-string v2, "fontSize"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2d

    .line 153
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v1

    goto :goto_2e

    :cond_2d
    const/4 v1, -0x1

    .line 156
    :goto_2e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    const-string v4, "fontFamily"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 157
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/dom/WXStyle;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_42
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    const-string v4, "fontStyle"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 161
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/dom/WXStyle;->getFontStyle(Ljava/util/Map;)I

    move-result v3

    goto :goto_58

    :cond_57
    const/4 v3, -0x1

    .line 164
    :goto_58
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 165
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/dom/WXStyle;->getFontWeight(Ljava/util/Map;)I

    move-result v4

    goto :goto_6e

    :cond_6d
    const/4 v4, -0x1

    .line 168
    :goto_6e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getViewPortWidthForFloat()F

    move-result v6

    invoke-static {v5, v6}, Lcom/taobao/weex/dom/WXStyle;->getLineHeight(Ljava/util/Map;F)I

    move-result v5

    if-eq v5, v2, :cond_7e

    .line 170
    iput v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLineHeight:I

    :cond_7e
    if-eq v1, v2, :cond_86

    .line 173
    iget-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_86
    if-eqz v0, :cond_8d

    .line 176
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3, v4, v0}, Lcom/taobao/weex/utils/TypefaceUtil;->applyFontStyle(Landroid/graphics/Paint;IILjava/lang/String;)V

    :cond_8d
    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass1 (com.taobao.weex.ui.component.AbstractEditComponent$1)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$1;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "AbstractEditComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Lcom/taobao/weex/layout/ContentBoxMeasurement;-><init>()V

    return-void
.end method


# virtual methods
.method public layoutAfter(FF)V
    .registers 3

    return-void
.end method

.method public layoutBefore()V
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->updateStyleAndAttrs()V

    return-void
.end method

.method public measureInternal(FFII)V
    .registers 5

    .line 107
    invoke-static {p1}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result p2

    if-nez p2, :cond_a

    sget p2, Lcom/taobao/weex/layout/MeasureMode;->UNSPECIFIED:I

    if-ne p3, p2, :cond_b

    :cond_a
    const/4 p1, 0x0

    .line 110
    :cond_b
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;->mMeasureWidth:F

    .line 111
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getMeasureHeight()F

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;->mMeasureHeight:F

    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass10 (com.taobao.weex.ui.component.AbstractEditComponent$10)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$10;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->hideSoftKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 755
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$10;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 758
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$10;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$10;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass11 (com.taobao.weex.ui.component.AbstractEditComponent$11)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$11;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->decideSoftKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/content/Context;)V
    .registers 3

    .line 823
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 826
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 827
    instance-of v1, v0, Landroid/widget/EditText;

    if-nez v1, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 828
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2a
    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass12 (com.taobao.weex.ui.component.AbstractEditComponent$12)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$12;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private handled:Z

.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 893
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 894
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;->handled:Z

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 898
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1800(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v1, :cond_a

    .line 900
    iget-boolean v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;->handled:Z

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v1

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;->handled:Z

    goto :goto_a

    .line 903
    :cond_22
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;->handled:Z

    return p1
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass13 (com.taobao.weex.ui.component.AbstractEditComponent$13)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$13;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/content/Context;)V
    .registers 3

    .line 924
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardEvent(Z)V
    .registers 6

    .line 927
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 928
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_6e

    .line 931
    :cond_1d
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 932
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isShow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_66

    .line 934
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 935
    iget-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->val$context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 936
    iget-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    sub-int/2addr v2, v3

    int-to-float v1, v2

    iget-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .line 937
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    .line 936
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v1

    .line 938
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "keyboardSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    :cond_66
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    const-string v2, "keyboard"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6f

    :cond_6e
    :goto_6e
    return-void

    :cond_6f
    :goto_6f
    if-nez p1, :cond_76

    .line 943
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->blur()V

    :cond_76
    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass2 (com.taobao.weex.ui.component.AbstractEditComponent$2)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$2;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .registers 4

    if-nez p1, :cond_7

    .line 195
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    .line 197
    :cond_7
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    const-string v1, ":focus"

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setPseudoClassStatus(Ljava/lang/String;Z)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass3 (com.taobao.weex.ui.component.AbstractEditComponent$3)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$3;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostViewClick()V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$100(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_5d

    .line 222
    :cond_1a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    .line 223
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 224
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->interceptFocus()V

    .line 226
    :cond_30
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper;->pickTime(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    goto :goto_5d

    .line 215
    :cond_36
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    .line 216
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 217
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->interceptFocus()V

    .line 219
    :cond_4c
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$300(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$400(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper;->pickDate(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    :goto_5d
    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass4 (com.taobao.weex.ui.component.AbstractEditComponent$4)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$4;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$editText:Lcom/taobao/weex/ui/view/WXEditText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 3

    .line 258
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 296
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 297
    invoke-interface {v1, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    .line 261
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 262
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 263
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9

    .line 270
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 271
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$700(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$800(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_70

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_70

    .line 275
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$902(Lcom/taobao/weex/ui/component/AbstractEditComponent;I)I

    .line 276
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->getSelectionStart()I

    move-result p2

    .line 277
    iget-object p3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object p3

    iget-object p4, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p4}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object p4

    invoke-interface {p1, v2, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$700(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$800(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 278
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setSelection(I)V

    return-void

    .line 283
    :cond_70
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0, v2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$902(Lcom/taobao/weex/ui/component/AbstractEditComponent;I)I

    .line 286
    :cond_75
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 287
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 288
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_87

    :cond_97
    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass5 (com.taobao.weex.ui.component.AbstractEditComponent$5)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$5;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/widget/TextView;)V
    .registers 3

    .line 317
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->val$text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .registers 4

    if-eqz p1, :cond_12

    .line 321
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->val$text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1002(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_46

    .line 323
    :cond_12
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->val$text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_1c

    const-string p1, ""

    .line 325
    :cond_1c
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 326
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "change"

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1100(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->val$text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1002(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;

    :cond_46
    :goto_46
    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass6 (com.taobao.weex.ui.component.AbstractEditComponent$6)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$6;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/widget/TextView;)V
    .registers 3

    .line 333
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->val$text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 336
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I

    move-result p1

    if-ne p2, p1, :cond_54

    .line 337
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->val$text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_12

    const-string p1, ""

    .line 339
    :cond_12
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    .line 340
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "change"

    invoke-static {p2, p3, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1100(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->val$text:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1002(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    :cond_3c
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 344
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->interceptFocus()V

    .line 346
    :cond_4d
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    const/4 p1, 0x1

    return p1

    :cond_54
    const/4 p1, 0x0

    return p1
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass7 (com.taobao.weex.ui.component.AbstractEditComponent$7)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$7;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 353
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 361
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1300(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 362
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1302(Lcom/taobao/weex/ui/component/AbstractEditComponent;Z)Z

    .line 363
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1402(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 367
    :cond_18
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1400(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_29

    return-void

    .line 371
    :cond_29
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1402(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "input"

    invoke-static {p2, p3, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1100(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass8 (com.taobao.weex.ui.component.AbstractEditComponent$8)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$8;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 384
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 387
    iget-object p3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I

    move-result p3

    if-ne p2, p3, :cond_2f

    .line 388
    new-instance p2, Ljava/util/HashMap;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 389
    iget-object p3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "returnKeyType"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "value"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    const-string p3, "return"

    invoke-virtual {p1, p3, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1

    :cond_2f
    const/4 p1, 0x0

    return p1
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass9 (com.taobao.weex.ui.component.AbstractEditComponent$9)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$9;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->showSoftKeyboard()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 743
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$9;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 746
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$9;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$9;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.PatternWrapper (com.taobao.weex.ui.component.AbstractEditComponent$PatternWrapper)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternWrapper"
.end annotation


# instance fields
.field private global:Z

.field private matcher:Ljava/util/regex/Pattern;

.field private replace:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1021
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->global:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$1;)V
    .registers 2

    .line 1020
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;-><init>()V

    return-void
.end method

.method static synthetic access$2100(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Z
    .registers 1

    .line 1020
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->global:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Z)Z
    .registers 2

    .line 1020
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->global:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/util/regex/Pattern;
    .registers 1

    .line 1020
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->matcher:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .registers 2

    .line 1020
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->matcher:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/lang/String;
    .registers 1

    .line 1020
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->replace:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1020
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->replace:Ljava/lang/String;

    return-object p1
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.ReturnTypes (com.taobao.weex.ui.component.AbstractEditComponent$ReturnTypes)
.class interface abstract Lcom/taobao/weex/ui/component/AbstractEditComponent$ReturnTypes;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ReturnTypes"
.end annotation


# static fields
.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final DONE:Ljava/lang/String; = "done"

.field public static final GO:Ljava/lang/String; = "go"

.field public static final NEXT:Ljava/lang/String; = "next"

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final SEND:Ljava/lang/String; = "send"

###### Class com.taobao.weex.ui.component.AbstractEditComponent.TextFormatter (com.taobao.weex.ui.component.AbstractEditComponent$TextFormatter)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextFormatter"
.end annotation


# instance fields
.field private format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

.field private recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)V
    .registers 3

    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    .line 1032
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$1;)V
    .registers 4

    .line 1026
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)V

    return-void
.end method

.method static synthetic access$700(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1026
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1026
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private format(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1037
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    if-eqz v0, :cond_4f

    .line 1038
    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2100(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1039
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2200(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2300(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1041
    :cond_1f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2200(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2300(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    return-object p1

    :catchall_34
    move-exception v0

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[format] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WXInput"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    return-object p1
.end method

.method private recover(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1053
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    if-eqz v0, :cond_4f

    .line 1054
    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2100(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1055
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2200(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2300(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1057
    :cond_1f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2200(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2300(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    return-object p1

    :catchall_34
    move-exception v0

    .line 1062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[formatted] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WXInput"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    return-object p1
.end method
