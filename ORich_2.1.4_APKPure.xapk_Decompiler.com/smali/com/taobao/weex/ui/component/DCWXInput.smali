###### Class com.taobao.weex.ui.component.DCWXInput (com.taobao.weex.ui.component.DCWXInput)
.class public Lcom/taobao/weex/ui/component/DCWXInput;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "DCWXInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;,
        Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;,
        Lcom/taobao/weex/ui/component/DCWXInput$ReturnTypes;
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
.field final ADJUST_POSITION:Ljava/lang/String;

.field final PASSWORD:Ljava/lang/String;

.field private cursor:I

.field isConfirmHold:Z

.field private isLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isNeedConfirm:Z

.field private isPassword:Z

.field keyboardHeight:F

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

.field private mFormatter:Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

.field private mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

.field private mIgnoreNextOnInputEvent:Z

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLineHeight:I

.field private mListeningConfirm:Z

.field private mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

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

.field private measureHeight:F

.field private measureWidht:F

.field private placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

.field private placeholderTextAlign:Ljava/lang/String;

.field private selectionEnd:I

.field private selectionStart:I

.field private textAlign:Ljava/lang/String;

.field final underLineFilter:Landroid/text/InputFilter;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    const-string p1, ""

    .line 92
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mBeforeText:Ljava/lang/String;

    const-string p1, "text"

    .line 93
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isPassword:Z

    const/4 p2, 0x6

    .line 95
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    const/4 p2, 0x0

    .line 96
    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mReturnKeyType:Ljava/lang/String;

    .line 98
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mListeningConfirm:Z

    .line 99
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mIgnoreNextOnInputEvent:Z

    .line 101
    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatter:Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    .line 104
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatRepeatCount:I

    .line 107
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mPaint:Landroid/text/TextPaint;

    const/4 p2, -0x1

    .line 108
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mLineHeight:I

    const-string p3, "adjustPosition"

    .line 109
    iput-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->ADJUST_POSITION:Ljava/lang/String;

    const-string p3, "password"

    .line 110
    iput-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->PASSWORD:Ljava/lang/String;

    const/4 p3, 0x0

    .line 111
    iput p3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    .line 112
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isConfirmHold:Z

    const/4 p3, 0x1

    .line 113
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isNeedConfirm:Z

    .line 114
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->cursor:I

    const p2, 0x7fffffff

    .line 116
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionStart:I

    .line 117
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionEnd:I

    const-string p2, "left"

    .line 118
    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->textAlign:Ljava/lang/String;

    .line 119
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    const/high16 p2, -0x40800000    # -1.0f

    .line 120
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureHeight:F

    .line 121
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureWidht:F

    .line 227
    new-instance p2, Lcom/taobao/weex/ui/component/DCWXInput$2;

    invoke-direct {p2, p0}, Lcom/taobao/weex/ui/component/DCWXInput$2;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->underLineFilter:Landroid/text/InputFilter;

    .line 445
    new-instance p2, Lcom/taobao/weex/ui/component/DCWXInput$7;

    invoke-direct {p2, p0}, Lcom/taobao/weex/ui/component/DCWXInput$7;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    .line 688
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->interceptFocusAndBlurEvent()V

    .line 126
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 127
    new-instance p1, Lcom/taobao/weex/ui/component/DCWXInput$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/DCWXInput$1;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/component/DCWXInput;F)F
    .registers 2

    .line 89
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureWidht:F

    return p1
.end method

.method static synthetic access$1000(Lcom/taobao/weex/ui/component/DCWXInput;)Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatter:Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/taobao/weex/ui/component/DCWXInput;F)F
    .registers 2

    .line 89
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureHeight:F

    return p1
.end method

.method static synthetic access$1100(Lcom/taobao/weex/ui/component/DCWXInput;)I
    .registers 1

    .line 89
    iget p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatRepeatCount:I

    return p0
.end method

.method static synthetic access$1102(Lcom/taobao/weex/ui/component/DCWXInput;I)I
    .registers 2

    .line 89
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatRepeatCount:I

    return p1
.end method

.method static synthetic access$1200(Lcom/taobao/weex/ui/component/DCWXInput;)Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mIgnoreNextOnInputEvent:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/taobao/weex/ui/component/DCWXInput;Z)Z
    .registers 2

    .line 89
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mIgnoreNextOnInputEvent:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mBeforeText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/taobao/weex/ui/component/DCWXInput;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mBeforeText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/taobao/weex/ui/component/DCWXInput;Landroid/widget/EditText;)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->hostViewFocus(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/taobao/weex/ui/component/DCWXInput;)I
    .registers 1

    .line 89
    iget p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionStart:I

    return p0
.end method

.method static synthetic access$1800(Lcom/taobao/weex/ui/component/DCWXInput;)I
    .registers 1

    .line 89
    iget p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionEnd:I

    return p0
.end method

.method static synthetic access$1900(Lcom/taobao/weex/ui/component/DCWXInput;II)V
    .registers 3

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/DCWXInput;->setSelectionRange(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->updateStyleAndAttrs()V

    return-void
.end method

.method static synthetic access$2002(Lcom/taobao/weex/ui/component/DCWXInput;Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/taobao/weex/ui/component/DCWXInput;)Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorActionListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/taobao/weex/ui/component/DCWXInput;)Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isPassword:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->decideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->textAlign:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderTextAlign:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/DCWXInput;Ljava/lang/String;)I
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->getTextAlign(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/taobao/weex/ui/component/DCWXInput;)Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mListeningConfirm:Z

    return p0
.end method

.method static synthetic access$800(Lcom/taobao/weex/ui/component/DCWXInput;)I
    .registers 1

    .line 89
    iget p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    return p0
.end method

