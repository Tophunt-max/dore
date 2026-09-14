###### Class com.taobao.weex.utils.FontDO (com.taobao.weex.utils.FontDO)
.class public Lcom/taobao/weex/utils/FontDO;
.super Ljava/lang/Object;
.source "FontDO.java"


# static fields
.field public static final STATE_FAILED:I = 0x3

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_SUCCESS:I = 0x2

.field public static final TYPE_BASE64:I = 0x5

.field public static final TYPE_FILE:I = 0x2

.field public static final TYPE_LOCAL:I = 0x3

.field public static final TYPE_NATIVE:I = 0x4

.field public static final TYPE_NETWORK:I = 0x1

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private final mFontFamilyName:Ljava/lang/String;

.field private mState:I

.field private mType:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/taobao/weex/utils/FontDO;->mType:I

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/taobao/weex/utils/FontDO;->mState:I

    .line 59
    iput-object p1, p0, Lcom/taobao/weex/utils/FontDO;->mFontFamilyName:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/taobao/weex/utils/FontDO;->mTypeface:Landroid/graphics/Typeface;

    const/4 p1, 0x4

    .line 61
    iput p1, p0, Lcom/taobao/weex/utils/FontDO;->mType:I

    const/4 p1, 0x2

    .line 62
    iput p1, p0, Lcom/taobao/weex/utils/FontDO;->mState:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/taobao/weex/utils/FontDO;->mType:I

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/taobao/weex/utils/FontDO;->mState:I

    .line 54
    iput-object p1, p0, Lcom/taobao/weex/utils/FontDO;->mFontFamilyName:Ljava/lang/String;

    .line 55
    invoke-direct {p0, p2, p3}, Lcom/taobao/weex/utils/FontDO;->parseSrc(Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;)V

    return-void
.end method

.method private parseSrc(Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;)V
    .registers 13

    if-eqz p1, :cond_7

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_7
    const-string p1, ""

    :goto_9
    if-eqz p2, :cond_20

    .line 73
    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->getCustomFontNetworkHandler()Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 74
    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->getCustomFontNetworkHandler()Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;->fetchLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    move-object p1, v0

    .line 81
    :cond_20
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "TypefaceUtil"

    if-eqz v0, :cond_31

    .line 82
    iput v1, p0, Lcom/taobao/weex/utils/FontDO;->mState:I

    const-string p1, "font src is empty."

    .line 83
    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_31
    const-string v0, "^url\\(((\'.*\')|(\".*\"))\\)$"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz p2, :cond_50

    const-string v5, "font"

    .line 91
    invoke-virtual {p2, v0, v5}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    :cond_50
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    .line 95
    :try_start_56
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v5, "http"

    .line 96
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_137

    const-string v5, "https"

    .line 97
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    goto/16 :goto_137

    :cond_6e
    const-string v5, "file"

    .line 99
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 100
    iput v3, p0, Lcom/taobao/weex/utils/FontDO;->mType:I

    .line 106
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    goto/16 :goto_139

    :cond_80
    const-string v0, "local"

    .line 107
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    const/4 p2, 0x3

    .line 108
    iput p2, p0, Lcom/taobao/weex/utils/FontDO;->mType:I

    goto/16 :goto_139

    :cond_8d
    const-string v0, "data"

    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11e

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 111
    iget-object p2, p0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_139

    .line 112
    array-length v0, p2

    if-ne v0, v3, :cond_139

    .line 113
    aget-object v0, p2, v7

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_139

    const-string v3, "base64"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 116
    aget-object p2, p2, v6

    .line 117
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_139

    .line 118
    invoke-static {p2}, Lcom/taobao/weex/utils/WXFileUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "font-family"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_da

    .line 122
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 124
    :cond_da
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f7

    .line 126
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 127
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v0, p2, v3}, Lcom/taobao/weex/utils/WXFileUtils;->saveFile(Ljava/lang/String;[BLandroid/content/Context;)Z

    .line 129
    :cond_f7
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    .line 130
    iput v4, p0, Lcom/taobao/weex/utils/FontDO;->mType:I

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parse base64 font cost "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_139

    .line 136
    :cond_11e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown scheme for font url: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iput v7, p0, Lcom/taobao/weex/utils/FontDO;->mType:I

    goto :goto_139

    .line 98
    :cond_137
    :goto_137
    iput v6, p0, Lcom/taobao/weex/utils/FontDO;->mType:I

    .line 139
    :cond_139
    :goto_139
    iput v7, p0, Lcom/taobao/weex/utils/FontDO;->mState:I
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_13b} :catch_13c

    goto :goto_166

    :catch_13c
    move-exception p2

    .line 141
    iput v1, p0, Lcom/taobao/weex/utils/FontDO;->mType:I

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URI.create(mUrl) failed mUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_166

    .line 145
    :cond_162
    iput-object p1, p0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    .line 146
    iput v1, p0, Lcom/taobao/weex/utils/FontDO;->mState:I

    .line 149
    :goto_166
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_194

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "src:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mUrl:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mType:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/taobao/weex/utils/FontDO;->mType:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_194
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/taobao/weex/utils/FontDO;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFontFamilyName()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/taobao/weex/utils/FontDO;->mFontFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 171
    iget v0, p0, Lcom/taobao/weex/utils/FontDO;->mState:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/taobao/weex/utils/FontDO;->mType:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/taobao/weex/utils/FontDO;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/taobao/weex/utils/FontDO;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .registers 2

    .line 175
    iput p1, p0, Lcom/taobao/weex/utils/FontDO;->mState:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/taobao/weex/utils/FontDO;->mTypeface:Landroid/graphics/Typeface;

    return-void
.end method
