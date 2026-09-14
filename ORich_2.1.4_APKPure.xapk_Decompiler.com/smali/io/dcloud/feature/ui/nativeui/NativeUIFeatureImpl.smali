###### Class io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl (io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl)
.class public Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/ui/nativeui/c;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/ui/nativeui/a;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/app/DatePickerDialog;

.field d:I

.field e:I

.field f:I

.field g:Landroid/app/TimePickerDialog;

.field h:I

.field i:I

.field j:Lio/dcloud/common/DHInterface/AbsMgr;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a:Ljava/util/HashMap;

    .line 7
    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->b:Ljava/util/HashMap;

    .line 606
    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->c:Landroid/app/DatePickerDialog;

    .line 616
    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->g:Landroid/app/TimePickerDialog;

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)Lio/dcloud/feature/ui/nativeui/a;
    .registers 9

    const-string v0, "title"

    .line 415
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v2

    :goto_f
    const-string v1, "cancel"

    .line 416
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    move-object v1, v2

    :goto_1d
    const-string v3, "buttons"

    .line 417
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_26

    return-object v2

    .line 422
    :cond_26
    invoke-interface {p4}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-direct {p0, p2, v3, p3, p4}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)Z

    move-result v3

    if-eqz v3, :cond_31

    return-object v2

    .line 426
    :cond_31
    new-instance v2, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$d;

    invoke-direct {v2, p0, p4, p3, p1}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$d;-><init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-interface {p4}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/RuningAcitvityUtil;->getTopRuningActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p1

    .line 428
    sget p3, Lio/dcloud/feature/ui/nativeui/NativeUIR;->ACTS_STYLE_ActionSheetStyleIOS7:I

    invoke-virtual {p1, p3}, Landroid/app/Activity;->setTheme(I)V

    const p3, 0x103000d

    .line 432
    invoke-interface {p4}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p4

    invoke-interface {p4}, Lio/dcloud/common/DHInterface/IAppInfo;->isFullScreen()Z

    move-result p4

    if-eqz p4, :cond_53

    const p3, 0x103000e

    .line 436
    :cond_53
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p4, v3, :cond_5f

    .line 437
    new-instance p3, Lio/dcloud/feature/ui/nativeui/a;

    invoke-direct {p3, p1}, Lio/dcloud/feature/ui/nativeui/a;-><init>(Landroid/content/Context;)V

    goto :goto_65

    .line 439
    :cond_5f
    new-instance p4, Lio/dcloud/feature/ui/nativeui/a;

    invoke-direct {p4, p1, p3}, Lio/dcloud/feature/ui/nativeui/a;-><init>(Landroid/content/Context;I)V

    move-object p3, p4

    .line 442
    :goto_65
    invoke-virtual {p3, v1}, Lio/dcloud/feature/ui/nativeui/a;->b(Ljava/lang/String;)Lio/dcloud/feature/ui/nativeui/a;

    .line 443
    invoke-virtual {p3, v0}, Lio/dcloud/feature/ui/nativeui/a;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/nativeui/a;

    .line 444
    invoke-virtual {p3, p2}, Lio/dcloud/feature/ui/nativeui/a;->a(Lorg/json/JSONArray;)Lio/dcloud/feature/ui/nativeui/a;

    .line 445
    invoke-virtual {p3, v2}, Lio/dcloud/feature/ui/nativeui/a;->a(Lio/dcloud/feature/ui/nativeui/a$b;)Lio/dcloud/feature/ui/nativeui/a;

    const/4 p1, 0x1

    .line 446
    invoke-virtual {p3, p1}, Lio/dcloud/feature/ui/nativeui/a;->a(Z)Lio/dcloud/feature/ui/nativeui/a;

    .line 447
    invoke-virtual {p3}, Lio/dcloud/feature/ui/nativeui/a;->j()V

    return-object p3
.end method

.method private a()V
    .registers 2

    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->c:Landroid/app/DatePickerDialog;

    const/4 v0, 0x0

    .line 412
    iput v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->d:I

    .line 413
    iput v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->e:I

    .line 414
    iput v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->f:I

    return-void
.end method

.method private a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 19

    const/16 v9, 0x11

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 465
    invoke-direct/range {v0 .. v9}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;I)V

    return-void
.end method