.method static synthetic access$900(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedListeners:Ljava/util/List;

    return-object p0
.end method

.method private final addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .registers 4

    if-eqz p1, :cond_22

    .line 1194
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_22

    .line 1195
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorActionListeners:Ljava/util/List;

    if-nez v1, :cond_1d

    .line 1196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorActionListeners:Ljava/util/List;

    .line 1197
    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$13;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/DCWXInput$13;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1211
    :cond_1d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorActionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    return-void
.end method

.method private addEditorChangeListener()V
    .registers 2

    .line 290
    new-instance v0, Lcom/taobao/weex/ui/component/DCWXInput$4;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/DCWXInput$4;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1226
    :cond_3
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1227
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_19

    .line 1228
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$14;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput$14;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;Lcom/taobao/weex/ui/view/WXEditText;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setkeyBoardHeightChangeListener(Lio/dcloud/common/core/ui/keyboard/DCEditText$OnKeyboardHeightChangeListener;)V

    :cond_19
    return-void
.end method

.method private decideSoftKeyboard()V
    .registers 5

    .line 1104
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1105
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1106
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1c

    .line 1107
    new-instance v2, Lcom/taobao/weex/ui/component/DCWXInput$12;

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/ui/component/DCWXInput$12;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1c
    return-void
.end method

.method private getInputType(Ljava/lang/String;)I
    .registers 9

    .line 945
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_ca

    goto/16 :goto_85

    :sswitch_12
    const-string v0, "datetime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto/16 :goto_85

    :cond_1c
    const/16 v6, 0x9

    goto/16 :goto_85

    :sswitch_20
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto/16 :goto_85

    :cond_2a
    const/16 v6, 0x8

    goto/16 :goto_85

    :sswitch_2e
    const-string v0, "email"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_85

    :cond_37
    const/4 v6, 0x7

    goto :goto_85

    :sswitch_39
    const-string v0, "digit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto :goto_85

    :cond_42
    const/4 v6, 0x6

    goto :goto_85

    :sswitch_44
    const-string v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto :goto_85

    :cond_4d
    const/4 v6, 0x5

    goto :goto_85

    :sswitch_4f
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    goto :goto_85

    :cond_58
    const/4 v6, 0x4

    goto :goto_85

    :sswitch_5a
    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    goto :goto_85

    :cond_63
    const/4 v6, 0x3

    goto :goto_85

    :sswitch_65
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6e

    goto :goto_85

    :cond_6e
    const/4 v6, 0x2

    goto :goto_85

    :sswitch_70
    const-string v0, "tel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_79

    goto :goto_85

    :cond_79
    const/4 v6, 0x1

    goto :goto_85

    :sswitch_7b
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_84

    goto :goto_85

    :cond_84
    const/4 v6, 0x0

    :goto_85
    packed-switch v6, :pswitch_data_f4

    goto :goto_b5

    :pswitch_89
    const/16 v1, 0x81

    .line 961
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c8

    .line 962
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_c8

    :pswitch_9f
    const/16 v1, 0x21

    goto :goto_c8

    :pswitch_a2
    const/16 v1, 0x2002

    goto :goto_c8

    .line 970
    :pswitch_a5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c0

    .line 971
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v5}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    goto :goto_c0

    :goto_b5
    :pswitch_b5
    const/4 v1, 0x1

    goto :goto_c8

    .line 951
    :pswitch_b7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v5}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    :cond_c0
    :goto_c0
    const/4 v1, 0x0

    goto :goto_c8

    :pswitch_c2
    const/16 v1, 0x11

    goto :goto_c8

    :pswitch_c5
    const/4 v1, 0x3

    goto :goto_c8

    :pswitch_c7
    const/4 v1, 0x2

    :cond_c8
    :goto_c8
    :pswitch_c8
    return v1

    nop

    :sswitch_data_ca
    .sparse-switch
        -0x3da724b7 -> :sswitch_7b
        0x1c01b -> :sswitch_70
        0x1c56f -> :sswitch_65
        0x2eefae -> :sswitch_5a
        0x36452d -> :sswitch_4f
        0x3652cd -> :sswitch_44
        0x5b2792d -> :sswitch_39
        0x5c24b9c -> :sswitch_2e
        0x4889ba9b -> :sswitch_20
        0x6ae9bb7b -> :sswitch_12
    .end sparse-switch

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_c5
        :pswitch_c2
        :pswitch_b7
        :pswitch_b5
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_89
        :pswitch_c8
    .end packed-switch
.end method

.method private getTextAlign(Ljava/lang/String;)I
    .registers 7

    .line 1031
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->isLayoutRTL()Z

    move-result v0

    const v1, 0x800005

    const v2, 0x800003

    if-eqz v0, :cond_10

    const v0, 0x800005

    goto :goto_13

    :cond_10
    const v0, 0x800003

    .line 1033
    :goto_13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return v0

    .line 1037
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_52

    goto :goto_46

    :sswitch_26
    const-string v4, "right"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_46

    :cond_2f
    const/4 v3, 0x2

    goto :goto_46

    :sswitch_31
    const-string v4, "left"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_46

    :cond_3a
    const/4 v3, 0x1

    goto :goto_46

    :sswitch_3c
    const-string v4, "center"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v3, 0x0

    :goto_46
    packed-switch v3, :pswitch_data_60

    move v1, v0

    goto :goto_51

    :pswitch_4b
    const v1, 0x800003

    goto :goto_51

    :pswitch_4f
    const/16 v1, 0x11

    :goto_51
    :pswitch_51
    return v1

    :sswitch_data_52
    .sparse-switch
        -0x514d33ab -> :sswitch_3c
        0x32a007 -> :sswitch_31
        0x677c21c -> :sswitch_26
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_4b
        :pswitch_51
    .end packed-switch
.end method

.method private hostViewFocus(Landroid/widget/EditText;)V
    .registers 3

    const/4 v0, 0x1

    .line 758
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 759
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 760
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 761
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 762
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->showSoftKeyboard()V

    return-void
.end method

