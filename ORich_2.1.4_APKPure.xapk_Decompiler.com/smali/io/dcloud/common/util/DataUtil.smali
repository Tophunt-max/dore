###### Class io.dcloud.common.util.DataUtil (io.dcloud.common.util.DataUtil)
.class public Lio/dcloud/common/util/DataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GBK2Unicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 5
    invoke-static {v2}, Lio/dcloud/common/util/DataUtil;->isNeedConvert(C)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_32

    .line 10
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 13
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Unicode2GBK(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_3a

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_30

    add-int/lit8 v3, v2, 0x2

    .line 6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\u"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_30

    :cond_1f
    add-int/lit8 v2, v2, 0x6

    .line 14
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    .line 16
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 19
    :cond_30
    :goto_30
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 34
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static datToJsString(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/util/DataUtil$1;

    invoke-direct {v1, p0, p1}, Lio/dcloud/common/util/DataUtil$1;-><init>(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static datToJsStringSync(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_31

    .line 8
    :try_start_24
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_29} :catch_2b

    const/4 v4, 0x0

    goto :goto_35

    :catch_2b
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v3

    goto :goto_35

    .line 14
    :cond_31
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 16
    :goto_35
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sUniNViewServiceJsPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, v4

    :goto_3f
    if-eqz v0, :cond_6c

    if-nez v2, :cond_4d

    .line 23
    :try_start_43
    new-instance p0, Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0

    .line 26
    :cond_4d
    invoke-static {}, Lio/dcloud/h/a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6c

    .line 27
    invoke-static {}, Lio/dcloud/h/a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lio/dcloud/h/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p0, v1, v0}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_67} :catch_68

    return-object p0

    :catch_68
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6c
    return-object v3
.end method

.method public static isNeedConvert(C)Z
    .registers 2

    and-int/lit16 v0, p0, 0xff

    if-eq v0, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static unicodeToUtf8(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 1
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v0, :cond_84

    add-int/lit8 v4, v3, 0x1

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_7f

    add-int/lit8 v3, v4, 0x1

    .line 6
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    if-ne v4, v5, :cond_60

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_28
    const/4 v6, 0x4

    if-ge v4, v6, :cond_5b

    add-int/lit8 v6, v3, 0x1

    .line 11
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_8a

    packed-switch v3, :pswitch_data_a2

    packed-switch v3, :pswitch_data_b2

    .line 42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Malformed   \\uxxxx   encoding."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_42
    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x30

    goto :goto_57

    :pswitch_48
    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x41

    goto :goto_57

    :pswitch_50
    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x61

    :goto_57
    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_28

    :cond_5b
    int-to-char v4, v5

    .line 46
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_10

    :cond_60
    const/16 v5, 0x66

    const/16 v6, 0x6e

    const/16 v7, 0x72

    const/16 v8, 0x74

    if-ne v4, v8, :cond_6d

    const/16 v4, 0x74

    goto :goto_7b

    :cond_6d
    if-ne v4, v7, :cond_72

    const/16 v4, 0x72

    goto :goto_7b

    :cond_72
    if-ne v4, v6, :cond_77

    const/16 v4, 0x6e

    goto :goto_7b

    :cond_77
    if-ne v4, v5, :cond_7b

    const/16 v4, 0x66

    .line 56
    :cond_7b
    :goto_7b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 59
    :cond_7f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v4

    goto :goto_10

    .line 61
    :cond_84
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_8a
    .packed-switch 0x30
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x41
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x61
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
    .end packed-switch
.end method

.method public static utf8ToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_55

    .line 4
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    .line 5
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_4d

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-ne v3, v4, :cond_1f

    goto :goto_4d

    .line 7
    :cond_1f
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v3, v4, :cond_2e

    .line 8
    aget-char v3, v0, v2

    const v4, 0xfee0

    sub-int/2addr v3, v4

    int-to-char v3, v3

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_52

    .line 11
    :cond_2e
    aget-char v3, v0, v2

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_52

    .line 15
    :cond_4d
    :goto_4d
    aget-char v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 26
    :cond_55
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public gbk2utf8(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/DataUtil;->GBK2Unicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/DataUtil;->unicodeToUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public utf82gbk(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/DataUtil;->utf8ToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/DataUtil;->Unicode2GBK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.common.util.DataUtil.AnonymousClass1 (io.dcloud.common.util.DataUtil$1)
.class final Lio/dcloud/common/util/DataUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/DataUtil;->datToJsString(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/DataUtil$1;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lio/dcloud/common/util/DataUtil$1;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/DataUtil$1;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/DataUtil;->datToJsStringSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3
    iget-object v1, p0, Lio/dcloud/common/util/DataUtil$1;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-void
.end method
