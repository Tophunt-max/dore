###### Class io.dcloud.common.util.language.LanguageUtil (io.dcloud.common.util.language.LanguageUtil)
.class public Lio/dcloud/common/util/language/LanguageUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LanguageBroadCastIntent:Ljava/lang/String; = "language_uni_broad_cast_intent"

.field public static final LanguageConfigKey:Ljava/lang/String; = "language_uni_current_key"

.field public static final LanguageConfigSPFile:Ljava/lang/String; = "language_uni_sp_file"

.field private static deviceDefLocalLanguage:Ljava/lang/String; = ""

.field private static sCurrentLocalLanguage:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentLocal(Landroid/content/Context;Z)Ljava/util/Locale;
    .registers 4

    if-eqz p0, :cond_59

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3e

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    if-eqz p1, :cond_25

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    :cond_25
    if-eqz v0, :cond_33

    .line 6
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result p1

    if-lez p1, :cond_33

    const/4 p0, 0x0

    .line 7
    invoke-virtual {v0, p0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_5a

    .line 9
    :cond_33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_5a

    :cond_3e
    if-eqz p1, :cond_4e

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_5a

    .line 15
    :cond_4e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_5a

    :cond_59
    const/4 p0, 0x0

    :goto_5a
    return-object p0
.end method

.method public static getCurrentLocaleLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 1
    sget-object v0, Lio/dcloud/common/util/language/LanguageUtil;->sCurrentLocalLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9e

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lio/dcloud/common/util/language/LanguageUtil;->getCurrentLocal(Landroid/content/Context;Z)Ljava/util/Locale;

    move-result-object p0

    if-nez p0, :cond_12

    .line 4
    sget-object p0, Lio/dcloud/common/util/language/LanguageUtil;->deviceDefLocalLanguage:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-le v2, v3, :cond_38

    .line 8
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_38
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "fr"

    const-string v5, "es"

    const-string v6, "en"

    sparse-switch v3, :sswitch_data_a2

    :goto_50
    const/4 v0, -0x1

    goto :goto_75

    :sswitch_52
    const-string v0, "zh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    goto :goto_50

    :cond_5b
    const/4 v0, 0x3

    goto :goto_75

    :sswitch_5d
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_64

    goto :goto_50

    :cond_64
    const/4 v0, 0x2

    goto :goto_75

    :sswitch_66
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_75

    goto :goto_50

    :sswitch_6d
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_74

    goto :goto_50

    :cond_74
    const/4 v0, 0x0

    :cond_75
    :goto_75
    packed-switch v0, :pswitch_data_b4

    return-object v1

    :pswitch_79
    const-string p0, "zh-CN"

    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_84

    const-string p0, "zh-Hans"

    return-object p0

    :cond_84
    const-string p0, "zh-HK"

    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8f

    const-string p0, "zh-Hant-HK"

    return-object p0

    :cond_8f
    const-string p0, "zh-TW"

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9a

    const-string p0, "zh-Hant-TW"

    return-object p0

    :cond_9a
    return-object v1

    :pswitch_9b
    return-object v4

    :pswitch_9c
    return-object v5

    :pswitch_9d
    return-object v6

    .line 36
    :cond_9e
    sget-object p0, Lio/dcloud/common/util/language/LanguageUtil;->sCurrentLocalLanguage:Ljava/lang/String;

    return-object p0

    nop

    :sswitch_data_a2
    .sparse-switch
        0xca9 -> :sswitch_6d
        0xcae -> :sswitch_66
        0xccc -> :sswitch_5d
        0xf2e -> :sswitch_52
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_79
    .end packed-switch
.end method

.method public static getDeviceDefLocalLanguage()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/util/language/LanguageUtil;->deviceDefLocalLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public static getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_84

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/dcloud/common/util/language/LanguageUtil;->getCurrentLocaleLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 3
    invoke-static {v0, p0}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_85

    const-string v2, "zh-CN"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v1, "zh-Hans"

    .line 7
    invoke-static {v1, p0}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_27
    const-string v2, "zh-HK"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v1, "zh-Hant-HK"

    .line 10
    invoke-static {v1, p0}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_36
    const-string v2, "zh-TW"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string v1, "zh-Hant-TW"

    .line 13
    invoke-static {v1, p0}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 15
    :cond_44
    :goto_44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_85

    const-string v2, "-"

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    array-length v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_7d

    const/4 v5, 0x3

    if-eq v2, v5, :cond_59

    goto :goto_85

    .line 30
    :cond_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 33
    aget-object v0, v0, v4

    invoke-static {v0, p0}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_85

    .line 34
    :cond_7d
    aget-object v0, v0, v4

    invoke-static {v0, p0}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_85

    :cond_84
    move-object v1, p1

    .line 50
    :cond_85
    :goto_85
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8c

    goto :goto_8d

    :cond_8c
    move-object p1, v1

    :goto_8d
    return-object p1
.end method

.method private static getString(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_d

    .line 51
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 52
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static initAppLanguageForAppBeforeO(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/language/LanguageUtil;->updateAppBootLanguage(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lio/dcloud/common/util/language/LanguageUtil;->updateSystemLanguage(Landroid/content/Context;)V

    return-void
.end method

.method private static updateAppBootLanguage(Landroid/content/Context;)V
    .registers 6

    const-string v0, "language_uni_sp_file"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "language_uni_current_key"

    const-string v2, ""

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 10
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "DCLOUD_APP_DEFAULT_LANGUAGE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_26

    goto :goto_2b

    :catch_26
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 15
    :goto_2b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    move-object v0, v1

    :cond_38
    const-string v1, "auto"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_42

    :cond_41
    move-object v2, v0

    .line 23
    :goto_42
    sput-object v2, Lio/dcloud/common/util/language/LanguageUtil;->sCurrentLocalLanguage:Ljava/lang/String;

    .line 24
    invoke-static {p0}, Lio/dcloud/common/util/language/LanguageUtil;->updateDeviceDefLocalLanguage(Landroid/content/Context;)V

    return-void
.end method

.method public static updateContextLanguageAfterO(Landroid/content/Context;Z)Landroid/content/Context;
    .registers 2

    if-eqz p1, :cond_5

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/language/LanguageUtil;->updateAppBootLanguage(Landroid/content/Context;)V

    .line 4
    :cond_5
    sget-object p1, Lio/dcloud/common/util/language/LanguageUtil;->sCurrentLocalLanguage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 5
    sget-object p1, Lio/dcloud/common/util/language/LanguageUtil;->deviceDefLocalLanguage:Ljava/lang/String;

    invoke-static {p0, p1}, Lio/dcloud/common/util/language/LanguageUtil;->wrapContextConfigurationAfterO(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 7
    :cond_14
    sget-object p1, Lio/dcloud/common/util/language/LanguageUtil;->sCurrentLocalLanguage:Ljava/lang/String;

    invoke-static {p0, p1}, Lio/dcloud/common/util/language/LanguageUtil;->wrapContextConfigurationAfterO(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static updateDeviceDefLocalLanguage(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, v0}, Lio/dcloud/common/util/language/LanguageUtil;->getCurrentLocal(Landroid/content/Context;Z)Ljava/util/Locale;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lio/dcloud/common/util/language/LanguageUtil;->updateDeviceDefLocalLanguage(Ljava/util/Locale;)V

    return-void
.end method

.method public static updateDeviceDefLocalLanguage(Ljava/util/Locale;)V
    .registers 3

    if-eqz p0, :cond_22

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/util/language/LanguageUtil;->deviceDefLocalLanguage:Ljava/lang/String;

    .line 2
    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sLanguage:Ljava/lang/String;

    :cond_22
    return-void
.end method

.method public static updateLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const-string v1, "language_uni_sp_file"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "language_uni_current_key"

    .line 3
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6
    sput-object p1, Lio/dcloud/common/util/language/LanguageUtil;->sCurrentLocalLanguage:Ljava/lang/String;

    .line 8
    invoke-static {p0}, Lio/dcloud/common/util/language/LanguageUtil;->updateSystemLanguage(Landroid/content/Context;)V

    return-void
.end method

.method public static updateSystemLanguage(Landroid/content/Context;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    .line 1
    :cond_3
    sget-object v0, Lio/dcloud/common/util/language/LanguageUtil;->sCurrentLocalLanguage:Ljava/lang/String;

    const-string v1, "zh-Hant-TW"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "zh-Hant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_21

    :cond_16
    const-string v1, "zh-Hant-HK"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v0, "zh-HK"

    goto :goto_23

    :cond_21
    :goto_21
    const-string v0, "zh-TW"

    .line 7
    :cond_23
    :goto_23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_56

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 14
    sget-object v0, Lio/dcloud/common/util/language/LanguageUtil;->deviceDefLocalLanguage:Ljava/lang/String;

    .line 16
    :cond_3d
    new-instance v3, Landroid/os/LocaleList;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {v3, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 17
    invoke-static {v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 20
    invoke-virtual {p0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_7b

    :cond_56
    const/16 v2, 0x15

    if-lt v1, v2, :cond_7b

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 26
    sget-object v0, Lio/dcloud/common/util/language/LanguageUtil;->deviceDefLocalLanguage:Ljava/lang/String;

    .line 28
    :cond_66
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 29
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 30
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 33
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method public static wrapContextConfigurationAfterO(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2e

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 7
    new-instance v3, Landroid/os/LocaleList;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v3, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 8
    invoke-static {v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 13
    invoke-virtual {p0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    :cond_2e
    return-object p0
.end method