.method private parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_8e

    if-nez p2, :cond_7

    goto/16 :goto_8e

    :cond_7
    const-string v1, "/[\\S]+/[i]?[m]?[g]?"

    .line 1326
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "WXInput"

    if-nez v1, :cond_2e

    .line 1327
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

    .line 1333
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1334
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v3, "i"

    .line 1336
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_52

    const/4 v1, 0x2

    :cond_52
    const-string v3, "m"

    .line 1340
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5c

    or-int/lit8 v1, v1, 0x20

    :cond_5c
    const-string v3, "g"

    .line 1344
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1350
    :try_start_62
    invoke-static {p1, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_66
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_62 .. :try_end_66} :catch_67

    goto :goto_7c

    .line 1352
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

    .line 1358
    :cond_7f
    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-direct {v1, v0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;-><init>(Lcom/taobao/weex/ui/component/DCWXInput$1;)V

    .line 1359
    invoke-static {v1, v3}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2702(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Z)Z

    .line 1360
    invoke-static {v1, p1}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2802(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 1361
    invoke-static {v1, p2}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2902(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :cond_8e
    :goto_8e
    return-object v0
.end method

.method private setSelectionRange(II)V
    .registers 6

    const v0, 0x7fffffff

    if-eq p2, v0, :cond_2a

    if-eq p1, v0, :cond_2a

    .line 1124
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_2a

    .line 1125
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->length()I

    move-result v1

    if-le p1, p2, :cond_1c

    return-void

    :cond_1c
    const/4 v2, 0x0

    if-gez p1, :cond_20

    const/4 p1, 0x0

    :cond_20
    if-le p2, v1, :cond_23

    move p2, v1

    :cond_23
    if-gez p2, :cond_26

    goto :goto_27

    :cond_26
    move v2, p2

    .line 1138
    :goto_27
    invoke-virtual {v0, p1, v2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_2a
    return-void
.end method

.method private showSoftKeyboard()V
    .registers 5

    .line 1008
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_1b

    .line 1010
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$10;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/DCWXInput$10;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/WXEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1b
    return-void
.end method

.method private updateStyleAndAttrs()V
    .registers 8

    .line 189
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->size()I

    move-result v0

    if-lez v0, :cond_8f

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    const-string v2, "fontSize"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2e

    .line 193
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getViewPortWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v3, v4}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v1

    goto :goto_2f

    :cond_2e
    const/4 v1, -0x1

    .line 196
    :goto_2f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    const-string v4, "fontFamily"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 197
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/dom/WXStyle;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_43
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    const-string v4, "fontStyle"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 201
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/dom/WXStyle;->getFontStyle(Ljava/util/Map;)I

    move-result v3

    goto :goto_59

    :cond_58
    const/4 v3, -0x1

    .line 204
    :goto_59
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 205
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/dom/WXStyle;->getFontWeight(Ljava/util/Map;)I

    move-result v4

    goto :goto_6f

    :cond_6e
    const/4 v4, -0x1

    .line 208
    :goto_6f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getViewPortWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/taobao/weex/dom/WXStyle;->getLineHeight(Ljava/util/Map;F)I

    move-result v5

    if-eq v5, v2, :cond_80

    .line 210
    iput v5, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mLineHeight:I

    :cond_80
    if-eq v1, v2, :cond_88

    .line 213
    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mPaint:Landroid/text/TextPaint;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_88
    if-eqz v0, :cond_8f

    .line 216
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3, v4, v0}, Lcom/taobao/weex/utils/TypefaceUtil;->applyFontStyle(Landroid/graphics/Paint;IILjava/lang/String;)V

    :cond_8f
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .registers 3

    .line 389
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3e

    :cond_d
    const-string v0, "input"

    .line 392
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 393
    new-instance v0, Lcom/taobao/weex/ui/component/DCWXInput$6;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/DCWXInput$6;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1d
    const-string v0, "confirm"

    .line 436
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    .line 437
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mListeningConfirm:Z

    :cond_28
    const-string v0, "focus"

    .line 439
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "blur"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 440
    :cond_38
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->setFocusAndBlur()V

    .line 442
    :cond_3b
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3

    .line 1216
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedListeners:Ljava/util/List;

    .line 1219
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 6

    .line 325
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "textAlign"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 326
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getTextAlign(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_15

    const v0, 0x800003

    .line 330
    :cond_15
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getVerticalGravity()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setGravity(I)V

    const-string v0, "#999999"

    .line 331
    invoke-static {v0}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2a

    .line 333
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setHintTextColor(I)V

    .line 336
    :cond_2a
    new-instance v0, Lcom/taobao/weex/ui/component/DCWXInput$5;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput$5;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;Lcom/taobao/weex/ui/view/WXEditText;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedEventDispatcher:Landroid/text/TextWatcher;

    .line 380
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setTextSize(IF)V

    const/4 v0, 0x1

    .line 383
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setSingleLine(Z)V

    return-void
.end method

.method public blur()V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1053
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v0, :cond_21

    .line 1054
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1055
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 1056
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->interceptFocus()V

    .line 1058
    :cond_1b
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->clearFocus()V

    .line 1059
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->hideSoftKeyboard()V

    :cond_21
    return-void
.end method

.method protected convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1093
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "fontSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1099
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1095
    :cond_18
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

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
    .registers 2

    .line 1305
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 1306
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorActionListeners:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 1307
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1309
    :cond_a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 1310
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1312
    :cond_11
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedEventDispatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 1313
    iput-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedEventDispatcher:Landroid/text/TextWatcher;

    .line 1315
    :cond_18
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1316
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->destroy()V

    :cond_27
    return-void
.end method

.method public focus()V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1079
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v0, :cond_28

    .line 1080
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_28

    .line 1081
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 1082
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->ignoreFocus()V

    .line 1084
    :cond_1b
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->requestFocus()Z

    const/4 v1, 0x1

    .line 1085
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    .line 1086
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusableInTouchMode(Z)V

    .line 1087
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->showSoftKeyboard()V

    :cond_28
    return-void
.end method

.method public getCursor(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 5
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 1164
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1165
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    const-string v2, "cursor"

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1166
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->getSelectionEnd()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_2c
    const/4 v1, 0x0

    .line 1168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    :goto_34
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method protected getMeasureHeight()F
    .registers 3

    .line 184
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getMeasuredLineHeight()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getMeasureHeight()F

    move-result v1

    :goto_f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0

    return v0
.end method

.method final getMeasuredLineHeight()F
    .registers 3

    .line 180
    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mLineHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    if-lez v0, :cond_9

    int-to-float v0, v0

    goto :goto_10

    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    :goto_10
    return v0
.end method

.method public getSelectionRange(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 1145
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1146
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 1147
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 1148
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    .line 1150
    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1156
    :cond_1f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "selectionStart"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "selectionEnd"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    :cond_31
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1, v0, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 1068
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVerticalGravity()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method hideSoftKeyboard()V
    .registers 5

    .line 1020
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1021
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$11;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/DCWXInput$11;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/WXEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 89
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXEditText;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXEditText;
    .registers 5

    .line 246
    new-instance v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/ui/view/WXEditText;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V

    const/4 p1, 0x6

    .line 248
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setImeOptions(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/text/InputFilter;

    .line 251
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->underLineFilter:Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setFilters([Landroid/text/InputFilter;)V

    return-object v0
.end method

.method protected isConsumeTouch()Z
    .registers 2

    .line 312
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->isDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected layoutDirectionDidChanged(Z)V
    .registers 4

    .line 169
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    const-string v0, "textAlign"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 170
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->getTextAlign(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_15

    const p1, 0x800003

    .line 174
    :cond_15
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 175
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getVerticalGravity()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setGravity(I)V

    :cond_29
    return-void
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .registers 2

    .line 89
    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 7

    .line 258
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onHostViewInitialized(Landroid/view/View;)V

    .line 259
    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureWidht:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    .line 260
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getRef()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureWidht:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    .line 262
    :cond_1b
    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_32

    .line 263
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureHeight:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    .line 265
    :cond_32
    new-instance v0, Lcom/taobao/weex/ui/component/DCWXInput$3;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/DCWXInput$3;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V

    .line 285
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isNeedConfirm:Z

    if-eqz p1, :cond_44

    .line 286
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->addEditorChangeListener()V

    :cond_44
    return-void
.end method

.method public setAdjustPosition(Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "adjustPosition"
    .end annotation

    .line 750
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    .line 751
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 752
    sget-object p1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_PAN:Ljava/lang/String;

    goto :goto_1a

    :cond_18
    sget-object p1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_NOTHING:Ljava/lang/String;

    .line 753
    :goto_1a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setInputSoftMode(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public setAutofocus(Z)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autofocus"
    .end annotation

    .line 692
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 695
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 696
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_50

    .line 697
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->isFrameViewShow()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 698
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/ui/component/DCWXInput$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/taobao/weex/ui/component/DCWXInput$8;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;ZLandroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_5c

    .line 716
    :cond_32
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    if-eqz v1, :cond_3f

    .line 717
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKInstance;->removeFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V

    .line 719
    :cond_3f
    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$9;

    invoke-direct {v1, p0, p1, v0}, Lcom/taobao/weex/ui/component/DCWXInput$9;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;ZLandroid/widget/EditText;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    .line 737
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/WXSDKInstance;->addFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V

    goto :goto_5c

    :cond_50
    if-eqz p1, :cond_56

    .line 741
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->hostViewFocus(Landroid/widget/EditText;)V

    goto :goto_59

    .line 743
    :cond_56
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->hideSoftKeyboard()V

    .line 744
    :goto_59
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :goto_5c
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "color"
    .end annotation

    .line 786
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 787
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1d

    .line 789
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setTextColor(I)V

    :cond_1d
    return-void
.end method

.method public setCursorSpacing(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "cursorSpacing"
    .end annotation

    .line 1001
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1002
    invoke-static {p1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p1, v0}, Lio/dcloud/feature/uniapp/utils/UniViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    .line 1003
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setCursorSpacing(F)V

    :cond_1f
    return-void
.end method

.method protected setFocusAndBlur()V
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->ismHasFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 504
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    :cond_d
    return-void
.end method

.method public setFontSize(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "fontSize"
    .end annotation

    .line 796
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    if-eqz p1, :cond_32

    .line 797
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "fontSize"

    .line 798
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

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

.method protected bridge synthetic setHostLayoutParams(Landroid/view/View;IIIIII)V
    .registers 8

    .line 89
    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual/range {p0 .. p7}, Lcom/taobao/weex/ui/component/DCWXInput;->setHostLayoutParams(Lcom/taobao/weex/ui/view/WXEditText;IIIIII)V

    return-void
.end method

.method protected setHostLayoutParams(Lcom/taobao/weex/ui/view/WXEditText;IIIIII)V
    .registers 8

    .line 159
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    return-void
.end method

.method protected setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V
    .registers 2

    .line 164
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    return-void
.end method

.method public setLines(I)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "lines"
    .end annotation

    .line 909
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 912
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setLines(I)V

    return-void
.end method

.method public setMaxLength(I)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "maxLength"
    .end annotation

    .line 922
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    const p1, 0x7fffffff

    .line 929
    :cond_d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->underLineFilter:Landroid/text/InputFilter;

    aput-object v2, v1, p1

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

    .line 940
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setMaxLength(I)V

    return-void
.end method

.method public setPlaceholder(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_12

    .line 656
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 659
    :cond_9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public setPlaceholderClass(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "placeholderClass"
    .end annotation

    .line 887
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setPlaceholderStyle(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public setPlaceholderColor(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "placeholderColor"
    .end annotation

    .line 664
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 665
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1d

    .line 667
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setHintTextColor(I)V

    :cond_1d
    return-void
.end method

.method public setPlaceholderStyle(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 19
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "placeholderStyle"
    .end annotation

    move-object/from16 v0, p0

    .line 805
    iget-object v1, v0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_245

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_245

    .line 807
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_34

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string v4, "placeholder"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 811
    :cond_34
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 812
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/WXEditText;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 813
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/view/WXEditText;->getCurrentHintTextColor()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 816
    iget-object v5, v0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    :cond_64
    :goto_64
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_21a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 817
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    const-string v13, "fontSize"

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, -0x1

    const/4 v12, 0x1

    sparse-switch v11, :sswitch_data_246

    :goto_88
    const/4 v10, -0x1

    goto/16 :goto_ec

    :sswitch_8b
    const-string v11, "backgroundColor"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_94

    goto :goto_88

    :cond_94
    const/16 v10, 0x8

    goto :goto_ec

    :sswitch_97
    const-string v11, "text-align"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a0

    goto :goto_88

    :cond_a0
    const/4 v10, 0x7

    goto :goto_ec

    :sswitch_a2
    const-string v11, "background-color"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ab

    goto :goto_88

    :cond_ab
    const/4 v10, 0x6

    goto :goto_ec

    :sswitch_ad
    const-string v11, "font-weight"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b6

    goto :goto_88

    :cond_b6
    const/4 v10, 0x5

    goto :goto_ec

    :sswitch_b8
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_bf

    goto :goto_88

    :cond_bf
    const/4 v10, 0x4

    goto :goto_ec

    :sswitch_c1
    const-string v11, "color"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ca

    goto :goto_88

    :cond_ca
    const/4 v10, 0x3

    goto :goto_ec

    :sswitch_cc
    const-string v11, "fontWeight"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d5

    goto :goto_88

    :cond_d5
    const/4 v10, 0x2

    goto :goto_ec

    :sswitch_d7
    const-string v11, "textAlign"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e0

    goto :goto_88

    :cond_e0
    const/4 v10, 0x1

    goto :goto_ec

    :sswitch_e2
    const-string v11, "font-size"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_eb

    goto :goto_88

    :cond_eb
    const/4 v10, 0x0

    :goto_ec
    const/high16 v11, -0x80000000

    packed-switch v10, :pswitch_data_26c

    goto/16 :goto_64

    .line 822
    :pswitch_f3
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 823
    invoke-static {v8}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v11, :cond_64

    .line 825
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v6, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    goto/16 :goto_64

    .line 829
    :pswitch_108
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 830
    invoke-static {v8}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v11, :cond_64

    .line 832
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    goto/16 :goto_64

    .line 845
    :pswitch_11d
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_282

    goto :goto_16b

    :sswitch_130
    const-string v8, "bold"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_139

    goto :goto_16b

    :cond_139
    const/16 v16, 0x4

    goto :goto_16b

    :sswitch_13c
    const-string v8, "900"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_145

    goto :goto_16b

    :cond_145
    const/16 v16, 0x3

    goto :goto_16b

    :sswitch_148
    const-string v8, "800"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_151

    goto :goto_16b

    :cond_151
    const/16 v16, 0x2

    goto :goto_16b

    :sswitch_154
    const-string v8, "700"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15d

    goto :goto_16b

    :cond_15d
    const/16 v16, 0x1

    goto :goto_16b

    :sswitch_160
    const-string v8, "600"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_169

    goto :goto_16b

    :cond_169
    const/16 v16, 0x0

    :goto_16b
    packed-switch v16, :pswitch_data_298

    .line 854
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto/16 :goto_64

    .line 851
    :pswitch_175
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto/16 :goto_64

    .line 837
    :pswitch_17c
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderTextAlign:Ljava/lang/String;

    .line 838
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/taobao/weex/ui/component/DCWXInput;->getTextAlign(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_64

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getVerticalGravity()I

    move-result v10

    or-int/2addr v8, v10

    invoke-virtual {v9, v8}, Lcom/taobao/weex/ui/view/WXEditText;->setGravity(I)V

    goto/16 :goto_64

    .line 860
    :pswitch_1a4
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "upx"

    .line 861
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b9

    .line 862
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1df

    :cond_1b9
    const-string v8, "rpx"

    .line 863
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c6

    .line 864
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1df

    :cond_1c6
    const-string v8, "px"

    .line 865
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d3

    .line 866
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1df

    :cond_1d3
    const-string v8, "wx"

    .line 867
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1df

    .line 868
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 870
    :cond_1df
    :goto_1df
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 871
    invoke-interface {v8, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v10

    invoke-virtual {v10}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v1, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    goto/16 :goto_64

    .line 876
    :cond_21a
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v5, 0x21

    invoke-virtual {v3, v1, v9, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz v6, :cond_22c

    .line 878
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v3, v6, v9, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_22c
    if-eqz v7, :cond_235

    .line 880
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v3, v7, v9, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 881
    :cond_235
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v3, v4, v9, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1, v3}, Lcom/taobao/weex/ui/view/WXEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_245
    :goto_245
    return-void

    :sswitch_data_246
    .sparse-switch
        -0x5e89b141 -> :sswitch_e2
        -0x3f826a28 -> :sswitch_d7
        -0x2bc67c59 -> :sswitch_cc
        0x5a72f63 -> :sswitch_c1
        0x15caa0f0 -> :sswitch_b8
        0x23b0f9b6 -> :sswitch_ad
        0x24147e04 -> :sswitch_a2
        0x2c7a9a65 -> :sswitch_97
        0x4cb7f6d5 -> :sswitch_8b
    .end sparse-switch

    :pswitch_data_26c
    .packed-switch 0x0
        :pswitch_1a4
        :pswitch_17c
        :pswitch_11d
        :pswitch_108
        :pswitch_1a4
        :pswitch_11d
        :pswitch_f3
        :pswitch_17c
        :pswitch_f3
    .end packed-switch

    :sswitch_data_282
    .sparse-switch
        0xd0b6 -> :sswitch_160
        0xd477 -> :sswitch_154
        0xd838 -> :sswitch_148
        0xdbf9 -> :sswitch_13c
        0x2e3a85 -> :sswitch_130
    .end sparse-switch

    :pswitch_data_298
    .packed-switch 0x0
        :pswitch_175
        :pswitch_175
        :pswitch_175
        :pswitch_175
        :pswitch_175
    .end packed-switch
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 8

    .line 517
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    .line 519
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_268

    :goto_11
    const/4 v1, -0x1

    goto/16 :goto_11e

    :sswitch_14
    const-string v0, "autoFocus"

    .line 517
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_11

    :cond_1d
    const/16 v1, 0x14

    goto/16 :goto_11e

    :sswitch_21
    const-string v0, "allowCopyPaste"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_11

    :cond_2a
    const/16 v1, 0x13

    goto/16 :goto_11e

    :sswitch_2e
    const-string v0, "returnKeyType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_11

    :cond_37
    const/16 v1, 0x12

    goto/16 :goto_11e

    :sswitch_3b
    const-string v0, "singleline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_11

    :cond_44
    const/16 v1, 0x11

    goto/16 :goto_11e

    :sswitch_48
    const-string v0, "placeholder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_11

    :cond_51
    const/16 v1, 0x10

    goto/16 :goto_11e

    :sswitch_55
    const-string v0, "fontSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_11

    :cond_5e
    const/16 v1, 0xf

    goto/16 :goto_11e

    :sswitch_62
    const-string v0, "confirmHold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_11

    :cond_6b
    const/16 v1, 0xe

    goto/16 :goto_11e

    :sswitch_6f
    const-string v0, "disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto :goto_11

    :cond_78
    const/16 v1, 0xd

    goto/16 :goto_11e

    :sswitch_7c
    const-string v0, "maxlength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto :goto_11

    :cond_85
    const/16 v1, 0xc

    goto/16 :goto_11e

    :sswitch_89
    const-string v0, "lines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto/16 :goto_11

    :cond_93
    const/16 v1, 0xb

    goto/16 :goto_11e

    :sswitch_97
    const-string v0, "focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto/16 :goto_11

    :cond_a1
    const/16 v1, 0xa

    goto/16 :goto_11e

    :sswitch_a5
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    goto/16 :goto_11

    :cond_af
    const/16 v1, 0x9

    goto/16 :goto_11e

    :sswitch_b3
    const-string v0, "min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    goto/16 :goto_11

    :cond_bd
    const/16 v1, 0x8

    goto :goto_11e

    :sswitch_c0
    const-string v0, "max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    goto/16 :goto_11

    :cond_ca
    const/4 v1, 0x7

    goto :goto_11e

    :sswitch_cc
    const-string v0, "maxLength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    goto/16 :goto_11

    :cond_d6
    const/4 v1, 0x6

    goto :goto_11e

    :sswitch_d8
    const-string v0, "textAlign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e2

    goto/16 :goto_11

    :cond_e2
    const/4 v1, 0x5

    goto :goto_11e

    :sswitch_e4
    const-string v0, "cursor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ee

    goto/16 :goto_11

    :cond_ee
    const/4 v1, 0x4

    goto :goto_11e

    :sswitch_f0
    const-string v0, "placeholderColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fa

    goto/16 :goto_11

    :cond_fa
    const/4 v1, 0x3

    goto :goto_11e

    :sswitch_fc
    const-string v0, "selectionEnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    goto/16 :goto_11

    :cond_106
    const/4 v1, 0x2

    goto :goto_11e

    :sswitch_108
    const-string v0, "keepSelectionIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_112

    goto/16 :goto_11

    :cond_112
    const/4 v1, 0x1

    goto :goto_11e

    :sswitch_114
    const-string v0, "selectionStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    goto/16 :goto_11

    :cond_11e
    :goto_11e
    const v0, 0x7fffffff

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_2be

    goto/16 :goto_262

    .line 592
    :pswitch_127
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 593
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_142

    .line 594
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setAllowCopyPaste(Z)V

    :cond_142
    return v3

    .line 586
    :pswitch_143
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setReturnKeyType(Ljava/lang/String;)V

    return v3

    .line 560
    :pswitch_14b
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_158

    .line 562
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setSingleLine(Z)V

    :cond_158
    :pswitch_158
    return v3

    .line 550
    :pswitch_159
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_162

    .line 552
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setFontSize(Ljava/lang/String;)V

    :cond_162
    return v3

    .line 606
    :pswitch_163
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isConfirmHold:Z

    goto/16 :goto_262

    .line 519
    :pswitch_16f
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    .line 520
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p2, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    .line 521
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p2, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusableInTouchMode(Z)V

    .line 522
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setCursorVisible(Z)V

    return v3

    .line 575
    :pswitch_19e
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1ab

    .line 577
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setMaxLength(I)V

    :cond_1ab
    return v3

    .line 565
    :pswitch_1ac
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1b9

    .line 567
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setLines(I)V

    :cond_1b9
    return v3

    .line 541
    :pswitch_1ba
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    .line 542
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setAutofocus(Z)V

    return v3

    .line 545
    :pswitch_1c6
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1cf

    .line 547
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setColor(Ljava/lang/String;)V

    :cond_1cf
    :pswitch_1cf
    return v3

    .line 570
    :pswitch_1d0
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1dd

    .line 572
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setMaxLength(I)V

    :cond_1dd
    return v3

    .line 555
    :pswitch_1de
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e7

    .line 557
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setTextAlign(Ljava/lang/String;)V

    :cond_1e7
    return v3

    .line 598
    :pswitch_1e8
    invoke-static {p2}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_208

    .line 599
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-gt p1, p2, :cond_208

    .line 600
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setSelection(I)V

    goto :goto_22f

    .line 601
    :cond_208
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-le p1, p2, :cond_22f

    .line 602
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/WXEditText;->setSelection(I)V

    :cond_22f
    :goto_22f
    return v3

    .line 530
    :pswitch_230
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_239

    .line 532
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setPlaceholderColor(Ljava/lang/String;)V

    :cond_239
    return v3

    .line 613
    :pswitch_23a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionEnd:I

    .line 614
    iget v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionStart:I

    invoke-direct {p0, v1, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setSelectionRange(II)V

    goto :goto_262

    :pswitch_24e
    return v3

    .line 609
    :pswitch_24f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionStart:I

    .line 610
    iget v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionEnd:I

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->setSelectionRange(II)V

    .line 617
    :goto_262
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_268
    .sparse-switch
        -0x7f6b85ca -> :sswitch_114
        -0x712b3675 -> :sswitch_108
        -0x61195c51 -> :sswitch_fc
        -0x5dfbd650 -> :sswitch_f0
        -0x5069ecaa -> :sswitch_e4
        -0x3f826a28 -> :sswitch_d8
        -0x2f2bce96 -> :sswitch_cc
        0x1a564 -> :sswitch_c0
        0x1a652 -> :sswitch_b3
        0x5a72f63 -> :sswitch_a5
        0x5d154d8 -> :sswitch_97
        0x6234eff -> :sswitch_89
        0x76f454a -> :sswitch_7c
        0x10263a7c -> :sswitch_6f
        0x1481ef9f -> :sswitch_62
        0x15caa0f0 -> :sswitch_55
        0x23a88573 -> :sswitch_48
        0x367fd03c -> :sswitch_3b
        0x38797ee9 -> :sswitch_2e
        0x60e3fed5 -> :sswitch_21
        0x61a2bc69 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_2be
    .packed-switch 0x0
        :pswitch_24f
        :pswitch_24e
        :pswitch_23a
        :pswitch_230
        :pswitch_1e8
        :pswitch_1de
        :pswitch_1d0
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1c6
        :pswitch_1ba
        :pswitch_1ac
        :pswitch_19e
        :pswitch_16f
        :pswitch_163
        :pswitch_159
        :pswitch_158
        :pswitch_14b
        :pswitch_143
        :pswitch_127
        :pswitch_1ba
    .end packed-switch
.end method

.method public setReturnKeyType(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "returnKeyType"
    .end annotation

    .line 622
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mReturnKeyType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_88

    .line 625
    :cond_10
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mReturnKeyType:Ljava/lang/String;

    .line 626
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

    .line 628
    :pswitch_68
    iput v6, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    goto :goto_7a

    .line 640
    :pswitch_6b
    iput v3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    goto :goto_7a

    .line 634
    :pswitch_6e
    iput v2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    goto :goto_7a

    :pswitch_71
    const/4 p1, 0x6

    .line 643
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    goto :goto_7a

    .line 631
    :pswitch_75
    iput v5, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    goto :goto_7a

    .line 637
    :pswitch_78
    iput v4, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    .line 650
    :goto_7a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->blur()V

    .line 651
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

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

.method public setSingleLine(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "singleline"
    .end annotation

    .line 901
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 904
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setSingleLine(Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "value"
    .end annotation

    .line 769
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-nez v0, :cond_9

    return-void

    .line 772
    :cond_9
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    :cond_14
    const/4 v1, 0x1

    .line 776
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mIgnoreNextOnInputEvent:Z

    .line 778
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->cursor:I

    if-lez v1, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_23
    if-nez p1, :cond_26

    const/4 v1, 0x0

    .line 781
    :cond_26
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setSelection(I)V

    return-void
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "textAlign"
    .end annotation

    .line 892
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->textAlign:Ljava/lang/String;

    .line 893
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->getTextAlign(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_16

    .line 895
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getVerticalGravity()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setGravity(I)V

    :cond_16
    return-void
.end method

.method public setTextFormatter(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    :try_start_0
    const-string v0, "formatRule"

    .line 1176
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "formatReplace"

    .line 1177
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recoverRule"

    .line 1178
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "recoverReplace"

    .line 1179
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1181
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    move-result-object v0

    .line 1182
    invoke-direct {p0, v2, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    move-result-object p1

    if-eqz v0, :cond_31

    if-eqz p1, :cond_31

    .line 1185
    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;-><init>(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Lcom/taobao/weex/ui/component/DCWXInput$1;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatter:Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception p1

    .line 1188
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_31
    :goto_31
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 4

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "weex"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_38

    .line 675
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_38

    .line 678
    :cond_27
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    .line 679
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInputType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    :cond_38
    :goto_38
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1073
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    .line 1074
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_137

    .line 1266
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_137

    const-string v0, "type"

    .line 1267
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_19
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    :goto_1b
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setType(Ljava/lang/String;)V

    .line 1268
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    if-eqz v0, :cond_4a

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "confirmType"

    .line 1269
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1270
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :cond_41
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mReturnKeyType:Ljava/lang/String;

    if-nez v0, :cond_47

    const-string v0, "done"

    :cond_47
    :goto_47
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setReturnKeyType(Ljava/lang/String;)V

    .line 1272
    :cond_4a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8a

    .line 1273
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isPassword:Z

    if-eqz v0, :cond_70

    goto :goto_72

    .line 1274
    :cond_70
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    :goto_72
    if-eqz v1, :cond_89

    .line 1275
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7b

    goto :goto_89

    .line 1278
    :cond_7b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->getInputType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_8a

    :cond_89
    :goto_89
    return-void

    :cond_8a
    :goto_8a
    const-string v0, "cursor"

    .line 1280
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 1281
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->cursor:I

    :cond_a4
    const-string v0, "selectionStart"

    .line 1283
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7fffffff

    if-eqz v1, :cond_c1

    .line 1284
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionStart:I

    :cond_c1
    const-string v0, "selectionEnd"

    .line 1285
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 1286
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionEnd:I

    :cond_db
    const-string v0, "placeholder"

    .line 1287
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 1288
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setPlaceholder(Ljava/lang/String;)V

    :cond_f0
    const-string v0, "placeholderClass"

    .line 1290
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "{}"

    if-eqz v1, :cond_10d

    .line 1291
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    :cond_10d
    const-string v0, "placeholderStyle"

    .line 1293
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    .line 1294
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    :cond_128
    const-string v0, "adjustPosition"

    .line 1296
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 1297
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setAdjustPosition(Ljava/lang/Object;)V

    .line 1300
    :cond_137
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass1 (com.taobao.weex.ui.component.DCWXInput$1)
.class Lcom/taobao/weex/ui/component/DCWXInput$1;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "DCWXInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

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

    .line 144
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$200(Lcom/taobao/weex/ui/component/DCWXInput;)V

    return-void
.end method

.method public measureInternal(FFII)V
    .registers 5

    .line 132
    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/DCWXInput;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    if-eqz p3, :cond_1c

    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/DCWXInput;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXStyle;->size()I

    move-result p3

    if-nez p3, :cond_21

    .line 133
    :cond_1c
    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p3, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$002(Lcom/taobao/weex/ui/component/DCWXInput;F)F

    .line 135
    :cond_21
    invoke-static {p2}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 136
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3fb33333    # 1.4f

    mul-float p1, p1, p2

    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p2

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->mMeasureHeight:F

    .line 137
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->mMeasureHeight:F

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$102(Lcom/taobao/weex/ui/component/DCWXInput;F)F

    :cond_4e
    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass10 (com.taobao.weex.ui.component.DCWXInput$10)
.class Lcom/taobao/weex/ui/component/DCWXInput$10;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->showSoftKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 1010
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$10;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1013
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$10;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2100(Lcom/taobao/weex/ui/component/DCWXInput;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$10;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass11 (com.taobao.weex.ui.component.DCWXInput$11)
.class Lcom/taobao/weex/ui/component/DCWXInput$11;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->hideSoftKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 1021
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$11;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1024
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$11;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2100(Lcom/taobao/weex/ui/component/DCWXInput;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$11;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass12 (com.taobao.weex.ui.component.DCWXInput$12)
.class Lcom/taobao/weex/ui/component/DCWXInput$12;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->decideSoftKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;Landroid/content/Context;)V
    .registers 3

    .line 1107
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$12;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1110
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$12;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1111
    instance-of v1, v0, Landroid/widget/EditText;

    if-nez v1, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1112
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$12;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2100(Lcom/taobao/weex/ui/component/DCWXInput;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$12;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2a
    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass13 (com.taobao.weex.ui.component.DCWXInput$13)
.class Lcom/taobao/weex/ui/component/DCWXInput$13;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private handled:Z

.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 1197
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1198
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->handled:Z

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1202
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2300(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;

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

    .line 1204
    iget-boolean v2, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->handled:Z

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v1

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->handled:Z

    goto :goto_a

    .line 1207
    :cond_22
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->handled:Z

    return p1
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass14 (com.taobao.weex.ui.component.DCWXInput$14)
.class Lcom/taobao/weex/ui/component/DCWXInput$14;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Lio/dcloud/common/core/ui/keyboard/DCEditText$OnKeyboardHeightChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;

.field final synthetic val$host:Lcom/taobao/weex/ui/view/WXEditText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 3

    .line 1228
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->val$host:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(ZI)V
    .registers 5

    .line 1231
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_a8

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->val$host:Lcom/taobao/weex/ui/view/WXEditText;

    if-nez v0, :cond_1a

    goto/16 :goto_a8

    .line 1234
    :cond_1a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    int-to-float p2, p2

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, v0, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    .line 1235
    new-instance p2, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1236
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget v0, v0, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "duration"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "detail"

    .line 1239
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const-string v1, "keyboardheightchange"

    invoke-virtual {p2, v1, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1241
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->val$host:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_a0

    .line 1242
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2400(Lcom/taobao/weex/ui/component/DCWXInput;)Z

    move-result p2

    const-string v0, "password"

    if-eqz p2, :cond_70

    move-object p2, v0

    goto :goto_76

    :cond_70
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;

    move-result-object p2

    :goto_76
    if-nez p1, :cond_97

    .line 1243
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget-boolean v1, v1, Lcom/taobao/weex/ui/component/DCWXInput;->isConfirmHold:Z

    if-nez v1, :cond_97

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_97

    invoke-static {}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getInstance()Lio/dcloud/common/core/ui/DCKeyboardManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getFrontInputType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 1244
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->blur()V

    :cond_97
    if-eqz p1, :cond_a0

    .line 1247
    invoke-static {}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getInstance()Lio/dcloud/common/core/ui/DCKeyboardManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/dcloud/common/core/ui/DCKeyboardManager;->setFrontInputType(Ljava/lang/String;)V

    :cond_a0
    if-eqz p1, :cond_a8

    .line 1252
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget p2, p1, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    iput p2, p1, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    :cond_a8
    :goto_a8
    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass2 (com.taobao.weex.ui.component.DCWXInput$2)
.class Lcom/taobao/weex/ui/component/DCWXInput$2;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/DCWXInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$2;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 7

    .line 230
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result p1

    const-class p3, Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p1, p3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 233
    array-length p2, p1

    :goto_13
    if-ge p4, p2, :cond_21

    aget-object p3, p1, p4

    .line 234
    instance-of p3, p3, Landroid/text/style/UnderlineSpan;

    if-eqz p3, :cond_1e

    const-string p1, ""

    return-object p1

    :cond_1e
    add-int/lit8 p4, p4, 0x1

    goto :goto_13

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass3 (com.taobao.weex.ui.component.DCWXInput$3)
.class Lcom/taobao/weex/ui/component/DCWXInput$3;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .registers 4

    if-nez p1, :cond_7

    .line 269
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$300(Lcom/taobao/weex/ui/component/DCWXInput;)V

    .line 271
    :cond_7
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const-string v1, ":focus"

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setPseudoClassStatus(Ljava/lang/String;Z)V

    if-eqz p1, :cond_1a

    .line 274
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$400(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setTextAlign(Ljava/lang/String;)V

    goto :goto_65

    .line 275
    :cond_1a
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_65

    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 276
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$400(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_47
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;

    move-result-object v0

    :goto_4d
    invoke-static {p1, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$600(Lcom/taobao/weex/ui/component/DCWXInput;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_65

    .line 278
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/DCWXInput;->getVerticalGravity()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setGravity(I)V

    :cond_65
    :goto_65
    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass4 (com.taobao.weex.ui.component.DCWXInput$4)
.class Lcom/taobao/weex/ui/component/DCWXInput$4;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->addEditorChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 293
    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/DCWXInput;->access$700(Lcom/taobao/weex/ui/component/DCWXInput;)Z

    move-result p3

    if-eqz p3, :cond_40

    .line 294
    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/DCWXInput;->access$800(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result p3

    if-ne p2, p3, :cond_40

    .line 295
    new-instance p2, Ljava/util/HashMap;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 297
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "value"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "detail"

    .line 298
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const-string v0, "confirm"

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/component/DCWXInput;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 300
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget-boolean p1, p1, Lcom/taobao/weex/ui/component/DCWXInput;->isConfirmHold:Z

    if-nez p1, :cond_3f

    .line 301
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCWXInput;->blur()V

    :cond_3f
    return p3

    .line 304
    :cond_40
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget-boolean p1, p1, Lcom/taobao/weex/ui/component/DCWXInput;->isConfirmHold:Z

    return p1
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass5 (com.taobao.weex.ui.component.DCWXInput$5)
.class Lcom/taobao/weex/ui/component/DCWXInput$5;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;

.field final synthetic val$editText:Lcom/taobao/weex/ui/view/WXEditText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 3

    .line 336
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 373
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$900(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 374
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$900(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;

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

    .line 375
    invoke-interface {v1, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    .line 339
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$900(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 340
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$900(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;

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

    .line 341
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9

    .line 348
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1000(Lcom/taobao/weex/ui/component/DCWXInput;)Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 349
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1000(Lcom/taobao/weex/ui/component/DCWXInput;)Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1000(Lcom/taobao/weex/ui/component/DCWXInput;)Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_70

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1100(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_70

    .line 353
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1100(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1102(Lcom/taobao/weex/ui/component/DCWXInput;I)I

    .line 354
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->getSelectionStart()I

    move-result p2

    .line 355
    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1000(Lcom/taobao/weex/ui/component/DCWXInput;)Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    move-result-object p3

    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p4}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1000(Lcom/taobao/weex/ui/component/DCWXInput;)Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    move-result-object p4

    invoke-interface {p1, v2, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 356
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setSelection(I)V

    return-void

    .line 361
    :cond_70
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0, v2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1102(Lcom/taobao/weex/ui/component/DCWXInput;I)I

    .line 364
    :cond_75
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$900(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 365
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$900(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;

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

    .line 366
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_87

    :cond_97
    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass6 (com.taobao.weex.ui.component.DCWXInput$6)
.class Lcom/taobao/weex/ui/component/DCWXInput$6;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 393
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

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
    .registers 10

    .line 401
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1200(Lcom/taobao/weex/ui/component/DCWXInput;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 402
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1202(Lcom/taobao/weex/ui/component/DCWXInput;Z)Z

    .line 403
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1302(Lcom/taobao/weex/ui/component/DCWXInput;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 410
    :cond_18
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 411
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 412
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v3, p0, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/WXEditText;->getSelectionEnd()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cursor"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "keyCode"

    if-nez p3, :cond_62

    if-eqz p4, :cond_62

    add-int/2addr p4, p2

    .line 416
    :try_start_49
    invoke-interface {p1, p2, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 417
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-static {p2, p3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8b

    :cond_62
    if-eqz p3, :cond_8b

    if-nez p4, :cond_8b

    .line 419
    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p4}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1300(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;

    move-result-object p4

    add-int/2addr p3, p2

    invoke-virtual {p4, p2, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 420
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-static {p2, p3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_85} :catch_86

    goto :goto_8b

    :catch_86
    const-string p2, "0"

    .line 423
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_8b
    :goto_8b
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1302(Lcom/taobao/weex/ui/component/DCWXInput;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "detail"

    .line 426
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const-string p2, "input"

    invoke-virtual {p1, p2, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass7 (com.taobao.weex.ui.component.DCWXInput$7)
.class Lcom/taobao/weex/ui/component/DCWXInput$7;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/DCWXInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 445
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 471
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->count:I

    return-void
.end method

.method static synthetic access$1400(Lcom/taobao/weex/ui/component/DCWXInput$7;Landroid/widget/TextView;)V
    .registers 2

    .line 445
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput$7;->fireEventForFocus(Landroid/widget/TextView;)V

    return-void
.end method

.method private fireEventForFocus(Landroid/widget/TextView;)V
    .registers 6

    .line 473
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$7$1;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput$7$1;-><init>(Lcom/taobao/weex/ui/component/DCWXInput$7;Landroid/widget/TextView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/WXEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .registers 8

    .line 448
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_b

    return-void

    .line 452
    :cond_b
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 453
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 454
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "value"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "detail"

    if-eqz p1, :cond_57

    .line 457
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget p1, p1, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    const/4 v5, 0x0

    cmpl-float p1, p1, v5

    if-nez p1, :cond_34

    .line 458
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput$7;->fireEventForFocus(Landroid/widget/TextView;)V

    goto :goto_61

    .line 460
    :cond_34
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget p1, p1, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v5, "height"

    invoke-interface {v3, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const-string v0, "focus"

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_61

    .line 466
    :cond_57
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const-string v0, "blur"

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :goto_61
    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass7.AnonymousClass1 (com.taobao.weex.ui.component.DCWXInput$7$1)
.class Lcom/taobao/weex/ui/component/DCWXInput$7$1;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput$7;->fireEventForFocus(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/ui/component/DCWXInput$7;

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput$7;Landroid/widget/TextView;)V
    .registers 3

    .line 473
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$7$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$7;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$7$1;->val$text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 476
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$7$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$7;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget v0, v0, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    const-string v1, "focus"

    const-string v2, "detail"

    const-string v3, "height"

    const-string v4, "value"

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_59

    .line 477
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$7$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$7;

    iget v6, v0, Lcom/taobao/weex/ui/component/DCWXInput$7;->count:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/taobao/weex/ui/component/DCWXInput$7;->count:I

    .line 478
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$7$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$7;

    iget v0, v0, Lcom/taobao/weex/ui/component/DCWXInput$7;->count:I

    const/4 v6, 0x3

    if-le v0, v6, :cond_51

    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 480
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 481
    iget-object v5, p0, Lcom/taobao/weex/ui/component/DCWXInput$7$1;->val$text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v4, p0, Lcom/taobao/weex/ui/component/DCWXInput$7$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$7;

    iget-object v4, v4, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget v4, v4, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput$7$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$7;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v2, v1, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 487
    :cond_51
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$7$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$7;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$7$1;->val$text:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput$7;->access$1400(Lcom/taobao/weex/ui/component/DCWXInput$7;Landroid/widget/TextView;)V

    goto :goto_8c

    .line 489
    :cond_59
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$7$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$7;

    const/4 v6, 0x0

    iput v6, v0, Lcom/taobao/weex/ui/component/DCWXInput$7;->count:I

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 491
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 492
    iget-object v5, p0, Lcom/taobao/weex/ui/component/DCWXInput$7$1;->val$text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v4, p0, Lcom/taobao/weex/ui/component/DCWXInput$7$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$7;

    iget-object v4, v4, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget v4, v4, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput$7$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$7;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v2, v1, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :goto_8c
    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass8 (com.taobao.weex.ui.component.DCWXInput$8)
.class Lcom/taobao/weex/ui/component/DCWXInput$8;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->setAutofocus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;

.field final synthetic val$autofocus:Z

.field final synthetic val$inputView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;ZLandroid/widget/EditText;)V
    .registers 4

    .line 698
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->val$autofocus:Z

    iput-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->val$inputView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 701
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 704
    :cond_9
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->val$autofocus:Z

    if-eqz v0, :cond_2e

    .line 705
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 706
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->val$inputView:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1600(Lcom/taobao/weex/ui/component/DCWXInput;Landroid/widget/EditText;)V

    .line 707
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1700(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1800(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1900(Lcom/taobao/weex/ui/component/DCWXInput;II)V

    goto :goto_33

    .line 710
    :cond_2e
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->val$inputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 712
    :goto_33
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass9 (com.taobao.weex.ui.component.DCWXInput$9)
.class Lcom/taobao/weex/ui/component/DCWXInput$9;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->setAutofocus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;

.field final synthetic val$autofocus:Z

.field final synthetic val$inputView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;ZLandroid/widget/EditText;)V
    .registers 4

    .line 719
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->val$autofocus:Z

    iput-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->val$inputView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowAnimationEnd()V
    .registers 4

    .line 722
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 725
    :cond_9
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->val$autofocus:Z

    if-eqz v0, :cond_2e

    .line 726
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 727
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->val$inputView:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1600(Lcom/taobao/weex/ui/component/DCWXInput;Landroid/widget/EditText;)V

    .line 728
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1700(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1800(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1900(Lcom/taobao/weex/ui/component/DCWXInput;II)V

    goto :goto_33

    .line 731
    :cond_2e
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->val$inputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 733
    :goto_33
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKInstance;->removeFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V

    .line 734
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2002(Lcom/taobao/weex/ui/component/DCWXInput;Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.PatternWrapper (com.taobao.weex.ui.component.DCWXInput$PatternWrapper)
.class Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;
.super Ljava/lang/Object;
.source "DCWXInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/DCWXInput;
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

    .line 1374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1375
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->global:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput$1;)V
    .registers 2

    .line 1374
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;-><init>()V

    return-void
.end method

.method static synthetic access$2700(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Z
    .registers 1

    .line 1374
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->global:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Z)Z
    .registers 2

    .line 1374
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->global:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/util/regex/Pattern;
    .registers 1

    .line 1374
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->matcher:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .registers 2

    .line 1374
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->matcher:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/lang/String;
    .registers 1

    .line 1374
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->replace:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1374
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->replace:Ljava/lang/String;

    return-object p1
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.ReturnTypes (com.taobao.weex.ui.component.DCWXInput$ReturnTypes)
.class interface abstract Lcom/taobao/weex/ui/component/DCWXInput$ReturnTypes;
.super Ljava/lang/Object;
.source "DCWXInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/DCWXInput;
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

###### Class com.taobao.weex.ui.component.DCWXInput.TextFormatter (com.taobao.weex.ui.component.DCWXInput$TextFormatter)
.class public Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;
.super Ljava/lang/Object;
.source "DCWXInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/DCWXInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextFormatter"
.end annotation


# instance fields
.field private format:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

.field private recover:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)V
    .registers 3

    .line 1384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1385
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    .line 1386
    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Lcom/taobao/weex/ui/component/DCWXInput$1;)V
    .registers 4

    .line 1380
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;-><init>(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)V

    return-void
.end method


# virtual methods
.method format(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1391
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    if-eqz v0, :cond_4f

    .line 1392
    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2700(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1393
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2800(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2900(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1395
    :cond_1f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2800(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2900(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    return-object p1

    :catchall_34
    move-exception v0

    .line 1400
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

.method recover(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1407
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    if-eqz v0, :cond_4f

    .line 1408
    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2700(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1409
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2800(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2900(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1411
    :cond_1f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2800(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2900(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    return-object p1

    :catchall_34
    move-exception v0

    .line 1416
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
