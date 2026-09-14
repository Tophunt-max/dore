###### Class io.dcloud.common.util.AppPermissionUtil (io.dcloud.common.util.AppPermissionUtil)
.class public Lio/dcloud/common/util/AppPermissionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ASK:I = 0x4

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field public static final MODE_UNKNOWN:I = -0x1

.field public static OP_INSTALL_SHORTCUT:Ljava/lang/String;

.field public static mXiaoMiCode19OPSIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mXiaoMiCode21OPSIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mXiaoMiCode23OPSIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode19OPSIDs:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode21OPSIDs:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode23OPSIDs:Ljava/util/HashMap;

    const-string v0, "op_install_shortcut"

    .line 5
    sput-object v0, Lio/dcloud/common/util/AppPermissionUtil;->OP_INSTALL_SHORTCUT:Ljava/lang/String;

    .line 15
    sget-object v1, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode19OPSIDs:Ljava/util/HashMap;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode21OPSIDs:Ljava/util/HashMap;

    sget-object v1, Lio/dcloud/common/util/AppPermissionUtil;->OP_INSTALL_SHORTCUT:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode23OPSIDs:Ljava/util/HashMap;

    sget-object v1, Lio/dcloud/common/util/AppPermissionUtil;->OP_INSTALL_SHORTCUT:Ljava/lang/String;

    const/16 v2, 0x2721

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static againShortcutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string p3, "pdr"

    .line 1
    invoke-static {p1, p3}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p3

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lio/dcloud/common/util/DialogUtil;->initDialogTheme(Landroid/app/Activity;Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_set_pms:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lio/dcloud/base/R$string;->dcloud_short_cut_create_error_tips:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lio/dcloud/base/R$string;->dcloud_short_cut_goto_pms:I

    .line 4
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/dcloud/common/util/AppPermissionUtil$5;

    invoke-direct {v3, p1, p3, p2}, Lio/dcloud/common/util/AppPermissionUtil$5;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget p3, Lio/dcloud/base/R$string;->dcloud_short_cut_not_install:I

    .line 14
    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lio/dcloud/common/util/AppPermissionUtil$4;

    invoke-direct {p3, p0}, Lio/dcloud/common/util/AppPermissionUtil$4;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 26
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 27
    new-instance p2, Lio/dcloud/common/util/AppPermissionUtil$6;

    invoke-direct {p2, p0}, Lio/dcloud/common/util/AppPermissionUtil$6;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p0, 0x0

    .line 36
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 37
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static checkNoShortcutPermionGuide(Landroid/content/Context;Ljava/lang/String;ZLio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Landroid/content/SharedPreferences;Z)I
    .registers 20

    move-object v0, p0

    move-object/from16 v2, p4

    .line 1
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_pms_unauthorized_tips1:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v4, Lio/dcloud/common/adapter/util/MobilePhoneModel;->MEIZU:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    const-string v8, "_staremapp_shortcut_guide_is_first_vivo"

    if-eqz v4, :cond_32

    .line 6
    invoke-static {p1}, Lio/dcloud/common/util/ShortCutUtil;->getHeadShortCutIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3}, Lio/dcloud/common/util/AppPermissionUtil;->isFlymeShortcutallowAllow(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_d6

    .line 8
    sget v1, Lio/dcloud/PdrR;->DCLOUD_GUIDE_GIF_MEIZU:I

    .line 10
    sget v3, Lio/dcloud/base/R$string;->dcloud_short_cut_pms_unauthorized_tips2:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "_staremapp_shortcut_guide_is_first_flyme"

    move v4, v1

    move-object v7, v3

    :goto_2e
    move-object v1, v8

    :goto_2f
    const/4 v8, 0x1

    goto/16 :goto_db

    .line 12
    :cond_32
    sget-object v4, Lio/dcloud/common/adapter/util/MobilePhoneModel;->XIAOMI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 13
    invoke-static {p0}, Lio/dcloud/common/util/AppPermissionUtil;->checkOp(Landroid/content/Context;)I

    move-result v7

    .line 14
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_pms_unauthorized_tips2:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    sget v3, Lio/dcloud/PdrR;->DCLOUD_GUIDE_GIF_XIAOMI:I

    const-string v8, "_staremapp_shortcut_guide_is_first_miui"

    move v4, v3

    move v12, v7

    move-object v7, v1

    move-object v1, v8

    move v8, v12

    goto/16 :goto_db

    .line 17
    :cond_4f
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v9, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 18
    invoke-static {}, Lio/dcloud/common/util/AppPermissionUtil;->isEmuiShortcutallowAllow()Z

    move-result v3

    if-nez v3, :cond_d6

    .line 20
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_pms_unauthorized_tips3:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 21
    sget v3, Lio/dcloud/PdrR;->DCLOUD_GUIDE_GIF_HUAWEI:I

    const-string v8, "_staremapp_shortcut_guide_is_first_emui"

    move-object v7, v1

    move v4, v3

    goto :goto_2e

    .line 24
    :cond_6c
    sget-object v4, Lio/dcloud/common/adapter/util/MobilePhoneModel;->VIVO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d6

    const-string v3, "com.iqoo.secure"

    .line 25
    invoke-static {p0, v3}, Lio/dcloud/common/util/LoadAppUtils;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {p0}, Lio/dcloud/common/util/LoadAppUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-static {p0, v4}, Lio/dcloud/common/util/ShortCutUtil;->requestShortCutPermissionVivo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 28
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d6

    const-string v10, "2"

    .line 29
    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d5

    const-string v10, "1"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_99

    goto :goto_d5

    .line 31
    :cond_99
    invoke-static {v10, v9}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a7

    const-string v10, "17"

    invoke-static {v10, v9}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d6

    :cond_a7
    const-string v7, "3"

    .line 34
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 35
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_pms_unauthorized_tips4:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v1, v8

    const/4 v4, 0x1

    goto/16 :goto_2f

    :cond_c2
    const-string v4, "4"

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 38
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_open_set_pms:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_d0
    move-object v7, v1

    move-object v1, v8

    const/4 v4, 0x0

    goto/16 :goto_2f

    :cond_d5
    :goto_d5
    return v7

    :cond_d6
    const/4 v8, 0x0

    move-object v7, v1

    move-object v1, v8

    const/4 v4, 0x0

    const/4 v8, -0x1

    :goto_db
    if-ne v8, v6, :cond_169

    if-eqz p6, :cond_169

    .line 45
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IApp;->forceShortCut()Ljava/lang/String;

    move-result-object v3

    const-string v9, "tipOnce"

    invoke-static {v3, v9}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_142

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v9, p5

    invoke-interface {v9, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_169

    .line 47
    invoke-interface/range {p5 .. p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p2, :cond_12d

    .line 49
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/AppPermissionUtil;->showShortCutDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;ILjava/lang/String;)V

    goto :goto_169

    .line 52
    :cond_12d
    invoke-static {p0}, Lio/dcloud/common/util/LoadAppUtils;->startSecuritySettingPage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_169

    .line 53
    invoke-static {p0, v7, v6}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    .line 54
    invoke-static {p0}, Lio/dcloud/common/ui/PermissionGuideWindow;->getInstance(Landroid/content/Context;)Lio/dcloud/common/ui/PermissionGuideWindow;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Lio/dcloud/common/ui/PermissionGuideWindow;->showWindow(Ljava/lang/String;I)V

    goto :goto_169

    :cond_142
    move-object/from16 v9, p5

    if-eqz p2, :cond_155

    .line 60
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/AppPermissionUtil;->showShortCutDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;ILjava/lang/String;)V

    goto :goto_169

    .line 63
    :cond_155
    invoke-static {p0}, Lio/dcloud/common/util/LoadAppUtils;->startSecuritySettingPage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_169

    .line 64
    invoke-static {p0, v7, v6}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    .line 65
    invoke-static {p0}, Lio/dcloud/common/ui/PermissionGuideWindow;->getInstance(Landroid/content/Context;)Lio/dcloud/common/ui/PermissionGuideWindow;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Lio/dcloud/common/ui/PermissionGuideWindow;->showWindow(Ljava/lang/String;I)V

    :cond_169
    :goto_169
    return v8
.end method

.method public static checkOp(Landroid/content/Context;)I
    .registers 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_5d

    const-string v0, "appops"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_10
    const-string v2, "OP_INSTALL_SHORTCUT"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    .line 9
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 11
    const-class v5, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-string v5, "checkOp"

    .line 12
    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v7

    aput-object p0, v3, v8

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_58} :catch_59

    return p0

    :catch_59
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5d
    const/4 p0, -0x1

    return p0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->MEIZU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v1, :cond_18

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/ShortCutUtil;->getHeadShortCutIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/util/AppPermissionUtil;->isFlymeShortcutallowAllow(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v3

    .line 7
    :cond_18
    sget-object p1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->XIAOMI:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_30

    .line 8
    invoke-static {p0}, Lio/dcloud/common/util/AppPermissionUtil;->checkOp(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_2f

    if-eq p0, v2, :cond_2f

    if-eq p0, v3, :cond_2e

    if-eq p0, v0, :cond_2e

    goto :goto_42

    :cond_2e
    const/4 p0, 0x2

    :cond_2f
    return p0

    .line 20
    :cond_30
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object p1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_42

    .line 21
    invoke-static {}, Lio/dcloud/common/util/AppPermissionUtil;->isEmuiShortcutallowAllow()Z

    move-result p0

    if-nez p0, :cond_41

    return v2

    :cond_41
    return v3

    :cond_42
    :goto_42
    return v0
.end method

.method public static checkShortcutOps(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const-string p3, "pdr"

    .line 1
    invoke-static {p1, p3}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 3
    invoke-static {p1}, Lio/dcloud/common/util/AppPermissionUtil;->getCheckShortcutOps(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 4
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/common/util/AppPermissionUtil;->showShortCutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    const/4 p0, 0x0

    return p0

    :cond_12
    return v1
.end method

.method public static getCheckShortcutOps(Landroid/app/Activity;)I
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/util/AppPermissionUtil;->getShotCutOpId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_c

    .line 3
    invoke-static {p0}, Lio/dcloud/common/util/AppPermissionUtil;->checkOp(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private static getFlymePermissionGranted(Landroid/content/Context;ILandroid/content/Intent;)I
    .registers 13

    :try_start_0
    const-string v0, "meizu.security.IFlymePermissionService$Stub"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "android.os.ServiceManager"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_7c

    const-string v2, "getService"

    const/4 v3, 0x1

    :try_start_f
    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "flyme_permission"

    aput-object v5, v4, v6

    .line 4
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_26} :catch_7c

    const-string v2, "asInterface"

    :try_start_28
    new-array v4, v3, [Ljava/lang/Class;

    .line 5
    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v6

    .line 6
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3e} :catch_7c

    const-string v2, "noteIntentOperation"

    const/4 v4, 0x4

    :try_start_41
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    aput-object v7, v5, v3

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v7, v5, v8

    const-class v7, Landroid/content/Intent;

    const/4 v9, 0x3

    aput-object v7, v5, v9

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-array v4, v4, [Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    aput-object p0, v4, v8

    aput-object p2, v4, v9

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_7b} :catch_7c

    return p0

    :catch_7c
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private static getFlymeShortcutPid()I
    .registers 3

    :try_start_0
    const-string v0, "meizu.security.FlymePermissionManager"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "OP_SEND_SHORTCUT_BROADCAST"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return v0

    :catch_1b
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public static getShotCutOpId()I
    .registers 3

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->XIAOMI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3e

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_58

    :pswitch_10
    return v1

    .line 9
    :pswitch_11
    sget-object v0, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode23OPSIDs:Ljava/util/HashMap;

    sget-object v1, Lio/dcloud/common/util/AppPermissionUtil;->OP_INSTALL_SHORTCUT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 10
    :pswitch_20
    sget-object v0, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode21OPSIDs:Ljava/util/HashMap;

    sget-object v1, Lio/dcloud/common/util/AppPermissionUtil;->OP_INSTALL_SHORTCUT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 11
    :pswitch_2f
    sget-object v0, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode19OPSIDs:Ljava/util/HashMap;

    sget-object v1, Lio/dcloud/common/util/AppPermissionUtil;->OP_INSTALL_SHORTCUT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 20
    :cond_3e
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-eq v0, v2, :cond_53

    const/16 v2, 0x18

    if-eq v0, v2, :cond_53

    goto :goto_56

    :cond_53
    const/high16 v0, 0x1000000

    return v0

    :cond_56
    :goto_56
    return v1

    nop

    :pswitch_data_58
    .packed-switch 0x13
        :pswitch_2f
        :pswitch_10
        :pswitch_20
        :pswitch_20
        :pswitch_11
    .end packed-switch
.end method

.method public static isEmuiShortcutallowAllow()Z
    .registers 10

    const/4 v0, 0x1

    .line 1
    :try_start_1
    invoke-static {}, Lio/dcloud/common/util/AppPermissionUtil;->getShotCutOpId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_9

    return v0

    :cond_9
    const-string v2, "com.huawei.hsm.permission.StubController"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_53

    const-string v3, "holdForGetPermissionSelection"

    const/4 v4, 0x4

    :try_start_12
    new-array v5, v4, [Ljava/lang/Class;

    .line 6
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    aput-object v6, v5, v0

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    const/4 v1, 0x0

    aput-object v1, v4, v9

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_50} :catch_53

    if-ne v1, v8, :cond_57

    return v7

    :catch_53
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_57
    return v0
.end method

.method public static isFlymeShortcutallowAllow(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/common/util/AppPermissionUtil;->getFlymeShortcutPid()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    .line 3
    invoke-static {p0, v0, p1}, Lio/dcloud/common/util/AppPermissionUtil;->getFlymePermissionGranted(Landroid/content/Context;ILandroid/content/Intent;)I

    move-result p0

    if-ne p0, v1, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    return v1
.end method

.method public static showShortCutDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;ILjava/lang/String;)V
    .registers 15

    const/4 p0, 0x1

    .line 1
    invoke-static {p1, p0}, Lio/dcloud/common/util/DialogUtil;->initDialogTheme(Landroid/app/Activity;Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 3
    sget v0, Lio/dcloud/base/R$string;->dcloud_short_cut_create_error:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_set_pms:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_set_up:I

    .line 5
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lio/dcloud/common/util/AppPermissionUtil$8;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lio/dcloud/common/util/AppPermissionUtil$8;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget p3, Lio/dcloud/base/R$string;->dcloud_short_cut_abandon_install:I

    .line 17
    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lio/dcloud/common/util/AppPermissionUtil$7;

    invoke-direct {p4}, Lio/dcloud/common/util/AppPermissionUtil$7;-><init>()V

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 27
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const/4 p2, 0x0

    .line 28
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 29
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 31
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_72

    .line 34
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 35
    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 36
    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 p2, 0x50

    .line 37
    invoke-virtual {p0, p2}, Landroid/view/Window;->setGravity(I)V

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double p1, p1

    const-wide p4, 0x3feccccccccccccdL    # 0.9

    mul-double p1, p1, p4

    double-to-int p1, p1

    iget p2, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0, p1, p2}, Landroid/view/Window;->setLayout(II)V

    :cond_72
    return-void
.end method

.method public static showShortCutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .registers 8

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/util/DialogUtil;->initDialogTheme(Landroid/app/Activity;Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_create_error_tips2:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v3, Lio/dcloud/common/adapter/util/MobilePhoneModel;->MEIZU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_create_error_tips3:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    .line 5
    :cond_1c
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v3, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 6
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_create_error_tips4:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_2c
    :goto_2c
    sget v2, Lio/dcloud/base/R$string;->dcloud_short_cut_set_pms:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lio/dcloud/base/R$string;->dcloud_short_cut_goto_pms:I

    .line 9
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/dcloud/common/util/AppPermissionUtil$2;

    invoke-direct {v3, p1, p3, p2}, Lio/dcloud/common/util/AppPermissionUtil$2;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_not_install:I

    .line 19
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/dcloud/common/util/AppPermissionUtil$1;

    invoke-direct {v2, p0, p1, p2}, Lio/dcloud/common/util/AppPermissionUtil$1;-><init>(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p3, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 27
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p3

    .line 28
    new-instance v0, Lio/dcloud/common/util/AppPermissionUtil$3;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/common/util/AppPermissionUtil$3;-><init>(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p0, 0x0

    .line 36
    invoke-virtual {p3, p0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 37
    invoke-virtual {p3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass1 (io.dcloud.common.util.AppPermissionUtil$1)
.class final Lio/dcloud/common/util/AppPermissionUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->showShortCutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$app:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic val$appid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$1;->val$app:Lio/dcloud/common/DHInterface/IApp;

    iput-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lio/dcloud/common/util/AppPermissionUtil$1;->val$appid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$1;->val$app:Lio/dcloud/common/DHInterface/IApp;

    iget-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$1;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lio/dcloud/common/util/AppPermissionUtil$1;->val$appid:Ljava/lang/String;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lio/dcloud/common/util/AppPermissionUtil;->againShortcutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass2 (io.dcloud.common.util.AppPermissionUtil$2)
.class final Lio/dcloud/common/util/AppPermissionUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->showShortCutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$2;->val$sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lio/dcloud/common/util/AppPermissionUtil$2;->val$appid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "package:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$2;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/common/util/AppPermissionUtil$2;->val$appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_is_create_shortcut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass3 (io.dcloud.common.util.AppPermissionUtil$3)
.class final Lio/dcloud/common/util/AppPermissionUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->showShortCutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$app:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic val$appid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$3;->val$app:Lio/dcloud/common/DHInterface/IApp;

    iput-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lio/dcloud/common/util/AppPermissionUtil$3;->val$appid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$3;->val$app:Lio/dcloud/common/DHInterface/IApp;

    iget-object v0, p0, Lio/dcloud/common/util/AppPermissionUtil$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lio/dcloud/common/util/AppPermissionUtil$3;->val$appid:Ljava/lang/String;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lio/dcloud/common/util/AppPermissionUtil;->againShortcutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass4 (io.dcloud.common.util.AppPermissionUtil$4)
.class final Lio/dcloud/common/util/AppPermissionUtil$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->againShortcutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Lio/dcloud/common/DHInterface/IApp;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$4;->val$app:Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/AppPermissionUtil$4;->val$app:Lio/dcloud/common/DHInterface/IApp;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/ShortCutUtil;->commitShortcut(Lio/dcloud/common/DHInterface/IApp;IZZZI)V

    .line 2
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object p2, Lio/dcloud/common/adapter/util/MobilePhoneModel;->MEIZU:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1f

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object p2, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 3
    :cond_1f
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$4;->val$app:Lio/dcloud/common/DHInterface/IApp;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/dcloud/common/util/ShortCutUtil;->createShortcutToDeskTop(Lio/dcloud/common/DHInterface/IApp;Z)Z

    :cond_25
    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass5 (io.dcloud.common.util.AppPermissionUtil$5)
.class final Lio/dcloud/common/util/AppPermissionUtil$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->againShortcutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$5;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$5;->val$sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lio/dcloud/common/util/AppPermissionUtil$5;->val$appid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "package:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$5;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/common/util/AppPermissionUtil$5;->val$appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_is_create_shortcut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass6 (io.dcloud.common.util.AppPermissionUtil$6)
.class final Lio/dcloud/common/util/AppPermissionUtil$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->againShortcutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Lio/dcloud/common/DHInterface/IApp;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$6;->val$app:Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/AppPermissionUtil$6;->val$app:Lio/dcloud/common/DHInterface/IApp;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/ShortCutUtil;->commitShortcut(Lio/dcloud/common/DHInterface/IApp;IZZZI)V

    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass7 (io.dcloud.common.util.AppPermissionUtil$7)
.class final Lio/dcloud/common/util/AppPermissionUtil$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->showShortCutDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass8 (io.dcloud.common.util.AppPermissionUtil$8)
.class final Lio/dcloud/common/util/AppPermissionUtil$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->showShortCutDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$resId:I

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic val$tips:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$8;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$8;->val$sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lio/dcloud/common/util/AppPermissionUtil$8;->val$appid:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/common/util/AppPermissionUtil$8;->val$tips:Ljava/lang/String;

    iput p5, p0, Lio/dcloud/common/util/AppPermissionUtil$8;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$8;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/util/LoadAppUtils;->startSecuritySettingPage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 2
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$8;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/dcloud/common/util/AppPermissionUtil$8;->val$appid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_is_create_shortcut"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$8;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$8;->val$tips:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$8;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/ui/PermissionGuideWindow;->getInstance(Landroid/content/Context;)Lio/dcloud/common/ui/PermissionGuideWindow;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$8;->val$tips:Ljava/lang/String;

    iget v0, p0, Lio/dcloud/common/util/AppPermissionUtil$8;->val$resId:I

    invoke-virtual {p1, p2, v0}, Lio/dcloud/common/ui/PermissionGuideWindow;->showWindow(Ljava/lang/String;I)V

    :cond_41
    return-void
.end method
