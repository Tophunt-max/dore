###### Class com.google.android.gms.measurement.internal.zzid (com.google.android.gms.measurement.internal.zzid)
.class final Lcom/google/android/gms/measurement/internal/zzid;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzie;

.field private final zzb:Ljava/net/URL;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzft;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzie;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzft;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zzft;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzid;->zza:Lcom/google/android/gms/measurement/internal/zzie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzb:Ljava/net/URL;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzc:Ljava/lang/String;

    return-void
.end method

.method private final zzb(ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Exception;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zza:Lcom/google/android/gms/measurement/internal/zzie;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzic;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzic;-><init>(Lcom/google/android/gms/measurement/internal/zzid;ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 2
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzfs;->zzp(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zza:Lcom/google/android/gms/measurement/internal/zzie;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzax()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzid;->zza:Lcom/google/android/gms/measurement/internal/zzie;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzb:Ljava/net/URL;

    .line 2
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 3
    instance-of v4, v3, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_80

    .line 5
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    const v4, 0xea60

    .line 8
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    const v2, 0xee48

    .line 10
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 11
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v2, 0x1

    .line 12
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_35} :catch_96
    .catchall {:try_start_7 .. :try_end_35} :catchall_88

    .line 13
    :try_start_35
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_39} :catch_7d
    .catchall {:try_start_35 .. :try_end_39} :catchall_7a

    .line 14
    :try_start_39
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_77
    .catchall {:try_start_39 .. :try_end_3d} :catchall_74

    .line 15
    :try_start_3d
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_68

    const/16 v7, 0x400

    :try_start_48
    new-array v7, v7, [B

    .line 17
    :goto_4a
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_54

    .line 18
    invoke-virtual {v5, v7, v0, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4a

    .line 19
    :cond_54
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_66

    if-eqz v6, :cond_5d

    .line 20
    :try_start_5a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_72
    .catchall {:try_start_5a .. :try_end_5d} :catchall_70

    :cond_5d
    if-eqz v3, :cond_62

    .line 22
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 23
    :cond_62
    invoke-direct {p0, v2, v1, v0, v4}, Lcom/google/android/gms/measurement/internal/zzid;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void

    :catchall_66
    move-exception v0

    goto :goto_6a

    :catchall_68
    move-exception v0

    move-object v6, v1

    :goto_6a
    if-eqz v6, :cond_6f

    .line 20
    :try_start_6c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 21
    :cond_6f
    throw v0
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_72
    .catchall {:try_start_6c .. :try_end_70} :catchall_70

    :catchall_70
    move-exception v0

    goto :goto_8d

    :catch_72
    move-exception v0

    goto :goto_9b

    :catchall_74
    move-exception v0

    move-object v4, v1

    goto :goto_8d

    :catch_77
    move-exception v0

    move-object v4, v1

    goto :goto_9b

    :catchall_7a
    move-exception v2

    move-object v4, v1

    goto :goto_8b

    :catch_7d
    move-exception v2

    move-object v4, v1

    goto :goto_99

    .line 3
    :cond_80
    :try_start_80
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to obtain HTTP connection"

    .line 4
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_88} :catch_96
    .catchall {:try_start_80 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    :goto_8b
    move-object v0, v2

    const/4 v2, 0x0

    :goto_8d
    if-eqz v3, :cond_92

    .line 22
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 23
    :cond_92
    invoke-direct {p0, v2, v1, v1, v4}, Lcom/google/android/gms/measurement/internal/zzid;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 24
    throw v0

    :catch_96
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    :goto_99
    move-object v0, v2

    const/4 v2, 0x0

    :goto_9b
    if-eqz v3, :cond_a0

    .line 22
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 23
    :cond_a0
    invoke-direct {p0, v2, v0, v1, v4}, Lcom/google/android/gms/measurement/internal/zzid;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method

.method final synthetic zza(ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzc:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzft;->zza:Lcom/google/android/gms/measurement/internal/zzfv;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzC(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzic (com.google.android.gms.measurement.internal.zzic)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzic;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzid;

.field public final synthetic zzb:I

.field public final synthetic zzc:Ljava/lang/Exception;

.field public final synthetic zzd:[B

.field public final synthetic zze:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzid;ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zza:Lcom/google/android/gms/measurement/internal/zzid;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzc:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzic;->zze:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zza:Lcom/google/android/gms/measurement/internal/zzid;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzc:Ljava/lang/Exception;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzd:[B

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzic;->zze:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzid;->zza(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
