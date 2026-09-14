###### Class com.google.android.gms.measurement.internal.zzak (com.google.android.gms.measurement.internal.zzak)
.class public final Lcom/google/android/gms/measurement/internal/zzak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"


# direct methods
.method static zza(Lcom/google/android/gms/measurement/internal/zzel;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    move-object v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    if-eqz p0, :cond_ff

    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_9
    const-string v0, "name"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    aput-object v10, v5, v12

    const-string v2, "SQLITE_MASTER"

    const-string v4, "name=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 2
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_20} :catch_31
    .catchall {:try_start_9 .. :try_end_20} :catchall_2e

    .line 3
    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_24} :catch_2c
    .catchall {:try_start_20 .. :try_end_24} :catchall_f7

    if-eqz v1, :cond_29

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_29
    if-nez v0, :cond_46

    goto :goto_41

    :catch_2c
    move-exception v0

    goto :goto_33

    :catchall_2e
    move-exception v0

    goto/16 :goto_f9

    :catch_31
    move-exception v0

    move-object v1, v13

    .line 20
    :goto_33
    :try_start_33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Error querying for table"

    .line 4
    invoke-virtual {v2, v3, v10, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_f7

    if-eqz v1, :cond_41

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_41
    :goto_41
    move-object/from16 v1, p3

    .line 7
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_46
    :try_start_46
    new-instance v0, Ljava/util/HashSet;

    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LIMIT 0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_6b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_46 .. :try_end_6b} :catch_ec

    .line 11
    :try_start_6b
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_e7

    .line 12
    :try_start_72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v1, ","

    move-object/from16 v2, p4

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7f
    if-ge v3, v2, :cond_ba

    aget-object v4, v1, v3

    .line 15
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    .line 16
    :cond_8c
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x23

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Table "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is missing required column: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ba
    if-eqz v11, :cond_d1

    :goto_bc
    array-length v1, v11

    if-ge v12, v1, :cond_d1

    .line 17
    aget-object v1, v11, v12

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    add-int/lit8 v1, v12, 0x1

    .line 18
    aget-object v1, v11, v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_ce
    add-int/lit8 v12, v12, 0x2

    goto :goto_bc

    .line 19
    :cond_d1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Table has extra columns. table, columns"

    const-string v3, ", "

    .line 20
    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v10, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e6
    return-void

    :catchall_e7
    move-exception v0

    .line 12
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 13
    throw v0
    :try_end_ec
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_72 .. :try_end_ec} :catch_ec

    :catch_ec
    move-exception v0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Failed to verify columns on table that was just created"

    .line 21
    invoke-virtual {v1, v2, v10}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    throw v0

    :catchall_f7
    move-exception v0

    move-object v13, v1

    :goto_f9
    if-eqz v13, :cond_fe

    .line 5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 6
    :cond_fe
    throw v0

    .line 1
    :cond_ff
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Monitor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static zzb(Lcom/google/android/gms/measurement/internal/zzel;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    if-eqz p0, :cond_4a

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Failed to turn off database read permission"

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    .line 5
    :cond_1b
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    if-nez p1, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p1

    const-string v1, "Failed to turn off database write permission"

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    :cond_2a
    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Failed to turn on database read permission for owner"

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    .line 9
    :cond_3a
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    if-nez p1, :cond_49

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p0

    const-string p1, "Failed to turn on database write permission for owner"

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    :cond_49
    return-void

    .line 1
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Monitor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
