###### Class com.facebook.soloader.ExoSoSource (com.facebook.soloader.ExoSoSource)
.class public final Lcom/facebook/soloader/ExoSoSource;
.super Lcom/facebook/soloader/UnpackingSoSource;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/ExoSoSource$FileDso;,
        Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/UnpackingSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected makeUnpacker()Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;

    invoke-direct {v0, p0, p0}, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;-><init>(Lcom/facebook/soloader/ExoSoSource;Lcom/facebook/soloader/UnpackingSoSource;)V

    return-object v0
.end method

###### Class com.facebook.soloader.ExoSoSource.AnonymousClass1 (com.facebook.soloader.ExoSoSource$1)
.class synthetic Lcom/facebook/soloader/ExoSoSource$1;
.super Ljava/lang/Object;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ExoSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.soloader.ExoSoSource.ExoUnpacker (com.facebook.soloader.ExoSoSource$ExoUnpacker)
.class final Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;
.super Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ExoSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExoUnpacker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;
    }
.end annotation


# instance fields
.field private final mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

.field final synthetic this$0:Lcom/facebook/soloader/ExoSoSource;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/ExoSoSource;Lcom/facebook/soloader/UnpackingSoSource;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 49
    iput-object v0, v1, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->this$0:Lcom/facebook/soloader/ExoSoSource;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;-><init>()V

    .line 50
    iget-object v0, v0, Lcom/facebook/soloader/ExoSoSource;->mContext:Landroid/content/Context;

    .line 51
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/local/tmp/exopackage/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/native-libs/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 58
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3b
    if-ge v7, v5, :cond_10e

    aget-object v8, v4, v7

    .line 59
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_4c

    goto/16 :goto_eb

    .line 64
    :cond_4c
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v8, Ljava/io/File;

    const-string v10, "metadata.txt"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v10

    if-nez v10, :cond_5e

    goto/16 :goto_eb

    .line 71
    :cond_5e
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 72
    :try_start_63
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_ff

    .line 74
    :goto_68
    :try_start_68
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_e5

    .line 75
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_75

    goto :goto_68

    :cond_75
    const/16 v12, 0x20

    .line 79
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_c9

    .line 84
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".so"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_98
    if-ge v15, v14, :cond_b0

    .line 88
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/facebook/soloader/ExoSoSource$FileDso;

    iget-object v6, v6, Lcom/facebook/soloader/ExoSoSource$FileDso;->name:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    const/4 v6, 0x1

    goto :goto_b1

    :cond_ac
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x0

    goto :goto_98

    :cond_b0
    const/4 v6, 0x0

    :goto_b1
    if-eqz v6, :cond_b5

    :goto_b3
    const/4 v6, 0x0

    goto :goto_68

    :cond_b5
    add-int/lit8 v12, v12, 0x1

    .line 98
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 99
    new-instance v11, Lcom/facebook/soloader/ExoSoSource$FileDso;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v11, v13, v6, v12}, Lcom/facebook/soloader/ExoSoSource$FileDso;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 81
    :cond_c9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal line in exopackage metadata: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e5
    .catchall {:try_start_68 .. :try_end_e5} :catchall_f0

    .line 102
    :cond_e5
    :try_start_e5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_ff

    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    :goto_eb
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_3b

    :catchall_f0
    move-exception v0

    move-object v2, v0

    .line 71
    :try_start_f2
    throw v2
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f3

    :catchall_f3
    move-exception v0

    move-object v3, v0

    .line 102
    :try_start_f5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_f9

    goto :goto_fe

    :catchall_f9
    move-exception v0

    move-object v4, v0

    :try_start_fb
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_fe
    throw v3
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_ff

    :catchall_ff
    move-exception v0

    move-object v2, v0

    .line 71
    :try_start_101
    throw v2
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_102

    :catchall_102
    move-exception v0

    move-object v3, v0

    .line 102
    :try_start_104
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_108

    goto :goto_10d

    :catchall_108
    move-exception v0

    move-object v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10d
    throw v3

    .line 105
    :cond_10e
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Lcom/facebook/soloader/UnpackingSoSource;->setSoSourceAbis([Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/facebook/soloader/ExoSoSource$FileDso;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/soloader/ExoSoSource$FileDso;

    iput-object v0, v1, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;)[Lcom/facebook/soloader/ExoSoSource$FileDso;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    return-object p0
.end method


# virtual methods
.method protected getDsoManifest()Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    iget-object v1, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    invoke-direct {v0, v1}, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;-><init>([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V

    return-object v0
.end method

.method protected openDsoIterator()Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;-><init>(Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;Lcom/facebook/soloader/ExoSoSource$1;)V

    return-object v0
.end method

###### Class com.facebook.soloader.ExoSoSource.ExoUnpacker.FileBackedInputDsoIterator (com.facebook.soloader.ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator)
.class final Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;
.super Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FileBackedInputDsoIterator"
.end annotation


# instance fields
.field private mCurrentDso:I

.field final synthetic this$1:Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;


# direct methods
.method private constructor <init>(Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;->this$1:Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;

    invoke-direct {p0}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;Lcom/facebook/soloader/ExoSoSource$1;)V
    .registers 3

    .line 119
    invoke-direct {p0, p1}, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;-><init>(Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 124
    iget v0, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;->mCurrentDso:I

    iget-object v1, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;->this$1:Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;

    invoke-static {v1}, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->access$100(Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;)[Lcom/facebook/soloader/ExoSoSource$FileDso;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public next()Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;->this$1:Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;

    invoke-static {v0}, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->access$100(Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;)[Lcom/facebook/soloader/ExoSoSource$FileDso;

    move-result-object v0

    iget v1, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;->mCurrentDso:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;->mCurrentDso:I

    aget-object v0, v0, v1

    .line 130
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, v0, Lcom/facebook/soloader/ExoSoSource$FileDso;->backingFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 132
    :try_start_15
    new-instance v2, Lcom/facebook/soloader/UnpackingSoSource$InputDso;

    invoke-direct {v2, v0, v1}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;-><init>(Lcom/facebook/soloader/UnpackingSoSource$Dso;Ljava/io/InputStream;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    return-object v2

    :catchall_1b
    move-exception v0

    .line 137
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 139
    throw v0
.end method

###### Class com.facebook.soloader.ExoSoSource.FileDso (com.facebook.soloader.ExoSoSource$FileDso)
.class final Lcom/facebook/soloader/ExoSoSource$FileDso;
.super Lcom/facebook/soloader/UnpackingSoSource$Dso;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ExoSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileDso"
.end annotation


# instance fields
.field final backingFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/UnpackingSoSource$Dso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iput-object p3, p0, Lcom/facebook/soloader/ExoSoSource$FileDso;->backingFile:Ljava/io/File;

    return-void
.end method
