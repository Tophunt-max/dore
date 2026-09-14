###### Class io.dcloud.feature.weex.config.MimeInfoParser (io.dcloud.feature.weex.config.MimeInfoParser)
.class public Lio/dcloud/feature/weex/config/MimeInfoParser;
.super Ljava/lang/Object;
.source "MimeInfoParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;
    }
.end annotation


# instance fields
.field final DATA_FLAG:Ljava/lang/String;

.field final ENCODE_FORMAT_FLAG:Ljava/lang/String;

.field final FILE_FORMAT_FLAG:Ljava/lang/String;

.field final FILE_TYPE_FLAG:Ljava/lang/String;

.field registerEncodeFormatSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field registerFileFormatSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field registerFileTypeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileTypeSet:Ljava/util/HashSet;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileFormatSet:Ljava/util/HashSet;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerEncodeFormatSet:Ljava/util/HashSet;

    const-string v0, "data:"

    .line 194
    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->DATA_FLAG:Ljava/lang/String;

    const-string v0, "/"

    .line 195
    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->FILE_TYPE_FLAG:Ljava/lang/String;

    const-string v0, ";"

    .line 196
    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->FILE_FORMAT_FLAG:Ljava/lang/String;

    const-string v0, ","

    .line 197
    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->ENCODE_FORMAT_FLAG:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileTypeSet:Ljava/util/HashSet;

    const-string v1, "keystore"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileTypeSet:Ljava/util/HashSet;

    const-string v1, "cert"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileFormatSet:Ljava/util/HashSet;

    const-string v1, "p12"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileFormatSet:Ljava/util/HashSet;

    const-string v1, "pem"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerEncodeFormatSet:Ljava/util/HashSet;

    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerEncodeFormatSet:Ljava/util/HashSet;

    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerEncodeFormatSet:Ljava/util/HashSet;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getFilePathStream(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_45

    .line 58
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v1

    .line 59
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "file"

    invoke-interface {v1, p0, v3, v2}, Lcom/taobao/weex/adapter/URIAdapter;->rewrite(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 64
    :try_start_15
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 66
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p0

    .line 69
    :cond_2b
    invoke-static {p1}, Lio/dcloud/feature/weex/config/UniPathParser;->getAndroidPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 70
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_40

    .line 72
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3f} :catch_41

    return-object p0

    :cond_40
    return-object v0

    :catch_41
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_45
    return-object v0
.end method

.method public static getInstance()Lio/dcloud/feature/weex/config/MimeInfoParser;
    .registers 1

    .line 30
    new-instance v0, Lio/dcloud/feature/weex/config/MimeInfoParser;

    invoke-direct {v0}, Lio/dcloud/feature/weex/config/MimeInfoParser;-><init>()V

    return-object v0
.end method

.method private parseMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;
    .registers 9

    .line 211
    new-instance v0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;

    invoke-direct {v0}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;-><init>()V

    const-string v1, "data:"

    .line 214
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    return-object v2

    :cond_f
    const-string v1, "/"

    .line 218
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    return-object v2

    :cond_18
    const-string v3, ";"

    .line 221
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    return-object v2

    :cond_21
    const-string v4, ","

    .line 224
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    return-object v2

    :cond_2a
    const/4 v2, 0x5

    .line 229
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-static {v0, v2}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->access$102(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v0, v1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->access$202(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v0, v1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->access$302(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-static {v0, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->access$402(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public obtainMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;
    .registers 3

    .line 200
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser;->parseMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 202
    invoke-static {p1, p0}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->access$000(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Lio/dcloud/feature/weex/config/MimeInfoParser;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 p1, 0x0

    :cond_d
    return-object p1
.end method

###### Class io.dcloud.feature.weex.config.MimeInfoParser.MimeInfo (io.dcloud.feature.weex.config.MimeInfoParser$MimeInfo)
.class public Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;
.super Ljava/lang/Object;
.source "MimeInfoParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/config/MimeInfoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimeInfo"
.end annotation


# instance fields
.field private dataContent:Ljava/lang/String;

.field private encodeFormat:Ljava/lang/String;

.field private fileFormat:Ljava/lang/String;

.field private fileType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Lio/dcloud/feature/weex/config/MimeInfoParser;)Z
    .registers 2

    .line 91
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->isValid(Lio/dcloud/feature/weex/config/MimeInfoParser;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 91
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 91
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 91
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 91
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->dataContent:Ljava/lang/String;

    return-object p1
.end method

.method private isValid(Lio/dcloud/feature/weex/config/MimeInfoParser;)Z
    .registers 5

    .line 139
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_45

    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->dataContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_45

    .line 143
    :cond_22
    iget-object v0, p1, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileTypeSet:Ljava/util/HashSet;

    iget-object v2, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    return v1

    .line 146
    :cond_2d
    iget-object v0, p1, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileFormatSet:Ljava/util/HashSet;

    iget-object v2, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    return v1

    .line 149
    :cond_38
    iget-object p1, p1, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerEncodeFormatSet:Ljava/util/HashSet;

    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    return v1

    :cond_43
    const/4 p1, 0x1

    return p1

    :cond_45
    :goto_45
    return v1
.end method


# virtual methods
.method public getDataBytes(Lcom/taobao/weex/WXSDKInstance;)Ljava/io/InputStream;
    .registers 6

    .line 103
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    const-string v1, "base64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 105
    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->dataContent:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1

    .line 108
    :cond_17
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 110
    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->dataContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1

    .line 112
    :cond_2d
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    const-string v1, "filepath"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_63

    if-eqz p1, :cond_63

    .line 116
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->dataContent:Ljava/lang/String;

    .line 117
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "file"

    invoke-interface {v0, p1, v3, v2}, Lcom/taobao/weex/adapter/URIAdapter;->rewrite(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    :try_start_4e
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 123
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5d} :catch_5f

    move-object v1, p1

    goto :goto_63

    :catch_5f
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_63
    :goto_63
    return-object v1
.end method

.method public getDataContent()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->dataContent:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodeFormat()Ljava/lang/String;
    .registers 2

    .line 174
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getFileFormat()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public setDataContent(Ljava/lang/String;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->dataContent:Ljava/lang/String;

    return-void
.end method

.method public setEncodeFormat(Ljava/lang/String;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    return-void
.end method

.method public setFileFormat(Ljava/lang/String;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileFormat:Ljava/lang/String;

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileType:Ljava/lang/String;

    return-void
.end method
