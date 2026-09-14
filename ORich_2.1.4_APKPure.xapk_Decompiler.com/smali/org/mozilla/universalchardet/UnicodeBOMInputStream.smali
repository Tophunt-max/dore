###### Class org.mozilla.universalchardet.UnicodeBOMInputStream (org.mozilla.universalchardet.UnicodeBOMInputStream)
.class public Lorg/mozilla/universalchardet/UnicodeBOMInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;
    }
.end annotation


# instance fields
.field private final bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field private final in:Ljava/io/PushbackInputStream;

.field private skipped:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    const-string v1, "invalid input stream: null is not allowed"

    .line 84
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    new-instance v1, Ljava/io/PushbackInputStream;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    new-array p1, v2, [B

    .line 44
    invoke-virtual {v1, p1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v6, :cond_66

    const/4 v8, 0x3

    if-eq v3, v8, :cond_4f

    if-eq v3, v2, :cond_25

    goto :goto_80

    .line 48
    :cond_25
    aget-byte v2, p1, v0

    if-ne v2, v5, :cond_3a

    aget-byte v2, p1, v7

    if-ne v2, v4, :cond_3a

    aget-byte v2, p1, v6

    if-nez v2, :cond_3a

    aget-byte v2, p1, v8

    if-nez v2, :cond_3a

    .line 50
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_32_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    goto :goto_84

    .line 52
    :cond_3a
    aget-byte v2, p1, v0

    if-nez v2, :cond_4f

    aget-byte v2, p1, v7

    if-nez v2, :cond_4f

    aget-byte v2, p1, v6

    if-ne v2, v4, :cond_4f

    aget-byte v2, p1, v8

    if-ne v2, v5, :cond_4f

    .line 54
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_32_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    goto :goto_84

    .line 59
    :cond_4f
    aget-byte v2, p1, v0

    const/16 v8, -0x11

    if-ne v2, v8, :cond_66

    aget-byte v2, p1, v7

    const/16 v8, -0x45

    if-ne v2, v8, :cond_66

    aget-byte v2, p1, v6

    const/16 v6, -0x41

    if-ne v2, v6, :cond_66

    .line 61
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_8:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    goto :goto_84

    .line 66
    :cond_66
    aget-byte v2, p1, v0

    if-ne v2, v5, :cond_73

    aget-byte v2, p1, v7

    if-ne v2, v4, :cond_73

    .line 67
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_16_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    goto :goto_84

    .line 69
    :cond_73
    aget-byte v2, p1, v0

    if-ne v2, v4, :cond_80

    aget-byte v2, p1, v7

    if-ne v2, v5, :cond_80

    .line 70
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_16_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    goto :goto_84

    .line 75
    :cond_80
    :goto_80
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->NONE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    :goto_84
    if-lez v3, :cond_89

    .line 80
    invoke-virtual {v1, p1, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    :cond_89
    if-eqz p2, :cond_8e

    .line 83
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipBOM()Lorg/mozilla/universalchardet/UnicodeBOMInputStream;

    :cond_8e
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    return-void
.end method

.method public final getBOM()Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->mark(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    .line 2
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    .line 4
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    .line 6
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    .line 2
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/PushbackInputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final declared-synchronized skipBOM()Lorg/mozilla/universalchardet/UnicodeBOMInputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    if-nez v0, :cond_21

    .line 2
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iget-object v0, v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->bytes:[B

    array-length v0, v0

    int-to-long v0, v0

    .line 3
    iget-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/PushbackInputStream;->skip(J)J

    move-result-wide v2

    :goto_11
    cmp-long v4, v2, v0

    if-gez v4, :cond_1e

    .line 5
    iget-object v4, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_11

    :cond_1e
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit p0

    return-object p0

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class org.mozilla.universalchardet.UnicodeBOMInputStream.BOM (org.mozilla.universalchardet.UnicodeBOMInputStream$BOM)
.class public final Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/universalchardet/UnicodeBOMInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BOM"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NONE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public static final UTF_16_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public static final UTF_16_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public static final UTF_32_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public static final UTF_32_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public static final UTF_8:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;


# instance fields
.field final bytes:[B

.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-class v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;

    .line 8
    new-instance v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const-string v2, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->NONE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 13
    new-instance v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_58

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_8:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 18
    new-instance v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_5e

    const-string v3, "UTF-16 little-endian"

    invoke-direct {v0, v2, v3}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_16_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 23
    new-instance v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    new-array v1, v1, [B

    fill-array-data v1, :array_64

    const-string v2, "UTF-16 big-endian"

    invoke-direct {v0, v1, v2}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_16_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 28
    new-instance v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_6a

    const-string v3, "UTF-32 little-endian"

    invoke-direct {v0, v2, v3}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_32_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 34
    new-instance v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    new-array v1, v1, [B

    fill-array-data v1, :array_70

    const-string v2, "UTF-32 big-endian"

    invoke-direct {v0, v1, v2}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_32_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    return-void

    :array_58
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data

    :array_5e
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    nop

    :array_64
    .array-data 1
        -0x2t
        -0x1t
    .end array-data

    nop

    :array_6a
    .array-data 1
        -0x1t
        -0x2t
        0x0t
        0x0t
    .end array-data

    :array_70
    .array-data 1
        0x0t
        0x0t
        -0x2t
        -0x1t
    .end array-data
.end method

.method private constructor <init>([BLjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->bytes:[B

    .line 7
    iput-object p2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBytes()[B
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->bytes:[B

    array-length v1, v0

    .line 2
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 5
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->description:Ljava/lang/String;

    return-object v0
.end method