.method private a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;I)V
    .registers 26

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    move-object/from16 v1, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 466
    invoke-interface/range {p7 .. p7}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/util/RuningAcitvityUtil;->getTopRuningActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x104000a

    const/4 v12, 0x1

    const/4 v7, 0x0

    if-nez v9, :cond_66

    .line 468
    invoke-interface/range {p7 .. p7}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-direct {v8, v2, v1, v10, v11}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    return-void

    .line 472
    :cond_28
    invoke-static {v3, v12}, Lio/dcloud/common/util/DialogUtil;->initDialogTheme(Landroid/app/Activity;Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 473
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz p5, :cond_40

    .line 474
    aget-object v3, p5, v7

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 475
    invoke-static {v4}, Lio/dcloud/common/adapter/util/AndroidResources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p5, v7

    .line 477
    :cond_40
    invoke-static/range {p2 .. p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 478
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 480
    :cond_49
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 481
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 482
    aget-object v0, p5, v7

    new-instance v2, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$k;

    invoke-direct {v2, v8, v1, v10, v11}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$k;-><init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Landroid/app/AlertDialog;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 490
    new-instance v0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$l;

    invoke-direct {v0, v8, v1, v10, v11}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$l;-><init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Landroid/app/AlertDialog;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 506
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_142

    .line 508
    :cond_66
    invoke-static {v3, v12}, Lio/dcloud/common/util/DialogUtil;->initDialogTheme(Landroid/app/Activity;Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 509
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 510
    invoke-virtual {v13, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    const/4 v14, 0x2

    if-ne v9, v14, :cond_91

    .line 513
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_7f

    .line 515
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 517
    :cond_7f
    invoke-virtual {v13, v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 518
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 520
    instance-of v3, v1, Landroid/text/Spannable;

    if-eqz v3, :cond_91

    .line 522
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_91
    move-object v15, v5

    if-ne v9, v12, :cond_a3

    .line 527
    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 528
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    move/from16 v5, p9

    .line 529
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 530
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 532
    :cond_a3
    invoke-static/range {p2 .. p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 533
    invoke-virtual {v13, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 535
    :cond_ac
    invoke-virtual {v13, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 536
    invoke-virtual {v13, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    if-nez p5, :cond_c6

    new-array v0, v14, [Ljava/lang/String;

    .line 539
    invoke-static {v4}, Lio/dcloud/common/adapter/util/AndroidResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/high16 v1, 0x1040000

    .line 540
    invoke-static {v1}, Lio/dcloud/common/adapter/util/AndroidResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    move-object v6, v0

    goto :goto_c8

    :cond_c6
    move-object/from16 v6, p5

    .line 542
    :goto_c8
    invoke-interface/range {p7 .. p7}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object v3, v6

    move-object/from16 v5, p7

    move-object v14, v6

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(BLjava/lang/String;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_df

    return-void

    .line 547
    :cond_df
    :goto_df
    array-length v0, v14

    if-ge v7, v0, :cond_118

    const/4 v0, 0x3

    if-ge v7, v0, :cond_118

    .line 549
    new-instance v6, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v15

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object v12, v6

    move v6, v7

    move v8, v7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;-><init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;BLandroid/widget/EditText;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILandroid/app/AlertDialog;)V

    if-nez v8, :cond_101

    .line 571
    aget-object v0, v14, v8

    invoke-virtual {v13, v0, v12}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x1

    goto :goto_112

    :cond_101
    const/4 v0, 0x1

    if-ne v8, v0, :cond_10a

    .line 573
    aget-object v1, v14, v8

    invoke-virtual {v13, v1, v12}, Landroid/app/AlertDialog;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_112

    :cond_10a
    const/4 v1, 0x2

    if-ne v8, v1, :cond_112

    .line 575
    aget-object v1, v14, v8

    invoke-virtual {v13, v1, v12}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_112
    :goto_112
    add-int/lit8 v7, v8, 0x1

    const/4 v12, 0x1

    move-object/from16 v8, p0

    goto :goto_df

    .line 578
    :cond_118
    new-instance v7, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v15

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;-><init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;BLandroid/widget/EditText;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Landroid/app/AlertDialog;)V

    invoke-virtual {v13, v7}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 604
    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x2

    if-ne v9, v0, :cond_142

    .line 605
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_142

    .line 607
    invoke-static {v15}, Lio/dcloud/common/adapter/util/DeviceInfo;->showIME(Landroid/view/View;)V

    :cond_142
    :goto_142
    return-void
.end method

.method private a(BLjava/lang/String;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v0, p3

    const-string v1, "verticalAlign"

    const-string v2, "center"

    .line 448
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "buttons"

    .line 449
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 452
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v4, :cond_25

    .line 454
    invoke-static {v3, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_24
    const/4 v5, 0x0

    :cond_25
    move-object v11, v5

    .line 457
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "title"

    if-eqz v2, :cond_44

    .line 458
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v15, 0x11

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v10, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v6 .. v15}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;I)V

    goto :goto_7f

    :cond_44
    const-string v2, "top"

    .line 460
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 461
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v15, 0x31

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v10, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v6 .. v15}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;I)V

    goto :goto_7f

    :cond_62
    const-string v2, "bottom"

    .line 463
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 464
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v15, 0x51

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v10, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v6 .. v15}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;I)V

    :cond_7f
    :goto_7f
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 657
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "notify"

    .line 658
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainOriginalAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppVersionName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".stream_json"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 25

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 3
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v2

    const-string v3, "inline"

    const/4 v4, 0x0

    const/16 v5, 0x50

    const-string v7, "block"

    const/4 v9, 0x0

    if-eqz v1, :cond_d3

    const-string v10, "type"

    .line 6
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "richtext"

    invoke-static {v11, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, "style"

    .line 7
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_36

    .line 8
    invoke-static {v1, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 9
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 10
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_35

    goto :goto_36

    :cond_35
    move-object v7, v3

    :cond_36
    :goto_36
    const-string v11, "icon"

    .line 16
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5c

    .line 17
    invoke-static {v1, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 20
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, p1

    .line 21
    invoke-interface {v13, v12, v11}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 23
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 24
    iput-boolean v9, v12, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 25
    invoke-static {v11}, Lio/dcloud/common/adapter/util/PlatformUtil;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 26
    invoke-static {v11, v4, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_5e

    :cond_5c
    move-object/from16 v13, p1

    :goto_5e
    const-string v11, "duration"

    .line 28
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_78

    .line 29
    invoke-static {v1, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 30
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "long"

    .line 31
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_78

    const/4 v11, 0x1

    goto :goto_79

    :cond_78
    const/4 v11, 0x0

    :goto_79
    const-string v12, "align"

    .line 35
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_99

    .line 36
    invoke-static {v1, v12}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "left"

    .line 38
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8f

    const/4 v12, 0x3

    goto :goto_9a

    :cond_8f
    const-string v14, "right"

    .line 40
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_99

    const/4 v12, 0x5

    goto :goto_9a

    :cond_99
    const/4 v12, 0x1

    :goto_9a
    const-string v14, "verticalAlign"

    .line 46
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_bc

    .line 47
    invoke-static {v1, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "top"

    .line 49
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b1

    const/16 v5, 0x30

    goto :goto_bc

    :cond_b1
    const-string v15, "bottom"

    .line 51
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ba

    goto :goto_bc

    :cond_ba
    const/16 v5, 0x10

    :cond_bc
    :goto_bc
    const-string v14, "background"

    .line 57
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_d8

    .line 58
    invoke-static {v1, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 59
    invoke-static {v14}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d8

    .line 60
    invoke-static {v14}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v14

    goto :goto_d9

    :cond_d3
    move-object/from16 v13, p1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    :cond_d8
    const/4 v14, 0x1

    .line 65
    :goto_d9
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lio/dcloud/common/util/RuningAcitvityUtil;->getTopRuningActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v15

    if-eqz v15, :cond_ea

    .line 66
    invoke-virtual {v15}, Landroid/app/Activity;->isFinishing()Z

    move-result v16

    if-eqz v16, :cond_ea

    return-void

    :cond_ea
    if-nez v4, :cond_117

    if-eqz v10, :cond_ef

    goto :goto_117

    .line 165
    :cond_ef
    invoke-virtual {v15}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v11}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v0

    or-int v1, v12, v5

    .line 166
    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v2

    .line 167
    invoke-virtual {v0}, Landroid/widget/Toast;->getYOffset()I

    move-result v3

    .line 168
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    if-gtz v14, :cond_113

    .line 171
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 172
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v14, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_113
    move-object/from16 v3, p0

    goto/16 :goto_2a2

    :cond_117
    :goto_117
    if-eqz v10, :cond_123

    .line 173
    new-instance v6, Lio/dcloud/feature/ui/nativeui/b;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v15, v13}, Lio/dcloud/feature/ui/nativeui/b;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_12c

    .line 175
    :cond_123
    new-instance v6, Lcom/dcloud/android/widget/toast/ToastCompat;

    invoke-virtual {v15}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v6, v13}, Lcom/dcloud/android/widget/toast/ToastCompat;-><init>(Landroid/content/Context;)V

    .line 178
    :goto_12c
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41200000    # 10.0f

    .line 179
    invoke-static {v15, v8}, Lio/dcloud/common/adapter/util/CanvasHelper;->dip2px(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41000000    # 8.0f

    .line 180
    invoke-static {v15, v9}, Lio/dcloud/common/adapter/util/CanvasHelper;->dip2px(Landroid/content/Context;F)I

    move-result v9

    .line 181
    invoke-virtual {v13, v8, v9, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v8, 0x11

    .line 182
    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 183
    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move/from16 v17, v11

    const-string v11, "xiaomi"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_192

    const v8, 0x1080096

    if-gtz v14, :cond_16b

    .line 185
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 186
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v14, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 187
    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1ad

    .line 189
    :cond_16b
    invoke-static {}, Lio/dcloud/common/constant/DataInterface;->getSystemProperty()Ljava/lang/String;

    move-result-object v9

    const-string v11, "v11"

    const-string v14, "v12"

    .line 190
    filled-new-array {v11, v14}, [Ljava/lang/String;

    move-result-object v11

    .line 192
    invoke-static {v9}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18e

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_18e

    .line 193
    sget v8, Lio/dcloud/base/R$drawable;->toast_bg:I

    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1ad

    .line 195
    :cond_18e
    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1ad

    .line 200
    :cond_192
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    int-to-float v9, v9

    .line 201
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v9, 0x0

    .line 202
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    if-gtz v14, :cond_1a5

    .line 204
    invoke-virtual {v8, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1aa

    :cond_1a5
    const/high16 v9, -0x4e000000

    .line 206
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 207
    :goto_1aa
    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1ad
    const/4 v8, -0x2

    if-eqz v4, :cond_223

    .line 213
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 214
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x11

    .line 215
    iput v14, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const-string v14, "iconWidth"

    .line 216
    invoke-static {v1, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v8, "iconHeight"

    .line 217
    invoke-static {v1, v8}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 218
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    move/from16 v19, v5

    const-string v5, "px"

    if-nez v18, :cond_1e4

    invoke-virtual {v14, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1e4

    move/from16 v18, v12

    const/4 v12, 0x0

    .line 219
    invoke-static {v14, v12, v12, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v14

    iput v14, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1e7

    :cond_1e4
    move/from16 v18, v12

    const/4 v12, 0x0

    .line 221
    :goto_1e7
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1f9

    invoke-virtual {v8, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f9

    .line 222
    invoke-static {v8, v12, v12, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_1f9
    const/high16 v2, 0x40e00000    # 7.0f

    .line 225
    invoke-static {v15, v2}, Lio/dcloud/common/adapter/util/CanvasHelper;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 226
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20c

    .line 227
    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 228
    invoke-virtual {v11, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_219

    :cond_20c
    const/high16 v3, 0x3f800000    # 1.0f

    .line 230
    invoke-static {v15, v3}, Lio/dcloud/common/adapter/util/CanvasHelper;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v5, 0x1

    .line 231
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 232
    invoke-virtual {v11, v2, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 234
    :goto_219
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 236
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_227

    :cond_223
    move/from16 v19, v5

    move/from16 v18, v12

    .line 241
    :goto_227
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 242
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eqz v10, :cond_269

    move-object/from16 v3, p0

    .line 247
    iget-object v4, v3, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->j:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const-string v11, "nativeobj"

    const/4 v12, 0x1

    aput-object v11, v8, v12

    const-string v11, "makeRichText"

    const/4 v14, 0x2

    aput-object v11, v8, v14

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v11

    aput-object v11, v7, v9

    aput-object v0, v7, v12

    const-string v0, "richTextStyle"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    aput-object v0, v7, v14

    const/4 v0, 0x3

    aput-object v6, v7, v0

    aput-object v7, v8, v0

    const/16 v0, 0xa

    invoke-interface {v4, v5, v0, v8}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_274

    :cond_269
    move-object/from16 v3, p0

    .line 249
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    :goto_274
    const-string v1, "#ffffffff"

    .line 252
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v10, :cond_28c

    .line 257
    move-object v1, v6

    check-cast v1, Lio/dcloud/feature/ui/nativeui/b;

    invoke-virtual {v1, v13, v0}, Lio/dcloud/feature/ui/nativeui/b;->a(Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_28f

    .line 259
    :cond_28c
    invoke-virtual {v6, v13}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :goto_28f
    or-int v0, v18, v19

    .line 261
    invoke-virtual {v6}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    .line 262
    invoke-virtual {v6}, Landroid/widget/Toast;->getYOffset()I

    move-result v2

    .line 263
    invoke-virtual {v6, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    move/from16 v11, v17

    .line 265
    invoke-virtual {v6, v11}, Landroid/widget/Toast;->setDuration(I)V

    move-object v0, v6

    .line 276
    :goto_2a2
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 34

    move-object/from16 v14, p0

    move-object/from16 v15, p3

    .line 277
    iget-object v0, v14, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->c:Landroid/app/DatePickerDialog;

    const/4 v13, 0x5

    if-eqz v0, :cond_1b

    const-string v0, ""

    .line 278
    invoke-static {v13, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 283
    :cond_1b
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/RuningAcitvityUtil;->getTopRuningActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    const-string v0, "startYear"

    .line 284
    invoke-static {v15, v0}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v12

    const-string v0, "startMonth"

    .line 285
    invoke-static {v15, v0}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v11

    const-string v0, "startDay"

    .line 286
    invoke-static {v15, v0}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v10

    const-string v0, "endYear"

    .line 288
    invoke-static {v15, v0}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    const-string v0, "endMonth"

    .line 289
    invoke-static {v15, v0}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v8

    const-string v0, "endDay"

    .line 290
    invoke-static {v15, v0}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    const-string v0, "setYear"

    .line 292
    invoke-static {v15, v0}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    const-string v1, "setMonth"

    .line 293
    invoke-static {v15, v1}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    const-string v3, "setDay"

    .line 294
    invoke-static {v15, v3}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x2

    const/4 v5, 0x1

    if-nez v0, :cond_7d

    .line 296
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 297
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 298
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 299
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 300
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v0

    move/from16 v18, v0

    move/from16 v16, v1

    move/from16 v17, v3

    goto :goto_83

    :cond_7d
    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v3

    :goto_83
    const-string v4, "title"

    if-eqz v15, :cond_90

    .line 304
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const/16 v19, 0x1

    goto :goto_93

    :cond_90
    const/4 v0, 0x0

    const/16 v19, 0x0

    .line 305
    :goto_93
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 306
    new-instance v1, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$e;

    invoke-direct {v1, v14}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$e;-><init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;)V

    .line 318
    new-instance v0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;

    const/16 v20, 0x0

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move-object/from16 v1, p0

    move-object v15, v3

    move/from16 v3, v20

    move-object/from16 v23, v4

    move-object/from16 v4, v22

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v24, v7

    move/from16 v7, v18

    move/from16 v25, v8

    move/from16 v8, v16

    move/from16 v26, v9

    move/from16 v9, v17

    move/from16 v27, v10

    move/from16 v10, v18

    move/from16 v28, v11

    move/from16 v11, v19

    move/from16 v29, v12

    move-object/from16 v12, p1

    const/4 v14, 0x5

    move-object/from16 v13, p2

    invoke-direct/range {v0 .. v13}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;-><init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;IIIIIIZLio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 376
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_116

    const/16 v0, 0x76c

    move/from16 v1, v29

    const/4 v2, 0x1

    if-le v1, v0, :cond_f7

    .line 379
    invoke-virtual {v15, v2, v1}, Ljava/util/Calendar;->set(II)V

    move/from16 v3, v28

    const/4 v4, 0x2

    .line 380
    invoke-virtual {v15, v4, v3}, Ljava/util/Calendar;->set(II)V

    move/from16 v3, v27

    .line 381
    invoke-virtual {v15, v14, v3}, Ljava/util/Calendar;->set(II)V

    .line 382
    invoke-virtual/range {v21 .. v21}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v3

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/widget/DatePicker;->setMinDate(J)V

    goto :goto_f8

    :cond_f7
    const/4 v4, 0x2

    :goto_f8
    move/from16 v3, v26

    if-le v3, v0, :cond_116

    if-lt v3, v1, :cond_116

    .line 386
    invoke-virtual {v15, v2, v3}, Ljava/util/Calendar;->set(II)V

    move/from16 v0, v25

    .line 387
    invoke-virtual {v15, v4, v0}, Ljava/util/Calendar;->set(II)V

    move/from16 v0, v24

    .line 388
    invoke-virtual {v15, v14, v0}, Ljava/util/Calendar;->set(II)V

    .line 389
    invoke-virtual/range {v21 .. v21}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 392
    :cond_116
    new-instance v0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$g;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$g;-><init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    move-object/from16 v2, v21

    invoke-virtual {v2, v0}, Landroid/app/DatePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz v19, :cond_133

    move-object/from16 v0, p3

    move-object/from16 v3, v23

    .line 405
    invoke-static {v0, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-virtual {v2, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 409
    :cond_133
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->show()V

    .line 410
    iput-object v2, v1, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->c:Landroid/app/DatePickerDialog;

    return-void
.end method

.method static synthetic a(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a()V

    return-void
.end method

.method private a(BLjava/lang/String;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Z
    .registers 29

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 617
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_b2

    if-eqz v3, :cond_b2

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISAMU:Z

    if-eqz v0, :cond_b2

    move-object/from16 v6, p2

    const/4 v7, 0x0

    .line 618
    :goto_18
    array-length v0, v3

    if-ge v7, v0, :cond_b2

    const/4 v0, 0x3

    if-ge v7, v0, :cond_b2

    .line 620
    aget-object v0, v3, v7

    const-string v8, "\u66f4\u65b0"

    .line 621
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5c

    const-string v9, "\u5347\u7ea7"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5c

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_44

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_44

    const-string v8, "\u7248\u672c"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_ae

    :cond_44
    const-string v8, "OK"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5c

    const-string v8, "\u662f"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5c

    const-string v8, "\u786e\u5b9a"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    :cond_5c
    const/4 v0, 0x2

    const/4 v8, 0x1

    if-ne v2, v0, :cond_93

    const-string v6, ""

    .line 625
    :try_start_62
    invoke-static {v6}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "{index:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",message:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "}"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v10 .. v15}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 629
    invoke-direct {v1, v4}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Lio/dcloud/common/DHInterface/IApp;)V

    return v8

    :cond_93
    if-ne v2, v8, :cond_ae

    .line 633
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    sget v19, Lio/dcloud/common/util/JSUtil;->OK:I

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    .line 634
    invoke-static/range {v16 .. v21}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 637
    invoke-direct {v1, v4}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Lio/dcloud/common/DHInterface/IApp;)V
    :try_end_a9
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_a9} :catch_aa

    return v8

    :catch_aa
    move-exception v0

    .line 642
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_ae
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_18

    :cond_b2
    return v5
.end method

.method private a(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Z
    .registers 11

    .line 608
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISAMU:Z

    if-eqz v0, :cond_36

    const-string v0, "\u66f4\u65b0"

    .line 609
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "\u5347\u7ea7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "\u7248\u672c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_36

    :cond_22
    const-string v2, "{index:0}"

    .line 611
    :try_start_24
    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 612
    invoke-direct {p0, p2}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Lio/dcloud/common/DHInterface/IApp;)V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_30} :catch_32

    const/4 p1, 0x1

    return p1

    :catch_32
    move-exception p1

    .line 616
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_36
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)Z
    .registers 16

    const/4 v0, 0x0

    if-eqz p1, :cond_58

    .line 643
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->ISAMU:Z

    if-eqz v1, :cond_58

    const/4 v1, 0x0

    .line 644
    :goto_8
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_58

    .line 646
    :try_start_e
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u66f4\u65b0"

    .line 647
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "\u5347\u7ea7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "\u7248\u672c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_55

    :cond_30
    add-int/lit8 v2, v1, 0x1

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, p4

    move-object v6, p3

    invoke-static/range {v5 .. v10}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 651
    invoke-direct {p0, p2}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Lio/dcloud/common/DHInterface/IApp;)V
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_4f} :catch_51

    const/4 p1, 0x1

    return p1

    :catch_51
    move-exception v2

    .line 656
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_58
    return v0
.end method

.method private b()V
    .registers 2

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->g:Landroid/app/TimePickerDialog;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->h:I

    .line 4
    iput v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->i:I

    return-void
.end method

.method private b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 20

    move-object/from16 v12, p0

    move-object/from16 v13, p3

    .line 5
    iget-object v0, v12, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->g:Landroid/app/TimePickerDialog;

    if-eqz v0, :cond_1b

    const/4 v0, 0x5

    const-string v1, ""

    .line 6
    invoke-static {v0, v1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 11
    :cond_1b
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/RuningAcitvityUtil;->getTopRuningActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    const/4 v0, 0x1

    const-string v14, "title"

    const/4 v1, 0x0

    if-eqz v13, :cond_31

    .line 13
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    const/4 v15, 0x1

    goto :goto_32

    :cond_31
    const/4 v15, 0x0

    :goto_32
    const-string v3, "is24Hour"

    .line 15
    invoke-static {v13, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-static {v3, v0, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v6

    const-string v0, "time"

    .line 19
    invoke-static {v13, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__minutes"

    .line 20
    invoke-static {v13, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "__hours"

    .line 21
    invoke-static {v13, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 25
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 26
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    if-eqz v6, :cond_65

    const/16 v0, 0xb

    .line 30
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_6b

    :cond_65
    const/16 v0, 0xa

    .line 32
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    :goto_6b
    const/16 v3, 0xc

    .line 34
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_7a

    .line 36
    :cond_72
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_7a
    move v7, v0

    move v8, v1

    .line 41
    new-instance v3, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$h;

    invoke-direct {v3, v12}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$h;-><init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;)V

    .line 48
    new-instance v11, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;

    move-object v0, v11

    move-object/from16 v1, p0

    move v4, v7

    move v5, v8

    move v9, v15

    move-object/from16 v10, p1

    move-object v12, v11

    move-object/from16 v11, p2

    invoke-direct/range {v0 .. v11}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;-><init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZIIZLio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    if-eqz v15, :cond_9a

    .line 99
    invoke-static {v13, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v12, v0}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    :cond_9a
    new-instance v0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$j;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$j;-><init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/app/TimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 115
    invoke-virtual {v4}, Landroid/app/TimePickerDialog;->show()V

    .line 116
    iput-object v4, v1, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->g:Landroid/app/TimePickerDialog;

    return-void
.end method

.method static synthetic b(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->b()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dispose(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->j:Lio/dcloud/common/DHInterface/AbsMgr;

    :cond_9
    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 21

    move-object/from16 v10, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 1
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    .line 3
    array-length v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v3, v4, :cond_15

    .line 4
    aget-object v3, v1, v5

    move-object v9, v3

    goto :goto_16

    :cond_15
    const/4 v9, 0x0

    .line 7
    :goto_16
    array-length v3, v1

    const/4 v6, 0x2

    if-lt v3, v6, :cond_21

    .line 8
    aget-object v1, v1, v4

    invoke-static {v1}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 10
    :goto_22
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v7, "isTitlebarVisible"

    const-string v12, "setTitlebarVisible"

    const-string v13, "getTitlebarHeight"

    const-string v14, "showMenu"

    const-string v15, "hideMenu"

    const/16 v16, 0x5

    sparse-switch v3, :sswitch_data_528

    goto/16 :goto_130

    :sswitch_3a
    const-string v3, "WaitingView"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_130

    :cond_44
    const/16 v0, 0x13

    goto/16 :goto_131

    :sswitch_48
    const-string v3, "actionSheet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_130

    :cond_52
    const/16 v0, 0x12

    goto/16 :goto_131

    :sswitch_56
    const-string v3, "WaitingView_close"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_130

    :cond_60
    const/16 v0, 0x11

    goto/16 :goto_131

    :sswitch_64
    const-string v3, "confirm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto/16 :goto_130

    :cond_6e
    const/16 v0, 0x10

    goto/16 :goto_131

    :sswitch_72
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_130

    :cond_7a
    const/16 v0, 0xf

    goto/16 :goto_131

    :sswitch_7e
    const-string v3, "toast"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_130

    :cond_88
    const/16 v0, 0xe

    goto/16 :goto_131

    :sswitch_8c
    const-string v3, "alert"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_130

    :cond_96
    const/16 v0, 0xd

    goto/16 :goto_131

    :sswitch_9a
    const-string v3, "_NativeObj_close"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    goto/16 :goto_130

    :cond_a4
    const/16 v0, 0xc

    goto/16 :goto_131

    :sswitch_a8
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    goto/16 :goto_130

    :cond_b0
    const/16 v0, 0xb

    goto/16 :goto_131

    :sswitch_b4
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    goto/16 :goto_130

    :cond_bc
    const/16 v0, 0xa

    goto/16 :goto_131

    :sswitch_c0
    const-string v3, "closeWaiting"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    goto/16 :goto_130

    :cond_ca
    const/16 v0, 0x9

    goto/16 :goto_131

    :sswitch_ce
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    goto/16 :goto_130

    :cond_d6
    const/16 v0, 0x8

    goto/16 :goto_131

    :sswitch_da
    const-string v3, "pickTime"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e3

    goto :goto_130

    :cond_e3
    const/4 v0, 0x7

    goto :goto_131

    :sswitch_e5
    const-string v3, "pickDate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ee

    goto :goto_130

    :cond_ee
    const/4 v0, 0x6

    goto :goto_131

    :sswitch_f0
    const-string v3, "prompt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f9

    goto :goto_130

    :cond_f9
    const/4 v0, 0x5

    goto :goto_131

    :sswitch_fb
    const-string v3, "WaitingView_setTitle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_104

    goto :goto_130

    :cond_104
    const/4 v0, 0x4

    goto :goto_131

    :sswitch_106
    const-string v3, "previewImage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    goto :goto_130

    :cond_10f
    const/4 v0, 0x3

    goto :goto_131

    :sswitch_111
    const-string v3, "closePreviewImage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11a

    goto :goto_130

    :cond_11a
    const/4 v0, 0x2

    goto :goto_131

    :sswitch_11c
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_123

    goto :goto_130

    :cond_123
    const/4 v0, 0x1

    goto :goto_131

    :sswitch_125
    const-string v3, "closeToast"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12e

    goto :goto_130

    :cond_12e
    const/4 v0, 0x0

    goto :goto_131

    :goto_130
    const/4 v0, -0x1

    :goto_131
    const-string v3, "io.dcloud.feature.nativeObj.photoview.PhotoActivity"

    const-string v11, "io.dcloud.appstream.actionbar.StreamAppActionBarUtil"

    packed-switch v0, :pswitch_data_57a

    goto/16 :goto_526

    .line 107
    :pswitch_13a
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v5

    .line 109
    invoke-static {v1, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/RuningAcitvityUtil;->getTopRuningActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v7

    .line 111
    invoke-virtual {v7}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_526

    .line 112
    new-instance v11, Lio/dcloud/feature/ui/nativeui/c;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/nativeui/c;-><init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Landroid/app/Activity;)V

    .line 114
    iget-object v0, v10, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a:Ljava/util/HashMap;

    if-nez v0, :cond_16a

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v10, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a:Ljava/util/HashMap;

    .line 117
    :cond_16a
    iput-object v9, v11, Lio/dcloud/feature/ui/nativeui/c;->f:Ljava/lang/String;

    .line 118
    iget-object v0, v10, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_526

    .line 119
    :pswitch_173
    invoke-static {v1, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 121
    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-direct {v10, v0, v2, v1, v8}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)Lio/dcloud/feature/ui/nativeui/a;

    move-result-object v1

    .line 124
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_526

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_526

    .line 125
    iget-object v2, v10, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->b:Ljava/util/HashMap;

    if-nez v2, :cond_19a

    .line 126
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v10, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->b:Ljava/util/HashMap;

    .line 128
    :cond_19a
    iget-object v2, v10, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_526

    .line 231
    :pswitch_1a1
    iget-object v0, v10, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_526

    .line 232
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/ui/nativeui/c;

    if-eqz v0, :cond_526

    .line 234
    invoke-virtual {v0}, Lio/dcloud/feature/ui/nativeui/c;->a()V

    goto/16 :goto_526

    .line 235
    :pswitch_1b2
    :try_start_1b2
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v9

    .line 237
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 238
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_1d2

    const/4 v3, 0x1

    .line 239
    move-object v4, v2

    check-cast v4, Lorg/json/JSONObject;

    move-object/from16 v1, p0

    move v2, v3

    move-object v3, v0

    move-object/from16 v5, p1

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(BLjava/lang/String;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_526

    .line 240
    :cond_1d2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_201

    .line 241
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v2, 0x3

    .line 242
    invoke-static {v1, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1f3

    .line 245
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v4, v2, [Ljava/lang/String;

    :goto_1e6
    if-ge v5, v2, :cond_1f1

    .line 247
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e6

    :cond_1f1
    move-object v6, v4

    goto :goto_1f4

    :cond_1f3
    const/4 v6, 0x0

    :goto_1f4
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v5, v0

    move-object/from16 v8, p1

    .line 250
    invoke-direct/range {v1 .. v9}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_526

    :cond_201
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v5, v0

    move-object/from16 v8, p1

    .line 253
    invoke-direct/range {v1 .. v9}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_20e
    .catch Lorg/json/JSONException; {:try_start_1b2 .. :try_end_20e} :catch_210

    goto/16 :goto_526

    :catch_210
    move-exception v0

    .line 257
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_526

    :pswitch_216
    new-array v0, v6, [Ljava/lang/Class;

    .line 357
    const-class v1, Landroid/app/Activity;

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    .line 358
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x0

    .line 359
    invoke-static {v11, v7, v2, v0, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 362
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_248

    .line 363
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_249

    :cond_248
    const/4 v0, 0x0

    .line 365
    :goto_249
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 366
    :pswitch_252
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 368
    invoke-direct {v10, v2, v8, v0, v1}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_526

    .line 369
    :pswitch_25f
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v9

    .line 371
    invoke-static {v1, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    .line 372
    invoke-static {v1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/String;

    aput-object v1, v6, v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v5, v0

    move-object/from16 v8, p1

    .line 373
    invoke-direct/range {v1 .. v9}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_526

    .line 374
    :pswitch_281
    iget-object v0, v10, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_526

    .line 375
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/ui/nativeui/a;

    if-eqz v0, :cond_526

    const/4 v1, -0x1

    .line 377
    invoke-virtual {v0, v1}, Lio/dcloud/feature/ui/nativeui/a;->a(I)V

    .line 378
    iget-object v0, v0, Lio/dcloud/feature/ui/nativeui/a;->b:Lio/dcloud/feature/ui/nativeui/a$b;

    invoke-interface {v0, v1}, Lio/dcloud/feature/ui/nativeui/a$b;->onItemClick(I)V

    goto/16 :goto_526

    .line 536
    :pswitch_298
    :try_start_298
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v0
    :try_end_29c
    .catch Ljava/lang/Exception; {:try_start_298 .. :try_end_29c} :catch_29e

    :goto_29c
    const/4 v1, 0x3

    goto :goto_2a5

    :catch_29e
    move-exception v0

    move-object v1, v0

    .line 538
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    goto :goto_29c

    :goto_2a5
    new-array v2, v1, [Ljava/lang/Class;

    .line 540
    const-class v3, Landroid/app/Activity;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    .line 541
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 542
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v6

    const/4 v3, 0x0

    .line 543
    invoke-static {v11, v12, v3, v2, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    goto/16 :goto_527

    :pswitch_2d2
    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/Class;

    .line 544
    const-class v1, Landroid/app/Activity;

    aput-object v1, v0, v5

    new-array v1, v4, [Ljava/lang/Object;

    .line 545
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    aput-object v2, v1, v5

    .line 546
    invoke-static {v11, v13, v3, v0, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 549
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2f6

    .line 550
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2f7

    :cond_2f6
    const/4 v0, 0x0

    .line 552
    :goto_2f7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 553
    :pswitch_300
    iget-object v0, v10, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_526

    .line 554
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/ui/nativeui/c;

    .line 555
    invoke-virtual {v1}, Lio/dcloud/feature/ui/nativeui/c;->a()V

    goto :goto_30c

    .line 557
    :cond_31c
    iget-object v0, v10, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_526

    :pswitch_323
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Class;

    .line 581
    const-class v0, Landroid/app/Activity;

    aput-object v0, v2, v5

    const-class v0, Ljava/lang/String;

    aput-object v0, v2, v4

    const-class v0, Ljava/lang/String;

    aput-object v0, v2, v6

    const-class v0, Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const-class v0, Lio/dcloud/common/DHInterface/IWebview;

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const-class v0, Ljava/lang/String;

    aput-object v0, v2, v16

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 583
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v0, v7

    const/4 v3, 0x4

    aput-object v8, v0, v3

    .line 584
    invoke-static {v1, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v16

    const/4 v3, 0x0

    .line 585
    invoke-static {v11, v14, v3, v2, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_526

    .line 589
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_526

    .line 590
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v0

    if-eqz v0, :cond_526

    .line 592
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 593
    invoke-static {v1, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-interface {v0, v2, v3, v8, v1}, Lio/dcloud/common/DHInterface/IActivityHandler;->sideBarShowMenu(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_526

    .line 595
    :pswitch_390
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 597
    invoke-direct {v10, v8, v0, v1}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_526

    .line 598
    :pswitch_39d
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 600
    invoke-direct {v10, v8, v0, v1}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_526

    .line 669
    :pswitch_3aa
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v9

    .line 671
    invoke-static {v1, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    .line 672
    invoke-static {v1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x4

    .line 673
    invoke-static {v1, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3d5

    .line 676
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v4, v2, [Ljava/lang/String;

    :goto_3c8
    if-ge v5, v2, :cond_3d3

    .line 678
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3c8

    :cond_3d3
    move-object v6, v4

    goto :goto_3d6

    :cond_3d5
    const/4 v6, 0x0

    :goto_3d6
    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v5, v0

    move-object/from16 v8, p1

    .line 681
    invoke-direct/range {v1 .. v9}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_526

    .line 729
    :pswitch_3e2
    iget-object v0, v10, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_526

    .line 730
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/ui/nativeui/c;

    if-eqz v0, :cond_526

    .line 732
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    .line 733
    invoke-virtual {v0, v1}, Lio/dcloud/feature/ui/nativeui/c;->b(Ljava/lang/String;)V

    goto/16 :goto_526

    .line 794
    :pswitch_3f7
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v7

    .line 795
    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v7, :cond_526

    .line 797
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 798
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 799
    :goto_40c
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v13, v0, :cond_438

    .line 801
    :try_start_412
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_429

    .line 804
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_42a

    :cond_429
    move-object v14, v0

    .line 805
    :goto_42a
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_430
    .catch Lorg/json/JSONException; {:try_start_412 .. :try_end_430} :catch_431

    goto :goto_435

    :catch_431
    move-exception v0

    .line 808
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_435
    add-int/lit8 v13, v13, 0x1

    goto :goto_40c

    .line 811
    :cond_438
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 812
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "image_urlList"

    .line 813
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "original_image_urlArray"

    .line 814
    invoke-virtual {v0, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz v9, :cond_496

    const-string v3, "current"

    .line 816
    invoke-virtual {v9, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "image_current_index"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "background"

    .line 817
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_474

    .line 818
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v3

    const-string v5, "image_backgroud_color"

    .line 819
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_474
    const-string v3, "loop"

    .line 821
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_485

    .line 822
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "image_loop"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_485
    const-string v3, "indicator"

    .line 824
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_496

    .line 825
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "image_indicator"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_496
    const-string v3, "image_photo"

    .line 828
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v1, :cond_4ba

    .line 829
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-le v3, v6, :cond_4ba

    .line 830
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4ba

    const-string v3, "preview_callback"

    .line 832
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    invoke-static {}, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;->getInstance()Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;

    move-result-object v3

    new-instance v4, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$c;

    invoke-direct {v4, v10, v8, v1}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$c;-><init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;->addOnlongClickListener(Ljava/lang/String;Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager$OnLongClickListener;)V

    .line 841
    :cond_4ba
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getRequestedOrientation()I

    move-result v1

    const-string v3, "screen_orientation"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 842
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 843
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x10a0001

    const/high16 v2, 0x10a0000

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_526

    :pswitch_4d7
    const v1, 0x10a0001

    const/high16 v2, 0x10a0000

    .line 848
    invoke-static {v3}, Lio/dcloud/common/util/RuningAcitvityUtil;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_526

    .line 850
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 851
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_526

    :pswitch_4e9
    new-array v0, v6, [Ljava/lang/Class;

    .line 852
    const-class v1, Landroid/app/Activity;

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    .line 853
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x0

    .line 854
    invoke-static {v11, v15, v2, v0, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_526

    .line 856
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_526

    .line 857
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v0

    if-eqz v0, :cond_526

    .line 859
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IActivityHandler;->sideBarHideMenu()V

    goto :goto_526

    .line 860
    :pswitch_51f
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/feature/ui/nativeui/b;->a(Ljava/lang/String;)V

    :cond_526
    :goto_526
    const/4 v1, 0x0

    :goto_527
    return-object v1

    :sswitch_data_528
    .sparse-switch
        -0x7b7e3cf1 -> :sswitch_125
        -0x69bf0a3f -> :sswitch_11c
        -0x66f60f75 -> :sswitch_111
        -0x52720d8d -> :sswitch_106
        -0x3ee6c9bd -> :sswitch_fb
        -0x3a66a69c -> :sswitch_f0
        -0x2c1a1491 -> :sswitch_e5
        -0x2c12b172 -> :sswitch_da
        -0x14356204 -> :sswitch_ce
        -0xda2d6cb -> :sswitch_c0
        -0x98ed348 -> :sswitch_b4
        -0x57c9f8b -> :sswitch_a8
        -0x2f2e006 -> :sswitch_9a
        0x589895c -> :sswitch_8c
        0x6969627 -> :sswitch_7e
        0xe1066ad -> :sswitch_72
        0x38b0e6c0 -> :sswitch_64
        0x3af021eb -> :sswitch_56
        0x5db760c9 -> :sswitch_48
        0x7f9dfe72 -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_57a
    .packed-switch 0x0
        :pswitch_51f
        :pswitch_4e9
        :pswitch_4d7
        :pswitch_3f7
        :pswitch_3e2
        :pswitch_3aa
        :pswitch_39d
        :pswitch_390
        :pswitch_323
        :pswitch_300
        :pswitch_2d2
        :pswitch_298
        :pswitch_281
        :pswitch_25f
        :pswitch_252
        :pswitch_216
        :pswitch_1b2
        :pswitch_1a1
        :pswitch_173
        :pswitch_13a
    .end packed-switch
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->j:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method

###### Class io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl.a (io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl$a)
.class Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:B

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;BLandroid/widget/EditText;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILandroid/app/AlertDialog;)V
    .registers 8

    .line 1
    iput-byte p2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->a:B

    iput-object p3, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->d:Ljava/lang/String;

    iput p6, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->e:I

    iput-object p7, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->f:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 1
    iget-byte p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->a:B

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3e

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->d:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{index:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->e:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",message:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 10
    :cond_3e
    iget-byte p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->a:B

    const/4 p2, 0x1

    if-ne p1, p2, :cond_54

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->d:Ljava/lang/String;

    iget p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->e:I

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 13
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 17
    :cond_54
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$a;->f:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

###### Class io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl.b (io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl$b)
.class Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:B

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;BLandroid/widget/EditText;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .registers 7

    .line 1
    iput-byte p2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;->a:B

    iput-object p3, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;->d:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;->e:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 10

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_58

    const/4 p1, 0x4

    if-ne p2, p1, :cond_58

    .line 3
    iget-byte p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;->a:B

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3e

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;->d:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{index:-1,message:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 10
    :cond_3e
    iget-byte p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;->a:B

    if-ne p1, p3, :cond_52

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;->d:Ljava/lang/String;

    const/4 p1, -0x1

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 13
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 17
    :cond_52
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$b;->e:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return p3

    :cond_58
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl.c (io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl$c)
.class Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$c;
.super Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager$OnLongClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p2, p3}, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager$OnLongClickListener;-><init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLongClickListener(Lorg/json/JSONObject;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager$OnLongClickListener;->getPwebview()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager$OnLongClickListener;->getCallbackIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl.d (io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl$d)
.class Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/ui/nativeui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)Lio/dcloud/feature/ui/nativeui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$d;->d:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$d;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initCancelText(Landroid/widget/TextView;)V
    .registers 2

    return-void
.end method

.method public initTextItem(ILandroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onDismiss(I)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$d;->d:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    iget-object p1, p1, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->b:Ljava/util/HashMap;

    if-eqz p1, :cond_17

    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$d;->d:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    iget-object p1, p1, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->b:Ljava/util/HashMap;

    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(I)V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$d;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$d;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl.e (io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl$e)
.class Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$e;->a:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$e;->a:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    iput p2, p1, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->d:I

    .line 2
    iput p3, p1, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->e:I

    .line 3
    iput p4, p1, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->f:I

    return-void
.end method

###### Class io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl.f (io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl$f)
.class Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;
.super Landroid/app/DatePickerDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Z

.field final synthetic h:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;IIIIIIZLio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 25

    move-object v7, p0

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object v0, p1

    .line 1
    iput-object v0, v7, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->j:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    iput v8, v7, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->d:I

    iput v9, v7, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->e:I

    iput v10, v7, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->f:I

    move/from16 v0, p11

    iput-boolean v0, v7, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->g:Z

    move-object/from16 v0, p12

    iput-object v0, v7, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->h:Lio/dcloud/common/DHInterface/IWebview;

    move-object/from16 v0, p13

    iput-object v0, v7, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->i:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 12
    iput v8, v7, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->a:I

    iput v9, v7, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->b:I

    iput v10, v7, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 15

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/DatePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    const/4 p1, -0x2

    if-eq p2, p1, :cond_50

    const/4 p1, -0x1

    if-eq p2, p1, :cond_a

    goto :goto_61

    .line 4
    :cond_a
    new-instance p1, Ljava/util/GregorianCalendar;

    const-string p2, "GMT"

    .line 5
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 6
    sget p2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_2b

    .line 7
    iget-object p2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->j:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    iget v1, p2, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->d:I

    iget v2, p2, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->e:I

    iget v3, p2, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    goto :goto_38

    .line 9
    :cond_2b
    iget v1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->a:I

    iget v2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->b:I

    iget v3, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 12
    :goto_38
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    .line 13
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->h:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->i:Ljava/lang/String;

    .line 14
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_61

    .line 19
    :cond_50
    iget-object v6, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->h:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v7, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->i:Ljava/lang/String;

    sget-object p2, Lio/dcloud/common/constant/DOMException;->MSG_USER_CANCEL:Ljava/lang/String;

    .line 20
    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 21
    invoke-static/range {v6 .. v11}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 27
    :goto_61
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->j:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    invoke-static {p1}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/DatePickerDialog;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .registers 7

    .line 1
    iput p2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->a:I

    .line 2
    iput p3, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->b:I

    .line 3
    iput p4, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->c:I

    .line 4
    iget-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$f;->g:Z

    if-nez v0, :cond_21

    .line 5
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sVersion_release:Ljava/lang/String;

    const-string v1, "4.0.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sVersion_release:Ljava/lang/String;

    const-string v1, "4.0.4"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/DatePickerDialog;->onDateChanged(Landroid/widget/DatePicker;III)V

    :cond_21
    return-void
.end method

###### Class io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl.g (io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl$g)
.class Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$g;->c:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$g;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 8

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$g;->c:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    iget-object p1, p1, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->c:Landroid/app/DatePickerDialog;

    if-eqz p1, :cond_1d

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$g;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$g;->b:Ljava/lang/String;

    sget-object p1, Lio/dcloud/common/constant/DOMException;->MSG_USER_CANCEL:Ljava/lang/String;

    const/4 v2, -0x2

    .line 3
    invoke-static {v2, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$g;->c:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    invoke-static {p1}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;)V

    :cond_1d
    return-void
.end method

###### Class io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl.h (io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl$h)
.class Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$h;->a:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$h;->a:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    iput p2, p1, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->h:I

    .line 2
    iput p3, p1, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->i:I

    return-void
.end method

###### Class io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl.i (io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl$i)
.class Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;
.super Landroid/app/TimePickerDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZIIZLio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 21

    move-object v6, p0

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v0, p1

    .line 1
    iput-object v0, v6, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->h:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    iput v7, v6, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->c:I

    iput v8, v6, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->d:I

    move/from16 v0, p9

    iput-boolean v0, v6, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->e:Z

    move-object/from16 v0, p10

    iput-object v0, v6, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->f:Lio/dcloud/common/DHInterface/IWebview;

    move-object/from16 v0, p11

    iput-object v0, v6, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->g:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 2
    iput v7, v6, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->a:I

    iput v8, v6, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 15

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/TimePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    const/4 p1, -0x2

    if-eq p2, p1, :cond_42

    const/4 p1, -0x1

    if-eq p2, p1, :cond_a

    goto :goto_53

    .line 5
    :cond_a
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 6
    sget p2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_24

    .line 7
    iget-object p2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->h:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    iget p2, p2, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->h:I

    invoke-virtual {p1, p2}, Ljava/util/Date;->setHours(I)V

    .line 8
    iget-object p2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->h:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    iget p2, p2, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->i:I

    invoke-virtual {p1, p2}, Ljava/util/Date;->setMinutes(I)V

    goto :goto_2e

    .line 10
    :cond_24
    iget p2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->a:I

    invoke-virtual {p1, p2}, Ljava/util/Date;->setHours(I)V

    .line 11
    iget p2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->b:I

    invoke-virtual {p1, p2}, Ljava/util/Date;->setMinutes(I)V

    .line 13
    :goto_2e
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    .line 14
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->f:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->g:Ljava/lang/String;

    .line 15
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_53

    .line 20
    :cond_42
    iget-object v6, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->f:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v7, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->g:Ljava/lang/String;

    sget-object p2, Lio/dcloud/common/constant/DOMException;->MSG_USER_CANCEL:Ljava/lang/String;

    .line 21
    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 22
    invoke-static/range {v6 .. v11}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 28
    :goto_53
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->h:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    invoke-static {p1}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->b(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/TimePickerDialog;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/TimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .registers 4

    .line 1
    iput p2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->a:I

    .line 2
    iput p3, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->b:I

    .line 3
    iget-boolean p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$i;->e:Z

    if-nez p1, :cond_1f

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1f
    return-void
.end method

###### Class io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl.j (io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl$j)
.class Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$j;->c:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$j;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 8

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$j;->c:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    iget-object p1, p1, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->g:Landroid/app/TimePickerDialog;

    if-eqz p1, :cond_1d

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$j;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$j;->b:Ljava/lang/String;

    sget-object p1, Lio/dcloud/common/constant/DOMException;->MSG_USER_CANCEL:Ljava/lang/String;

    const/4 v2, -0x2

    .line 3
    invoke-static {v2, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$j;->c:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    invoke-static {p1}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->b(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;)V

    :cond_1d
    return-void
.end method

###### Class io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl.k (io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl$k)
.class Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Landroid/app/AlertDialog;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$k;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$k;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$k;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$k;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$k;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$k;->c:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const-string v2, "{index:0}"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl.l (io.dcloud.feature.ui.nativeui.NativeUIFeatureImpl$l)
.class Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Landroid/app/AlertDialog;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$l;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$l;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$l;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 10

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1d

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1d

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$l;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$l;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl$l;->c:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, "{index:-1}"

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return p3

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method
