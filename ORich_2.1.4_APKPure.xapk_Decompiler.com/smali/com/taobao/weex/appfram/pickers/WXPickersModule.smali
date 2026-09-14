###### Class com.taobao.weex.appfram.pickers.WXPickersModule (com.taobao.weex.appfram.pickers.WXPickersModule)
.class public Lcom/taobao/weex/appfram/pickers/WXPickersModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXPickersModule.java"


# static fields
.field private static final CANCEL:Ljava/lang/String; = "cancel"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final KEY_CANCEL_TITLE:Ljava/lang/String; = "cancelTitle"

.field private static final KEY_CANCEL_TITLE_COLOR:Ljava/lang/String; = "cancelTitleColor"

.field private static final KEY_CONFIRM_TITLE:Ljava/lang/String; = "confirmTitle"

.field private static final KEY_CONFIRM_TITLE_COLOR:Ljava/lang/String; = "confirmTitleColor"

.field private static final KEY_INDEX:Ljava/lang/String; = "index"

.field private static final KEY_ITEMS:Ljava/lang/String; = "items"

.field private static final KEY_MAX:Ljava/lang/String; = "max"

.field private static final KEY_MIN:Ljava/lang/String; = "min"

.field private static final KEY_SELECTION_COLOR:Ljava/lang/String; = "selectionColor"

.field private static final KEY_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_TITLE_BACKGROUND_COLOR:Ljava/lang/String; = "titleBackgroundColor"

.field private static final KEY_TITLE_COLOR:Ljava/lang/String; = "titleColor"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field private selected:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/appfram/pickers/WXPickersModule;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->selected:I

    return p0
.end method

