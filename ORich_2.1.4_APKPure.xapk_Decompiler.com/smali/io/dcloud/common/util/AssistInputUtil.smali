###### Class io.dcloud.common.util.AssistInputUtil (io.dcloud.common.util.AssistInputUtil)
.class public Lio/dcloud/common/util/AssistInputUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SP_KEY_CURRENT_ADDRESS:Ljava/lang/String; = "assisiSettingCurrentAddress"

.field private static final SP_KEY_DUTY_PARAGRAPH:Ljava/lang/String; = "assisiSettingDutyParagraph"

.field private static final SP_KEY_EMAIL_A:Ljava/lang/String; = "assisiSettingEmailA"

.field private static final SP_KEY_EMAIL_B:Ljava/lang/String; = "assisiSettingEmailB"

.field private static final SP_KEY_HOME_ADDRESS:Ljava/lang/String; = "assisiSettingHomeAddress"

.field private static final SP_KEY_ID:Ljava/lang/String; = "assisiSettingId"

.field private static final SP_KEY_NAME:Ljava/lang/String; = "assisiSettingName"

.field private static final SP_KEY_NAME_B:Ljava/lang/String; = "assisiSettingNameB"

.field private static final SP_KEY_PHONE_A:Ljava/lang/String; = "assisiSettingPhoneA"

.field private static final SP_KEY_PHONE_B:Ljava/lang/String; = "assisiSettingPhoneB"

.field private static final SP_KEY_WORK_ADDRESS:Ljava/lang/String; = "assisiSettingWorkAddress"

.field private static final SP_KEY_WORK_NAME:Ljava/lang/String; = "assisiSettingWorkName"

.field private static final SP_NAME:Ljava/lang/String; = "assisiSetting"

.field private static final XORNUMBER:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized changeSaveDataToEncrypt(Landroid/content/Context;)V
    .registers 8

    const-class v0, Lio/dcloud/common/util/AssistInputUtil;

    monitor-enter v0

    if-eqz p0, :cond_6c

    :try_start_5
    const-string v1, "assisiSetting"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "isEncrypt"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_69

    monitor-exit v0

    return-void

    :cond_26
    :try_start_26
    const-string v1, "isEncrypt"

    .line 6
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_69

    if-eqz v1, :cond_30

    monitor-exit v0

    return-void

    .line 9
    :cond_30
    :try_start_30
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 10
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 11
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 13
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_40
    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    .line 14
    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 16
    invoke-static {v5}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_40

    :cond_60
    const-string p0, "isEncrypt"

    .line 19
    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_68
    .catchall {:try_start_30 .. :try_end_68} :catchall_69

    goto :goto_6c

    :catchall_69
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_6c
    :goto_6c
    monitor-exit v0

    return-void
.end method

.method public static clearData(Landroid/content/Context;)V
    .registers 3

    if-eqz p0, :cond_13

    const/4 v0, 0x0

    const-string v1, "assisiSetting"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_13
    return-void
.end method

.method private static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 1
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    const/4 v1, 0x1

    const/4 v2, 0x6

    .line 2
    invoke-static {p0, v1, v2}, Lio/dcloud/common/util/Base64;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    return-object v0

    :cond_18
    :try_start_18
    const-string v0, "utf-8"

    .line 7
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object p0

    :cond_24
    return-object v0
.end method

