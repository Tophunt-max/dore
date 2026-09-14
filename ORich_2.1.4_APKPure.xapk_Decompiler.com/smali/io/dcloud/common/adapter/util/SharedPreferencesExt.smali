###### Class io.dcloud.common.adapter.util.SharedPreferencesExt (io.dcloud.common.adapter.util.SharedPreferencesExt)
.class public Lio/dcloud/common/adapter/util/SharedPreferencesExt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;
    }
.end annotation


# static fields
.field static final BOOLEAN:B = 0x2t

.field static final FLOAT:B = 0x3t

.field static final INT:B = 0x1t

.field static final LONG:B = 0x4t

.field public static final N_BASE:Ljava/lang/String; = "pdr"

.field static final STRING:B = 0x5t

.field static final STRING_SET:B = 0x6t

.field private static final mLinkedHashMapCollenction:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private editor:Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;

.field private mFileHandler:Ljava/io/File;

.field private mFileModifyTime:J

.field private mKeyValue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mLinkedHashMapCollenction:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 3
    iput-object p3, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->editor:Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;

    .line 4
    iput-object p3, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileHandler:Ljava/io/File;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileModifyTime:J

    .line 303
    iput-object p3, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    .line 304
    sget-object v0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mLinkedHashMapCollenction:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    .line 305
    new-instance v0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;

    invoke-direct {v0, p0, p3}, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;-><init>(Lio/dcloud/common/adapter/util/SharedPreferencesExt;Lio/dcloud/common/adapter/util/SharedPreferencesExt$1;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->editor:Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;

    .line 306
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/data/data/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/shared_prefs_ext/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 307
    iget-object p3, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    if-nez p3, :cond_83

    .line 308
    new-instance p3, Ljava/util/LinkedHashMap;

    const/16 v0, 0x10

    invoke-direct {p3, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object p3, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    .line 310
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileHandler:Ljava/io/File;

    .line 311
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_65

    .line 312
    iget-object p1, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileHandler:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 314
    :cond_65
    iget-object p1, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileHandler:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_78

    .line 316
    :try_start_6d
    iget-object p1, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileHandler:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_72} :catch_73

    goto :goto_7b

    :catch_73
    move-exception p1

    .line 318
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7b

    .line 321
    :cond_78
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->reset()V

    .line 324
    :goto_7b
    sget-object p1, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mLinkedHashMapCollenction:Ljava/util/HashMap;

    iget-object p3, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a

    .line 326
    :cond_83
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileHandler:Ljava/io/File;

    :goto_8a
    return-void
.end method

.method static synthetic access$100(Lio/dcloud/common/adapter/util/SharedPreferencesExt;)Ljava/util/LinkedHashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lio/dcloud/common/adapter/util/SharedPreferencesExt;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->saveLocal()Z

    move-result p0

    return p0
.end method

.method private checkModify()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileHandler:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileModifyTime:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_f

    .line 3
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->reset()V

    :cond_f
    return-void
.end method

.method private reset()V
    .registers 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileHandler:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileModifyTime:J

    .line 3
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileHandler:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 12
    :goto_1e
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_25

    goto :goto_5b

    .line 15
    :cond_25
    invoke-static {v1}, Lio/dcloud/common/adapter/util/ByteUtil;->toInt([B)I

    move-result v4

    .line 16
    array-length v5, v3

    if-le v4, v5, :cond_2e

    .line 17
    new-array v3, v4, [B

    :cond_2e
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v0, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 20
    new-instance v8, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v8, v3, v5, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 22
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 23
    aget-byte v11, v2, v5

    .line 25
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 26
    invoke-static {v1}, Lio/dcloud/common/adapter/util/ByteUtil;->toInt([B)I

    move-result v4

    .line 27
    array-length v6, v3

    if-le v4, v6, :cond_4b

    .line 28
    new-array v3, v4, [B

    .line 30
    :cond_4b
    invoke-virtual {v0, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    .line 31
    iget-object v7, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    move-object v6, p0

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->load(Ljava/util/LinkedHashMap;Ljava/lang/String;[BIB)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_57

    goto :goto_1e

    :catch_57
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5b
    return-void
.end method

.method private saveLocal()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->save(Ljava/util/LinkedHashMap;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->checkModify()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->checkModify()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->editor:Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->checkModify()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->checkModify()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    return p1

    :cond_18
    return p2

    :catch_19
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->checkModify()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    return p1

    :cond_18
    return p2

    :catch_19
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->checkModify()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    return p1

    :cond_18
    return p2

    :catch_19
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 5

    .line 1
    :try_start_0
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->checkModify()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    return-wide p1

    :cond_18
    return-wide p2

    :catch_19
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->checkModify()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    return-object p1

    :cond_14
    return-object p2

    :catch_15
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->checkModify()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mKeyValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.method hasChaged()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileHandler:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-wide v2, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileModifyTime:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method load(Ljava/util/LinkedHashMap;Ljava/lang/String;[BIB)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "[BIB)V"
        }
    .end annotation

    const-string v0, "UTF-8"

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p5, :pswitch_data_8a

    goto/16 :goto_89

    .line 1
    :pswitch_9
    :try_start_9
    new-instance p5, Ljava/lang/String;

    invoke-direct {p5, p3, v2, p4, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2, p5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_11} :catch_13

    goto/16 :goto_89

    :catch_13
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_89

    .line 5
    :pswitch_19
    :try_start_19
    new-instance p5, Ljava/lang/String;

    invoke-direct {p5, p3, v2, p4, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p1, p2, p5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_21} :catch_22

    goto :goto_89

    :catch_22
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_89

    .line 11
    :pswitch_27
    new-array p5, p4, [B

    :goto_29
    if-ge v2, p4, :cond_35

    .line 12
    array-length v0, p3

    if-ge v2, v0, :cond_35

    .line 13
    aget-byte v0, p3, v2

    aput-byte v0, p5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 15
    :cond_35
    invoke-static {p5}, Lio/dcloud/common/adapter/util/ByteUtil;->bytesToLong([B)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    .line 19
    :pswitch_41
    new-array p5, p4, [B

    :goto_43
    if-ge v2, p4, :cond_4f

    .line 20
    array-length v0, p3

    if-ge v2, v0, :cond_4f

    .line 21
    aget-byte v0, p3, v2

    aput-byte v0, p5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 23
    :cond_4f
    invoke-static {p5}, Lio/dcloud/common/adapter/util/ByteUtil;->bytesToFloat([B)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    .line 24
    :pswitch_5b
    aget-byte p3, p3, v2

    if-ne p3, v1, :cond_60

    goto :goto_61

    :cond_60
    const/4 v1, 0x0

    :goto_61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    :pswitch_69
    const/4 p4, 0x4

    new-array p4, p4, [B

    .line 25
    aget-byte p5, p3, v2

    aput-byte p5, p4, v2

    aget-byte p5, p3, v1

    aput-byte p5, p4, v1

    const/4 p5, 0x2

    aget-byte v0, p3, p5

    aput-byte v0, p4, p5

    const/4 p5, 0x3

    aget-byte p3, p3, p5

    aput-byte p3, p4, p5

    .line 26
    invoke-static {p4}, Lio/dcloud/common/adapter/util/ByteUtil;->toInt([B)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_89
    return-void

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_69
        :pswitch_5b
        :pswitch_41
        :pswitch_27
        :pswitch_19
        :pswitch_9
    .end packed-switch
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 2

    return-void
.end method

.method save(Ljava/util/LinkedHashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 1
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileHandler:Ljava/io/File;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 2
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    new-array v4, v2, [B

    .line 6
    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 9
    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 10
    array-length v7, v6

    invoke-static {v7}, Lio/dcloud/common/adapter/util/ByteUtil;->toBytes(I)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 11
    invoke-virtual {v1, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 13
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 15
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_b2

    const-class v7, Ljava/lang/Integer;

    if-ne v6, v7, :cond_48

    goto/16 :goto_b2

    .line 18
    :cond_48
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_9d

    const-class v7, Ljava/lang/Boolean;

    if-ne v6, v7, :cond_51

    goto :goto_9d

    .line 21
    :cond_51
    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_5f

    const/4 v6, 0x5

    aput-byte v6, v4, v3

    .line 23
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_be

    .line 24
    :cond_5f
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_8f

    const-class v7, Ljava/lang/Long;

    if-ne v6, v7, :cond_68

    goto :goto_8f

    .line 27
    :cond_68
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_81

    const-class v7, Ljava/lang/Float;

    if-ne v6, v7, :cond_71

    goto :goto_81

    .line 30
    :cond_71
    const-class v7, Ljava/util/Set;

    if-ne v6, v7, :cond_15

    const/4 v6, 0x6

    aput-byte v6, v4, v3

    .line 32
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_be

    :cond_81
    :goto_81
    const/4 v6, 0x3

    aput-byte v6, v4, v3

    .line 34
    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Lio/dcloud/common/adapter/util/ByteUtil;->floatToBytes(F)[B

    move-result-object v5

    goto :goto_be

    :cond_8f
    :goto_8f
    const/4 v6, 0x4

    aput-byte v6, v4, v3

    .line 36
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lio/dcloud/common/adapter/util/ByteUtil;->longToBytes(J)[B

    move-result-object v5

    goto :goto_be

    :cond_9d
    :goto_9d
    const/4 v6, 0x2

    aput-byte v6, v4, v3

    .line 38
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_ad

    new-array v5, v2, [B

    aput-byte v2, v5, v3

    goto :goto_be

    :cond_ad
    new-array v5, v2, [B

    aput-byte v3, v5, v3

    goto :goto_be

    :cond_b2
    :goto_b2
    aput-byte v2, v4, v3

    .line 40
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lio/dcloud/common/adapter/util/ByteUtil;->toBytes(I)[B

    move-result-object v5

    .line 59
    :goto_be
    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 60
    array-length v6, v5

    invoke-static {v6}, Lio/dcloud/common/adapter/util/ByteUtil;->toBytes(I)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 61
    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_15

    .line 63
    :cond_ce
    iget-object p1, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileHandler:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->mFileModifyTime:J
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d6} :catch_d7

    goto :goto_db

    :catch_d7
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_db
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.common.adapter.util.SharedPreferencesExt.AnonymousClass1 (io.dcloud.common.adapter.util.SharedPreferencesExt$1)
.class synthetic Lio/dcloud/common/adapter/util/SharedPreferencesExt$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/SharedPreferencesExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.dcloud.common.adapter.util.SharedPreferencesExt.W2AEditor (io.dcloud.common.adapter.util.SharedPreferencesExt$W2AEditor)
.class public Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/SharedPreferencesExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "W2AEditor"
.end annotation


# instance fields
.field mCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mSP:Lio/dcloud/common/adapter/util/SharedPreferencesExt;


# direct methods
.method private constructor <init>(Lio/dcloud/common/adapter/util/SharedPreferencesExt;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mCache:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mSP:Lio/dcloud/common/adapter/util/SharedPreferencesExt;

    .line 6
    iput-object p1, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mSP:Lio/dcloud/common/adapter/util/SharedPreferencesExt;

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/common/adapter/util/SharedPreferencesExt;Lio/dcloud/common/adapter/util/SharedPreferencesExt$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;-><init>(Lio/dcloud/common/adapter/util/SharedPreferencesExt;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mSP:Lio/dcloud/common/adapter/util/SharedPreferencesExt;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->access$100(Lio/dcloud/common/adapter/util/SharedPreferencesExt;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-object p0
.end method

.method public commit()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mSP:Lio/dcloud/common/adapter/util/SharedPreferencesExt;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->access$100(Lio/dcloud/common/adapter/util/SharedPreferencesExt;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mSP:Lio/dcloud/common/adapter/util/SharedPreferencesExt;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/SharedPreferencesExt;->access$200(Lio/dcloud/common/adapter/util/SharedPreferencesExt;)Z

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mCache:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mCache:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mCache:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mCache:Ljava/util/LinkedHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/SharedPreferencesExt$W2AEditor;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
