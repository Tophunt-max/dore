###### Class dc.squareup.okhttp3.TlsVersion (dc.squareup.okhttp3.TlsVersion)
.class public final enum Ldc/squareup/okhttp3/TlsVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldc/squareup/okhttp3/TlsVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldc/squareup/okhttp3/TlsVersion;

.field public static final enum SSL_3_0:Ldc/squareup/okhttp3/TlsVersion;

.field public static final enum TLS_1_0:Ldc/squareup/okhttp3/TlsVersion;

.field public static final enum TLS_1_1:Ldc/squareup/okhttp3/TlsVersion;

.field public static final enum TLS_1_2:Ldc/squareup/okhttp3/TlsVersion;

.field public static final enum TLS_1_3:Ldc/squareup/okhttp3/TlsVersion;


# instance fields
.field final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/TlsVersion;

    const-string v1, "TLS_1_3"

    const/4 v2, 0x0

    const-string v3, "TLSv1.3"

    invoke-direct {v0, v1, v2, v3}, Ldc/squareup/okhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ldc/squareup/okhttp3/TlsVersion;->TLS_1_3:Ldc/squareup/okhttp3/TlsVersion;

    .line 2
    new-instance v1, Ldc/squareup/okhttp3/TlsVersion;

    const-string v3, "TLS_1_2"

    const/4 v4, 0x1

    const-string v5, "TLSv1.2"

    invoke-direct {v1, v3, v4, v5}, Ldc/squareup/okhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ldc/squareup/okhttp3/TlsVersion;->TLS_1_2:Ldc/squareup/okhttp3/TlsVersion;

    .line 3
    new-instance v3, Ldc/squareup/okhttp3/TlsVersion;

    const-string v5, "TLS_1_1"

    const/4 v6, 0x2

    const-string v7, "TLSv1.1"

    invoke-direct {v3, v5, v6, v7}, Ldc/squareup/okhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Ldc/squareup/okhttp3/TlsVersion;->TLS_1_1:Ldc/squareup/okhttp3/TlsVersion;

    .line 4
    new-instance v5, Ldc/squareup/okhttp3/TlsVersion;

    const-string v7, "TLS_1_0"

    const/4 v8, 0x3

    const-string v9, "TLSv1"

    invoke-direct {v5, v7, v8, v9}, Ldc/squareup/okhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Ldc/squareup/okhttp3/TlsVersion;->TLS_1_0:Ldc/squareup/okhttp3/TlsVersion;

    .line 5
    new-instance v7, Ldc/squareup/okhttp3/TlsVersion;

    const-string v9, "SSL_3_0"

    const/4 v10, 0x4

    const-string v11, "SSLv3"

    invoke-direct {v7, v9, v10, v11}, Ldc/squareup/okhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Ldc/squareup/okhttp3/TlsVersion;->SSL_3_0:Ldc/squareup/okhttp3/TlsVersion;

    const/4 v9, 0x5

    new-array v9, v9, [Ldc/squareup/okhttp3/TlsVersion;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Ldc/squareup/okhttp3/TlsVersion;->$VALUES:[Ldc/squareup/okhttp3/TlsVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Ldc/squareup/okhttp3/TlsVersion;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static forJavaName(Ljava/lang/String;)Ldc/squareup/okhttp3/TlsVersion;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_6e

    goto :goto_45

    :sswitch_f
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_45

    :cond_18
    const/4 v1, 0x4

    goto :goto_45

    :sswitch_1a
    const-string v0, "SSLv3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_45

    :cond_23
    const/4 v1, 0x3

    goto :goto_45

    :sswitch_25
    const-string v0, "TLSv1.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_45

    :cond_2e
    const/4 v1, 0x2

    goto :goto_45

    :sswitch_30
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_45

    :cond_39
    const/4 v1, 0x1

    goto :goto_45

    :sswitch_3b
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    packed-switch v1, :pswitch_data_84

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :pswitch_5f
    sget-object p0, Ldc/squareup/okhttp3/TlsVersion;->TLS_1_0:Ldc/squareup/okhttp3/TlsVersion;

    return-object p0

    .line 16
    :pswitch_62
    sget-object p0, Ldc/squareup/okhttp3/TlsVersion;->SSL_3_0:Ldc/squareup/okhttp3/TlsVersion;

    return-object p0

    .line 17
    :pswitch_65
    sget-object p0, Ldc/squareup/okhttp3/TlsVersion;->TLS_1_3:Ldc/squareup/okhttp3/TlsVersion;

    return-object p0

    .line 19
    :pswitch_68
    sget-object p0, Ldc/squareup/okhttp3/TlsVersion;->TLS_1_2:Ldc/squareup/okhttp3/TlsVersion;

    return-object p0

    .line 21
    :pswitch_6b
    sget-object p0, Ldc/squareup/okhttp3/TlsVersion;->TLS_1_1:Ldc/squareup/okhttp3/TlsVersion;

    return-object p0

    :sswitch_data_6e
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_3b
        -0x1dfc3f26 -> :sswitch_30
        -0x1dfc3f25 -> :sswitch_25
        0x4b88569 -> :sswitch_1a
        0x4c38896 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
    .end packed-switch
.end method

.method static varargs forJavaNames([Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    .line 3
    invoke-static {v3}, Ldc/squareup/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Ldc/squareup/okhttp3/TlsVersion;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5
    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ldc/squareup/okhttp3/TlsVersion;
    .registers 2

    .line 1
    const-class v0, Ldc/squareup/okhttp3/TlsVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldc/squareup/okhttp3/TlsVersion;

    return-object p0
.end method

.method public static values()[Ldc/squareup/okhttp3/TlsVersion;
    .registers 1

    .line 1
    sget-object v0, Ldc/squareup/okhttp3/TlsVersion;->$VALUES:[Ldc/squareup/okhttp3/TlsVersion;

    invoke-virtual {v0}, [Ldc/squareup/okhttp3/TlsVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldc/squareup/okhttp3/TlsVersion;

    return-object v0
.end method


# virtual methods
.method public javaName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/TlsVersion;->javaName:Ljava/lang/String;

    return-object v0
.end method
