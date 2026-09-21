###### Class com.google.android.gms.measurement.internal.zzks (com.google.android.gms.measurement.internal.zzks)
.class public final Lcom/google/android/gms/measurement/internal/zzks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.0.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzgq;


# static fields
.field private static volatile zzb:Lcom/google/android/gms/measurement/internal/zzks;


# instance fields
.field private zzA:J

.field private final zzB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzag;",
            ">;"
        }
    .end annotation
.end field

.field private final zzC:Lcom/google/android/gms/measurement/internal/zzky;

.field zza:J

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzfm;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzer;

.field private zze:Lcom/google/android/gms/measurement/internal/zzaj;

.field private zzf:Lcom/google/android/gms/measurement/internal/zzet;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzkg;

.field private zzh:Lcom/google/android/gms/measurement/internal/zzz;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzku;

.field private zzj:Lcom/google/android/gms/measurement/internal/zzif;

.field private zzk:Lcom/google/android/gms/measurement/internal/zzjp;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzkj;

.field private zzm:Lcom/google/android/gms/measurement/internal/zzfd;

.field private final zzn:Lcom/google/android/gms/measurement/internal/zzfv;

.field private zzo:Z

.field private zzp:Z

.field private zzq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzr:I

.field private zzs:I

.field private zzt:Z

.field private zzu:Z

.field private zzv:Z

.field private zzw:Ljava/nio/channels/FileLock;

.field private zzx:Ljava/nio/channels/FileChannel;

.field private zzy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkt;Lcom/google/android/gms/measurement/internal/zzfv;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzo:Z

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzC:Lcom/google/android/gms/measurement/internal/zzky;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzkt;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    .line 2
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzA:J

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkj;

    .line 3
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkj;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzl:Lcom/google/android/gms/measurement/internal/zzkj;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzku;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzZ()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzer;

    .line 6
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzer;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzZ()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzd:Lcom/google/android/gms/measurement/internal/zzer;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfm;

    .line 8
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfm;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzZ()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    new-instance p2, Ljava/util/HashMap;

    .line 10
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzB:Ljava/util/Map;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;-><init>(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzkt;)V

    .line 12
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfs;->zzp(Ljava/lang/Runnable;)V

    return-void
.end method