.method private static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    :try_start_a
    const-string v0, "utf-8"

    .line 3
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_15
    const/4 v0, 0x1

    const/4 v1, 0x6

    .line 7
    invoke-static {p0, v0, v1}, Lio/dcloud/common/util/Base64;->encodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method private static getCoreRecordViewSaveData(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Lio/dcloud/common/adapter/ui/RecordView;->getRecordDatas(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "&"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "utf-8"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3b

    .line 5
    :try_start_17
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    array-length p0, v0

    if-lez p0, :cond_48

    .line 7
    array-length p0, v0

    if-gt v5, p0, :cond_29

    .line 8
    aget-object p0, v0, v4

    invoke-static {p0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4

    :cond_29
    const/4 p0, 0x2

    .line 10
    array-length v1, v0

    if-gt p0, v1, :cond_48

    .line 11
    aget-object p0, v0, v5

    invoke-static {p0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v5
    :try_end_35
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_35} :catch_36

    goto :goto_48

    :catch_36
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_48

    :cond_3b
    :try_start_3b
    new-array v0, v5, [Ljava/lang/String;

    .line 20
    invoke-static {p0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4
    :try_end_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3b .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_48
    :goto_48
    return-object v0
.end method

.method public static getCurrentAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_16

    const/4 v1, 0x0

    const-string v2, "assisiSetting"

    .line 1
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "assisiSettingCurrentAddress"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/AssistInputUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public static getDutyParagraph(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_16

    const/4 v1, 0x0

    const-string v2, "assisiSetting"

    .line 1
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "assisiSettingDutyParagraph"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/AssistInputUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public static getEmailA(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_16

    const/4 v1, 0x0

    const-string v2, "assisiSetting"

    .line 1
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "assisiSettingEmailA"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/AssistInputUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public static getEmailB(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_16

    const/4 v1, 0x0

    const-string v2, "assisiSetting"

    .line 1
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "assisiSettingEmailB"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/AssistInputUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public static getHomeAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_16

    const/4 v1, 0x0

    const-string v2, "assisiSetting"

    .line 1
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "assisiSettingHomeAddress"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/AssistInputUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public static getId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_16

    const/4 v1, 0x0

    const-string v2, "assisiSetting"

    .line 1
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "assisiSettingId"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/AssistInputUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public static getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_16

    const/4 v1, 0x0

    const-string v2, "assisiSetting"

    .line 1
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "assisiSettingName"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/AssistInputUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public static getNameB(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_16

    const/4 v1, 0x0

    const-string v2, "assisiSetting"

    .line 1
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "assisiSettingNameB"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/AssistInputUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public static getPhoneA(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_16

    const/4 v1, 0x0

    const-string v2, "assisiSetting"

    .line 1
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "assisiSettingPhoneA"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/AssistInputUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public static getPhoneB(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_16

    const/4 v1, 0x0

    const-string v2, "assisiSetting"

    .line 1
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "assisiSettingPhoneB"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/AssistInputUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public static getRecordViewCompany()[Ljava/lang/String;
    .registers 1

    const-string v0, "company"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/util/AssistInputUtil;->getCoreRecordViewSaveData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordViewEmails()[Ljava/lang/String;
    .registers 1

    const-string v0, "email"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/util/AssistInputUtil;->getCoreRecordViewSaveData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordViewId()[Ljava/lang/String;
    .registers 1

    const-string v0, "id"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/util/AssistInputUtil;->getCoreRecordViewSaveData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordViewNames()[Ljava/lang/String;
    .registers 1

    const-string v0, "nick"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/util/AssistInputUtil;->getCoreRecordViewSaveData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordViewPhones()[Ljava/lang/String;
    .registers 1

    const-string v0, "tel"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/util/AssistInputUtil;->getCoreRecordViewSaveData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordViewTax()[Ljava/lang/String;
    .registers 1

    const-string v0, "tax"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/util/AssistInputUtil;->getCoreRecordViewSaveData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWorkAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_16

    const/4 v1, 0x0

    const-string v2, "assisiSetting"

    .line 1
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "assisiSettingWorkAddress"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/AssistInputUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public static getWorkName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_16

    const/4 v1, 0x0

    const-string v2, "assisiSetting"

    .line 1
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "assisiSettingWorkName"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/AssistInputUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public static saveAll(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p0, :cond_37

    const/4 v0, 0x0

    const-string v1, "assisiSetting"

    .line 31
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p1, :cond_18

    .line 33
    invoke-static {p1}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "assisiSettingCurrentAddress"

    .line 34
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_18
    if-eqz p2, :cond_23

    .line 38
    invoke-static {p2}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "assisiSettingHomeAddress"

    .line 39
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_23
    if-eqz p3, :cond_2e

    .line 42
    invoke-static {p3}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "assisiSettingWorkAddress"

    .line 43
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2e
    const/4 p1, 0x1

    const-string p2, "isEncrypt"

    .line 46
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_37
    return-void
.end method

.method public static saveAll(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    if-eqz p0, :cond_58

    const/4 v0, 0x0

    const-string v1, "assisiSetting"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p1, :cond_18

    .line 3
    invoke-static {p1}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "assisiSettingCurrentAddress"

    .line 4
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_18
    if-eqz p2, :cond_23

    .line 8
    invoke-static {p2}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "assisiSettingHomeAddress"

    .line 9
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_23
    if-eqz p3, :cond_2e

    .line 12
    invoke-static {p3}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "assisiSettingWorkAddress"

    .line 13
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2e
    if-eqz p4, :cond_39

    .line 17
    invoke-static {p4}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "assisiSettingWorkName"

    .line 18
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_39
    if-eqz p5, :cond_44

    .line 21
    invoke-static {p5}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "assisiSettingDutyParagraph"

    .line 22
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_44
    if-eqz p6, :cond_4f

    .line 26
    invoke-static {p6}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "assisiSettingId"

    .line 27
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4f
    const/4 p1, 0x1

    const-string p2, "isEncrypt"

    .line 29
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_58
    return-void
.end method

.method public static saveCompany(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_4c

    if-eqz p1, :cond_4c

    const/4 p1, 0x0

    if-eqz p2, :cond_10

    :try_start_7
    const-string v0, "utf-8"

    .line 1
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :catch_e
    move-exception p1

    goto :goto_19

    :cond_10
    move-object v0, p1

    :goto_11
    if-eqz v0, :cond_1c

    const-string v1, "company"

    .line 5
    invoke-static {p0, p1, v1, v0}, Lio/dcloud/common/adapter/ui/RecordView;->setRcordDatas(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_18} :catch_e

    goto :goto_1c

    .line 8
    :goto_19
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 10
    :cond_1c
    :goto_1c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "useAssistSettingCompany"

    if-nez p1, :cond_41

    const/4 p1, 0x0

    const-string v1, "assisiSetting"

    .line 11
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 12
    invoke-static {p2}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "assisiSettingWorkName"

    .line 13
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p1, "1"

    .line 15
    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->setAssisBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 17
    :cond_41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4c

    const-string p1, ""

    .line 18
    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->setAssisBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public static saveCurrentAddress(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_20

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "assisiSetting"

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "assisiSettingCurrentAddress"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_20
    return-void
.end method

.method public static saveEmail(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p0, :cond_83

    if-eqz p1, :cond_83

    const-string p1, "utf-8"

    const/4 v0, 0x0

    if-eqz p2, :cond_10

    .line 1
    :try_start_9
    invoke-static {p2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :catch_e
    move-exception p1

    goto :goto_3b

    :cond_10
    move-object v1, v0

    :goto_11
    if-eqz p3, :cond_33

    .line 4
    invoke-static {p3, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object v1, p1

    goto :goto_33

    .line 8
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_33
    :goto_33
    if-eqz v1, :cond_3e

    const-string p1, "email"

    .line 12
    invoke-static {p0, v0, p1, v1}, Lio/dcloud/common/adapter/ui/RecordView;->setRcordDatas(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_3a} :catch_e

    goto :goto_3e

    .line 15
    :goto_3b
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 17
    :cond_3e
    :goto_3e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "useAssistSettingEmail"

    if-nez p1, :cond_72

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_72

    const/4 p1, 0x0

    const-string v1, "assisiSetting"

    .line 18
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 19
    invoke-static {p2}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "assisiSettingEmailA"

    .line 20
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-static {p3}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "assisiSettingEmailB"

    .line 23
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p1, "1"

    .line 26
    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->setAssisBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    .line 28
    :cond_72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7e

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_83

    :cond_7e
    const-string p1, ""

    .line 29
    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->setAssisBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_83
    :goto_83
    return-void
.end method

.method public static saveId(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_4c

    if-eqz p1, :cond_4c

    const/4 p1, 0x0

    if-eqz p2, :cond_10

    :try_start_7
    const-string v0, "utf-8"

    .line 1
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :catch_e
    move-exception p1

    goto :goto_19

    :cond_10
    move-object v0, p1

    :goto_11
    if-eqz v0, :cond_1c

    const-string v1, "id"

    .line 4
    invoke-static {p0, p1, v1, v0}, Lio/dcloud/common/adapter/ui/RecordView;->setRcordDatas(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_18} :catch_e

    goto :goto_1c

    .line 7
    :goto_19
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 9
    :cond_1c
    :goto_1c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "useAssistSettingId"

    if-nez p1, :cond_41

    const/4 p1, 0x0

    const-string v1, "assisiSetting"

    .line 10
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 11
    invoke-static {p2}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "assisiSettingId"

    .line 12
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p1, "1"

    .line 15
    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->setAssisBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 17
    :cond_41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4c

    const-string p1, ""

    .line 18
    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->setAssisBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public static saveName(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p0, :cond_83

    if-eqz p1, :cond_83

    const-string p1, "utf-8"

    const/4 v0, 0x0

    if-eqz p2, :cond_10

    .line 1
    :try_start_9
    invoke-static {p2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :catch_e
    move-exception p1

    goto :goto_3b

    :cond_10
    move-object v1, v0

    :goto_11
    if-eqz p3, :cond_33

    .line 4
    invoke-static {p3, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object v1, p1

    goto :goto_33

    .line 8
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_33
    :goto_33
    if-eqz v1, :cond_3e

    const-string p1, "nick"

    .line 12
    invoke-static {p0, v0, p1, v1}, Lio/dcloud/common/adapter/ui/RecordView;->setRcordDatas(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_3a} :catch_e

    goto :goto_3e

    .line 15
    :goto_3b
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 17
    :cond_3e
    :goto_3e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "useAssistSettingName"

    if-nez p1, :cond_72

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_72

    const/4 p1, 0x0

    const-string v1, "assisiSetting"

    .line 18
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 19
    invoke-static {p2}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "assisiSettingName"

    .line 20
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-static {p3}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "assisiSettingNameB"

    .line 23
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p1, "1"

    .line 26
    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->setAssisBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    .line 28
    :cond_72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7e

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_83

    :cond_7e
    const-string p1, ""

    .line 29
    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->setAssisBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_83
    :goto_83
    return-void
.end method

.method public static savePhone(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p0, :cond_83

    if-eqz p1, :cond_83

    const-string p1, "utf-8"

    const/4 v0, 0x0

    if-eqz p2, :cond_10

    .line 1
    :try_start_9
    invoke-static {p2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :catch_e
    move-exception p1

    goto :goto_3b

    :cond_10
    move-object v1, v0

    :goto_11
    if-eqz p3, :cond_33

    .line 4
    invoke-static {p3, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object v1, p1

    goto :goto_33

    .line 8
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_33
    :goto_33
    if-eqz v1, :cond_3e

    const-string p1, "tel"

    .line 12
    invoke-static {p0, v0, p1, v1}, Lio/dcloud/common/adapter/ui/RecordView;->setRcordDatas(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_3a} :catch_e

    goto :goto_3e

    .line 15
    :goto_3b
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 17
    :cond_3e
    :goto_3e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "useAssistSettingPhone"

    if-nez p1, :cond_72

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_72

    const/4 p1, 0x0

    const-string v1, "assisiSetting"

    .line 18
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 19
    invoke-static {p2}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "assisiSettingPhoneA"

    .line 20
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-static {p3}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "assisiSettingPhoneB"

    .line 23
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p1, "1"

    .line 26
    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->setAssisBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    .line 28
    :cond_72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7e

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_83

    :cond_7e
    const-string p1, ""

    .line 29
    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->setAssisBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_83
    :goto_83
    return-void
.end method

.method public static saveTax(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_4c

    if-eqz p1, :cond_4c

    const/4 p1, 0x0

    if-eqz p2, :cond_10

    :try_start_7
    const-string v0, "utf-8"

    .line 1
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :catch_e
    move-exception p1

    goto :goto_19

    :cond_10
    move-object v0, p1

    :goto_11
    if-eqz v0, :cond_1c

    const-string v1, "tax"

    .line 4
    invoke-static {p0, p1, v1, v0}, Lio/dcloud/common/adapter/ui/RecordView;->setRcordDatas(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_18} :catch_e

    goto :goto_1c

    .line 7
    :goto_19
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 9
    :cond_1c
    :goto_1c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "useAssistSettingTax"

    if-nez p1, :cond_41

    const/4 p1, 0x0

    const-string v1, "assisiSetting"

    .line 10
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 11
    invoke-static {p2}, Lio/dcloud/common/util/AssistInputUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "assisiSettingDutyParagraph"

    .line 12
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p1, "1"

    .line 14
    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->setAssisBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 16
    :cond_41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4c

    const-string p1, ""

    .line 17
    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/ui/RecordView;->setAssisBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public static useAssistSettingCompany()Z
    .registers 1

    const-string v0, "useAssistSettingCompany"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/ui/RecordView;->getAssisBundleData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static useAssistSettingEmail()Z
    .registers 1

    const-string v0, "useAssistSettingEmail"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/ui/RecordView;->getAssisBundleData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static useAssistSettingId()Z
    .registers 1

    const-string v0, "useAssistSettingId"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/ui/RecordView;->getAssisBundleData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static useAssistSettingName()Z
    .registers 1

    const-string v0, "useAssistSettingName"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/ui/RecordView;->getAssisBundleData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static useAssistSettingPhone()Z
    .registers 1

    const-string v0, "useAssistSettingPhone"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/ui/RecordView;->getAssisBundleData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static useAssistSettingTax()Z
    .registers 1

    const-string v0, "useAssistSettingTax"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/ui/RecordView;->getAssisBundleData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method
