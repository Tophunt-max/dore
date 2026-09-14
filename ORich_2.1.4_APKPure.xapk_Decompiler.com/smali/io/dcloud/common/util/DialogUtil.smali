###### Class io.dcloud.common.util.DialogUtil (io.dcloud.common.util.DialogUtil)
.class public Lio/dcloud/common/util/DialogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initDialogTheme(Landroid/app/Activity;)Landroid/app/AlertDialog$Builder;
    .registers 3

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_c

    .line 9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_20

    :cond_c
    const/16 v1, 0x14

    if-ge v0, v1, :cond_18

    .line 11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lio/dcloud/PdrR;->STREAMAPP_DELETE_THEME:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_20

    .line 13
    :cond_18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x1030132

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_20
    return-object v0
.end method

.method public static initDialogTheme(Landroid/app/Activity;Z)Landroid/app/AlertDialog$Builder;
    .registers 3

    if-eqz p1, :cond_8

    .line 1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_25

    .line 2
    :cond_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-ge p1, v0, :cond_14

    .line 3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_25

    :cond_14
    const/16 v0, 0x14

    if-ge p1, v0, :cond_20

    .line 5
    new-instance p1, Landroid/app/AlertDialog$Builder;

    sget v0, Lio/dcloud/PdrR;->STREAMAPP_DELETE_THEME:I

    invoke-direct {p1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_25

    .line 7
    :cond_20
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :goto_25
    return-object p1
.end method

.method public static showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;ZIII)V
    .registers 20

    move-object v0, p6

    move-object v1, p7

    if-nez p0, :cond_5

    return-void

    .line 1
    :cond_5
    invoke-static {p0}, Lio/dcloud/common/util/DialogUtil;->initDialogTheme(Landroid/app/Activity;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lio/dcloud/PdrR;->STREAMAPP_CUSTOM_ALERT_DIALOG_LAYOUT:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 5
    sget v4, Lio/dcloud/PdrR;->STREAMAPP_CUSTOM_ALERT_DIALOG_TITLE:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 6
    sget v5, Lio/dcloud/PdrR;->STREAMAPP_CUSTOM_ALERT_DIALOG_SURE:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 7
    sget v6, Lio/dcloud/PdrR;->STREAMAPP_CUSTOM_ALERT_DIALOG_CANCEL:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3f

    move-object v7, p1

    .line 10
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move/from16 v7, p9

    .line 11
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    :cond_3f
    if-nez p8, :cond_4c

    .line 14
    sget v4, Lio/dcloud/PdrR;->STREAMAPP_CUSTOM_ALERT_DIALOG_CUSTOM_LAYOUT:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_4c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_56

    move-object v4, p2

    .line 17
    invoke-virtual {v5, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_56
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_60

    move-object v4, p3

    .line 20
    invoke-virtual {v6, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_60
    new-instance v4, Lio/dcloud/common/util/DialogUtil$5;

    move-object v7, p4

    invoke-direct {v4, v2, p4}, Lio/dcloud/common/util/DialogUtil$5;-><init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    new-instance v4, Lio/dcloud/common/util/DialogUtil$6;

    move-object v5, p5

    invoke-direct {v4, v2, p5}, Lio/dcloud/common/util/DialogUtil$6;-><init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_77

    .line 42
    invoke-virtual {v2, p6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_77
    if-eqz v1, :cond_7c

    .line 45
    invoke-virtual {v2, p7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 47
    :cond_7c
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 48
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 50
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 52
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 53
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v2, p10

    .line 54
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 55
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v2, p11

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public static showConfirm(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6
    new-instance p2, Lio/dcloud/common/util/DialogUtil$1;

    invoke-direct {p2, p0, p4}, Lio/dcloud/common/util/DialogUtil$1;-><init>(Landroid/app/AlertDialog;Lio/dcloud/common/DHInterface/ICallBack;)V

    .line 19
    aget-object p1, p3, p1

    const/4 p4, -0x1

    invoke-virtual {p0, p4, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x1

    .line 20
    aget-object p1, p3, p1

    const/4 p3, -0x2

    invoke-virtual {p0, p3, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 22
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/DialogUtil;->initDialogTheme(Landroid/app/Activity;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p3, :cond_1c

    .line 3
    aget-object v1, p3, v0

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const v1, 0x104000a

    .line 4
    invoke-static {v1}, Lio/dcloud/common/adapter/util/AndroidResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    .line 6
    :cond_1c
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_25
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 10
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 11
    aget-object p1, p3, v0

    new-instance p2, Lio/dcloud/common/util/DialogUtil$3;

    invoke-direct {p2, p0}, Lio/dcloud/common/util/DialogUtil$3;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 17
    new-instance p1, Lio/dcloud/common/util/DialogUtil$4;

    invoke-direct {p1, p0}, Lio/dcloud/common/util/DialogUtil$4;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 31
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static showLoadAPPDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lio/dcloud/base/R$string;->dcloud_common_ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/util/DialogUtil$2;

    invoke-direct {v1, p0, p2}, Lio/dcloud/common/util/DialogUtil$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    .line 10
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 12
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

###### Class io.dcloud.common.util.DialogUtil.AnonymousClass1 (io.dcloud.common.util.DialogUtil$1)
.class final Lio/dcloud/common/util/DialogUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/DialogUtil;->showConfirm(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ad:Landroid/app/AlertDialog;

.field final synthetic val$callback:Lio/dcloud/common/DHInterface/ICallBack;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/DialogUtil$1;->val$ad:Landroid/app/AlertDialog;

    iput-object p2, p0, Lio/dcloud/common/util/DialogUtil$1;->val$callback:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 p1, -0x2

    if-ne p2, p1, :cond_e

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/DialogUtil$1;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/util/DialogUtil$1;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1a

    :cond_e
    const/4 p1, -0x3

    if-ne p2, p1, :cond_12

    goto :goto_1a

    :cond_12
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1a

    .line 5
    iget-object p1, p0, Lio/dcloud/common/util/DialogUtil$1;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 7
    :cond_1a
    :goto_1a
    iget-object p1, p0, Lio/dcloud/common/util/DialogUtil$1;->val$callback:Lio/dcloud/common/DHInterface/ICallBack;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.dcloud.common.util.DialogUtil.AnonymousClass2 (io.dcloud.common.util.DialogUtil$2)
.class final Lio/dcloud/common/util/DialogUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/DialogUtil;->showLoadAPPDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$apkPath:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/DialogUtil$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lio/dcloud/common/util/DialogUtil$2;->val$apkPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/DialogUtil$2;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lio/dcloud/common/util/DialogUtil$2;->val$apkPath:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p1, p2}, Lio/dcloud/common/util/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/util/DialogUtil$2;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lio/dcloud/common/util/DialogUtil$2;->val$apkPath:Ljava/lang/String;

    const-string v0, "application/vnd.android.package-archive"

    invoke-static {p1, p2, v0}, Lio/dcloud/common/util/LoadAppUtils;->getDataAndTypeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lio/dcloud/common/util/DialogUtil$2;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class io.dcloud.common.util.DialogUtil.AnonymousClass3 (io.dcloud.common.util.DialogUtil$3)
.class final Lio/dcloud/common/util/DialogUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/DialogUtil;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/DialogUtil$3;->val$_dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/DialogUtil$3;->val$_dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

###### Class io.dcloud.common.util.DialogUtil.AnonymousClass4 (io.dcloud.common.util.DialogUtil$4)
.class final Lio/dcloud/common/util/DialogUtil$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/DialogUtil;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/DialogUtil$4;->val$_dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_10

    const/4 p1, 0x4

    if-ne p2, p1, :cond_10

    .line 3
    iget-object p1, p0, Lio/dcloud/common/util/DialogUtil$4;->val$_dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return p3

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.common.util.DialogUtil.AnonymousClass5 (io.dcloud.common.util.DialogUtil$5)
.class final Lio/dcloud/common/util/DialogUtil$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/DialogUtil;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;ZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$firstButtonOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/DialogUtil$5;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lio/dcloud/common/util/DialogUtil$5;->val$firstButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/DialogUtil$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/DialogUtil$5;->val$firstButtonOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_c

    .line 3
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_c
    return-void
.end method

###### Class io.dcloud.common.util.DialogUtil.AnonymousClass6 (io.dcloud.common.util.DialogUtil$6)
.class final Lio/dcloud/common/util/DialogUtil$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/DialogUtil;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;ZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$secondButtonOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/DialogUtil$6;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lio/dcloud/common/util/DialogUtil$6;->val$secondButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/DialogUtil$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/DialogUtil$6;->val$secondButtonOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_c

    .line 3
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_c
    return-void
.end method