.method static synthetic access$002(Lcom/taobao/weex/appfram/pickers/WXPickersModule;I)I
    .registers 2

    .line 54
    iput p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->selected:I

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Ljava/util/Map;Ljava/lang/String;I)I
    .registers 4

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getColor(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getColor(Ljava/util/Map;Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    return p3

    .line 128
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 110
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    return-object p3

    :cond_7
    return-object p1
.end method

.method private makeTitleView(Landroid/content/Context;Ljava/util/Map;)Landroid/widget/TextView;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/widget/TextView;"
        }
    .end annotation

    const-string v0, "title"

    const/4 v1, 0x0

    .line 295
    invoke-direct {p0, p2, v0, v1}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c

    return-object v1

    .line 299
    :cond_c
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 300
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {p1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x2

    const/high16 v2, 0x41a00000    # 20.0f

    .line 301
    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 302
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result p1

    .line 303
    invoke-virtual {v1, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 304
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 p1, 0x0

    const-string v2, "titleBackgroundColor"

    .line 305
    invoke-direct {p0, p2, v2, p1}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getColor(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 p1, -0x1000000

    const-string v2, "titleColor"

    .line 306
    invoke-direct {p0, p2, v2, p1}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getColor(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private performPickDate(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "value"

    const-string v1, ""

    .line 156
    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "max"

    .line 157
    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "min"

    .line 158
    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 160
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Lcom/taobao/weex/appfram/pickers/WXPickersModule$2;

    invoke-direct {v6, p0, p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule$2;-><init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Lcom/taobao/weex/bridge/JSCallback;)V

    move-object v7, p1

    .line 159
    invoke-static/range {v2 .. v7}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->pickDate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;Ljava/util/Map;)V

    return-void
.end method

.method private performPickTime(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "value"

    const-string v1, ""

    .line 132
    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 134
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/appfram/pickers/WXPickersModule$1;

    invoke-direct {v2, p0, p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule$1;-><init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 133
    invoke-static {v1, v0, v2, p1}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->pickTime(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;Ljava/util/Map;)V

    return-void
.end method

.method private performSinglePick(Ljava/util/List;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "index"

    invoke-direct {p0, p2, v2, v1}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->selected:I

    const-string v1, "textColor"

    .line 186
    invoke-direct {p0, p2, v1, v0}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getColor(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v8

    const-string v1, "selectionColor"

    .line 187
    invoke-direct {p0, p2, v1, v0}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getColor(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v7

    .line 188
    new-instance v0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;

    iget-object v1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 189
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x109000f

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;-><init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Landroid/content/Context;ILjava/util/List;II)V

    .line 215
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 216
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/taobao/weex/appfram/pickers/WXPickersModule$5;

    invoke-direct {v1, p0, p3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule$5;-><init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Lcom/taobao/weex/bridge/JSCallback;)V

    const v2, 0x104000a

    .line 217
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/taobao/weex/appfram/pickers/WXPickersModule$4;

    invoke-direct {v1, p0, p3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule$4;-><init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Lcom/taobao/weex/bridge/JSCallback;)V

    const/high16 p3, 0x1040000

    .line 227
    invoke-virtual {p1, p3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p3, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 237
    invoke-virtual {p3}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->makeTitleView(Landroid/content/Context;Ljava/util/Map;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 240
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p3, v1, :cond_72

    .line 243
    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    .line 246
    :cond_72
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p3

    .line 247
    new-instance v1, Lcom/taobao/weex/appfram/pickers/WXPickersModule$6;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/appfram/pickers/WXPickersModule$6;-><init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {p3, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;-><init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Landroid/app/AlertDialog;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 291
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private safeConvert(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 104
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    return-object v0
.end method


# virtual methods
.method public pick(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "items"

    invoke-direct {p0, p1, v1, v0}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->safeConvert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 85
    :try_start_11
    invoke-direct {p0, v0, p1, p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_19
    return-void
.end method

.method public pickDate(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performPickDate(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V

    return-void
.end method

.method public pickTime(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performPickTime(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.pickers.WXPickersModule.AnonymousClass1 (com.taobao.weex.appfram.pickers.WXPickersModule$1)
.class Lcom/taobao/weex/appfram/pickers/WXPickersModule$1;
.super Ljava/lang/Object;
.source "WXPickersModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performPickTime(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3

    .line 136
    iput-object p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$1;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPick(ZLjava/lang/String;)V
    .registers 6

    const-string v0, "data"

    const-string v1, "result"

    const/4 v2, 0x2

    if-eqz p1, :cond_1a

    .line 140
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "success"

    .line 141
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_2d

    .line 145
    :cond_1a
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string p2, "cancel"

    .line 146
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 147
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :goto_2d
    return-void
.end method

###### Class com.taobao.weex.appfram.pickers.WXPickersModule.AnonymousClass2 (com.taobao.weex.appfram.pickers.WXPickersModule$2)
.class Lcom/taobao/weex/appfram/pickers/WXPickersModule$2;
.super Ljava/lang/Object;
.source "WXPickersModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performPickDate(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3

    .line 164
    iput-object p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$2;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPick(ZLjava/lang/String;)V
    .registers 6

    const-string v0, "data"

    const-string v1, "result"

    const/4 v2, 0x2

    if-eqz p1, :cond_1a

    .line 168
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "success"

    .line 169
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_2d

    .line 173
    :cond_1a
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string p2, "cancel"

    .line 174
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 175
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :goto_2d
    return-void
.end method

###### Class com.taobao.weex.appfram.pickers.WXPickersModule.AnonymousClass3 (com.taobao.weex.appfram.pickers.WXPickersModule$3)
.class Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;
.super Landroid/widget/ArrayAdapter;
.source "WXPickersModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

.field final synthetic val$selectionColor:I

.field final synthetic val$textColor:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Landroid/content/Context;ILjava/util/List;II)V
    .registers 7

    .line 191
    iput-object p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iput p5, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;->val$selectionColor:I

    iput p6, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;->val$textColor:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_27

    .line 197
    instance-of p3, p2, Landroid/widget/Checkable;

    if-eqz p3, :cond_27

    .line 198
    iget-object p3, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    invoke-static {p3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->access$000(Lcom/taobao/weex/appfram/pickers/WXPickersModule;)I

    move-result p3

    const/4 v0, 0x0

    if-ne p1, p3, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    .line 199
    :goto_16
    move-object p3, p2

    check-cast p3, Landroid/widget/Checkable;

    invoke-interface {p3, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    if-eqz p1, :cond_24

    .line 202
    iget p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;->val$selectionColor:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_27

    .line 204
    :cond_24
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 208
    :cond_27
    :goto_27
    instance-of p1, p2, Landroid/widget/TextView;

    if-eqz p1, :cond_35

    iget p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;->val$textColor:I

    if-eqz p1, :cond_35

    .line 209
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_35
    return-object p2
.end method

###### Class com.taobao.weex.appfram.pickers.WXPickersModule.AnonymousClass4 (com.taobao.weex.appfram.pickers.WXPickersModule$4)
.class Lcom/taobao/weex/appfram/pickers/WXPickersModule$4;
.super Ljava/lang/Object;
.source "WXPickersModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3

    .line 227
    iput-object p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$4;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$4;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 231
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    const-string p2, "result"

    const-string v0, "cancel"

    .line 232
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, -0x1

    .line 233
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "data"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$4;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.pickers.WXPickersModule.AnonymousClass5 (com.taobao.weex.appfram.pickers.WXPickersModule$5)
.class Lcom/taobao/weex/appfram/pickers/WXPickersModule$5;
.super Ljava/lang/Object;
.source "WXPickersModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3

    .line 217
    iput-object p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$5;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 221
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    const-string p2, "result"

    const-string v0, "success"

    .line 222
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$5;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    invoke-static {p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->access$000(Lcom/taobao/weex/appfram/pickers/WXPickersModule;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "data"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.pickers.WXPickersModule.AnonymousClass6 (com.taobao.weex.appfram.pickers.WXPickersModule$6)
.class Lcom/taobao/weex/appfram/pickers/WXPickersModule$6;
.super Ljava/lang/Object;
.source "WXPickersModule.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Landroid/widget/ArrayAdapter;)V
    .registers 3

    .line 247
    iput-object p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$6;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$6;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 250
    iget-object p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$6;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    invoke-static {p1, p3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->access$002(Lcom/taobao/weex/appfram/pickers/WXPickersModule;I)I

    .line 251
    iget-object p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$6;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

###### Class com.taobao.weex.appfram.pickers.WXPickersModule.AnonymousClass7 (com.taobao.weex.appfram.pickers.WXPickersModule$7)
.class Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;
.super Ljava/lang/Object;
.source "WXPickersModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$options:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Landroid/app/AlertDialog;Ljava/util/Map;)V
    .registers 4

    .line 255
    iput-object p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$options:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 258
    iget-object v0, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$dialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_38

    .line 262
    iget-object v4, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iget-object v5, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$options:Ljava/util/Map;

    const-string v6, "confirmTitle"

    invoke-static {v4, v5, v6, v2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->access$100(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 263
    iget-object v5, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iget-object v6, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$options:Ljava/util/Map;

    const-string v7, "confirmTitleColor"

    invoke-static {v5, v6, v7, v3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->access$200(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v5

    if-eqz v4, :cond_30

    .line 266
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_30
    if-eqz v5, :cond_38

    .line 271
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 272
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_38
    if-eqz v1, :cond_5a

    .line 277
    iget-object v0, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iget-object v4, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$options:Ljava/util/Map;

    const-string v5, "cancelTitle"

    invoke-static {v0, v4, v5, v2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->access$100(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    iget-object v2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iget-object v4, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$options:Ljava/util/Map;

    const-string v5, "cancelTitleColor"

    invoke-static {v2, v4, v5, v3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->access$200(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    if-eqz v0, :cond_55

    .line 281
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_55
    if-eqz v2, :cond_5a

    .line 285
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    :cond_5a
    return-void
.end method
