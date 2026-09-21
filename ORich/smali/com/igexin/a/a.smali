###### Class com.igexin.a.a (com.igexin.a.a)
.class public Lcom/igexin/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 8

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    :goto_6
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-wide v1

    :cond_11
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_6
.end method

.method private a(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p1, :cond_5

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/igexin/a/h;)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x0

    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_103

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_11
    add-int/lit8 v9, v8, 0x1

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-ge v8, v10, :cond_26

    :try_start_17
    new-instance v8, Ljava/util/zip/ZipFile;

    new-instance v12, Ljava/io/File;

    iget-object v13, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v12, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_23} :catch_24
    .catchall {:try_start_17 .. :try_end_23} :catchall_103

    goto :goto_27

    :catch_24
    move v8, v9

    goto :goto_11

    :cond_26
    move-object v8, v5

    :goto_27
    if-nez v8, :cond_38

    :try_start_29
    const-string v0, "FATAL! Couldn\'t find application APK!"

    invoke-virtual {v4, v0}, Lcom/igexin/a/h;->a(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_34

    if-eqz v8, :cond_33

    :try_start_30
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_33

    :catch_33
    :cond_33
    return-void

    :catchall_34
    move-exception v0

    move-object v5, v8

    goto/16 :goto_104

    :cond_38
    const/4 v6, 0x0

    :goto_39
    add-int/lit8 v9, v6, 0x1

    if-ge v6, v10, :cond_f8

    :try_start_3d
    array-length v6, v0

    move-object v13, v5

    move-object v14, v13

    const/4 v12, 0x0

    :goto_41
    if-ge v12, v6, :cond_6d

    aget-object v13, v0, v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "lib"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v15, Ljava/io/File;->separatorChar:C

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v13, Ljava/io/File;->separatorChar:C

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v14

    if-eqz v14, :cond_6a

    goto :goto_6d

    :cond_6a
    add-int/lit8 v12, v12, 0x1

    goto :goto_41

    :cond_6d
    :goto_6d
    if-eqz v13, :cond_78

    const-string v6, "Looking for %s in APK..."

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v13, v12, v7

    invoke-virtual {v4, v6, v12}, Lcom/igexin/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_78
    if-nez v14, :cond_88

    if-eqz v13, :cond_82

    new-instance v0, Lcom/igexin/a/b;

    invoke-direct {v0, v13}, Lcom/igexin/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    new-instance v0, Lcom/igexin/a/b;

    invoke-direct {v0, v2}, Lcom/igexin/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    const-string v6, "Found %s! Extracting..."

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v13, v12, v7

    invoke-virtual {v4, v6, v12}, Lcom/igexin/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_91
    .catchall {:try_start_3d .. :try_end_91} :catchall_34

    :try_start_91
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_9e

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->createNewFile()Z

    move-result v6
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_9b} :catch_f5
    .catchall {:try_start_91 .. :try_end_9b} :catchall_34

    if-nez v6, :cond_9e

    goto :goto_f5

    :cond_9e
    :try_start_9e
    invoke-virtual {v8, v14}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_9e .. :try_end_a2} :catch_ef
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a2} :catch_e9
    .catchall {:try_start_9e .. :try_end_a2} :catchall_e0

    :try_start_a2
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_a2 .. :try_end_a7} :catch_de
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a7} :catch_dc
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_d8

    :try_start_a7
    invoke-direct {v1, v6, v12}, Lcom/igexin/a/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v13

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->length()J

    move-result-wide v15
    :try_end_b6
    .catch Ljava/io/FileNotFoundException; {:try_start_a7 .. :try_end_b6} :catch_f1
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_b6} :catch_eb
    .catchall {:try_start_a7 .. :try_end_b6} :catchall_d6

    cmp-long v17, v13, v15

    if-eqz v17, :cond_c1

    :try_start_ba
    invoke-direct {v1, v6}, Lcom/igexin/a/a;->a(Ljava/io/Closeable;)V

    :goto_bd
    invoke-direct {v1, v12}, Lcom/igexin/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_f5

    :cond_c1
    invoke-direct {v1, v6}, Lcom/igexin/a/a;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v12}, Lcom/igexin/a/a;->a(Ljava/io/Closeable;)V

    invoke-virtual {v3, v11, v7}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v3, v11, v7}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v3, v11}, Ljava/io/File;->setWritable(Z)Z
    :try_end_d0
    .catchall {:try_start_ba .. :try_end_d0} :catchall_34

    if-eqz v8, :cond_d5

    :try_start_d2
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d5

    :catch_d5
    :cond_d5
    return-void

    :catchall_d6
    move-exception v0

    goto :goto_da

    :catchall_d8
    move-exception v0

    move-object v12, v5

    :goto_da
    move-object v5, v6

    goto :goto_e2

    :catch_dc
    move-object v12, v5

    goto :goto_eb

    :catch_de
    move-object v12, v5

    goto :goto_f1

    :catchall_e0
    move-exception v0

    move-object v12, v5

    :goto_e2
    :try_start_e2
    invoke-direct {v1, v5}, Lcom/igexin/a/a;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v12}, Lcom/igexin/a/a;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_e9
    move-object v6, v5

    move-object v12, v6

    :catch_eb
    :goto_eb
    invoke-direct {v1, v6}, Lcom/igexin/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_bd

    :catch_ef
    move-object v6, v5

    move-object v12, v6

    :catch_f1
    :goto_f1
    invoke-direct {v1, v6}, Lcom/igexin/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_bd

    :catch_f5
    :goto_f5
    move v6, v9

    goto/16 :goto_39

    :cond_f8
    const-string v0, "FATAL! Couldn\'t extract the library from the APK!"

    invoke-virtual {v4, v0}, Lcom/igexin/a/h;->a(Ljava/lang/String;)V
    :try_end_fd
    .catchall {:try_start_e2 .. :try_end_fd} :catchall_34

    if-eqz v8, :cond_102

    :try_start_ff
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_102

    :catch_102
    :cond_102
    return-void

    :catchall_103
    move-exception v0

    :goto_104
    if-eqz v5, :cond_109

    :try_start_106
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_109

    :catch_109
    :cond_109
    throw v0
.end method