.method static final zzY(Lcom/google/android/gms/internal/measurement/zzfn;ILjava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfn;->zzp()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_21

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    int-to-long v1, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    const-string v1, "_ev"

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzf(Lcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzf(Lcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    return-void
.end method

.method static final zzZ(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfn;->zzp()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfn;

    return-void

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method

.method private final zzaa(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_b9

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto/16 :goto_b9

    .line 5
    :cond_1c
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzab(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 6
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_29

    goto :goto_3b

    .line 25
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    .line 27
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 7
    :cond_3b
    :goto_3b
    new-instance v30, Lcom/google/android/gms/measurement/internal/zzp;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()J

    move-result-wide v6

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v9

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()J

    move-result-wide v15

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj()Z

    move-result v13

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v17

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza()J

    move-result-wide v23

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzai()Z

    move-result v21

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Ljava/lang/String;

    move-result-object v25

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()Ljava/lang/Boolean;

    move-result-object v26

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzk()J

    move-result-wide v27

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzC()Ljava/util/List;

    move-result-object v31

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzom;->zzc()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzdy;->zzac:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v11

    if-eqz v11, :cond_8b

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzy()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    goto :goto_8d

    :cond_8b
    move-object/from16 v32, v3

    :goto_8d
    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    .line 24
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzi()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-wide v8, v9

    move-wide v10, v15

    move-object/from16 v15, v17

    move-wide/from16 v16, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-wide/from16 v25, v27

    move-object/from16 v27, v31

    move-object/from16 v28, v32

    invoke-direct/range {v1 .. v29}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v30

    .line 4
    :cond_b9
    :goto_b9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v4, "No app data available; dropping"

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3
.end method

.method private final zzab(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;
    .registers 10

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzau()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()J

    move-result-wide v1

    int-to-long v6, v0

    cmp-long p1, v1, v6

    if-nez p1, :cond_54

    .line 11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzau()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_53} :catch_59

    return-object p1

    .line 10
    :cond_54
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_59
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzac()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzt:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzu:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzv:Z

    if-eqz v0, :cond_14

    goto :goto_46

    .line 8
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzq:Ljava/util/List;

    if-nez v0, :cond_26

    return-void

    .line 9
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 10
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2a

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzq:Ljava/util/List;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 2
    :cond_46
    :goto_46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzt:Z

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzu:Z

    .line 5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzv:Z

    .line 6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 7
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzad(Lcom/google/android/gms/internal/measurement/zzfx;JZ)V
    .registers 15

    const/4 v0, 0x1

    if-eq v0, p4, :cond_6

    const-string v1, "_lte"

    goto :goto_8

    :cond_6
    const-string v1, "_se"

    .line 1
    :goto_8
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfx;->zzal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v2

    if-eqz v2, :cond_3f

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    if-nez v3, :cond_1c

    goto :goto_3f

    .line 15
    :cond_1c
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzkx;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfx;->zzal()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_58

    .line 2
    :cond_3f
    :goto_3f
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzkx;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfx;->zzal()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 9
    :goto_58
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->zzd()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzgg;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgg;->zzg(J)Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgg;->zze(J)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgh;

    .line 14
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zza(Lcom/google/android/gms/internal/measurement/zzfx;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_85

    .line 16
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzai(ILcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_88

    .line 15
    :cond_85
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzl(Lcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfx;

    :goto_88
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_ac

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 18
    invoke-virtual {p1, v9}, Lcom/google/android/gms/measurement/internal/zzaj;->zzN(Lcom/google/android/gms/measurement/internal/zzkx;)Z

    if-eq v0, p4, :cond_9b

    const-string p1, "lifetime"

    goto :goto_9d

    :cond_9b
    const-string p1, "session-scoped"

    .line 19
    :goto_9d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p2

    iget-object p3, v9, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    const-string p4, "Updated engagement user property. scope, value"

    .line 21
    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ac
    return-void
.end method

.method private final zzae(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzw()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_31

    goto :goto_6f

    :cond_31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_53

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzku;->zzA(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    const-wide/16 v0, 0x1

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzku;->zzA(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method private final zzaf()V
    .registers 21

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzks;->zza:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_4e

    const-wide/32 v1, 0x36ee80

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzks;->zza:J

    sub-long/2addr v5, v7

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_4c

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 8
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzm()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzc()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzks;->zzg:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()V

    return-void

    :cond_4c
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzks;->zza:J

    :cond_4e
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzM()Z

    move-result v1

    if-eqz v1, :cond_255

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzai()Z

    move-result v1

    if-nez v1, :cond_5e

    goto/16 :goto_255

    .line 17
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 19
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdy;->zzz:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaj;->zzJ()Z

    move-result v5

    const/4 v10, 0x1

    if-nez v5, :cond_93

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaj;->zzI()Z

    move-result v5

    if-eqz v5, :cond_92

    goto :goto_93

    :cond_92
    const/4 v10, 0x0

    :cond_93
    :goto_93
    if-eqz v10, :cond_d3

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zzl()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_bf

    const-string v11, ".none."

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bf

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdy;->zzu:Lcom/google/android/gms/measurement/internal/zzdx;

    .line 27
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_e6

    .line 24
    :cond_bf
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdy;->zzt:Lcom/google/android/gms/measurement/internal/zzdx;

    .line 25
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_e6

    .line 28
    :cond_d3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdy;->zzs:Lcom/google/android/gms/measurement/internal/zzdx;

    .line 29
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 27
    :goto_e6
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 30
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzjp;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzew;->zza()J

    move-result-wide v13

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 31
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzjp;->zzd:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzew;->zza()J

    move-result-wide v15

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 32
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    move/from16 v17, v10

    .line 33
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaj;->zzd()J

    move-result-wide v9

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 34
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    move-wide/from16 v18, v7

    .line 35
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaj;->zze()J

    move-result-wide v6

    .line 36
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_117

    :cond_114
    move-wide v7, v3

    goto/16 :goto_18f

    :cond_117
    sub-long/2addr v5, v1

    .line 37
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v5, v1, v5

    sub-long/2addr v13, v1

    .line 38
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    sub-long/2addr v15, v1

    .line 39
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sub-long v9, v1, v9

    sub-long/2addr v1, v7

    .line 40
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-long v7, v5, v18

    if-eqz v17, :cond_13c

    cmp-long v13, v1, v3

    if-lez v13, :cond_13c

    .line 41
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v11

    :cond_13c
    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 42
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 43
    invoke-virtual {v13, v1, v2, v11, v12}, Lcom/google/android/gms/measurement/internal/zzku;->zzx(JJ)Z

    move-result v13

    if-nez v13, :cond_149

    add-long v7, v1, v11

    :cond_149
    cmp-long v1, v9, v3

    if-eqz v1, :cond_18f

    cmp-long v1, v9, v5

    if-ltz v1, :cond_18f

    const/4 v1, 0x0

    .line 44
    :goto_152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    const/16 v2, 0x14

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdy;->zzB:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v6, 0x0

    .line 45
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v11, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_114

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdy;->zzA:Lcom/google/android/gms/measurement/internal/zzdx;

    .line 47
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v1

    mul-long v5, v5, v12

    add-long/2addr v7, v5

    cmp-long v2, v7, v9

    if-gtz v2, :cond_18f

    add-int/lit8 v1, v1, 0x1

    goto :goto_152

    :cond_18f
    :goto_18f
    cmp-long v1, v7, v3

    if-eqz v1, :cond_238

    .line 36
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzks;->zzd:Lcom/google/android/gms/measurement/internal/zzer;

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zza()Z

    move-result v1

    if-eqz v1, :cond_21b

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 50
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjp;->zzb:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zza()J

    move-result-wide v1

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdy;->zzq:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v6, 0x0

    .line 52
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 53
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 54
    invoke-virtual {v9, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzku;->zzx(JJ)Z

    move-result v9

    if-nez v9, :cond_1ca

    add-long/2addr v1, v5

    .line 55
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 56
    :cond_1ca
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzm()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzc()V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v7, v1

    cmp-long v1, v7, v3

    if-gtz v1, :cond_201

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdy;->zzv:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 60
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjp;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzb(J)V

    .line 61
    :cond_201
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzks;->zzg:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 62
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 63
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/measurement/internal/zzkg;->zzd(J)V

    return-void

    .line 64
    :cond_21b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzm()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzb()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzks;->zzg:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 66
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()V

    return-void

    .line 68
    :cond_238
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzm()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzc()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzks;->zzg:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 70
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()V

    return-void

    .line 13
    :cond_255
    :goto_255
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzm()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzc()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzks;->zzg:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()V

    return-void
.end method

.method private final zzag(Lcom/google/android/gms/measurement/internal/zzp;)Z
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzom;->zzc()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdy;->zzac:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    return v1

    :cond_2d
    :goto_2d
    return v2

    .line 2
    :cond_2e
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_40

    :cond_3f
    return v1

    :cond_40
    :goto_40
    return v2
.end method

.method private final zzah(Ljava/lang/String;J)Z
    .registers 51

    move-object/from16 v1, p0

    const-string v2, "_sn"

    const-string v3, "_npa"

    const-string v4, "_ai"

    .line 1
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 2
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaj;->zzw()V

    :try_start_10
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzkr;

    const/4 v13, 0x0

    invoke-direct {v5, v1, v13}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzkq;)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 3
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    const/4 v7, 0x0

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzA:J

    move-wide/from16 v8, p2

    move-object v12, v5

    .line 4
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzaj;->zzW(Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/zzkr;)V

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zzc:Ljava/util/List;

    if-eqz v6, :cond_e0d

    .line 5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_30

    goto/16 :goto_e0d

    .line 9
    :cond_30
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 10
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbv()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzp()Lcom/google/android/gms/internal/measurement/zzfx;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzdy;->zzT:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v8

    move-object/from16 v17, v13

    move-object/from16 v18, v17

    const/4 v7, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    :goto_58
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zzc:Ljava/util/List;

    .line 12
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9
    :try_end_5e
    .catchall {:try_start_10 .. :try_end_5e} :catchall_e1f

    const-string v10, "_fr"

    const-string v11, "_et"

    move-object/from16 v23, v3

    const-string v3, "_e"

    move-wide/from16 v24, v14

    if-ge v12, v9, :cond_6a9

    :try_start_6a
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zzc:Ljava/util/List;

    .line 13
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbv()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfn;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 14
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 15
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v14

    move/from16 v28, v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v14, v12}, Lcom/google/android/gms/measurement/internal/zzfm;->zzo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12
    :try_end_8d
    .catchall {:try_start_6a .. :try_end_8d} :catchall_e1f

    const-string v14, "_err"

    if-eqz v12, :cond_10b

    .line 16
    :try_start_91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v10, "Dropping blocked raw event. appId"

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 18
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 19
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v12

    .line 20
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 21
    invoke-virtual {v3, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 22
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 23
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfm;->zzm(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_fe

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 24
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 25
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfm;->zzp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d9

    goto :goto_fe

    .line 26
    :cond_d9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fe

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v29

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzC:Lcom/google/android/gms/measurement/internal/zzky;

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 28
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0xb

    const-string v33, "_ev"

    .line 29
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v30, v3

    .line 30
    invoke-virtual/range {v29 .. v35}, Lcom/google/android/gms/measurement/internal/zzkz;->zzM(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_fe
    :goto_fe
    move-object/from16 v30, v4

    move-object v4, v6

    move/from16 v29, v8

    move-wide/from16 v14, v24

    move/from16 v10, v28

    const/4 v3, -0x1

    move-object v8, v2

    goto/16 :goto_69d

    .line 31
    :cond_10b
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v12

    .line 32
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_181

    .line 33
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/zzfn;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfn;

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v12

    const-string v15, "Renaming ad_impression to _ai"

    invoke-virtual {v12, v15}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzel;->zzq()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x5

    .line 36
    invoke-static {v12, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_181

    const/4 v12, 0x0

    .line 37
    :goto_139
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()I

    move-result v15

    if-ge v12, v15, :cond_181

    const-string v15, "ad_platform"

    .line 38
    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v29

    move-object/from16 v30, v4

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17c

    .line 39
    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17c

    const-string v4, "admob"

    .line 40
    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17c

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v4

    .line 42
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzel;->zzl()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v4

    const-string v15, "AdMob ad impression logged from app. Potentially duplicative."

    .line 43
    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    :cond_17c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v30

    goto :goto_139

    :cond_181
    move-object/from16 v30, v4

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 44
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 45
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v12, v15}, Lcom/google/android/gms/measurement/internal/zzfm;->zzn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_196
    .catchall {:try_start_91 .. :try_end_196} :catchall_e1f

    const-string v12, "_c"

    if-nez v4, :cond_1f1

    :try_start_19a
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 46
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 47
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v15

    .line 48
    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move/from16 v29, v8

    .line 49
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v8
    :try_end_1ac
    .catchall {:try_start_19a .. :try_end_1ac} :catchall_e1f

    move-object/from16 v31, v2

    const v2, 0x171c4

    if-eq v8, v2, :cond_1d2

    const v2, 0x17331

    if-eq v8, v2, :cond_1c8

    const v2, 0x17333

    if-eq v8, v2, :cond_1be

    goto :goto_1dc

    :cond_1be
    const-string v2, "_ui"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1dc

    const/4 v2, 0x1

    goto :goto_1dd

    :cond_1c8
    const-string v2, "_ug"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1dc

    const/4 v2, 0x2

    goto :goto_1dd

    :cond_1d2
    const-string v2, "_in"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1dc

    const/4 v2, 0x0

    goto :goto_1dd

    :cond_1dc
    :goto_1dc
    const/4 v2, -0x1

    :goto_1dd
    if-eqz v2, :cond_1f5

    const/4 v8, 0x1

    if-eq v2, v8, :cond_1f5

    const/4 v8, 0x2

    if-eq v2, v8, :cond_1f5

    move/from16 v33, v7

    move-object v8, v10

    move-object/from16 v32, v11

    move/from16 v22, v13

    const/4 v4, 0x0

    move-object v10, v3

    move-object v13, v6

    goto/16 :goto_3c5

    :cond_1f1
    move-object/from16 v31, v2

    move/from16 v29, v8

    :cond_1f5
    move/from16 v22, v13

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    .line 50
    :goto_1fa
    :try_start_1fa
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()I

    move-result v13
    :try_end_1fe
    .catchall {:try_start_1fa .. :try_end_1fe} :catchall_e1f

    move-object/from16 v32, v11

    const-string v11, "_r"

    if-ge v2, v13, :cond_266

    .line 51
    :try_start_204
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_230

    .line 52
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbv()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfr;

    move-object v13, v6

    move/from16 v33, v7

    const-wide/16 v6, 0x1

    .line 53
    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 54
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 55
    invoke-virtual {v9, v2, v6}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    move-object v7, v10

    const/4 v8, 0x1

    goto :goto_25d

    :cond_230
    move-object v13, v6

    move/from16 v33, v7

    .line 56
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25c

    .line 57
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbv()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfr;

    move-object v7, v10

    const-wide/16 v10, 0x1

    .line 58
    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 59
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 60
    invoke-virtual {v9, v2, v6}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    const/4 v15, 0x1

    goto :goto_25d

    :cond_25c
    move-object v7, v10

    :goto_25d
    add-int/lit8 v2, v2, 0x1

    move-object v10, v7

    move-object v6, v13

    move-object/from16 v11, v32

    move/from16 v7, v33

    goto :goto_1fa

    :cond_266
    move-object v13, v6

    move/from16 v33, v7

    move-object v7, v10

    if-nez v8, :cond_29a

    if-eqz v4, :cond_29a

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v6, "Marking event as conversion"

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 63
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v8

    .line 64
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 65
    invoke-virtual {v2, v6, v8}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v2

    .line 67
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    move-object v8, v7

    const-wide/16 v6, 0x1

    .line 68
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 69
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zze(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfn;

    goto :goto_29b

    :cond_29a
    move-object v8, v7

    :goto_29b
    if-nez v15, :cond_2c7

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v6, "Marking event as real-time"

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 72
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    .line 73
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v2

    .line 76
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    const-wide/16 v6, 0x1

    .line 77
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 78
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zze(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfn;

    :cond_2c7
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 79
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zza()J

    move-result-wide v35

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 81
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x1

    move-object/from16 v34, v2

    .line 82
    invoke-virtual/range {v34 .. v42}, Lcom/google/android/gms/measurement/internal/zzaj;->zzl(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v2

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/zzah;->zze:J

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v10

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzdy;->zzn:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v2, v10, v15}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)I

    move-result v2

    move-object v10, v3

    int-to-long v2, v2

    cmp-long v15, v6, v2

    if-lez v15, :cond_302

    .line 84
    invoke-static {v9, v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzZ(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V

    goto :goto_304

    :cond_302
    const/16 v19, 0x1

    .line 85
    :goto_304
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkz;->zzah(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c5

    if-eqz v4, :cond_3c5

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 86
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zza()J

    move-result-wide v35

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 88
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x1

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v34, v2

    .line 89
    invoke-virtual/range {v34 .. v42}, Lcom/google/android/gms/measurement/internal/zzaj;->zzl(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzah;->zzc:J

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzdy;->zzm:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v6, v7, v11}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v11, v2, v6

    if-lez v11, :cond_3c5

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Too many conversions. Not logging as conversion. appId"

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 93
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 94
    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 95
    :goto_361
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()I

    move-result v11

    if-ge v3, v11, :cond_38b

    .line 96
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v11

    .line 97
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_37d

    .line 98
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbv()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfr;

    move v7, v3

    goto :goto_388

    .line 99
    :cond_37d
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_388

    const/4 v6, 0x1

    :cond_388
    :goto_388
    add-int/lit8 v3, v3, 0x1

    goto :goto_361

    :cond_38b
    if-eqz v6, :cond_394

    if-eqz v2, :cond_393

    .line 109
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/measurement/zzfn;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfn;

    goto :goto_3c5

    :cond_393
    const/4 v2, 0x0

    :cond_394
    if-eqz v2, :cond_3ae

    .line 100
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzax()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 101
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    const-wide/16 v14, 0xa

    .line 102
    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 103
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 104
    invoke-virtual {v9, v7, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    goto :goto_3c5

    .line 105
    :cond_3ae
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Did not find conversion parameter. appId"

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 107
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 108
    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3c5
    :goto_3c5
    if-eqz v4, :cond_47e

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzp()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v6, -0x1

    .line 111
    :goto_3d3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7
    :try_end_3d7
    .catchall {:try_start_204 .. :try_end_3d7} :catchall_e1f

    const-string v11, "currency"

    const-string v14, "value"

    if-ge v3, v7, :cond_403

    .line 112
    :try_start_3dd
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3ef

    move v4, v3

    goto :goto_400

    .line 113
    :cond_3ef
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_400

    move v6, v3

    :cond_400
    :goto_400
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d3

    :cond_403
    const/4 v3, -0x1

    if-ne v4, v3, :cond_408

    goto/16 :goto_47f

    .line 114
    :cond_408
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfs;->zzw()Z

    move-result v3

    if-nez v3, :cond_439

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfs;->zzu()Z

    move-result v3

    if-nez v3, :cond_439

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzl()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Value must be specified with a numeric type."

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/zzfn;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfn;

    .line 129
    invoke-static {v9, v12}, Lcom/google/android/gms/measurement/internal/zzks;->zzZ(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 130
    invoke-static {v9, v2, v14}, Lcom/google/android/gms/measurement/internal/zzks;->zzY(Lcom/google/android/gms/internal/measurement/zzfn;ILjava/lang/String;)V

    goto :goto_47e

    :cond_439
    const/4 v3, -0x1

    if-ne v6, v3, :cond_43d

    goto :goto_465

    .line 115
    :cond_43d
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_465

    const/4 v6, 0x0

    .line 117
    :goto_44f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_47f

    .line 118
    invoke-virtual {v2, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 119
    invoke-static {v7}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-eqz v14, :cond_465

    .line 120
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_44f

    .line 121
    :cond_465
    :goto_465
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzl()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v6, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 123
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/zzfn;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfn;

    .line 125
    invoke-static {v9, v12}, Lcom/google/android/gms/measurement/internal/zzks;->zzZ(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 126
    invoke-static {v9, v2, v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzY(Lcom/google/android/gms/internal/measurement/zzfn;ILjava/lang/String;)V

    goto :goto_47f

    :cond_47e
    :goto_47e
    const/4 v3, -0x1

    .line 131
    :cond_47f
    :goto_47f
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v6, 0x3e8

    if-eqz v2, :cond_4ea

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 132
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 133
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v2, v8}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v2

    if-nez v2, :cond_4df

    if-eqz v18, :cond_4d1

    .line 134
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v11

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v14

    sub-long/2addr v11, v14

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    cmp-long v2, v11, v6

    if-gtz v2, :cond_4d1

    .line 135
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzjt;->zzax()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 136
    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzaj(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)Z

    move-result v4

    if-eqz v4, :cond_4c7

    move-object v4, v13

    move/from16 v11, v33

    .line 137
    invoke-virtual {v4, v11, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzO(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    move/from16 v13, v22

    const/4 v2, 0x0

    const/16 v18, 0x0

    goto :goto_4cd

    :cond_4c7
    move-object v4, v13

    move/from16 v11, v33

    move-object v2, v9

    move/from16 v13, v16

    :goto_4cd
    move-object/from16 v17, v2

    move v7, v11

    goto :goto_4d9

    :cond_4d1
    move-object v4, v13

    move/from16 v11, v33

    move-object/from16 v17, v9

    move v7, v11

    move/from16 v13, v16

    :goto_4d9
    move-object/from16 v8, v31

    move-object/from16 v12, v32

    goto/16 :goto_62d

    :cond_4df
    move-object v4, v13

    move/from16 v11, v33

    move/from16 v6, v22

    move-object/from16 v8, v31

    move-object/from16 v12, v32

    goto/16 :goto_62b

    :cond_4ea
    move-object v4, v13

    move/from16 v11, v33

    const-string v2, "_vs"

    .line 138
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54e

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 139
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 140
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    move-object/from16 v12, v32

    invoke-static {v2, v12}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v2

    if-nez v2, :cond_54a

    if-eqz v17, :cond_53f

    .line 141
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v13

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v26

    sub-long v13, v13, v26

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v2, v13, v6

    if-gtz v2, :cond_53f

    .line 142
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzjt;->zzax()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 143
    invoke-direct {v1, v2, v9}, Lcom/google/android/gms/measurement/internal/zzks;->zzaj(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)Z

    move-result v6

    if-eqz v6, :cond_536

    move/from16 v6, v22

    .line 144
    invoke-virtual {v4, v6, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzO(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    move v7, v11

    const/4 v2, 0x0

    const/16 v17, 0x0

    goto :goto_53b

    :cond_536
    move/from16 v6, v22

    move-object v2, v9

    move/from16 v7, v16

    :goto_53b
    move-object/from16 v18, v2

    move v13, v6

    goto :goto_546

    :cond_53f
    move/from16 v6, v22

    move v13, v6

    move-object/from16 v18, v9

    move/from16 v7, v16

    :goto_546
    move-object/from16 v8, v31

    goto/16 :goto_62d

    :cond_54a
    move/from16 v6, v22

    goto/16 :goto_629

    :cond_54e
    move/from16 v6, v22

    move-object/from16 v12, v32

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 146
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdy;->zzaf:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v2

    if-eqz v2, :cond_629

    const-string v2, "_ab"

    .line 147
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_629

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 148
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 149
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v2, v12}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v2

    if-nez v2, :cond_629

    if-eqz v17, :cond_629

    .line 150
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v7

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v13

    sub-long/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v13, 0xfa0

    cmp-long v2, v7, v13

    if-gtz v2, :cond_629

    .line 151
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzjt;->zzax()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 152
    invoke-direct {v1, v2, v9}, Lcom/google/android/gms/measurement/internal/zzks;->zzae(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)V

    .line 153
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 154
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 155
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 156
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfo;

    move-object/from16 v8, v31

    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v7

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 157
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 158
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v14, "_sc"

    invoke-static {v13, v14}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 159
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 160
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v15, "_si"

    invoke-static {v14, v15}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v14

    if-eqz v7, :cond_5e4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object v7

    goto :goto_5e6

    :cond_5e4
    const-string v7, ""

    .line 161
    :goto_5e6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5f4

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 162
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 163
    invoke-static {v9, v8, v7}, Lcom/google/android/gms/measurement/internal/zzku;->zzA(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5f4
    if-eqz v13, :cond_5fb

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object v7

    goto :goto_5fd

    :cond_5fb
    const-string v7, ""

    .line 164
    :goto_5fd
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_60d

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 165
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    const-string v13, "_sc"

    .line 166
    invoke-static {v9, v13, v7}, Lcom/google/android/gms/measurement/internal/zzku;->zzA(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_60d
    if-eqz v14, :cond_621

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 167
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    const-string v7, "_si"

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v13

    .line 168
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v9, v7, v13}, Lcom/google/android/gms/measurement/internal/zzku;->zzA(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    :cond_621
    invoke-virtual {v4, v6, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzO(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    move v13, v6

    move v7, v11

    const/16 v17, 0x0

    goto :goto_62d

    :cond_629
    :goto_629
    move-object/from16 v8, v31

    :goto_62b
    move v13, v6

    move v7, v11

    :goto_62d
    if-nez v29, :cond_689

    .line 170
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_689

    .line 171
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()I

    move-result v2

    if-nez v2, :cond_657

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v6, "Engagement event does not contain any parameters. appId"

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 181
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 182
    invoke-virtual {v2, v6, v10}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_689

    .line 184
    :cond_657
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 172
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 173
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v2, v12}, Lcom/google/android/gms/measurement/internal/zzku;->zzD(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_682

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v6, "Engagement event does not include duration. appId"

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 176
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 177
    invoke-virtual {v2, v6, v10}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_689

    .line 178
    :cond_682
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long v14, v24, v10

    goto :goto_68b

    :cond_689
    :goto_689
    move-wide/from16 v14, v24

    .line 182
    :goto_68b
    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zzc:Ljava/util/List;

    .line 183
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfo;

    move/from16 v10, v28

    invoke-interface {v2, v10, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v16, v16, 0x1

    .line 184
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzj(Lcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    :goto_69d
    add-int/lit8 v12, v10, 0x1

    move-object v6, v4

    move-object v2, v8

    move-object/from16 v3, v23

    move/from16 v8, v29

    move-object/from16 v4, v30

    goto/16 :goto_58

    :cond_6a9
    move-object v4, v6

    move/from16 v29, v8

    move-object v8, v10

    move-object v12, v11

    move-object v10, v3

    if-eqz v29, :cond_708

    move/from16 v3, v16

    move-wide/from16 v14, v24

    const/4 v2, 0x0

    :goto_6b6
    if-ge v2, v3, :cond_70a

    .line 185
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zze(I)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v6

    .line 186
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfo;->zzh()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d9

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 187
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 188
    invoke-static {v6, v8}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v7

    if-eqz v7, :cond_6d9

    .line 194
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzw(I)Lcom/google/android/gms/internal/measurement/zzfx;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_705

    :cond_6d9
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 189
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 190
    invoke-static {v6, v12}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v6

    if-eqz v6, :cond_705

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfs;->zzw()Z

    move-result v7

    if-eqz v7, :cond_6f3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v6

    .line 191
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_6f4

    :cond_6f3
    const/4 v6, 0x0

    :goto_6f4
    if-eqz v6, :cond_705

    .line 192
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v20, 0x0

    cmp-long v7, v16, v20

    if-lez v7, :cond_705

    .line 193
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v14, v6

    :cond_705
    :goto_705
    const/4 v6, 0x1

    add-int/2addr v2, v6

    goto :goto_6b6

    :cond_708
    move-wide/from16 v14, v24

    :cond_70a
    const/4 v2, 0x0

    .line 195
    invoke-direct {v1, v4, v14, v15, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzad(Lcom/google/android/gms/internal/measurement/zzfx;JZ)V

    .line 196
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzao()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_716
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_71a
    .catchall {:try_start_3dd .. :try_end_71a} :catchall_e1f

    const-string v6, "_se"

    if-eqz v3, :cond_73c

    :try_start_71e
    const-string v3, "_s"

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfo;

    .line 197
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfo;->zzh()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_716

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 198
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 199
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzal()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zzB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_73c
    const-string v2, "_sid"

    .line 201
    invoke-static {v4, v2}, Lcom/google/android/gms/measurement/internal/zzku;->zza(Lcom/google/android/gms/internal/measurement/zzfx;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_749

    const/4 v2, 0x1

    .line 202
    invoke-direct {v1, v4, v14, v15, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzad(Lcom/google/android/gms/internal/measurement/zzfx;JZ)V

    goto :goto_769

    .line 203
    :cond_749
    invoke-static {v4, v6}, Lcom/google/android/gms/measurement/internal/zzku;->zza(Lcom/google/android/gms/internal/measurement/zzfx;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_769

    .line 204
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzx(I)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 207
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 208
    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    :cond_769
    :goto_769
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 209
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 210
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v6, "Checking account type status for ad personalization signals"

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 212
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 213
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzfm;->zzk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_800

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 214
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 215
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v3

    if-eqz v3, :cond_800

    .line 216
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzai()Z

    move-result v3

    if-eqz v3, :cond_800

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 217
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    .line 218
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzan;->zze()Z

    move-result v3

    if-eqz v3, :cond_800

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 219
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v6, "Turning off ad personalization due to account type"

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->zzd()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v3

    move-object/from16 v6, v23

    .line 222
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzgg;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 223
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzan;->zza()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/zzgg;->zzg(J)Lcom/google/android/gms/internal/measurement/zzgg;

    const-wide/16 v7, 0x1

    .line 225
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/zzgg;->zze(J)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 226
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgh;

    const/4 v3, 0x0

    .line 227
    :goto_7e2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzb()I

    move-result v7

    if-ge v3, v7, :cond_7fd

    .line 228
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzfx;->zzak(I)Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgh;->zzf()Ljava/lang/String;

    move-result-object v7

    .line 229
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7fa

    .line 231
    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzai(ILcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_800

    :cond_7fa
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e2

    .line 230
    :cond_7fd
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzl(Lcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_800
    :goto_800
    const-wide v2, 0x7fffffffffffffffL

    .line 232
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfx;->zzae(J)Lcom/google/android/gms/internal/measurement/zzfx;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfx;->zzN(J)Lcom/google/android/gms/internal/measurement/zzfx;

    const/4 v2, 0x0

    .line 233
    :goto_80e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zza()I

    move-result v3

    if-ge v2, v3, :cond_841

    .line 234
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zze(I)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzd()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_82b

    .line 236
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzae(J)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 237
    :cond_82b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzc()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_83e

    .line 238
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzN(J)Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_83e
    add-int/lit8 v2, v2, 0x1

    goto :goto_80e

    .line 239
    :cond_841
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzv()Lcom/google/android/gms/internal/measurement/zzfx;

    .line 240
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzn()Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzh:Lcom/google/android/gms/measurement/internal/zzz;

    .line 241
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 242
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzal()Ljava/lang/String;

    move-result-object v7

    .line 243
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzao()Ljava/util/List;

    move-result-object v8

    .line 244
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzap()Ljava/util/List;

    move-result-object v9

    .line 245
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 246
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 247
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 248
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bba

    new-instance v2, Ljava/util/HashMap;

    .line 250
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    .line 251
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzkz;->zzF()Ljava/security/SecureRandom;

    move-result-object v6

    const/4 v7, 0x0

    .line 253
    :goto_892
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zza()I

    move-result v8

    if-ge v7, v8, :cond_b82

    .line 254
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zze(I)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbv()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 255
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_ep"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_8ac
    .catchall {:try_start_71e .. :try_end_8ac} :catchall_e1f

    const-string v10, "_sr"

    if-eqz v9, :cond_931

    :try_start_8b0
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 322
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 323
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v11, "_en"

    invoke-static {v9, v11}, Lcom/google/android/gms/measurement/internal/zzku;->zzD(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 324
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzap;

    if-nez v11, :cond_8e5

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 325
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 326
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 327
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzaj;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v11

    if-eqz v11, :cond_8e5

    .line 328
    invoke-interface {v2, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8e5
    if-eqz v11, :cond_926

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzap;->zzi:Ljava/lang/Long;

    if-nez v9, :cond_926

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzap;->zzj:Ljava/lang/Long;

    if-eqz v9, :cond_903

    .line 329
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v9, v12, v14

    if-lez v9, :cond_903

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 330
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzap;->zzj:Ljava/lang/Long;

    .line 331
    invoke-static {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzA(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_903
    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzap;->zzk:Ljava/lang/Boolean;

    if-eqz v9, :cond_91d

    .line 332
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_91d

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 333
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    const-string v9, "_efs"

    const-wide/16 v10, 0x1

    .line 334
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v8, v9, v12}, Lcom/google/android/gms/measurement/internal/zzku;->zzA(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    :cond_91d
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_926
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzO(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    :goto_929
    move-object/from16 v16, v5

    move-object/from16 p3, v6

    const-wide/16 v5, 0x1

    goto/16 :goto_b7a

    :cond_931
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 256
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 257
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v11

    const-string v12, "measurement.account.time_zone_offset_minutes"

    .line 258
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzfm;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 259
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_946
    .catchall {:try_start_8b0 .. :try_end_946} :catchall_e1f

    if-nez v13, :cond_962

    .line 260
    :try_start_948
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_94c
    .catch Ljava/lang/NumberFormatException; {:try_start_948 .. :try_end_94c} :catch_94d
    .catchall {:try_start_948 .. :try_end_94c} :catchall_e1f

    goto :goto_964

    :catch_94d
    move-exception v0

    move-object v12, v0

    .line 430
    :try_start_94f
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 261
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v9

    .line 262
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v9

    const-string v13, "Unable to parse timezone offset. appId"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 263
    invoke-virtual {v9, v13, v11, v12}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_962
    const-wide/16 v11, 0x0

    .line 264
    :goto_964
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14, v11, v12}, Lcom/google/android/gms/measurement/internal/zzkz;->zzr(JJ)J

    move-result-wide v13

    .line 265
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    move-wide/from16 v17, v11

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "_dbg"

    .line 266
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9ba

    .line 267
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfo;->zzi()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_98e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9ba

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzfs;

    move-object/from16 p3, v9

    .line 268
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9b7

    .line 269
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9b5

    goto :goto_9ba

    :cond_9b5
    const/4 v9, 0x1

    goto :goto_9cd

    :cond_9b7
    move-object/from16 v9, p3

    goto :goto_98e

    :cond_9ba
    :goto_9ba
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 270
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 271
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzfm;->zzc(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    :goto_9cd
    if-gtz v9, :cond_9f2

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v10

    .line 273
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v10

    const-string v11, "Sample rate must be positive. event, rate"

    .line 274
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v11, v12, v9}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzO(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    goto/16 :goto_929

    .line 277
    :cond_9f2
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzap;

    if-nez v11, :cond_a52

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 278
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 279
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v12, v15}, Lcom/google/android/gms/measurement/internal/zzaj;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v11

    if-nez v11, :cond_a52

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v11

    .line 281
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v11

    const-string v12, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v15, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 282
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v23, v13

    .line 283
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v13

    .line 284
    invoke-virtual {v11, v12, v15, v13}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzap;

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 285
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v29

    .line 286
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v30

    const-wide/16 v31, 0x1

    const-wide/16 v33, 0x1

    const-wide/16 v35, 0x1

    .line 287
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v37

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v28, v11

    invoke-direct/range {v28 .. v44}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_a54

    :cond_a52
    move-wide/from16 v23, v13

    :goto_a54
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 288
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 289
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v13, "_eid"

    invoke-static {v12, v13}, Lcom/google/android/gms/measurement/internal/zzku;->zzD(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-eqz v12, :cond_a6b

    const/4 v13, 0x1

    goto :goto_a6c

    :cond_a6b
    const/4 v13, 0x0

    .line 290
    :goto_a6c
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x1

    if-ne v9, v14, :cond_a9f

    .line 291
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_a9a

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzap;->zzi:Ljava/lang/Long;

    if-nez v9, :cond_a8e

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzap;->zzj:Ljava/lang/Long;

    if-nez v9, :cond_a8e

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzap;->zzk:Ljava/lang/Boolean;

    if-eqz v9, :cond_a9a

    :cond_a8e
    const/4 v9, 0x0

    .line 293
    invoke-virtual {v11, v9, v9, v9}, Lcom/google/android/gms/measurement/internal/zzap;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v10

    .line 294
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_a9a
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzO(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    goto/16 :goto_929

    .line 296
    :cond_a9f
    invoke-virtual {v6, v9}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v14

    if-nez v14, :cond_adf

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 297
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    int-to-long v14, v9

    .line 298
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzA(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_ac6

    const/4 v10, 0x0

    .line 301
    invoke-virtual {v11, v10, v9, v10}, Lcom/google/android/gms/measurement/internal/zzap;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v11

    .line 302
    :cond_ac6
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v9

    .line 303
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v12

    move-wide/from16 v14, v23

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzap;->zzb(JJ)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v10

    .line 304
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v5

    move-object/from16 p3, v6

    const-wide/16 v5, 0x1

    goto/16 :goto_b77

    :cond_adf
    move-object/from16 p3, v6

    move-wide/from16 v14, v23

    .line 305
    iget-object v6, v11, Lcom/google/android/gms/measurement/internal/zzap;->zzh:Ljava/lang/Long;

    if-eqz v6, :cond_af8

    .line 306
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v23, v4

    move-object/from16 v25, v11

    move-object/from16 v24, v12

    move-wide/from16 v45, v16

    move-object/from16 v16, v5

    move-wide/from16 v4, v45

    goto :goto_b0e

    .line 307
    :cond_af8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v6

    move-object/from16 v23, v4

    move-object/from16 v16, v5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzb()J

    move-result-wide v4

    move-object/from16 v25, v11

    move-object/from16 v24, v12

    move-wide/from16 v11, v17

    invoke-virtual {v6, v4, v5, v11, v12}, Lcom/google/android/gms/measurement/internal/zzkz;->zzr(JJ)J

    move-result-wide v4

    :goto_b0e
    cmp-long v6, v4, v14

    if-eqz v6, :cond_b5d

    .line 306
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 308
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    const-string v4, "_efs"

    const-wide/16 v5, 0x1

    .line 309
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v4, v11}, Lcom/google/android/gms/measurement/internal/zzku;->zzA(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 310
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    int-to-long v11, v9

    .line 311
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v8, v10, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzA(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_b4b

    const/4 v9, 0x1

    .line 314
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v11, v25

    const/4 v9, 0x0

    invoke-virtual {v11, v9, v4, v10}, Lcom/google/android/gms/measurement/internal/zzap;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v11

    goto :goto_b4d

    :cond_b4b
    move-object/from16 v11, v25

    .line 315
    :goto_b4d
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v9

    invoke-virtual {v11, v9, v10, v14, v15}, Lcom/google/android/gms/measurement/internal/zzap;->zzb(JJ)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v9

    .line 317
    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b75

    :cond_b5d
    move-object/from16 v11, v25

    const-wide/16 v5, 0x1

    .line 318
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b75

    .line 319
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v12, v24

    const/4 v9, 0x0

    invoke-virtual {v11, v12, v9, v9}, Lcom/google/android/gms/measurement/internal/zzap;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v10

    .line 320
    invoke-interface {v2, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b75
    :goto_b75
    move-object/from16 v4, v23

    .line 321
    :goto_b77
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzO(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    :goto_b7a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, p3

    move-object/from16 v5, v16

    goto/16 :goto_892

    :cond_b82
    move-object/from16 v16, v5

    .line 337
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zza()I

    move-result v6

    if-ge v5, v6, :cond_b94

    .line 338
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzp()Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzfx;->zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 339
    :cond_b94
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b9c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bb7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 340
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 341
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzF(Lcom/google/android/gms/measurement/internal/zzap;)V

    goto :goto_b9c

    :cond_bb7
    move-object/from16 v2, v16

    goto :goto_bbb

    :cond_bba
    move-object v2, v5

    :goto_bbb
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 342
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 343
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 344
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v5

    if-nez v5, :cond_be4

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v5

    .line 346
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v5

    const-string v6, "Bundling raw events w/o app info. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 347
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 348
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c40

    .line 349
    :cond_be4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zza()I

    move-result v6

    if-lez v6, :cond_c40

    .line 350
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_bf8

    .line 351
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzY(J)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_bfb

    .line 352
    :cond_bf8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzs()Lcom/google/android/gms/internal/measurement/zzfx;

    .line 353
    :goto_bfb
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_c06

    goto :goto_c07

    :cond_c06
    move-wide v6, v8

    :goto_c07
    cmp-long v8, v6, v10

    if-eqz v8, :cond_c0f

    .line 354
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzZ(J)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_c12

    .line 355
    :cond_c0f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzt()Lcom/google/android/gms/internal/measurement/zzfx;

    .line 356
    :goto_c12
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzE()V

    .line 357
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzF(I)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 358
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzd()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzad(J)V

    .line 359
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzc()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzab(J)V

    .line 360
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzs()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c35

    .line 361
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzT(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_c38

    .line 362
    :cond_c35
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzq()Lcom/google/android/gms/internal/measurement/zzfx;

    .line 361
    :goto_c38
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 363
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 364
    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzaj;->zzE(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 365
    :cond_c40
    :goto_c40
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zza()I

    move-result v5

    if-lez v5, :cond_dc4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 366
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzaw()Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 367
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 368
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfm;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v5

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_c6d

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zzq()Z

    move-result v8

    if-nez v8, :cond_c65

    goto :goto_c6d

    .line 374
    :cond_c65
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zzc()J

    move-result-wide v8

    .line 375
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzH(J)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_c94

    .line 368
    :cond_c6d
    :goto_c6d
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 369
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy;->zzH()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c7d

    .line 370
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzH(J)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_c94

    .line 371
    :cond_c7d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v5

    .line 372
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v5

    const-string v8, "Did not find measurement config or missing version info. appId"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    .line 373
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 374
    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    :goto_c94
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 376
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 377
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfy;

    .line 378
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 379
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    .line 380
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbc()Z

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 383
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaj;->zzA()V

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 384
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v8

    .line 385
    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    .line 386
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzm()J

    move-result-wide v10

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 387
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 386
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zzA()J

    move-result-wide v12

    sub-long v12, v8, v12

    cmp-long v14, v10, v12

    if-ltz v14, :cond_ce8

    .line 388
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzm()J

    move-result-wide v10

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 389
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 388
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zzA()J

    move-result-wide v12

    add-long/2addr v12, v8

    cmp-long v14, v10, v12

    if-lez v14, :cond_d0b

    :cond_ce8
    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 390
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v10

    .line 391
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v10

    const-string v11, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    .line 392
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 393
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 394
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzm()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 395
    invoke-virtual {v10, v11, v12, v8, v9}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 396
    :cond_d0b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzih;->zzbs()[B

    move-result-object v8
    :try_end_d0f
    .catchall {:try_start_94f .. :try_end_d0f} :catchall_e1f

    :try_start_d0f
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 397
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 398
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzku;->zzz([B)[B

    move-result-object v8
    :try_end_d1a
    .catch Ljava/io/IOException; {:try_start_d0f .. :try_end_d1a} :catch_dab
    .catchall {:try_start_d0f .. :try_end_d1a} :catchall_e1f

    :try_start_d1a
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 403
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v9

    .line 404
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v9

    const-string v10, "Saving bundle, size"

    array-length v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v9, Landroid/content/ContentValues;

    .line 405
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "app_id"

    .line 406
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "bundle_end_timestamp"

    .line 407
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzm()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "data"

    .line 408
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v8, "has_realtime"

    .line 409
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbi()Z

    move-result v8

    if-eqz v8, :cond_d6a

    const-string v8, "retry_count"

    .line 411
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zze()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_d6a
    .catchall {:try_start_d1a .. :try_end_d6a} :catchall_e1f

    .line 412
    :cond_d6a
    :try_start_d6a
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v10, "queue"

    const/4 v11, 0x0

    .line 413
    invoke-virtual {v8, v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-nez v10, :cond_dc4

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 414
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v6

    .line 415
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v6

    const-string v7, "Failed to insert bundle (got -1). appId"

    .line 416
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d90
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d6a .. :try_end_d90} :catch_d91
    .catchall {:try_start_d6a .. :try_end_d90} :catchall_e1f

    goto :goto_dc4

    :catch_d91
    move-exception v0

    move-object v6, v0

    .line 402
    :try_start_d93
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 417
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v5

    .line 418
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v5

    const-string v7, "Error storing bundle. appId"

    .line 419
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v7, v4, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_dc4

    :catch_dab
    move-exception v0

    move-object v6, v0

    .line 263
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 399
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v5

    .line 400
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v5

    const-string v7, "Data loss. Failed to serialize bundle. appId"

    .line 401
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 402
    invoke-virtual {v5, v7, v4, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 416
    :cond_dc4
    :goto_dc4
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 420
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkr;->zzb:Ljava/util/List;

    .line 421
    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzx(Ljava/util/List;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 422
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 423
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_dd7
    .catchall {:try_start_d93 .. :try_end_dd7} :catchall_e1f

    const/4 v5, 0x2

    :try_start_dd8
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v6, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    .line 424
    invoke-virtual {v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_de5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_dd8 .. :try_end_de5} :catch_de6
    .catchall {:try_start_dd8 .. :try_end_de5} :catchall_e1f

    goto :goto_dfb

    :catch_de6
    move-exception v0

    move-object v4, v0

    .line 419
    :try_start_de8
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 425
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v5, "Failed to remove unused event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 427
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    :goto_dfb
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 428
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 429
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V
    :try_end_e03
    .catchall {:try_start_de8 .. :try_end_e03} :catchall_e1f

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    const/4 v2, 0x1

    return v2

    .line 5
    :cond_e0d
    :goto_e0d
    :try_start_e0d
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V
    :try_end_e15
    .catchall {:try_start_e0d .. :try_end_e15} :catchall_e1f

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    const/4 v2, 0x0

    return v2

    :catchall_e1f
    move-exception v0

    move-object v2, v0

    .line 208
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 8
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    .line 430
    throw v2
.end method

.method private final zzai()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzH()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    return v0

    :cond_27
    :goto_27
    const/4 v0, 0x1

    return v0
.end method

.method private final zzaj(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    move-object v0, v1

    goto :goto_27

    .line 8
    :cond_23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_27
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v2

    if-nez v2, :cond_3b

    goto :goto_3f

    .line 8
    :cond_3b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object v1

    :goto_3f
    if-eqz v1, :cond_4c

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzae(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)V

    const/4 p1, 0x1

    return p1

    :cond_4c
    const/4 p1, 0x0

    return p1
.end method

.method private static final zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;
    .registers 3

    if-eqz p0, :cond_28

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzaa()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/measurement/internal/zzks;)Lcom/google/android/gms/measurement/internal/zzfv;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    return-object p0
.end method

.method public static zzt(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzks;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzks;->zzb:Lcom/google/android/gms/measurement/internal/zzks;

    if-nez v0, :cond_2d

    const-class v0, Lcom/google/android/gms/measurement/internal/zzks;

    monitor-enter v0

    :try_start_11
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzks;->zzb:Lcom/google/android/gms/measurement/internal/zzks;

    if-nez v1, :cond_28

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkt;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzkt;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzkt;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzks;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Lcom/google/android/gms/measurement/internal/zzkt;Lcom/google/android/gms/measurement/internal/zzfv;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzks;->zzb:Lcom/google/android/gms/measurement/internal/zzks;

    .line 6
    :cond_28
    monitor-exit v0

    goto :goto_2d

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_2a

    throw p0

    :cond_2d
    :goto_2d
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzks;->zzb:Lcom/google/android/gms/measurement/internal/zzks;

    return-object p0
.end method

.method static bridge synthetic zzy(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzkt;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfd;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfd;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzm:Lcom/google/android/gms/measurement/internal/zzfd;

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzki;->zzZ()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzae;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzq(Lcom/google/android/gms/measurement/internal/zzae;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzjp;

    .line 5
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzjp;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzki;->zzZ()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzz;

    .line 7
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzki;->zzZ()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzh:Lcom/google/android/gms/measurement/internal/zzz;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzif;

    .line 9
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzif;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzki;->zzZ()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzj:Lcom/google/android/gms/measurement/internal/zzif;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkg;

    .line 11
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzki;->zzZ()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzg:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 13
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzet;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzet;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzet;

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzr:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzs:I

    if-eq p1, v0, :cond_75

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzr:I

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzs:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    .line 18
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzo:Z

    return-void
.end method


# virtual methods
.method final zzA()V
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzp:Z

    if-nez v0, :cond_13d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzp:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzX()Z

    move-result v1

    if-eqz v1, :cond_13d

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzx:Ljava/nio/channels/FileChannel;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    const-string v2, "Bad channel to read from"

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v1, :cond_68

    .line 5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_2f

    goto :goto_68

    .line 7
    :cond_2f
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 8
    :try_start_33
    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 9
    invoke-virtual {v1, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v5, :cond_51

    const/4 v7, -0x1

    if-eq v1, v7, :cond_73

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v7

    const-string v8, "Unexpected data length. Bytes read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_73

    .line 11
    :cond_51
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_58} :catch_59

    goto :goto_73

    :catch_59
    move-exception v1

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v7

    const-string v8, "Failed to read from channel"

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_73

    .line 6
    :cond_68
    :goto_68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    :cond_73
    :goto_73
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzec;->zzi()I

    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    if-le v6, v1, :cond_9c

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 20
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_9c
    if-ge v6, v1, :cond_13d

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzx:Ljava/nio/channels/FileChannel;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    if-eqz v7, :cond_11d

    .line 22
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_b0

    goto :goto_11d

    .line 24
    :cond_b0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 25
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 27
    :try_start_ba
    invoke-virtual {v7, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdy;->zzak:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v5

    if-eqz v5, :cond_d3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-gt v5, v8, :cond_d3

    .line 29
    invoke-virtual {v7, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 30
    :cond_d3
    invoke-virtual {v7, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 31
    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 32
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_f8

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_f8} :catch_10e

    .line 40
    :cond_f8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    .line 42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_10e
    move-exception v0

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_128

    .line 23
    :cond_11d
    :goto_11d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    .line 35
    :goto_128
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    .line 37
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 39
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13d
    return-void
.end method

.method final zzB()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzo:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzC(Lcom/google/android/gms/measurement/internal/zzg;)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzom;->zzc()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdy;->zzac:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_77

    .line 51
    :cond_39
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzH(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 3
    :cond_4e
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzH(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 8
    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzl:Lcom/google/android/gms/measurement/internal/zzkj;

    new-instance v1, Landroid/net/Uri$Builder;

    .line 9
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzom;->zzc()Z

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzdy;->zzac:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzy()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Ljava/lang/String;

    move-result-object v2

    goto :goto_b0

    .line 14
    :cond_ac
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Ljava/lang/String;

    move-result-object v2

    .line 17
    :cond_b0
    :goto_b0
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdy;->zzd:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v4, 0x0

    .line 18
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdy;->zze:Lcom/google/android/gms/measurement/internal/zzdx;

    .line 19
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "config/app/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_da

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_df

    .line 46
    :cond_da
    new-instance v2, Ljava/lang/String;

    .line 19
    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 20
    :goto_df
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()Ljava/lang/String;

    move-result-object v3

    const-string v5, "app_instance_id"

    invoke-virtual {v2, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v5, "android"

    .line 22
    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()J

    const-wide/32 v5, 0xb3b0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v5, "gmp_version"

    invoke-virtual {v2, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpe;->zzc()Z

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdy;->zzat:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v0

    if-eqz v0, :cond_126

    const-string v0, "runtime_version"

    const-string v2, "0"

    .line 27
    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 28
    :cond_126
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    :try_start_12e
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 30
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 33
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzfm;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 34
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 35
    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzfm;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_16f

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16f

    .line 37
    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v1, "If-Modified-Since"

    .line 38
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16f
    move-object v10, v4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzt:Z

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzd:Lcom/google/android/gms/measurement/internal/zzer;

    .line 39
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzkm;

    invoke-direct {v11, p0}, Lcom/google/android/gms/measurement/internal/zzkm;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    .line 40
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 41
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    .line 42
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzeq;

    const/4 v9, 0x0

    move-object v5, v2

    .line 45
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzeq;-><init>(Lcom/google/android/gms/measurement/internal/zzer;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzen;)V

    .line 46
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfs;->zzo(Ljava/lang/Runnable;)V
    :try_end_199
    .catch Ljava/net/MalformedURLException; {:try_start_12e .. :try_end_199} :catch_19a

    return-void

    .line 47
    :catch_19a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 50
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zzD(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    .line 5
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    move-object/from16 v3, p1

    .line 6
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzat;->zzd:J

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zzc()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdy;->zzaA:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_41

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb(Lcom/google/android/gms/measurement/internal/zzat;)Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzem;->zzd:Landroid/os/Bundle;

    .line 10
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzkz;->zzJ(Lcom/google/android/gms/measurement/internal/zzih;Landroid/os/Bundle;Z)V

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zza()Lcom/google/android/gms/measurement/internal/zzat;

    move-result-object v3

    :cond_41
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 12
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 13
    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/zzku;->zzB(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v4

    if-nez v4, :cond_4d

    return-void

    .line 14
    :cond_4d
    iget-boolean v4, v0, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v4, :cond_55

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzd(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 16
    :cond_55
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzp;->zzt:Ljava/util/List;

    if-eqz v4, :cond_94

    .line 17
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 18
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzat;->zzb:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzar;->zzc()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v6, 0x1

    const-string v8, "ga_safelisted"

    .line 19
    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzat;

    .line 20
    iget-object v13, v3, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v14, v4}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Landroid/os/Bundle;)V

    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzat;->zzc:Ljava/lang/String;

    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/zzat;->zzd:J

    move-object v12, v6

    move-wide/from16 v16, v3

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;J)V

    goto :goto_95

    .line 113
    :cond_82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzat;->zzc:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 115
    invoke-virtual {v0, v5, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_94
    move-object v12, v3

    .line 20
    :goto_95
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 21
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzw()V

    :try_start_9d
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 23
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 24
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    const-wide/16 v6, 0x0

    const/4 v4, 0x2

    const/4 v13, 0x1

    cmp-long v8, v10, v6

    if-gez v8, :cond_cf

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v6, "Invalid time querying timed out conditional properties"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 29
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 30
    invoke-virtual {v3, v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_df

    :cond_cf
    new-array v6, v4, [Ljava/lang/String;

    aput-object v2, v6, v5

    .line 32
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    const-string v7, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 33
    invoke-virtual {v3, v7, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zzt(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 34
    :goto_df
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e3
    :goto_e3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzab;

    if-eqz v6, :cond_e3

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v7

    .line 36
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v7

    const-string v9, "User property timed out"

    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 37
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v15

    iget-object v13, v6, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 38
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v15, v13}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 39
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkv;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 40
    invoke-virtual {v7, v9, v14, v13, v15}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzab;->zzg:Lcom/google/android/gms/measurement/internal/zzat;

    if-eqz v7, :cond_120

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzat;

    .line 41
    invoke-direct {v9, v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Lcom/google/android/gms/measurement/internal/zzat;J)V

    invoke-virtual {v1, v9, v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzW(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_120
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 42
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 43
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    goto :goto_e3

    :cond_12e
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 44
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 45
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    if-gez v8, :cond_15a

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v6, "Invalid time querying expired conditional properties"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 50
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 51
    invoke-virtual {v3, v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_16b

    :cond_15a
    new-array v6, v4, [Ljava/lang/String;

    aput-object v2, v6, v5

    .line 53
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string v7, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 54
    invoke-virtual {v3, v7, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zzt(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 52
    :goto_16b
    new-instance v6, Ljava/util/ArrayList;

    .line 55
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_178
    :goto_178
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1ca

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzab;

    if-eqz v7, :cond_178

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v9

    .line 58
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v9

    const-string v13, "User property expired"

    iget-object v14, v7, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 59
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v15

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 60
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v15, v4}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 61
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkv;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 62
    invoke-virtual {v9, v13, v14, v4, v15}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 63
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 64
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v2, v9}, Lcom/google/android/gms/measurement/internal/zzaj;->zzB(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/zzab;->zzk:Lcom/google/android/gms/measurement/internal/zzat;

    if-eqz v4, :cond_1bc

    .line 65
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1bc
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 66
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 67
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v2, v7}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    goto :goto_178

    .line 68
    :cond_1ca
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1ce
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzat;

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzat;

    .line 69
    invoke-direct {v6, v4, v10, v11}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Lcom/google/android/gms/measurement/internal/zzat;J)V

    invoke-virtual {v1, v6, v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzW(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_1ce

    :cond_1e3
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 70
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 71
    iget-object v4, v12, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    .line 72
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 75
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    if-gez v8, :cond_21e

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 76
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v5

    .line 77
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v5

    const-string v6, "Invalid time querying triggered conditional properties"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 78
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    .line 79
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 81
    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_233

    :cond_21e
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v5

    const/4 v2, 0x1

    aput-object v4, v6, v2

    .line 83
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v6, v4

    const-string v2, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 84
    invoke-virtual {v3, v2, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zzt(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 82
    :goto_233
    new-instance v13, Ljava/util/ArrayList;

    .line 85
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_240
    :goto_240
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzab;

    if-eqz v14, :cond_240

    iget-object v3, v14, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzkx;

    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    .line 87
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzab;->zzb:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    .line 88
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkv;->zza()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v3, v15

    move-wide v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 89
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 90
    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzaj;->zzN(Lcom/google/android/gms/measurement/internal/zzkx;)Z

    move-result v3

    if-eqz v3, :cond_295

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v4, "User property triggered"

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 93
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v6

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzkx;->zzc:Ljava/lang/String;

    .line 94
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    .line 95
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2b6

    .line 96
    :cond_295
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v4, "Too many active user properties, ignoring"

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 98
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v6

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzkx;->zzc:Ljava/lang/String;

    .line 99
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    .line 100
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    :goto_2b6
    iget-object v3, v14, Lcom/google/android/gms/measurement/internal/zzab;->zzi:Lcom/google/android/gms/measurement/internal/zzat;

    if-eqz v3, :cond_2bd

    .line 101
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2bd
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkv;

    .line 102
    invoke-direct {v3, v15}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Lcom/google/android/gms/measurement/internal/zzkx;)V

    iput-object v3, v14, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    const/4 v3, 0x1

    iput-boolean v3, v14, Lcom/google/android/gms/measurement/internal/zzab;->zze:Z

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 103
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 104
    invoke-virtual {v4, v14}, Lcom/google/android/gms/measurement/internal/zzaj;->zzM(Lcom/google/android/gms/measurement/internal/zzab;)Z

    goto/16 :goto_240

    .line 105
    :cond_2d1
    invoke-virtual {v1, v12, v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzW(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 106
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2ed

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzat;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzat;

    .line 107
    invoke-direct {v4, v3, v10, v11}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Lcom/google/android/gms/measurement/internal/zzat;J)V

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzW(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_2d8

    :cond_2ed
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 108
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V
    :try_end_2f5
    .catchall {:try_start_9d .. :try_end_2f5} :catchall_2fe

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 110
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    return-void

    :catchall_2fe
    move-exception v0

    .line 115
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 110
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    .line 112
    throw v0
.end method

.method final zzE(Lcom/google/android/gms/measurement/internal/zzat;Ljava/lang/String;)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v2

    if-eqz v2, :cond_da

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    goto/16 :goto_da

    .line 5
    :cond_1d
    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzab(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_3f

    .line 6
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    const-string v5, "_ui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_57

    .line 8
    :cond_3f
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_57

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 30
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_57
    :goto_57
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzp;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()J

    move-result-wide v6

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v9

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()J

    move-result-wide v11

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj()Z

    move-result v16

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v17

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zza()J

    move-result-wide v24

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzai()Z

    move-result v22

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Ljava/lang/String;

    move-result-object v26

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()Ljava/lang/Boolean;

    move-result-object v27

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzk()J

    move-result-wide v28

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzC()Ljava/util/List;

    move-result-object v31

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzom;->zzc()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v13

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v15

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdy;->zzac:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v13, v15, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzy()Ljava/lang/String;

    move-result-object v1

    goto :goto_aa

    :cond_a9
    const/4 v1, 0x0

    :goto_aa
    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    .line 26
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzi()Ljava/lang/String;

    move-result-object v30

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v32, v14

    move/from16 v14, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v24

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-wide/from16 v26, v28

    move-object/from16 v28, v31

    move-object/from16 v29, v1

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzF(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 4
    :cond_da
    :goto_da
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzF(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 11

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb(Lcom/google/android/gms/measurement/internal/zzat;)Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzem;->zzd:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 5
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzi(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkz;->zzK(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd(Ljava/lang/String;)I

    move-result v1

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzkz;->zzL(Lcom/google/android/gms/measurement/internal/zzem;I)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zza()Lcom/google/android/gms/measurement/internal/zzat;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    const-string v1, "_cmp"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_6a

    .line 18
    :cond_3d
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzat;->zzb:Lcom/google/android/gms/measurement/internal/zzar;

    const-string v1, "_cis"

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referrer API v2"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzat;->zzb:Lcom/google/android/gms/measurement/internal/zzar;

    const-string v1, "gclid"

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 16
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkv;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzat;->zzd:J

    const-string v3, "_lgclid"

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzU(Lcom/google/android/gms/measurement/internal/zzkv;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 18
    :cond_6a
    :goto_6a
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzD(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method

.method final zzG()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzs:I

    return-void
.end method

.method final zzH(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_12

    :try_start_10
    new-array p4, v0, [B

    .line 4
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "onConfigFetched. Response size"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzw()V
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_176

    :try_start_2c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/16 v3, 0xc8

    const/16 v4, 0x130

    if-eq p2, v3, :cond_43

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_43

    if-ne p2, v4, :cond_47

    const/16 p2, 0x130

    :cond_43
    if-nez p3, :cond_47

    const/4 v3, 0x1

    goto :goto_48

    :cond_47
    const/4 v3, 0x0

    :goto_48
    if-nez v1, :cond_5d

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_15e

    :cond_5d
    const/16 v5, 0x194

    if-nez v3, :cond_bb

    if-ne p2, v5, :cond_64

    goto :goto_bb

    .line 38
    :cond_64
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzg;->zzV(J)V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 39
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 40
    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzE(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 42
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 43
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzfm;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 44
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjp;->zzd:Lcom/google/android/gms/measurement/internal/zzew;

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzew;->zzb(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_a7

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_b6

    :cond_a7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 46
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjp;->zzb:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzew;->zzb(J)V

    .line 47
    :cond_b6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaf()V

    goto/16 :goto_15e

    :cond_bb
    :goto_bb
    const/4 p3, 0x0

    if-eqz p5, :cond_c7

    const-string v3, "Last-Modified"

    .line 12
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_c8

    :cond_c7
    move-object p5, p3

    :goto_c8
    if-eqz p5, :cond_d7

    .line 13
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d7

    .line 14
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_d8

    :cond_d7
    move-object p5, p3

    :goto_d8
    if-eq p2, v5, :cond_f6

    if-ne p2, v4, :cond_dd

    goto :goto_f6

    .line 33
    :cond_dd
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 22
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 23
    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzfm;->zzq(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_e6
    .catchall {:try_start_2c .. :try_end_e6} :catchall_16c

    if-nez p3, :cond_112

    :try_start_e8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 20
    :goto_ed
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V
    :try_end_f0
    .catchall {:try_start_e8 .. :try_end_f0} :catchall_176

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzt:Z

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzac()V

    return-void

    .line 14
    :cond_f6
    :goto_f6
    :try_start_f6
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 15
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 16
    invoke-virtual {p4, p1}, Lcom/google/android/gms/measurement/internal/zzfm;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object p4

    if-nez p4, :cond_112

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 17
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 18
    invoke-virtual {p4, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzfm;->zzq(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_10a
    .catchall {:try_start_f6 .. :try_end_10a} :catchall_16c

    if-nez p3, :cond_112

    :try_start_10c
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;
    :try_end_111
    .catchall {:try_start_10c .. :try_end_111} :catchall_176

    goto :goto_ed

    .line 24
    :cond_112
    :try_start_112
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzg;->zzM(J)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 25
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 26
    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzE(Lcom/google/android/gms/measurement/internal/zzg;)V

    if-ne p2, v5, :cond_135

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p2

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzel;->zzl()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 29
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_146

    .line 30
    :cond_135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 33
    invoke-virtual {p1, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    :goto_146
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzd:Lcom/google/android/gms/measurement/internal/zzer;

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zza()Z

    move-result p1

    if-eqz p1, :cond_15b

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzai()Z

    move-result p1

    if-eqz p1, :cond_15b

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzV()V

    goto :goto_15e

    .line 36
    :cond_15b
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaf()V

    .line 11
    :goto_15e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V
    :try_end_166
    .catchall {:try_start_112 .. :try_end_166} :catchall_16c

    :try_start_166
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    goto :goto_ed

    :catchall_16c
    move-exception p1

    .line 51
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    .line 50
    throw p1
    :try_end_176
    .catchall {:try_start_166 .. :try_end_176} :catchall_176

    :catchall_176
    move-exception p1

    .line 47
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzt:Z

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzac()V

    .line 51
    throw p1
.end method

.method final zzI(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaf()V

    return-void
.end method

.method final zzJ(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    const/4 p4, 0x0

    if-nez p3, :cond_f

    :try_start_d
    new-array p3, p4, [B

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzy:Ljava/util/List;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzy:Ljava/util/List;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_16b

    const/16 v2, 0xc8

    const/16 v3, 0xcc

    if-eq p1, v2, :cond_24

    if-ne p1, v3, :cond_123

    const/16 p1, 0xcc

    :cond_24
    if-nez p2, :cond_123

    :try_start_26
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 4
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzjp;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzb(J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzjp;->zzd:Lcom/google/android/gms/measurement/internal/zzew;

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzb(J)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaf()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p2

    const-string v4, "Successful upload. Got network response. code, size"

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzw()V
    :try_end_5f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_5f} :catch_f7
    .catchall {:try_start_26 .. :try_end_5f} :catchall_16b

    .line 12
    :try_start_5f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_bc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_ed

    :try_start_6f
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 13
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    .line 17
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    .line 18
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, p4
    :try_end_8b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6f .. :try_end_8b} :catch_af
    .catchall {:try_start_6f .. :try_end_8b} :catchall_ed

    :try_start_8b
    const-string v4, "queue"

    const-string v5, "rowid=?"

    .line 19
    invoke-virtual {v0, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_96

    goto :goto_63

    .line 20
    :cond_96
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v4, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8b .. :try_end_9e} :catch_9e
    .catchall {:try_start_8b .. :try_end_9e} :catchall_ed

    :catch_9e
    move-exception v0

    .line 33
    :try_start_9f
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 21
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p3

    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p3

    const-string v4, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    throw v0
    :try_end_af
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9f .. :try_end_af} :catch_af
    .catchall {:try_start_9f .. :try_end_af} :catchall_ed

    :catch_af
    move-exception p3

    .line 34
    :try_start_b0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzz:Ljava/util/List;

    if-eqz v0, :cond_bb

    .line 24
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_bb

    goto :goto_63

    .line 33
    :cond_bb
    throw p3

    .line 20
    :cond_bc
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V
    :try_end_c4
    .catchall {:try_start_b0 .. :try_end_c4} :catchall_ed

    :try_start_c4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzz:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzd:Lcom/google/android/gms/measurement/internal/zzer;

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zza()Z

    move-result p1

    if-eqz p1, :cond_e3

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzai()Z

    move-result p1

    if-eqz p1, :cond_e3

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzV()V

    goto :goto_ea

    :cond_e3
    const-wide/16 p1, -0x1

    .line 46
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzA:J

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaf()V

    .line 32
    :goto_ea
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zza:J

    goto :goto_165

    :catchall_ed
    move-exception p1

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    .line 34
    throw p1
    :try_end_f7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c4 .. :try_end_f7} :catch_f7
    .catchall {:try_start_c4 .. :try_end_f7} :catchall_16b

    :catch_f7
    move-exception p1

    .line 35
    :try_start_f8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zza:J

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_165

    .line 38
    :cond_123
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p3

    .line 39
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 41
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzjp;->zzd:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzb(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_14b

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_15a

    :cond_14b
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 42
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjp;->zzb:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzew;->zzb(J)V

    :cond_15a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzz(Ljava/util/List;)V

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaf()V
    :try_end_165
    .catchall {:try_start_f8 .. :try_end_165} :catchall_16b

    .line 32
    :goto_165
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzu:Z

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzac()V

    return-void

    :catchall_16b
    move-exception p1

    .line 45
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzu:Z

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzac()V

    .line 47
    throw p1
.end method

.method final zzK(Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "com.android.vending"

    const-string v6, "_pfo"

    const-string v7, "_uwa"

    const-string v0, "app_id=?"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzag(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v8

    if-eqz v8, :cond_5ae

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 6
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 7
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzaj;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_5e

    .line 8
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5e

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    .line 9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5e

    .line 10
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzM(J)V

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 11
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 12
    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/zzaj;->zzE(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 13
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 14
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzfm;->zzj(Ljava/lang/String;)V

    .line 15
    :cond_5e
    iget-boolean v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v8, :cond_66

    .line 16
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzd(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 17
    :cond_66
    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzm:J

    cmp-long v8, v11, v9

    if-nez v8, :cond_74

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v11

    :cond_74
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 19
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v8

    .line 20
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzan;->zzd()V

    .line 21
    iget v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzn:I

    const/4 v15, 0x1

    if-eqz v8, :cond_9c

    if-eq v8, v15, :cond_9c

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v13

    .line 23
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Incorrect app type, assuming installed app. appId, appType"

    .line 25
    invoke-virtual {v13, v9, v14, v8}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    :cond_9c
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 26
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 27
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaj;->zzw()V

    :try_start_a4
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 28
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 29
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v13, "_npa"

    .line 30
    invoke-virtual {v9, v10, v13}, Lcom/google/android/gms/measurement/internal/zzaj;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v9

    if-eqz v9, :cond_c4

    const-string v10, "auto"

    iget-object v13, v9, Lcom/google/android/gms/measurement/internal/zzkx;->zzb:Ljava/lang/String;

    .line 31
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_be

    goto :goto_c4

    :cond_be
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/4 v4, 0x1

    goto :goto_118

    .line 32
    :cond_c4
    :goto_c4
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    if-eqz v10, :cond_101

    .line 33
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzkv;

    const-string v19, "_npa"

    .line 34
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eq v15, v10, :cond_d5

    const-wide/16 v20, 0x0

    goto :goto_d7

    :cond_d5
    const-wide/16 v20, 0x1

    :goto_d7
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v20, "auto"

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const-wide/16 v3, 0x1

    move-object v13, v14

    move-object v3, v14

    const/4 v4, 0x0

    move-object/from16 v14, v19

    const/4 v4, 0x1

    move-wide v15, v11

    move-object/from16 v17, v10

    move-object/from16 v18, v20

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_fd

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzkv;->zzd:Ljava/lang/Long;

    .line 35
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_118

    .line 36
    :cond_fd
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzU(Lcom/google/android/gms/measurement/internal/zzkv;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_118

    :cond_101
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/4 v4, 0x1

    if-eqz v9, :cond_118

    .line 37
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkv;

    const-string v14, "_npa"

    const/16 v17, 0x0

    const-string v18, "auto"

    move-object v13, v3

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzO(Lcom/google/android/gms/measurement/internal/zzkv;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 36
    :cond_118
    :goto_118
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 39
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 40
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/zzaj;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v3

    if-eqz v3, :cond_1e1

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v10

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Ljava/lang/String;

    move-result-object v9

    .line 44
    invoke-virtual {v10, v13, v14, v15, v9}, Lcom/google/android/gms/measurement/internal/zzkz;->zzam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e1

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v9

    .line 46
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v9

    const-string v10, "New GMP App Id passed in. Removing cached database data. appId"

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 48
    invoke-virtual {v9, v10, v13}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 49
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    .line 52
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 53
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_168
    .catchall {:try_start_a4 .. :try_end_168} :catchall_5a4

    .line 54
    :try_start_168
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-array v13, v4, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const-string v14, "events"

    .line 55
    invoke-virtual {v10, v14, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    const-string v15, "user_attributes"

    .line 56
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "conditional_properties"

    .line 57
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "apps"

    .line 58
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events"

    .line 59
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events_metadata"

    .line 60
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "event_filters"

    .line 61
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "property_filters"

    .line 62
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "audience_filter_values"

    .line 63
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "consent_settings"

    .line 64
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v14, v0

    if-lez v14, :cond_1e0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v10, "Deleted application data. app, records"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v10, v3, v13}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1cb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_168 .. :try_end_1cb} :catch_1cc
    .catchall {:try_start_168 .. :try_end_1cb} :catchall_5a4

    goto :goto_1e0

    :catch_1cc
    move-exception v0

    .line 205
    :try_start_1cd
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 67
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v9

    .line 68
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v9

    const-string v10, "Error deleting application data. appId, error"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 69
    invoke-virtual {v9, v10, v3, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e0
    :goto_1e0
    const/4 v3, 0x0

    :cond_1e1
    if-eqz v3, :cond_23a

    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()J

    move-result-wide v9

    const-wide/32 v13, -0x80000000

    cmp-long v0, v9, v13

    if-eqz v0, :cond_1fc

    .line 71
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()J

    move-result-wide v9

    move-object/from16 v23, v5

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    cmp-long v0, v9, v4

    if-eqz v0, :cond_1fe

    const/4 v15, 0x1

    goto :goto_1ff

    :cond_1fc
    move-object/from16 v23, v5

    :cond_1fe
    const/4 v15, 0x0

    .line 72
    :goto_1ff
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()J

    move-result-wide v3

    cmp-long v5, v3, v13

    if-nez v5, :cond_217

    if-eqz v0, :cond_217

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_217

    const/4 v3, 0x1

    goto :goto_218

    :cond_217
    const/4 v3, 0x0

    :goto_218
    or-int/2addr v3, v15

    if-eqz v3, :cond_23c

    new-instance v3, Landroid/os/Bundle;

    .line 75
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_pv"

    .line 76
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzat;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v15, v3}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_au"

    const-string v16, "auto"

    move-object v13, v0

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;J)V

    .line 78
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzD(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_23c

    :cond_23a
    move-object/from16 v23, v5

    .line 79
    :cond_23c
    :goto_23c
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzd(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    if-nez v8, :cond_250

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 80
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 81
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v4, "_f"

    .line 82
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzaj;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    const/4 v15, 0x0

    goto :goto_25e

    .line 200
    :cond_250
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 84
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v4, "_v"

    .line 85
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzaj;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    const/4 v15, 0x1

    :goto_25e
    if-nez v0, :cond_576

    const-wide/32 v3, 0x36ee80

    .line 82
    div-long v8, v11, v3
    :try_end_265
    .catchall {:try_start_1cd .. :try_end_265} :catchall_5a4

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    mul-long v8, v8, v3

    const-string v3, "_dac"

    const-string v4, "_r"

    const-string v5, "_c"

    const-string v10, "_et"

    if-nez v15, :cond_4f9

    .line 99
    :try_start_274
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkv;

    const-string v14, "_fot"

    .line 100
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzU(Lcom/google/android/gms/measurement/internal/zzkv;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzm:Lcom/google/android/gms/measurement/internal/zzfd;

    .line 103
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzfd;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    if-eqz v0, :cond_393

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2a2

    goto/16 :goto_393

    .line 173
    :cond_2a2
    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 108
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v9

    .line 109
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 110
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfd;->zza()Z

    move-result v9

    if-nez v9, :cond_2c2

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzi()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v8, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    goto/16 :goto_3a2

    :cond_2c2
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-direct {v9, v8, v0}, Lcom/google/android/gms/measurement/internal/zzfc;-><init>(Lcom/google/android/gms/measurement/internal/zzfd;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    new-instance v0, Landroid/content/Intent;

    const-string v13, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 114
    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    move-object/from16 v15, v23

    .line 115
    invoke-direct {v13, v15, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 116
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfv;->zzau()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    if-nez v13, :cond_300

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzm()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v8, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 119
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    goto/16 :goto_3a2

    :cond_300
    const/4 v14, 0x0

    .line 120
    invoke-virtual {v13, v0, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_383

    .line 121
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_383

    .line 125
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 126
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v14, :cond_3a2

    .line 127
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 128
    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v13, :cond_373

    .line 129
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_373

    .line 110
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfd;->zza()Z

    move-result v13

    if-eqz v13, :cond_373

    new-instance v13, Landroid/content/Intent;

    .line 133
    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_332
    .catchall {:try_start_274 .. :try_end_332} :catchall_5a4

    .line 134
    :try_start_332
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 135
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfv;->zzau()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x1

    .line 136
    invoke-virtual {v0, v14, v13, v9, v15}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 137
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v9

    .line 138
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v9

    const-string v13, "Install Referrer Service is"
    :try_end_34d
    .catch Ljava/lang/RuntimeException; {:try_start_332 .. :try_end_34d} :catch_35e
    .catchall {:try_start_332 .. :try_end_34d} :catchall_5a4

    :try_start_34d
    const-string v14, "available"

    const-string v15, "not available"
    :try_end_351
    .catchall {:try_start_34d .. :try_end_351} :catchall_5a4

    move-object/from16 v16, v14

    const/4 v14, 0x1

    if-eq v14, v0, :cond_358

    move-object v14, v15

    goto :goto_35a

    :cond_358
    move-object/from16 v14, v16

    .line 139
    :goto_35a
    :try_start_35a
    invoke-virtual {v9, v13, v14}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_35d
    .catch Ljava/lang/RuntimeException; {:try_start_35a .. :try_end_35d} :catch_35e
    .catchall {:try_start_35a .. :try_end_35d} :catchall_5a4

    goto :goto_3a2

    :catch_35e
    move-exception v0

    .line 180
    :try_start_35f
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 140
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v8

    .line 141
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v8

    const-string v9, "Exception occurred while binding to Install Referrer Service"

    .line 142
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3a2

    .line 139
    :cond_373
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v8, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 132
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    goto :goto_3a2

    :cond_383
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzi()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v8, "Play Service for fetching Install Referrer is unavailable on device"

    .line 124
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    goto :goto_3a2

    .line 104
    :cond_393
    :goto_393
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzm()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v8, "Install Referrer Reporter was called with invalid app package name"

    .line 107
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    .line 144
    :cond_3a2
    :goto_3a2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    new-instance v8, Landroid/os/Bundle;

    .line 146
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v13, 0x1

    .line 147
    invoke-virtual {v8, v5, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 148
    invoke-virtual {v8, v4, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v4, 0x0

    .line 149
    invoke-virtual {v8, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 150
    invoke-virtual {v8, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v9, v22

    .line 151
    invoke-virtual {v8, v9, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v15, v21

    .line 152
    invoke-virtual {v8, v15, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v4, 0x1

    .line 153
    invoke-virtual {v8, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 154
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Z

    if-eqz v0, :cond_3d7

    .line 155
    invoke-virtual {v8, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 156
    :cond_3d7
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 157
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 158
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    const-string v4, "first_open_count"

    .line 161
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzaj;->zzc(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzau()Landroid/content/Context;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_417

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v7, "PackageManager is null, first open report might be inaccurate. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 187
    invoke-virtual {v0, v7, v3}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_411
    .catchall {:try_start_35f .. :try_end_411} :catchall_5a4

    move-object/from16 v22, v10

    :cond_413
    :goto_413
    const-wide/16 v9, 0x0

    goto/16 :goto_4db

    .line 204
    :cond_417
    :try_start_417
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 164
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzau()Landroid/content/Context;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_426
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_417 .. :try_end_426} :catch_429
    .catchall {:try_start_417 .. :try_end_426} :catchall_5a4

    move-object/from16 v21, v15

    goto :goto_43e

    :catch_429
    move-exception v0

    .line 166
    :try_start_42a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v13

    .line 167
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v13

    const-string v14, "Package info is null, first open report might be inaccurate. appId"

    move-object/from16 v21, v15

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 168
    invoke-virtual {v13, v14, v15, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_43e
    if-eqz v0, :cond_495

    .line 169
    iget-wide v13, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-eqz v17, :cond_495

    .line 170
    iget-wide v13, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v23, v9

    move-object/from16 v22, v10

    iget-wide v9, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v13, v9

    if-eqz v0, :cond_476

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdy;->zzag:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v0

    if-eqz v0, :cond_470

    const-wide/16 v13, 0x0

    cmp-long v0, v4, v13

    if-nez v0, :cond_46e

    const-wide/16 v13, 0x1

    .line 172
    invoke-virtual {v8, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v4, 0x0

    :cond_46e
    :goto_46e
    const/4 v15, 0x0

    goto :goto_478

    :cond_470
    const-wide/16 v13, 0x1

    .line 173
    invoke-virtual {v8, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_46e

    :cond_476
    const/4 v10, 0x0

    const/4 v15, 0x1

    .line 172
    :goto_478
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkv;

    const-string v14, "_fi"

    const/4 v7, 0x1

    if-eq v7, v15, :cond_482

    const-wide/16 v15, 0x0

    goto :goto_484

    :cond_482
    const-wide/16 v15, 0x1

    .line 174
    :goto_484
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    move-object/from16 v7, v21

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzU(Lcom/google/android/gms/measurement/internal/zzkv;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_494
    .catchall {:try_start_42a .. :try_end_494} :catchall_5a4

    goto :goto_49c

    :cond_495
    move-object/from16 v23, v9

    move-object/from16 v22, v10

    move-object/from16 v7, v21

    const/4 v10, 0x0

    :goto_49c
    :try_start_49c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzau()Landroid/content/Context;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v9}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9
    :try_end_4ab
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49c .. :try_end_4ab} :catch_4ac
    .catchall {:try_start_49c .. :try_end_4ab} :catchall_5a4

    goto :goto_4bf

    :catch_4ac
    move-exception v0

    .line 178
    :try_start_4ad
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v9

    .line 179
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v9

    const-string v13, "Application info is null, first open report might be inaccurate. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 180
    invoke-virtual {v9, v13, v3, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v10

    :goto_4bf
    if-eqz v9, :cond_413

    .line 181
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_4ce

    move-object/from16 v3, v23

    const-wide/16 v13, 0x1

    .line 182
    invoke-virtual {v8, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 183
    :cond_4ce
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_413

    const-wide/16 v9, 0x1

    .line 184
    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_413

    :goto_4db
    cmp-long v0, v4, v9

    if-ltz v0, :cond_4e2

    .line 188
    invoke-virtual {v8, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 189
    :cond_4e2
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzat;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v15, v8}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_f"

    const-string v16, "auto"

    move-object v13, v0

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;J)V

    .line 190
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzF(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V

    move-object/from16 v4, v22

    goto :goto_544

    :cond_4f9
    move-object/from16 v22, v10

    .line 86
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkv;

    const-string v14, "_fvt"

    .line 87
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzU(Lcom/google/android/gms/measurement/internal/zzkv;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    new-instance v0, Landroid/os/Bundle;

    .line 91
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v6, 0x1

    .line 92
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 93
    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v4, v22

    .line 94
    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 95
    iget-boolean v5, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Z

    if-eqz v5, :cond_530

    .line 96
    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 97
    :cond_530
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzat;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_v"

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;J)V

    .line 98
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzF(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 191
    :goto_544
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdy;->zzT:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v0

    if-nez v0, :cond_593

    new-instance v0, Landroid/os/Bundle;

    .line 192
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v5, 0x1

    .line 193
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_fr"

    .line 194
    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzat;

    const-string v14, "_e"

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzar;

    .line 195
    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Landroid/os/Bundle;)V

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;J)V

    .line 196
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzF(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_593

    .line 197
    :cond_576
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzi:Z

    if-eqz v0, :cond_593

    new-instance v0, Landroid/os/Bundle;

    .line 198
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzat;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_cd"

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;J)V

    .line 200
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzF(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 196
    :cond_593
    :goto_593
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 201
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 202
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V
    :try_end_59b
    .catchall {:try_start_4ad .. :try_end_59b} :catchall_5a4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 203
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 204
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    return-void

    :catchall_5a4
    move-exception v0

    .line 38
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 203
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 204
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    .line 205
    throw v0

    :cond_5ae
    return-void
.end method

.method final zzL()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzr:I

    return-void
.end method

.method final zzM(Lcom/google/android/gms/measurement/internal/zzab;)V
    .registers 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzN(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_11
    return-void
.end method

.method final zzN(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 13

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    .line 7
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzag(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_25

    return-void

    .line 8
    :cond_25
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-eqz v0, :cond_f4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzw()V

    .line 11
    :try_start_31
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzd(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v3, "Removing conditional user property"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 18
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 21
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->zze:Z

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 23
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzk:Lcom/google/android/gms/measurement/internal/zzat;

    if-eqz v1, :cond_d9

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzat;->zzb:Lcom/google/android/gms/measurement/internal/zzar;

    if-eqz v1, :cond_92

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzc()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_93

    :cond_92
    const/4 v1, 0x0

    :goto_93
    move-object v4, v1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzk:Lcom/google/android/gms/measurement/internal/zzat;

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzat;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzk:Lcom/google/android/gms/measurement/internal/zzat;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzat;->zzd:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 27
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzkz;->zzz(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzat;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzat;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzW(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_d9

    .line 29
    :cond_b8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 32
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    :cond_d9
    :goto_d9
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V
    :try_end_e1
    .catchall {:try_start_31 .. :try_end_e1} :catchall_ea

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    return-void

    :catchall_ea
    move-exception p1

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 36
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 37
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    .line 38
    throw p1

    .line 39
    :cond_f4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzd(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void
.end method

.method final zzO(Lcom/google/android/gms/measurement/internal/zzkv;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzag(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 4
    :cond_11
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v0, :cond_19

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzd(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 6
    :cond_19
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    const-string v1, "_npa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    if-eqz v0, :cond_5c

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkv;

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    const/4 v0, 0x1

    .line 39
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_4a

    const-wide/16 v0, 0x0

    goto :goto_4c

    :cond_4a
    const-wide/16 v0, 0x1

    :goto_4c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzU(Lcom/google/android/gms/measurement/internal/zzkv;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 7
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    .line 10
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzw()V

    .line 14
    :try_start_7d
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzd(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmt;->zzc()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdy;->zzav:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdy;->zzax:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const-string v0, "_id"

    .line 18
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 20
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_lair"

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bc
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 24
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 25
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzB(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p2

    const-string v0, "User property removed"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    .line 32
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ef
    .catchall {:try_start_7d .. :try_end_ef} :catchall_f8

    .line 36
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    return-void

    :catchall_f8
    move-exception p1

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 34
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 35
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    .line 36
    throw p1
.end method

.method final zzP(Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 9

    const-string v0, "app_id=?"

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzy:Ljava/util/List;

    if-eqz v1, :cond_12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzz:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzy:Ljava/util/List;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    .line 8
    :try_start_28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v5, "apps"

    .line 9
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    .line 10
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "user_attributes"

    .line 11
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    .line 12
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    .line 13
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    .line 14
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    .line 15
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    .line 16
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    .line 17
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    .line 18
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_a1

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_8c} :catch_8d

    goto :goto_a1

    :catch_8d
    move-exception v0

    .line 25
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    .line 23
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    :cond_a1
    :goto_a1
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-eqz v0, :cond_a8

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzK(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_a8
    return-void
.end method

.method protected final zzQ()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzA()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjp;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjp;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzb(J)V

    .line 6
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaf()V

    return-void
.end method

.method final zzR(Lcom/google/android/gms/measurement/internal/zzab;)V
    .registers 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzS(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_11
    return-void
.end method

.method final zzS(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 13

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    .line 8
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzag(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_2a

    return-void

    .line 9
    :cond_2a
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v0, :cond_32

    .line 10
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzd(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_32
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzab;

    .line 11
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Lcom/google/android/gms/measurement/internal/zzab;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzab;->zze:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzw()V

    :try_start_42
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    if-eqz v1, :cond_82

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzab;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzb:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 21
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzab;->zzb:Ljava/lang/String;

    .line 22
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_82
    const/4 v2, 0x1

    if-eqz v1, :cond_b8

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->zze:Z

    if-eqz v3, :cond_b8

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->zzb:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzb:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->zzd:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzd:J

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->zzh:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzh:J

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->zzf:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzf:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->zzi:Lcom/google/android/gms/measurement/internal/zzat;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzi:Lcom/google/android/gms/measurement/internal/zzat;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzab;->zze:Z

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkv;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 26
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzkv;->zzc:J

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkv;->zza()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkv;->zzf:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    goto :goto_d9

    .line 41
    :cond_b8
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzf:Ljava/lang/String;

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d9

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkv;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 24
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzd:J

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkv;->zzf:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzab;->zze:Z

    const/4 p1, 0x1

    .line 27
    :cond_d9
    :goto_d9
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->zze:Z

    if-eqz v1, :cond_156

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzkx;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkv;->zzc:J

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 30
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 31
    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzaj;->zzN(Lcom/google/android/gms/measurement/internal/zzkx;)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkx;->zzc:Ljava/lang/String;

    .line 35
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    .line 36
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_146

    .line 37
    :cond_125
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkx;->zzc:Ljava/lang/String;

    .line 40
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    .line 41
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_146
    if-eqz p1, :cond_156

    .line 36
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzi:Lcom/google/android/gms/measurement/internal/zzat;

    if-eqz p1, :cond_156

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzat;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzd:J

    .line 42
    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Lcom/google/android/gms/measurement/internal/zzat;J)V

    .line 43
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzW(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_156
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 45
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzM(Lcom/google/android/gms/measurement/internal/zzab;)Z

    move-result p1

    if-eqz p1, :cond_185

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 48
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 49
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1ac

    .line 52
    :cond_185
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 55
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzab;->zzc:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 57
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    :goto_1ac
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V
    :try_end_1b4
    .catchall {:try_start_42 .. :try_end_1b4} :catchall_1bd

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    return-void

    :catchall_1bd
    move-exception p1

    .line 25
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 60
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 61
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    .line 62
    throw p1
.end method

.method final zzT(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzB:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    new-instance v1, Landroid/content/ContentValues;

    .line 9
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 10
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzag;->zzi()Ljava/lang/String;

    move-result-object p2

    const-string v2, "consent_state"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :try_start_33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v2, "consent_settings"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 13
    invoke-virtual {p2, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_58

    iget-object p2, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p2

    const-string v1, "Failed to insert/update consent setting (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_58
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_58} :catch_59

    :cond_58
    return-void

    :catch_59
    move-exception p2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing consent setting. appId, error"

    .line 19
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zzU(Lcom/google/android/gms/measurement/internal/zzkv;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 16

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzag(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 4
    :cond_11
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v0, :cond_19

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzd(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 6
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkz;->zzl(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x1

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eqz v5, :cond_4f

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 9
    invoke-virtual {v3, v4, v1, v0}, Lcom/google/android/gms/measurement/internal/zzkz;->zzC(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    .line 10
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v8, p1

    goto :goto_41

    :cond_40
    const/4 v8, 0x0

    .line 11
    :goto_41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzC:Lcom/google/android/gms/measurement/internal/zzky;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v6, "_ev"

    .line 12
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzkz;->zzM(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 13
    :cond_4f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzkz;->zzd(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v9

    if-eqz v9, :cond_93

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 16
    invoke-virtual {v3, v4, v1, v0}, Lcom/google/android/gms/measurement/internal/zzkz;->zzC(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v11

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_84

    .line 18
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_7a

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_84

    .line 19
    :cond_7a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v12, v2

    goto :goto_85

    :cond_84
    const/4 v12, 0x0

    .line 20
    :goto_85
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzC:Lcom/google/android/gms/measurement/internal/zzky;

    iget-object v8, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v10, "_ev"

    .line 21
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzkz;->zzM(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 22
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkz;->zzB(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a4

    return-void

    .line 24
    :cond_a4
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    const-string v2, "_sid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 25
    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzc:J

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzf:Ljava/lang/String;

    .line 26
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    const-string v3, "_sno"

    .line 28
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v2

    if-eqz v2, :cond_d4

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    .line 29
    instance-of v6, v3, Ljava/lang/Long;

    if-eqz v6, :cond_d4

    .line 38
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_108

    :cond_d4
    if-eqz v2, :cond_e5

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    const-string v6, "Retrieved last session number from database does not contain a valid (long) value"

    .line 32
    invoke-virtual {v3, v6, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 33
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    const-string v3, "_s"

    .line 34
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    if-eqz v1, :cond_106

    iget-wide v1, v1, Lcom/google/android/gms/measurement/internal/zzap;->zzc:J

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "Backfill the session number. Last used session number"

    invoke-virtual {v3, v8, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_108

    :cond_106
    const-wide/16 v1, 0x0

    .line 38
    :goto_108
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkv;

    const-wide/16 v9, 0x1

    add-long/2addr v1, v9

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "_sno"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v8, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzU(Lcom/google/android/gms/measurement/internal/zzkv;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_11a
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkx;

    .line 41
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 42
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzf:Ljava/lang/String;

    .line 43
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzkv;->zzc:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkx;->zzc:Ljava/lang/String;

    .line 47
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting user property"

    .line 48
    invoke-virtual {p1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzw()V

    .line 51
    :try_start_158
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmt;->zzc()Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzdy;->zzav:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result p1

    if-eqz p1, :cond_180

    const-string p1, "_id"

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkx;->zzc:Ljava/lang/String;

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_180

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 53
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 54
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v2, "_lair"

    .line 55
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzB(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_180
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzd(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 57
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 58
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzN(Lcom/google/android/gms/measurement/internal/zzkx;)Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V

    if-nez p1, :cond_1c1

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkx;->zzc:Ljava/lang/String;

    .line 64
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    .line 65
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzC:Lcom/google/android/gms/measurement/internal/zzky;

    iget-object v5, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const/16 v6, 0x9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 67
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzkz;->zzM(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1c1
    .catchall {:try_start_158 .. :try_end_1c1} :catchall_1ca

    :cond_1c1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 68
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    return-void

    :catchall_1ca
    move-exception p1

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 68
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 69
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    .line 70
    throw p1
.end method

.method final zzV()V
    .registers 23

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzv:Z

    const/4 v3, 0x0

    :try_start_10
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzaw()Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzt()Lcom/google/android/gms/measurement/internal/zzjo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_34

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v2, "Upload data called on the client side before use of service was decided"

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_510

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzv:Z

    .line 8
    :goto_30
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzac()V

    return-void

    .line 9
    :cond_34
    :try_start_34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v2, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_510

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzv:Z

    goto :goto_30

    .line 8
    :cond_4a
    :try_start_4a
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzks;->zza:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_58

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaf()V
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_510

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzv:Z

    goto :goto_30

    .line 10
    :cond_58
    :try_start_58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzy:Ljava/util/List;

    if-eqz v0, :cond_73

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v2, "Uploading requested multiple times"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_510

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzv:Z

    goto :goto_30

    .line 8
    :cond_73
    :try_start_73
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzd:Lcom/google/android/gms/measurement/internal/zzer;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zza()Z

    move-result v0

    if-nez v0, :cond_91

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaf()V
    :try_end_8e
    .catchall {:try_start_73 .. :try_end_8e} :catchall_510

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzv:Z

    goto :goto_30

    .line 16
    :cond_91
    :try_start_91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdy;->zzP:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)I

    move-result v0

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zzz()J

    move-result-wide v10

    sub-long v10, v4, v10

    const/4 v8, 0x0

    :goto_ae
    if-ge v8, v0, :cond_b9

    .line 19
    invoke-direct {v1, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzah(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_b9

    add-int/lit8 v8, v8, 0x1

    goto :goto_ae

    :cond_b9
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 20
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjp;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zza()J

    move-result-wide v10

    cmp-long v0, v10, v6

    if-eqz v0, :cond_dc

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v4, v10

    .line 23
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 24
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_dc
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzr()Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v7, -0x1

    if-nez v0, :cond_489

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzA:J

    cmp-long v0, v10, v7

    if-nez v0, :cond_138

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 28
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;
    :try_end_f8
    .catchall {:try_start_91 .. :try_end_f8} :catchall_510

    .line 29
    :try_start_f8
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v11, "select rowid from raw_events order by rowid desc limit 1;"

    .line 30
    invoke-virtual {v0, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_102
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f8 .. :try_end_102} :catch_119
    .catchall {:try_start_f8 .. :try_end_102} :catchall_117

    .line 31
    :try_start_102
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_106
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_102 .. :try_end_106} :catch_115
    .catchall {:try_start_102 .. :try_end_106} :catchall_130

    if-nez v0, :cond_10e

    if-eqz v11, :cond_12d

    .line 32
    :goto_10a
    :try_start_10a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_510

    goto :goto_12d

    .line 33
    :cond_10e
    :try_start_10e
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_112
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10e .. :try_end_112} :catch_115
    .catchall {:try_start_10e .. :try_end_112} :catchall_130

    if-eqz v11, :cond_12d

    goto :goto_10a

    :catch_115
    move-exception v0

    goto :goto_11b

    :catchall_117
    move-exception v0

    goto :goto_132

    :catch_119
    move-exception v0

    move-object v11, v9

    .line 168
    :goto_11b
    :try_start_11b
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 34
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v10

    .line 35
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v10

    const-string v12, "Error querying raw events"

    invoke-virtual {v10, v12, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12a
    .catchall {:try_start_11b .. :try_end_12a} :catchall_130

    if-eqz v11, :cond_12d

    goto :goto_10a

    .line 32
    :cond_12d
    :goto_12d
    :try_start_12d
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzA:J

    goto :goto_138

    :catchall_130
    move-exception v0

    move-object v9, v11

    :goto_132
    if-eqz v9, :cond_137

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_137
    throw v0

    .line 37
    :cond_138
    :goto_138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzdy;->zzf:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)I

    move-result v0

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdy;->zzg:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)I

    move-result v7

    .line 39
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 40
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 41
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 42
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    if-lez v0, :cond_15f

    const/4 v10, 0x1

    goto :goto_160

    :cond_15f
    const/4 v10, 0x0

    .line 43
    :goto_160
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-lez v7, :cond_167

    const/4 v10, 0x1

    goto :goto_168

    :cond_167
    const/4 v10, 0x0

    .line 44
    :goto_168
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 45
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16e
    .catchall {:try_start_12d .. :try_end_16e} :catchall_510

    .line 46
    :try_start_16e
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "rowid"

    const-string v13, "data"

    const-string v14, "retry_count"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v13

    new-array v15, v2, [Ljava/lang/String;

    aput-object v6, v15, v3

    const-string v12, "queue"

    const-string v14, "app_id=?"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid"

    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 48
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_192
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16e .. :try_end_192} :catch_27f
    .catchall {:try_start_16e .. :try_end_192} :catchall_27b

    .line 49
    :try_start_192
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1a5

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_19c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_192 .. :try_end_19c} :catch_277
    .catchall {:try_start_192 .. :try_end_19c} :catchall_481

    if-eqz v11, :cond_1a1

    .line 51
    :try_start_19e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1a1
    .catchall {:try_start_19e .. :try_end_1a1} :catchall_510

    :cond_1a1
    move-wide/from16 v20, v4

    goto/16 :goto_29f

    .line 129
    :cond_1a5
    :try_start_1a5
    new-instance v12, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 53
    :goto_1ab
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_1af
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a5 .. :try_end_1af} :catch_277
    .catchall {:try_start_1a5 .. :try_end_1af} :catchall_481

    .line 54
    :try_start_1af
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 55
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;
    :try_end_1ba
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1ba} :catch_248
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1af .. :try_end_1ba} :catch_277
    .catchall {:try_start_1af .. :try_end_1ba} :catchall_481

    :try_start_1ba
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 56
    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 57
    invoke-direct {v0, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v10, 0x400

    new-array v10, v10, [B
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1cd} :catch_233
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ba .. :try_end_1cd} :catch_277
    .catchall {:try_start_1ba .. :try_end_1cd} :catchall_481

    move-wide/from16 v20, v4

    .line 59
    :goto_1cf
    :try_start_1cf
    invoke-virtual {v0, v10}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_22c

    .line 61
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 62
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V

    .line 63
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1df} :catch_231
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1cf .. :try_end_1df} :catch_275
    .catchall {:try_start_1cf .. :try_end_1df} :catchall_481

    .line 64
    :try_start_1df
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1eb

    array-length v2, v0
    :try_end_1e6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1df .. :try_end_1e6} :catch_275
    .catchall {:try_start_1df .. :try_end_1e6} :catchall_481

    add-int/2addr v2, v13

    if-le v2, v7, :cond_1eb

    goto/16 :goto_26e

    .line 65
    :cond_1eb
    :try_start_1eb
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy;->zzu()Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzku;->zzl(Lcom/google/android/gms/internal/measurement/zzlb;[B)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfx;
    :try_end_1f5
    .catch Ljava/io/IOException; {:try_start_1eb .. :try_end_1f5} :catch_217
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1eb .. :try_end_1f5} :catch_275
    .catchall {:try_start_1eb .. :try_end_1f5} :catchall_481

    const/4 v3, 0x2

    .line 69
    :try_start_1f6
    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_203

    .line 70
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzac(I)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 71
    :cond_203
    array-length v0, v0

    add-int/2addr v13, v0

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25e

    :catch_217
    move-exception v0

    .line 75
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Failed to merge queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 68
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_22b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f6 .. :try_end_22b} :catch_275
    .catchall {:try_start_1f6 .. :try_end_22b} :catchall_481

    goto :goto_25e

    :cond_22c
    const/4 v5, 0x0

    .line 60
    :try_start_22d
    invoke-virtual {v3, v10, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_230
    .catch Ljava/io/IOException; {:try_start_22d .. :try_end_230} :catch_231
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22d .. :try_end_230} :catch_275
    .catchall {:try_start_22d .. :try_end_230} :catchall_481

    goto :goto_1cf

    :catch_231
    move-exception v0

    goto :goto_236

    :catch_233
    move-exception v0

    move-wide/from16 v20, v4

    .line 78
    :goto_236
    :try_start_236
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Failed to ungzip content"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    throw v0
    :try_end_246
    .catch Ljava/io/IOException; {:try_start_236 .. :try_end_246} :catch_246
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_236 .. :try_end_246} :catch_275
    .catchall {:try_start_236 .. :try_end_246} :catchall_481

    :catch_246
    move-exception v0

    goto :goto_24b

    :catch_248
    move-exception v0

    move-wide/from16 v20, v4

    .line 146
    :goto_24b
    :try_start_24b
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Failed to unzip queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 78
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    :goto_25e
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_262
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24b .. :try_end_262} :catch_275
    .catchall {:try_start_24b .. :try_end_262} :catchall_481

    if-eqz v0, :cond_26e

    if-le v13, v7, :cond_267

    goto :goto_26e

    :cond_267
    move-wide/from16 v4, v20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_1ab

    :cond_26e
    :goto_26e
    if-eqz v11, :cond_273

    .line 51
    :try_start_270
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_273
    .catchall {:try_start_270 .. :try_end_273} :catchall_510

    :cond_273
    move-object v0, v12

    goto :goto_29f

    :catch_275
    move-exception v0

    goto :goto_283

    :catch_277
    move-exception v0

    move-wide/from16 v20, v4

    goto :goto_283

    :catchall_27b
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_483

    :catch_27f
    move-exception v0

    move-wide/from16 v20, v4

    const/4 v11, 0x0

    .line 36
    :goto_283
    :try_start_283
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Error querying bundles. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_29a
    .catchall {:try_start_283 .. :try_end_29a} :catchall_481

    if-eqz v11, :cond_29f

    .line 51
    :try_start_29c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_29f
    :goto_29f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_503

    .line 85
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzks;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzj()Z

    move-result v2

    if-eqz v2, :cond_304

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 87
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy;

    .line 88
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy;->zzL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b3

    .line 89
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy;->zzL()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d3

    :cond_2d2
    const/4 v2, 0x0

    :goto_2d3
    if-eqz v2, :cond_304

    const/4 v3, 0x0

    .line 90
    :goto_2d6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_304

    .line 91
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfy;

    .line 92
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2f1

    goto :goto_301

    .line 93
    :cond_2f1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy;->zzL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_301

    const/4 v4, 0x0

    .line 94
    invoke-interface {v0, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_304

    :cond_301
    :goto_301
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d6

    .line 95
    :cond_304
    :goto_304
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->zza()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v2

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zzt(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32b

    .line 99
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzks;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzag;->zzj()Z

    move-result v5

    if-eqz v5, :cond_32b

    const/4 v5, 0x1

    goto :goto_32c

    :cond_32b
    const/4 v5, 0x0

    .line 100
    :goto_32c
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzks;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzag;->zzj()Z

    move-result v7

    .line 101
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzks;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzag;->zzk()Z

    move-result v8

    const/4 v9, 0x0

    :goto_33d
    if-ge v9, v3, :cond_3b3

    .line 102
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbv()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfx;

    .line 103
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()J

    const-wide/32 v11, 0xb3b0

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzfx;->zzah(J)Lcom/google/android/gms/internal/measurement/zzfx;

    move-wide/from16 v11, v20

    .line 105
    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzfx;->zzag(J)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 106
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfv;->zzaw()Lcom/google/android/gms/measurement/internal/zzaa;

    const/4 v13, 0x0

    .line 107
    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/measurement/zzfx;->zzad(Z)Lcom/google/android/gms/internal/measurement/zzfx;

    if-nez v5, :cond_37c

    .line 108
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzo()Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_37c
    if-nez v7, :cond_384

    .line 109
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzu()Lcom/google/android/gms/internal/measurement/zzfx;

    .line 110
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzr()Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_384
    if-nez v8, :cond_389

    .line 111
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzm()Lcom/google/android/gms/internal/measurement/zzfx;

    .line 112
    :cond_389
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzdy;->zzV:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v13, v6, v14}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v13

    if-eqz v13, :cond_3ab

    .line 113
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzih;->zzbs()[B

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 114
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 115
    invoke-virtual {v14, v13}, Lcom/google/android/gms/measurement/internal/zzku;->zzd([B)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfx;->zzG(J)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 116
    :cond_3ab
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzfv;->zza(Lcom/google/android/gms/internal/measurement/zzfx;)Lcom/google/android/gms/internal/measurement/zzfv;

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v20, v11

    goto :goto_33d

    :cond_3b3
    move-wide/from16 v11, v20

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzq()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    .line 118
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 119
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 120
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzku;->zzm(Lcom/google/android/gms/internal/measurement/zzfw;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d5

    :cond_3d4
    const/4 v0, 0x0

    :goto_3d5
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 121
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 122
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 123
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzih;->zzbs()[B

    move-result-object v14

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdy;->zzp:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v9, 0x0

    .line 125
    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_3f0
    .catchall {:try_start_29c .. :try_end_3f0} :catchall_510

    .line 126
    :try_start_3f0
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzy:Ljava/util/List;

    if-eqz v7, :cond_410

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v4

    const-string v7, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    goto :goto_417

    .line 8
    :cond_410
    new-instance v7, Ljava/util/ArrayList;

    .line 129
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzy:Ljava/util/List;

    .line 128
    :goto_417
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 130
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzjp;->zzd:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {v4, v11, v12}, Lcom/google/android/gms/measurement/internal/zzew;->zzb(J)V

    const-string v4, "?"

    if-lez v3, :cond_42b

    const/4 v3, 0x0

    .line 131
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfv;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v4

    .line 132
    :cond_42b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Uploading data. app, uncompressed size, data"

    array-length v7, v14

    .line 134
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v7, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzu:Z

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzd:Lcom/google/android/gms/measurement/internal/zzer;

    .line 135
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/zzks;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 137
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    .line 138
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v11, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 141
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzeq;

    const/4 v15, 0x0

    move-object v10, v3

    move-object v12, v6

    move-object/from16 v16, v0

    .line 142
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzeq;-><init>(Lcom/google/android/gms/measurement/internal/zzer;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzen;)V

    .line 143
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfs;->zzo(Ljava/lang/Runnable;)V
    :try_end_46c
    .catch Ljava/net/MalformedURLException; {:try_start_3f0 .. :try_end_46c} :catch_46e
    .catchall {:try_start_3f0 .. :try_end_46c} :catchall_510

    goto/16 :goto_503

    .line 144
    :catch_46e
    :try_start_46e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 146
    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_503

    :catchall_481
    move-exception v0

    move-object v9, v11

    :goto_483
    if-eqz v9, :cond_488

    .line 51
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_488
    throw v0

    :cond_489
    move-wide v11, v4

    .line 32
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzA:J

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 147
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zzz()J

    move-result-wide v3

    sub-long v4, v11, v3

    .line 149
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 150
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V
    :try_end_4a0
    .catchall {:try_start_46e .. :try_end_4a0} :catchall_510

    .line 151
    :try_start_4a0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 152
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    .line 153
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_4b4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4a0 .. :try_end_4b4} :catch_4db
    .catchall {:try_start_4a0 .. :try_end_4b4} :catchall_4d9

    .line 154
    :try_start_4b4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4cf

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 155
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v4, "No expired configs for apps with pending events"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V
    :try_end_4c9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b4 .. :try_end_4c9} :catch_4d7
    .catchall {:try_start_4b4 .. :try_end_4c9} :catchall_508

    if-eqz v3, :cond_4ef

    .line 157
    :goto_4cb
    :try_start_4cb
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4ce
    .catchall {:try_start_4cb .. :try_end_4ce} :catchall_510

    goto :goto_4ef

    :cond_4cf
    const/4 v4, 0x0

    .line 158
    :try_start_4d0
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_4d4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d0 .. :try_end_4d4} :catch_4d7
    .catchall {:try_start_4d0 .. :try_end_4d4} :catchall_508

    if-eqz v3, :cond_4ef

    goto :goto_4cb

    :catch_4d7
    move-exception v0

    goto :goto_4dd

    :catchall_4d9
    move-exception v0

    goto :goto_50a

    :catch_4db
    move-exception v0

    move-object v3, v9

    .line 68
    :goto_4dd
    :try_start_4dd
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 159
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v4, "Error selecting expired configs"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4ec
    .catchall {:try_start_4dd .. :try_end_4ec} :catchall_508

    if-eqz v3, :cond_4ef

    goto :goto_4cb

    .line 162
    :cond_4ef
    :goto_4ef
    :try_start_4ef
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_503

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 163
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 164
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzaj;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-eqz v0, :cond_503

    .line 165
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzC(Lcom/google/android/gms/measurement/internal/zzg;)V
    :try_end_503
    .catchall {:try_start_4ef .. :try_end_503} :catchall_510

    :cond_503
    :goto_503
    const/4 v2, 0x0

    .line 143
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzv:Z

    goto/16 :goto_30

    :catchall_508
    move-exception v0

    move-object v9, v3

    :goto_50a
    if-eqz v9, :cond_50f

    .line 157
    :try_start_50c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_50f
    throw v0
    :try_end_510
    .catchall {:try_start_50c .. :try_end_510} :catchall_510

    :catchall_510
    move-exception v0

    const/4 v2, 0x0

    .line 157
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzv:Z

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzac()V

    .line 168
    throw v0
.end method

.method final zzW(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "metadata_fingerprint"

    const-string v5, "app_id"

    const-string v6, "raw_events"

    const-string v7, "_sno"

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    .line 6
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 7
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 8
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzku;->zzB(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v11

    if-nez v11, :cond_32

    return-void

    .line 9
    :cond_32
    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-eqz v11, :cond_ae6

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 10
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 11
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/measurement/internal/zzfm;->zzo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const-string v15, "_err"

    const/4 v14, 0x0

    if-eqz v11, :cond_df

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v5

    .line 15
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blocked event. appId"

    .line 16
    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 18
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfm;->zzm(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_97

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 20
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfm;->zzp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    goto :goto_97

    .line 30
    :cond_7a
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_de

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzC:Lcom/google/android/gms/measurement/internal/zzky;

    const/16 v14, 0xb

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    const/16 v17, 0x0

    const-string v15, "_ev"

    move-object v13, v10

    move-object/from16 v16, v2

    .line 32
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzkz;->zzM(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 20
    :cond_97
    :goto_97
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 21
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 22
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzaj;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v2

    if-eqz v2, :cond_de

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 25
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 27
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdy;->zzy:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_de

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v4, "Fetching config for blocked app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzC(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_de
    return-void

    .line 33
    :cond_df
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb(Lcom/google/android/gms/measurement/internal/zzat;)Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v11

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd(Ljava/lang/String;)I

    move-result v12

    .line 36
    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/zzkz;->zzL(Lcom/google/android/gms/measurement/internal/zzem;I)V

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zza()Lcom/google/android/gms/measurement/internal/zzat;

    move-result-object v2

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzel;->zzq()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    .line 39
    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_11c

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v11

    .line 41
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 42
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v12

    .line 43
    invoke-virtual {v12, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Lcom/google/android/gms/measurement/internal/zzat;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Logging event"

    invoke-virtual {v11, v13, v12}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11c
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 44
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 45
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaj;->zzw()V

    .line 46
    :try_start_124
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzd(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmt;->zzc()Z

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzdy;->zzav:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v11, v14, v12}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v11

    if-nez v11, :cond_14e

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzdy;->zzaw:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v11, v14, v12}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v11

    if-eqz v11, :cond_14e

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 50
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 51
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v13, "_lair"

    .line 52
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzaj;->zzB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14e
    const-string v11, "ecommerce_purchase"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    .line 53
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_156
    .catchall {:try_start_124 .. :try_end_156} :catchall_adb

    const-string v12, "refund"

    move-wide/from16 v28, v8

    if-nez v11, :cond_171

    :try_start_15c
    const-string v9, "purchase"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    .line 54
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_171

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    .line 55
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16f

    goto :goto_171

    :cond_16f
    const/4 v9, 0x0

    goto :goto_172

    :cond_171
    :goto_171
    const/4 v9, 0x1

    :goto_172
    const-string v11, "_iap"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    .line 56
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_186

    if-eqz v9, :cond_180

    const/4 v9, 0x1

    goto :goto_186

    :cond_180
    move-object/from16 v33, v4

    move-object v8, v15

    :goto_183
    const/4 v4, 0x2

    goto/16 :goto_32c

    :cond_186
    :goto_186
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzat;->zzb:Lcom/google/android/gms/measurement/internal/zzar;

    const-string v13, "currency"

    .line 57
    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_18e
    .catchall {:try_start_15c .. :try_end_18e} :catchall_adb

    const-string v13, "value"

    if-eqz v9, :cond_1fb

    :try_start_192
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzat;->zzb:Lcom/google/android/gms/measurement/internal/zzar;

    .line 58
    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    const-wide v19, 0x412e848000000000L    # 1000000.0

    mul-double v17, v17, v19

    const-wide/16 v21, 0x0

    cmpl-double v9, v17, v21

    if-nez v9, :cond_1b9

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzat;->zzb:Lcom/google/android/gms/measurement/internal/zzar;

    .line 59
    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v21, v15

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-double v13, v14

    mul-double v17, v13, v19

    goto :goto_1bb

    :cond_1b9
    move-object/from16 v21, v15

    :goto_1bb
    const-wide/high16 v13, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v9, v17, v13

    if-gtz v9, :cond_1d5

    const-wide/high16 v13, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v9, v17, v13

    if-ltz v9, :cond_1d5

    .line 68
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    .line 69
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_207

    neg-long v13, v13

    goto :goto_207

    .line 60
    :cond_1d5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 62
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 63
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 64
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 65
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V
    :try_end_1f2
    .catchall {:try_start_192 .. :try_end_1f2} :catchall_adb

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 66
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    return-void

    :cond_1fb
    move-object/from16 v21, v15

    :try_start_1fd
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzat;->zzb:Lcom/google/android/gms/measurement/internal/zzar;

    .line 70
    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 71
    :cond_207
    :goto_207
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_326

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 72
    invoke-virtual {v11, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "[A-Z]{3}"

    .line 73
    invoke-virtual {v9, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_326

    const-string v11, "_ltv_"

    .line 74
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_22c

    invoke-virtual {v11, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_231

    .line 91
    :cond_22c
    new-instance v9, Ljava/lang/String;

    .line 74
    invoke-direct {v9, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_231
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 75
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 76
    invoke-virtual {v11, v10, v9}, Lcom/google/android/gms/measurement/internal/zzaj;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v11

    if-eqz v11, :cond_271

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    .line 77
    instance-of v12, v11, Ljava/lang/Long;

    if-nez v12, :cond_243

    goto :goto_271

    .line 89
    :cond_243
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v18, Lcom/google/android/gms/measurement/internal/zzkx;

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzat;->zzc:Ljava/lang/String;

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v19

    add-long/2addr v11, v13

    .line 91
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v11, v18

    move-object v12, v10

    const/4 v14, 0x0

    move-object v13, v15

    const/4 v8, 0x0

    const/4 v15, 0x0

    move-object v14, v9

    move-object/from16 v9, v21

    move-wide/from16 v15, v19

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v33, v4

    move-object v8, v9

    move-object/from16 v9, v18

    const/4 v4, 0x2

    goto/16 :goto_2ea

    :cond_271
    :goto_271
    move-object/from16 v15, v21

    const/4 v8, 0x0

    .line 77
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 78
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v12

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdy;->zzD:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v12, v10, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 80
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 82
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V
    :try_end_28e
    .catchall {:try_start_1fd .. :try_end_28e} :catchall_adb

    .line 83
    :try_start_28e
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12
    :try_end_292
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28e .. :try_end_292} :catch_2b4
    .catchall {:try_start_28e .. :try_end_292} :catchall_adb

    move-object/from16 v21, v15

    const/4 v15, 0x3

    :try_start_295
    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v10, v15, v16

    .line 84
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8
    :try_end_2a3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_295 .. :try_end_2a3} :catch_2b0
    .catchall {:try_start_295 .. :try_end_2a3} :catchall_adb

    move-object/from16 v33, v4

    const/4 v4, 0x2

    :try_start_2a6
    aput-object v8, v15, v4

    const-string v8, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    .line 85
    invoke-virtual {v12, v8, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2ad
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a6 .. :try_end_2ad} :catch_2ae
    .catchall {:try_start_2a6 .. :try_end_2ad} :catchall_adb

    goto :goto_2ce

    :catch_2ae
    move-exception v0

    goto :goto_2ba

    :catch_2b0
    move-exception v0

    move-object/from16 v33, v4

    goto :goto_2b9

    :catch_2b4
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v21, v15

    :goto_2b9
    const/4 v4, 0x2

    :goto_2ba
    move-object v8, v0

    .line 363
    :try_start_2bb
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 86
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v11

    .line 87
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v11

    const-string v12, "Error pruning currencies. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v11, v12, v15, v8}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    :goto_2ce
    new-instance v18, Lcom/google/android/gms/measurement/internal/zzkx;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzat;->zzc:Ljava/lang/String;

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v11, v18

    move-object v12, v10

    move-object v13, v8

    move-object v14, v9

    move-object/from16 v8, v21

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v9, v18

    :goto_2ea
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 92
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 93
    invoke-virtual {v11, v9}, Lcom/google/android/gms/measurement/internal/zzaj;->zzN(Lcom/google/android/gms/measurement/internal/zzkx;)Z

    move-result v11

    if-nez v11, :cond_32c

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v11

    .line 95
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v11

    const-string v12, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 96
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v14

    iget-object v15, v9, Lcom/google/android/gms/measurement/internal/zzkx;->zzc:Ljava/lang/String;

    .line 97
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    .line 98
    invoke-virtual {v11, v12, v13, v14, v9}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzC:Lcom/google/android/gms/measurement/internal/zzky;

    const/16 v14, 0x9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 100
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzkz;->zzM(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_32c

    :cond_326
    move-object/from16 v33, v4

    move-object/from16 v8, v21

    goto/16 :goto_183

    :cond_32c
    :goto_32c
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    .line 101
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkz;->zzah(Ljava/lang/String;)Z

    move-result v9

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    .line 102
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzat;->zzb:Lcom/google/android/gms/measurement/internal/zzar;

    if-nez v11, :cond_342

    const-wide/16 v16, 0x0

    goto :goto_362

    .line 170
    :cond_342
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 104
    invoke-direct {v12, v11}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzar;)V

    const-wide/16 v16, 0x0

    .line 105
    :cond_349
    :goto_349
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_362

    .line 106
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzaq;->zza()Ljava/lang/String;

    move-result-object v13

    .line 107
    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzar;->zzf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 108
    instance-of v14, v13, [Landroid/os/Parcelable;

    if-eqz v14, :cond_349

    .line 109
    check-cast v13, [Landroid/os/Parcelable;

    array-length v13, v13

    int-to-long v13, v13

    add-long v16, v16, v13

    goto :goto_349

    :cond_362
    :goto_362
    const-wide/16 v22, 0x1

    add-long v15, v16, v22

    .line 103
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 110
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zza()J

    move-result-wide v12

    const/16 v17, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v30, v5

    const-wide/16 v4, 0x0

    move-object v14, v10

    move/from16 v18, v9

    move/from16 v19, v20

    move/from16 v20, v8

    .line 112
    invoke-virtual/range {v11 .. v21}, Lcom/google/android/gms/measurement/internal/zzaj;->zzm(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v11

    iget-wide v12, v11, Lcom/google/android/gms/measurement/internal/zzah;->zzb:J

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzdy;->zzj:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v15, 0x0

    .line 114
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v4, v14

    sub-long/2addr v12, v4

    const-wide/16 v4, 0x3e8

    const-wide/16 v16, 0x0

    cmp-long v14, v12, v16

    if-lez v14, :cond_3cd

    rem-long/2addr v12, v4

    cmp-long v2, v12, v22

    if-nez v2, :cond_3bc

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/google/android/gms/measurement/internal/zzah;->zzb:J

    .line 117
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 118
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3bc
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 119
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 120
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V
    :try_end_3c4
    .catchall {:try_start_2bb .. :try_end_3c4} :catchall_adb

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 66
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    return-void

    :cond_3cd
    if-eqz v9, :cond_42b

    :try_start_3cf
    iget-wide v12, v11, Lcom/google/android/gms/measurement/internal/zzah;->zza:J

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzdy;->zzl:Lcom/google/android/gms/measurement/internal/zzdx;

    .line 122
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v4, v14

    sub-long/2addr v12, v4

    const-wide/16 v4, 0x0

    cmp-long v14, v12, v4

    if-lez v14, :cond_42b

    const-wide/16 v4, 0x3e8

    rem-long/2addr v12, v4

    cmp-long v3, v12, v22

    if-nez v3, :cond_406

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 356
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v11, Lcom/google/android/gms/measurement/internal/zzah;->zza:J

    .line 357
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 358
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    :cond_406
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzC:Lcom/google/android/gms/measurement/internal/zzky;

    const/16 v14, 0x10

    const-string v15, "_ev"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    const/16 v17, 0x0

    move-object v13, v10

    move-object/from16 v16, v2

    .line 360
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzkz;->zzM(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 361
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 362
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V
    :try_end_422
    .catchall {:try_start_3cf .. :try_end_422} :catchall_adb

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 66
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    return-void

    :cond_42b
    const v4, 0xf4240

    if-eqz v8, :cond_47b

    :try_start_430
    iget-wide v12, v11, Lcom/google/android/gms/measurement/internal/zzah;->zzd:J

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzdy;->zzk:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v5, v8, v14}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)I

    move-result v5

    .line 124
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v8, 0x0

    .line 125
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v4, v5

    sub-long/2addr v12, v4

    const-wide/16 v4, 0x0

    cmp-long v14, v12, v4

    if-lez v14, :cond_47b

    cmp-long v2, v12, v22

    if-nez v2, :cond_46a

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/google/android/gms/measurement/internal/zzah;->zzd:J

    .line 351
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 352
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46a
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 353
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 354
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V
    :try_end_472
    .catchall {:try_start_430 .. :try_end_472} :catchall_adb

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 66
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    return-void

    :cond_47b
    :try_start_47b
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzat;->zzb:Lcom/google/android/gms/measurement/internal/zzar;

    .line 126
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzar;->zzc()Landroid/os/Bundle;

    move-result-object v4

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v5

    const-string v11, "_o"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzat;->zzc:Ljava/lang/String;

    invoke-virtual {v5, v4, v11, v12}, Lcom/google/android/gms/measurement/internal/zzkz;->zzN(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/zzkz;->zzad(Ljava/lang/String;)Z

    move-result v5
    :try_end_494
    .catchall {:try_start_47b .. :try_end_494} :catchall_adb

    const-string v14, "_r"

    if-eqz v5, :cond_4ac

    .line 129
    :try_start_498
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v5

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "_dbg"

    invoke-virtual {v5, v4, v12, v11}, Lcom/google/android/gms/measurement/internal/zzkz;->zzN(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v5

    invoke-virtual {v5, v4, v14, v11}, Lcom/google/android/gms/measurement/internal/zzkz;->zzN(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4ac
    const-string v5, "_s"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    .line 131
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d2

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 132
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 133
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 134
    invoke-virtual {v5, v11, v7}, Lcom/google/android/gms/measurement/internal/zzaj;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v5

    if-eqz v5, :cond_4d2

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    .line 135
    instance-of v11, v11, Ljava/lang/Long;

    if-eqz v11, :cond_4d2

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v11

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    invoke-virtual {v11, v4, v7, v5}, Lcom/google/android/gms/measurement/internal/zzkz;->zzN(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4d2
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 137
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 138
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 140
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V
    :try_end_4e0
    .catchall {:try_start_498 .. :try_end_4e0} :catchall_adb

    .line 141
    :try_start_4e0
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 142
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzdy;->zzo:Lcom/google/android/gms/measurement/internal/zzdx;

    .line 143
    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)I

    move-result v11

    const v8, 0xf4240

    .line 144
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8
    :try_end_4f7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4e0 .. :try_end_4f7} :catch_512
    .catchall {:try_start_4e0 .. :try_end_4f7} :catchall_adb

    const/4 v13, 0x0

    .line 145
    :try_start_4f8
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 143
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    aput-object v10, v11, v13

    const/4 v12, 0x1

    aput-object v8, v11, v12

    const-string v8, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    .line 146
    invoke-virtual {v7, v6, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_50e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4f8 .. :try_end_50e} :catch_510
    .catchall {:try_start_4f8 .. :try_end_50e} :catchall_adb

    int-to-long v7, v5

    goto :goto_52a

    :catch_510
    move-exception v0

    goto :goto_514

    :catch_512
    move-exception v0

    const/4 v13, 0x0

    :goto_514
    move-object v7, v0

    .line 87
    :try_start_515
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 147
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v5

    .line 148
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v5

    const-string v8, "Error deleting over the limit events. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 149
    invoke-virtual {v5, v8, v11, v7}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v7, 0x0

    :goto_52a
    const-wide/16 v11, 0x0

    cmp-long v5, v7, v11

    if-lez v5, :cond_545

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v5

    const-string v11, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 152
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 153
    invoke-virtual {v5, v11, v12, v7}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_545
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzao;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzat;->zzc:Ljava/lang/String;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzat;->zzd:J

    const-wide/16 v18, 0x0

    move-object v11, v5

    const/16 v31, 0x0

    move-object v13, v7

    move-object v7, v14

    move-object v14, v10

    move-object/from16 v32, v6

    move-object v6, v15

    move-object v15, v8

    move-wide/from16 v16, v2

    move-object/from16 v20, v4

    .line 154
    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 155
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzao;->zzb:Ljava/lang/String;

    .line 156
    invoke-virtual {v2, v10, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    if-nez v2, :cond_5e8

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 157
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 158
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzaj;->zzf(Ljava/lang/String;)J

    move-result-wide v2

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)I

    move-result v4

    int-to-long v11, v4

    cmp-long v4, v2, v11

    if-ltz v4, :cond_5ca

    if-eqz v9, :cond_5ca

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 163
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v6

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzao;->zzb:Ljava/lang/String;

    .line 164
    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 166
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzC:Lcom/google/android/gms/measurement/internal/zzky;

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 168
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzkz;->zzM(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5c1
    .catchall {:try_start_515 .. :try_end_5c1} :catchall_adb

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 66
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    return-void

    :cond_5ca
    :try_start_5ca
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzap;

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/zzao;->zzb:Ljava/lang/String;

    iget-wide v3, v5, Lcom/google/android/gms/measurement/internal/zzao;->zzd:J

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v11, v2

    move-object v12, v10

    move-wide/from16 v20, v3

    .line 160
    invoke-direct/range {v11 .. v27}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_5f6

    .line 197
    :cond_5e8
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-wide v8, v2, Lcom/google/android/gms/measurement/internal/zzap;->zzf:J

    .line 169
    invoke-virtual {v5, v3, v8, v9}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Lcom/google/android/gms/measurement/internal/zzfv;J)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v5

    iget-wide v3, v5, Lcom/google/android/gms/measurement/internal/zzao;->zzd:J

    .line 170
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzap;->zzc(J)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 160
    :goto_5f6
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 171
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 172
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzF(Lcom/google/android/gms/measurement/internal/zzap;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    .line 175
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    .line 177
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    move-object/from16 v3, p2

    .line 178
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 179
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy;->zzu()Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzaa(I)Lcom/google/android/gms/internal/measurement/zzfx;

    const-string v8, "android"

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 180
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_63a

    .line 181
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 182
    :cond_63a
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_647

    .line 183
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 184
    :cond_647
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_654

    .line 185
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 186
    :cond_654
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    const-wide/32 v10, -0x80000000

    cmp-long v12, v8, v10

    if-eqz v12, :cond_661

    long-to-int v9, v8

    .line 187
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzE(I)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 188
    :cond_661
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzS(J)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 189
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_673

    .line 190
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzR(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 191
    :cond_673
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 192
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzks;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 193
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zzc(Lcom/google/android/gms/measurement/internal/zzag;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v8

    .line 194
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzag;->zzi()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzI(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 195
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzom;->zzc()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzdy;->zzac:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v8

    if-eqz v8, :cond_6da

    .line 198
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzan()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6b8

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6b8

    .line 199
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzQ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 200
    :cond_6b8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzan()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6f1

    .line 201
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzam()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6f1

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    .line 202
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6f1

    .line 203
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzy(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_6f1

    .line 196
    :cond_6da
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzan()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6f1

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6f1

    .line 197
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzy(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 204
    :cond_6f1
    :goto_6f1
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_6fc

    .line 205
    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzJ(J)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 206
    :cond_6fc
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzM(J)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 207
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzku;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 208
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzau()Landroid/content/Context;

    move-result-object v9

    .line 209
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzdy;->zzc(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_798

    .line 210
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_71c

    goto/16 :goto_798

    .line 320
    :cond_71c
    new-instance v14, Ljava/util/ArrayList;

    .line 211
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzdy;->zzO:Lcom/google/android/gms/measurement/internal/zzdx;

    .line 212
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 213
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_735
    :goto_735
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_792

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 214
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "measurement.id."

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12
    :try_end_74d
    .catchall {:try_start_5ca .. :try_end_74d} :catchall_adb

    if-eqz v12, :cond_735

    .line 215
    :try_start_74f
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_735

    .line 216
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    if-lt v11, v10, :cond_735

    iget-object v11, v8, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 218
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v11

    .line 219
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v11

    const-string v12, "Too many experiment IDs. Number of IDs"

    .line 220
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_77f
    .catch Ljava/lang/NumberFormatException; {:try_start_74f .. :try_end_77f} :catch_780
    .catchall {:try_start_74f .. :try_end_77f} :catchall_adb

    goto :goto_792

    :catch_780
    move-exception v0

    move-object v11, v0

    .line 341
    :try_start_782
    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 221
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v12

    .line 222
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v12

    const-string v13, "Experiment ID NumberFormatException"

    invoke-virtual {v12, v13, v11}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_735

    .line 223
    :cond_792
    :goto_792
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_799

    :cond_798
    :goto_798
    move-object v14, v6

    :cond_799
    if-eqz v14, :cond_79e

    .line 224
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/measurement/zzfx;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 225
    :cond_79e
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 226
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzks;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 227
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zzc(Lcom/google/android/gms/measurement/internal/zzag;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v8

    .line 228
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzag;->zzj()Z

    move-result v9

    if-eqz v9, :cond_7e6

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 229
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 230
    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzjp;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;)Landroid/util/Pair;

    move-result-object v9

    .line 231
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7e6

    .line 232
    iget-boolean v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    if-eqz v10, :cond_7e6

    .line 233
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzab(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 234
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v10, :cond_7e6

    .line 235
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzU(Z)Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_7e6
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 236
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v9

    .line 237
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgp;->zzu()V

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 238
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v9

    .line 239
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgp;->zzu()V

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzV(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 240
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v9

    .line 241
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzan;->zzb()J

    move-result-wide v9

    long-to-int v10, v9

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzaf(I)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 242
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v9

    .line 243
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzan;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzaj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzdy;->zzam:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v9, v6, v10}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v9

    if-nez v9, :cond_82e

    .line 245
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v2, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfx;->zzz(J)Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_82e
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 246
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzJ()Z

    move-result v9

    if-eqz v9, :cond_842

    .line 247
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzal()Ljava/lang/String;

    .line 248
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_842

    .line 249
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_842
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 250
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 251
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzaj;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v9

    if-nez v9, :cond_8c1

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 252
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzks;->zzw(Lcom/google/android/gms/measurement/internal/zzag;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzI(Ljava/lang/String;)V

    .line 254
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzW(Ljava/lang/String;)V

    .line 255
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzY(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzag;->zzj()Z

    move-result v10

    if-eqz v10, :cond_87a

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 257
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzjp;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 258
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzag(Ljava/lang/String;)V

    :cond_87a
    const-wide/16 v10, 0x0

    .line 259
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzac(J)V

    .line 260
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzad(J)V

    .line 261
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzab(J)V

    .line 262
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzK(Ljava/lang/String;)V

    .line 263
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzL(J)V

    .line 264
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzJ(Ljava/lang/String;)V

    .line 265
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzZ(J)V

    .line 266
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzT(J)V

    .line 267
    iget-boolean v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzae(Z)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzdy;->zzam:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v10, v6, v11}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v10

    if-nez v10, :cond_8b4

    .line 269
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzH(J)V

    .line 270
    :cond_8b4
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzU(J)V

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 271
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 272
    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/zzaj;->zzE(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 273
    :cond_8c1
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzag;->zzk()Z

    move-result v8

    if-eqz v8, :cond_8de

    .line 274
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8de

    .line 275
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 276
    :cond_8de
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8f5

    .line 277
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    :cond_8f5
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 278
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 279
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzu(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x0

    .line 280
    :goto_901
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v13, v8, :cond_937

    .line 281
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->zzd()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v8

    .line 282
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzkx;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkx;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzgg;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 283
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzkx;

    iget-wide v9, v9, Lcom/google/android/gms/measurement/internal/zzkx;->zzd:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzgg;->zzg(J)Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 284
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 285
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzkx;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    invoke-virtual {v9, v8, v10}, Lcom/google/android/gms/measurement/internal/zzku;->zzv(Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzk(Lcom/google/android/gms/internal/measurement/zzgg;)Lcom/google/android/gms/internal/measurement/zzfx;
    :try_end_934
    .catchall {:try_start_782 .. :try_end_934} :catchall_adb

    add-int/lit8 v13, v13, 0x1

    goto :goto_901

    :cond_937
    :try_start_937
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 287
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 288
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfy;

    .line 289
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 290
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    .line 291
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzih;->zzbs()[B

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 294
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 295
    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzd([B)J

    move-result-wide v10

    new-instance v12, Landroid/content/ContentValues;

    .line 296
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 297
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, v30

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v15, v33

    invoke-virtual {v12, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v13, "metadata"

    .line 299
    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_97d
    .catch Ljava/io/IOException; {:try_start_937 .. :try_end_97d} :catch_a91
    .catchall {:try_start_937 .. :try_end_97d} :catchall_adb

    .line 300
    :try_start_97d
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v13, "raw_events_metadata"

    const/4 v4, 0x4

    .line 301
    invoke-virtual {v9, v13, v6, v12, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_987
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_97d .. :try_end_987} :catch_a77
    .catch Ljava/io/IOException; {:try_start_97d .. :try_end_987} :catch_a91
    .catchall {:try_start_97d .. :try_end_987} :catchall_adb

    :try_start_987
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 311
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzao;->zzf:Lcom/google/android/gms/measurement/internal/zzar;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 312
    invoke-direct {v4, v3}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzar;)V

    .line 313
    :cond_993
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a5

    .line 314
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zza()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_993

    :goto_9a3
    const/4 v13, 0x1

    goto :goto_9e6

    .line 348
    :cond_9a5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 316
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzao;->zzb:Ljava/lang/String;

    .line 317
    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/measurement/internal/zzfm;->zzn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 318
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zza()J

    move-result-wide v17

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, v4

    move-object/from16 v19, v7

    invoke-virtual/range {v16 .. v24}, Lcom/google/android/gms/measurement/internal/zzaj;->zzl(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v4

    if-eqz v3, :cond_9e5

    iget-wide v3, v4, Lcom/google/android/gms/measurement/internal/zzah;->zze:J

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdy;->zzn:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)I

    move-result v7

    int-to-long v7, v7

    cmp-long v9, v3, v7

    if-gez v9, :cond_9e5

    goto :goto_9a3

    :cond_9e5
    const/4 v13, 0x0

    .line 321
    :goto_9e6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 322
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    .line 323
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    .line 324
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    .line 325
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 326
    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzku;->zzj(Lcom/google/android/gms/measurement/internal/zzao;)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzih;->zzbs()[B

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    .line 327
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    .line 328
    invoke-virtual {v4, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "name"

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzao;->zzb:Ljava/lang/String;

    .line 329
    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "timestamp"

    iget-wide v8, v5, Lcom/google/android/gms/measurement/internal/zzao;->zzd:J

    .line 330
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 331
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "data"

    .line 332
    invoke-virtual {v4, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "realtime"

    .line 333
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_a34
    .catchall {:try_start_987 .. :try_end_a34} :catchall_adb

    .line 334
    :try_start_a34
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object/from16 v7, v32

    .line 335
    invoke-virtual {v3, v7, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-nez v8, :cond_a5a

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 336
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 337
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v4, "Failed to insert raw event (got -1). appId"

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 338
    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a59
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a34 .. :try_end_a59} :catch_a5f
    .catchall {:try_start_a34 .. :try_end_a59} :catchall_adb

    goto :goto_aa8

    :cond_a5a
    const-wide/16 v3, 0x0

    .line 348
    :try_start_a5c
    iput-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zza:J

    goto :goto_aa8

    :catch_a5f
    move-exception v0

    move-object v3, v0

    .line 306
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 339
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 340
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v4, "Error storing raw event. appId"

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 341
    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a76
    .catchall {:try_start_a5c .. :try_end_a76} :catchall_adb

    goto :goto_aa8

    :catch_a77
    move-exception v0

    move-object v4, v0

    .line 310
    :try_start_a79
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 302
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 303
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v5, "Error storing raw event metadata. appId"

    .line 304
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 305
    invoke-virtual {v3, v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    throw v4
    :try_end_a91
    .catch Ljava/io/IOException; {:try_start_a79 .. :try_end_a91} :catch_a91
    .catchall {:try_start_a79 .. :try_end_a91} :catchall_adb

    :catch_a91
    move-exception v0

    move-object v3, v0

    .line 307
    :try_start_a93
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v4

    .line 308
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v4

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 309
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 310
    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 338
    :goto_aa8
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 342
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 343
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V
    :try_end_ab0
    .catchall {:try_start_a93 .. :try_end_ab0} :catchall_adb

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 66
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaf()V

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    .line 347
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v28

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    .line 348
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_adb
    move-exception v0

    move-object v2, v0

    .line 364
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 66
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 67
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    .line 363
    throw v2

    .line 364
    :cond_ae6
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzd(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void
.end method

.method final zzX()Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzw:Ljava/nio/channels/FileLock;

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_21

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_21

    .line 14
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    return v1

    .line 2
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzau()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string v4, "google_app_measurement.db"

    .line 6
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_39
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    .line 7
    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzx:Ljava/nio/channels/FileChannel;

    .line 8
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzw:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_5a

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    return v1

    .line 10
    :cond_5a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_67} :catch_86
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_67} :catch_77
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_39 .. :try_end_67} :catch_68

    goto :goto_94

    :catch_68
    move-exception v0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_94

    :catch_77
    move-exception v0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_94

    :catch_86
    move-exception v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_94
    const/4 v0, 0x0

    return v0
.end method

.method final zza()J
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzjp;->zze:Lcom/google/android/gms/measurement/internal/zzew;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zza()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_36

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkz;->zzF()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjp;->zze:Lcom/google/android/gms/measurement/internal/zzew;

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzb(J)V

    :cond_36
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzau()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzau()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zzav()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzaw()Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzay()Lcom/google/android/gms/measurement/internal/zzel;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    return-object v0
.end method

.method public final zzaz()Lcom/google/android/gms/measurement/internal/zzfs;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    return-object v0
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 6
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzc(Lcom/google/android/gms/measurement/internal/zzag;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzj()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 11
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzjp;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3e

    :cond_3c
    const-string v2, ""

    :goto_3e
    const/4 v3, 0x0

    if-nez v0, :cond_62

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 12
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzk()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 14
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzw(Lcom/google/android/gms/measurement/internal/zzag;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzI(Ljava/lang/String;)V

    .line 15
    :cond_57
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzj()Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 16
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzag(Ljava/lang/String;)V

    goto/16 :goto_12a

    .line 17
    :cond_62
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzj()Z

    move-result v4

    if-eqz v4, :cond_113

    if-eqz v2, :cond_113

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_113

    .line 22
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzag(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmt;->zzc()Z

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzdy;->zzav:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v2

    const-string v4, "00000000-0000-0000-0000-000000000000"

    if-eqz v2, :cond_ac

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdy;->zzaz:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v2

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 27
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 28
    invoke-virtual {v2, v5, v1}, Lcom/google/android/gms/measurement/internal/zzjp;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 29
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    .line 30
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzw(Lcom/google/android/gms/measurement/internal/zzag;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzI(Ljava/lang/String;)V

    goto :goto_b3

    .line 26
    :cond_ac
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzw(Lcom/google/android/gms/measurement/internal/zzag;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzI(Ljava/lang/String;)V

    .line 31
    :cond_b3
    :goto_b3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmt;->zzc()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdy;->zzav:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v2

    if-eqz v2, :cond_12a

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    .line 32
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 33
    invoke-virtual {v2, v5, v1}, Lcom/google/android/gms/measurement/internal/zzjp;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 34
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12a

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 35
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 36
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v4, "_id"

    .line 37
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/measurement/internal/zzaj;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v1

    if-eqz v1, :cond_12a

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 38
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 39
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v4, "_lair"

    .line 40
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/measurement/internal/zzaj;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v1

    if-nez v1, :cond_12a

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkx;

    .line 42
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-wide/16 v6, 0x1

    .line 43
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v6, "auto"

    const-string v7, "_lair"

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 44
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 45
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzN(Lcom/google/android/gms/measurement/internal/zzkx;)Z

    goto :goto_12a

    .line 19
    :cond_113
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzk()Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 21
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzks;->zzw(Lcom/google/android/gms/measurement/internal/zzag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzI(Ljava/lang/String;)V

    .line 46
    :cond_12a
    :goto_12a
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzY(Ljava/lang/String;)V

    .line 47
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzF(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzom;->zzc()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzdy;->zzac:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v1

    if-eqz v1, :cond_14c

    .line 49
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzX(Ljava/lang/String;)V

    .line 50
    :cond_14c
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_159

    .line 51
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzW(Ljava/lang/String;)V

    .line 52
    :cond_159
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_164

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzZ(J)V

    .line 54
    :cond_164
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_171

    .line 55
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzK(Ljava/lang/String;)V

    .line 56
    :cond_171
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzL(J)V

    .line 57
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_17d

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzJ(Ljava/lang/String;)V

    .line 59
    :cond_17d
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzT(J)V

    .line 60
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzae(Z)V

    .line 61
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_194

    .line 62
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa(Ljava/lang/String;)V

    .line 63
    :cond_194
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzg()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdy;->zzam:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v1

    if-nez v1, :cond_1a5

    .line 64
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzH(J)V

    .line 65
    :cond_1a5
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzG(Z)V

    .line 66
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf(Ljava/lang/Boolean;)V

    .line 67
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzU(J)V

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Z

    move-result p1

    if-eqz p1, :cond_1c2

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 70
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzE(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_1c2
    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzz;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzh:Lcom/google/android/gms/measurement/internal/zzz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzaf;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    return-object v0
.end method

.method final zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzag;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzB()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzB:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzag;

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select consent_state from consent_settings where app_id=? limit 1;"

    const/4 v5, 0x0

    .line 9
    :try_start_2f
    invoke-virtual {v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 10
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 12
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_3d} :catch_54
    .catchall {:try_start_2f .. :try_end_3d} :catchall_52

    if-eqz v5, :cond_4a

    .line 11
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_4a

    :cond_43
    if-eqz v5, :cond_48

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_48
    const-string v0, "G1"

    .line 17
    :cond_4a
    :goto_4a
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzT(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;)V

    goto :goto_6b

    :catchall_52
    move-exception p1

    goto :goto_65

    :catch_54
    move-exception p1

    .line 11
    :try_start_55
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v1, "Database error"

    invoke-virtual {v0, v1, v4, p1}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    throw p1
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_52

    :goto_65
    if-eqz v5, :cond_6a

    .line 11
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 16
    :cond_6a
    throw p1

    :cond_6b
    :goto_6b
    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzaj;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzeg;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzd:Lcom/google/android/gms/measurement/internal/zzer;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzet;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzet;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzo()Lcom/google/android/gms/measurement/internal/zzfm;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Lcom/google/android/gms/measurement/internal/zzfm;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    return-object v0
.end method

.method final zzq()Lcom/google/android/gms/measurement/internal/zzfv;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/measurement/internal/zzif;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzj:Lcom/google/android/gms/measurement/internal/zzif;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    return-object v0
.end method

.method public final zzs()Lcom/google/android/gms/measurement/internal/zzjp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzk:Lcom/google/android/gms/measurement/internal/zzjp;

    return-object v0
.end method

.method public final zzu()Lcom/google/android/gms/measurement/internal/zzku;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzi:Lcom/google/android/gms/measurement/internal/zzku;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzak(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzki;

    return-object v0
.end method

.method public final zzv()Lcom/google/android/gms/measurement/internal/zzkz;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzn:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v0

    return-object v0
.end method

.method final zzw(Lcom/google/android/gms/measurement/internal/zzag;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzag;->zzk()Z

    move-result p1

    if-eqz p1, :cond_29

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkz;->zzF()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/math/BigInteger;

    .line 3
    invoke-direct {v3, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    const-string p1, "%032x"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method final zzx(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfs;->zzh(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    :try_start_f
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_17} :catch_1c
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_17} :catch_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    goto :goto_1d

    :catch_1a
    move-exception v0

    goto :goto_1d

    :catch_1c
    move-exception v0

    .line 4
    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 6
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzz(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzks;->zzaz()Lcom/google/android/gms/measurement/internal/zzfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzq:Ljava/util/List;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzq:Ljava/util/List;

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzq:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
