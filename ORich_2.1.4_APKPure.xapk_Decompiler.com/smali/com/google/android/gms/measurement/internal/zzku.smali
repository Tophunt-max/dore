###### Class com.google.android.gms.measurement.internal.zzku (com.google.android.gms.measurement.internal.zzku)
.class public final Lcom/google/android/gms/measurement/internal/zzku;
.super Lcom/google/android/gms/measurement/internal/zzki;
.source "com.google.android.gms:play-services-measurement@@20.0.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzks;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    return-void
.end method

.method static final zzA(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfn;->zzp()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_20

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    const/4 v1, -0x1

    .line 4
    :goto_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 5
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_35

    .line 6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfr;

    goto :goto_5a

    .line 7
    :cond_35
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_3f

    .line 8
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    goto :goto_5a

    .line 9
    :cond_3f
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_4d

    .line 10
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzh(D)Lcom/google/android/gms/internal/measurement/zzfr;

    goto :goto_5a

    .line 11
    :cond_4d
    instance-of p1, p2, [Landroid/os/Bundle;

    if-eqz p1, :cond_5a

    .line 12
    check-cast p2, [Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzku;->zzq([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfr;

    :cond_5a
    :goto_5a
    if-ltz v1, :cond_60

    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzfn;->zzj(ILcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfn;

    return-void

    .line 14
    :cond_60
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzfn;->zze(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfn;

    return-void
.end method

.method static final zzB(Lcom/google/android/gms/measurement/internal/zzat;Lcom/google/android/gms/measurement/internal/zzp;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method static final zzC(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzi()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method static final zzD(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object p0

    if-eqz p0, :cond_b6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzy()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzw()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide p0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzu()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->zza()D

    move-result-wide p0

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzc()I

    move-result p1

    if-lez p1, :cond_b6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzi()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_42
    :goto_42
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    if-eqz v0, :cond_42

    new-instance v1, Landroid/os/Bundle;

    .line 7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzi()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5d
    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzy()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 11
    :cond_7b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzw()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_5d

    .line 13
    :cond_8d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzu()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zza()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_5d

    .line 15
    :cond_9f
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 16
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 17
    :cond_a9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/os/Bundle;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    :cond_b6
    const/4 p0, 0x0

    return-object p0
.end method

.method private final zzE(Ljava/lang/StringBuilder;ILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfs;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_9
    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    if-eqz v0, :cond_9

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    const-string v1, "param {\n"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzx()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_36

    :cond_35
    move-object v1, v2

    :goto_36
    const-string v3, "name"

    .line 6
    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzy()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh()Ljava/lang/String;

    move-result-object v1

    goto :goto_47

    :cond_46
    move-object v1, v2

    :goto_47
    const-string v3, "string_value"

    .line 7
    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzw()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()J

    move-result-wide v3

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_5c

    :cond_5b
    move-object v1, v2

    :goto_5c
    const-string v3, "int_value"

    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzu()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zza()D

    move-result-wide v1

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_6f
    const-string v1, "double_value"

    .line 10
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzc()I

    move-result v1

    if-lez v1, :cond_81

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzi()Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzku;->zzE(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 13
    :cond_81
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_8b
    return-void
.end method

.method private final zzF(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzel;)V
    .registers 9

    if-nez p3, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzel;->zzh()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzel;->zzg()Z

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "complement"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzel;->zzj()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzel;->zze()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param_name"

    .line 6
    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_37
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzel;->zzk()Z

    move-result v0

    const-string v1, "}\n"

    if-eqz v0, :cond_d4

    add-int/lit8 v0, p2, 0x1

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzel;->zzd()Lcom/google/android/gms/internal/measurement/zzex;

    move-result-object v2

    if-nez v2, :cond_49

    goto/16 :goto_d4

    .line 8
    :cond_49
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    const-string v3, "string_filter {\n"

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzex;->zzi()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzex;->zzj()I

    move-result v3

    packed-switch v3, :pswitch_data_ec

    const-string v3, "IN_LIST"

    goto :goto_72

    :pswitch_61
    const-string v3, "EXACT"

    goto :goto_72

    :pswitch_64
    const-string v3, "PARTIAL"

    goto :goto_72

    :pswitch_67
    const-string v3, "ENDS_WITH"

    goto :goto_72

    :pswitch_6a
    const-string v3, "BEGINS_WITH"

    goto :goto_72

    :pswitch_6d
    const-string v3, "REGEXP"

    goto :goto_72

    :pswitch_70
    const-string v3, "UNKNOWN_MATCH_TYPE"

    :goto_72
    const-string v4, "match_type"

    .line 10
    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_77
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzex;->zzh()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzex;->zzd()Ljava/lang/String;

    move-result-object v3

    const-string v4, "expression"

    .line 11
    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_86
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzex;->zzg()Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzex;->zzf()Z

    move-result v3

    .line 12
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "case_sensitive"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 13
    :cond_99
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzex;->zza()I

    move-result v3

    if-lez v3, :cond_ce

    add-int/lit8 v3, v0, 0x1

    .line 14
    invoke-static {p1, v3}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    const-string v3, "expression_list {\n"

    .line 15
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzex;->zze()Ljava/util/List;

    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v0, 0x2

    .line 17
    invoke-static {p1, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    .line 18
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 19
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b1

    .line 20
    :cond_cb
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_ce
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_d4
    :goto_d4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzel;->zzi()Z

    move-result v0

    if-eqz v0, :cond_e5

    add-int/lit8 v0, p2, 0x1

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzel;->zzc()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object p3

    const-string v2, "number_filter"

    invoke-static {p1, v0, v2, p3}, Lcom/google/android/gms/measurement/internal/zzku;->zzK(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzeq;)V

    .line 24
    :cond_e5
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
    .end packed-switch
.end method

.method private static final zzG(Ljava/lang/StringBuilder;I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    const-string v1, "  "

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method private static final zzH(ZZZ)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_c

    const-string p0, "Dynamic "

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz p1, :cond_13

    const-string p0, "Sequence "

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    if-eqz p2, :cond_1a

    const-string p0, "Session-Scoped "

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final zzI(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzgd;)V
    .registers 13

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x3

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    .line 3
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgd;->zzb()I

    move-result p2

    const/16 v0, 0xa

    const/4 v1, 0x4

    const-string v2, ", "

    const/4 v3, 0x0

    if-eqz p2, :cond_47

    .line 5
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    const-string p2, "results: "

    .line 6
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgd;->zzk()Ljava/util/List;

    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v4, 0x0

    :goto_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_3f

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_3f
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_2c

    .line 10
    :cond_44
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    :cond_47
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgd;->zzd()I

    move-result p2

    if-eqz p2, :cond_79

    .line 12
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    const-string p2, "status: "

    .line 13
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgd;->zzn()Ljava/util/List;

    move-result-object p2

    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v4, 0x0

    :goto_5e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_71

    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_71
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_5e

    .line 17
    :cond_76
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    :cond_79
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgd;->zza()I

    move-result p2

    const/4 v0, 0x0

    const-string v4, "}\n"

    if-eqz p2, :cond_d6

    .line 19
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    const-string p2, "dynamic_filter_timestamps: {"

    .line 20
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgd;->zzj()Ljava/util/List;

    move-result-object p2

    .line 21
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v5, 0x0

    :goto_93
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfm;

    add-int/lit8 v7, v5, 0x1

    if-eqz v5, :cond_a6

    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_a6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfm;->zzh()Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfm;->zza()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_b6

    :cond_b5
    move-object v5, v0

    :goto_b6
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    .line 24
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfm;->zzg()Z

    move-result v5

    if-eqz v5, :cond_cd

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfm;->zzb()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_ce

    :cond_cd
    move-object v5, v0

    :goto_ce
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_93

    .line 26
    :cond_d3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_d6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgd;->zzc()I

    move-result p2

    if-eqz p2, :cond_147

    .line 28
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    const-string p2, "sequence_filter_timestamps: {"

    .line 29
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgd;->zzm()Ljava/util/List;

    move-result-object p2

    .line 30
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_ed
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_144

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgf;

    add-int/lit8 v5, p3, 0x1

    if-eqz p3, :cond_100

    .line 31
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_100
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgf;->zzi()Z

    move-result p3

    if-eqz p3, :cond_10f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgf;->zzb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_110

    :cond_10f
    move-object p3, v0

    :goto_110
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": ["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgf;->zzf()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v1, 0x0

    :goto_121
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-int/lit8 v8, v1, 0x1

    if-eqz v1, :cond_138

    .line 34
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_138
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v8

    goto :goto_121

    :cond_13d
    const-string p3, "]"

    .line 36
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p3, v5

    goto :goto_ed

    .line 37
    :cond_144
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_147
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    .line 39
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final zzK(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzeq;)V
    .registers 5

    if-nez p3, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    .line 3
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzeq;->zzg()Z

    move-result p2

    if-eqz p2, :cond_37

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzeq;->zzm()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_30

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2a

    const/4 v0, 0x4

    if-eq p2, v0, :cond_27

    const-string p2, "BETWEEN"

    goto :goto_32

    :cond_27
    const-string p2, "EQUAL"

    goto :goto_32

    :cond_2a
    const-string p2, "GREATER_THAN"

    goto :goto_32

    :cond_2d
    const-string p2, "LESS_THAN"

    goto :goto_32

    :cond_30
    const-string p2, "UNKNOWN_COMPARISON_TYPE"

    :goto_32
    const-string v0, "comparison_type"

    .line 4
    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_37
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzeq;->zzi()Z

    move-result p2

    if-eqz p2, :cond_4a

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzeq;->zzf()Z

    move-result p2

    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "match_as_float"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4a
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzeq;->zzh()Z

    move-result p2

    if-eqz p2, :cond_59

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzeq;->zzc()Ljava/lang/String;

    move-result-object p2

    const-string v0, "comparison_value"

    .line 6
    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_59
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzeq;->zzk()Z

    move-result p2

    if-eqz p2, :cond_68

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzeq;->zze()Ljava/lang/String;

    move-result-object p2

    const-string v0, "min_comparison_value"

    .line 7
    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_68
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzeq;->zzj()Z

    move-result p2

    if-eqz p2, :cond_77

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzeq;->zzd()Ljava/lang/String;

    move-result-object p2

    const-string p3, "max_comparison_value"

    .line 8
    invoke-static {p0, p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 9
    :cond_77
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n"

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzfx;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfx;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzfx;->zzak(I)Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgh;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method static zzl(Lcom/google/android/gms/internal/measurement/zzlb;[B)Lcom/google/android/gms/internal/measurement/zzlb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Builder::",
            "Lcom/google/android/gms/internal/measurement/zzlb;",
            ">(TBuilder;[B)TBuilder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkh;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjj;->zzb()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzaw([BLcom/google/android/gms/internal/measurement/zzjj;)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p0

    return-object p0

    .line 3
    :cond_b
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlb;->zzav([B)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p0

    return-object p0
.end method

.method static zzq([Landroid/os/Bundle;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfs;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_6c

    aget-object v3, p0, v2

    if-nez v3, :cond_e

    goto :goto_69

    .line 3
    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v4

    .line 4
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 6
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 7
    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_3f

    .line 8
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfr;

    goto :goto_56

    .line 9
    :cond_3f
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_49

    .line 10
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzfr;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    goto :goto_56

    .line 11
    :cond_49
    instance-of v8, v6, Ljava/lang/Double;

    if-eqz v8, :cond_1a

    .line 12
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfr;->zzh(D)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 13
    :goto_56
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzfr;->zzc(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfr;

    goto :goto_1a

    .line 14
    :cond_5a
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfr;->zza()I

    move-result v3

    if-lez v3, :cond_69

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_69
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6c
    return-object v0
.end method

.method static zzs(Ljava/util/BitSet;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    new-instance v2, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v0, :cond_38

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_15
    if-ge v7, v1, :cond_2e

    mul-int/lit8 v8, v4, 0x40

    add-int/2addr v8, v7

    .line 3
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v9

    if-lt v8, v9, :cond_21

    goto :goto_2e

    .line 4
    :cond_21
    invoke-virtual {p0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2b

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v7

    or-long/2addr v5, v8

    :cond_2b
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 5
    :cond_2e
    :goto_2e
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_38
    return-object v2
.end method

.method static zzw(Ljava/util/List;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x40

    if-ge p1, v0, :cond_23

    div-int/lit8 v0, p1, 0x40

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    rem-int/lit8 p1, p1, 0x40

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method static zzy(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_14

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected final zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzd([B)J
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzkz;->zzE()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p1

    const-string v0, "Failed to get MD5"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 7
    :cond_24
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkz;->zzp([B)J

    move-result-wide v0

    return-wide v0
.end method

.method final zzf(Ljava/util/Map;Z)Landroid/os/Bundle;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_24

    .line 4
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 5
    :cond_24
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_32

    .line 6
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_d

    .line 7
    :cond_32
    instance-of v5, v3, Ljava/lang/Double;

    if-eqz v5, :cond_40

    .line 8
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_d

    .line 9
    :cond_40
    instance-of v5, v3, Ljava/util/ArrayList;

    if-eqz v5, :cond_a5

    if-eqz p2, :cond_d

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpe;->zzc()Z

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    .line 10
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzdy;->zzau:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_82

    .line 18
    check-cast v3, Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_64
    if-ge v7, v6, :cond_76

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 21
    check-cast v8, Ljava/util/Map;

    .line 22
    invoke-virtual {p0, v8, v5}, Lcom/google/android/gms/measurement/internal/zzku;->zzf(Ljava/util/Map;Z)Landroid/os/Bundle;

    move-result-object v8

    .line 23
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    :cond_76
    new-array v3, v5, [Landroid/os/Parcelable;

    .line 24
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    .line 18
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_d

    .line 12
    :cond_82
    check-cast v3, Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_8e
    if-ge v7, v6, :cond_a0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 15
    check-cast v8, Ljava/util/Map;

    .line 16
    invoke-virtual {p0, v8, v5}, Lcom/google/android/gms/measurement/internal/zzku;->zzf(Ljava/util/Map;Z)Landroid/os/Bundle;

    move-result-object v8

    .line 17
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_8e

    .line 12
    :cond_a0
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_d

    .line 25
    :cond_a5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_ae
    return-object v0
.end method

.method final zzh([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    array-length v2, p1

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4
    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_16
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_8 .. :try_end_16} :catch_1c
    .catchall {:try_start_8 .. :try_end_16} :catchall_1a

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_1a
    move-exception p1

    goto :goto_2f

    :catch_1c
    :try_start_1c
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p1

    const-string p2, "Failed to load parcelable from buffer"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_1a

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :goto_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8
    throw p1
.end method

.method final zzi(Lcom/google/android/gms/internal/measurement/zzaa;)Lcom/google/android/gms/measurement/internal/zzat;
    .registers 10

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaa;->zze()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzf(Ljava/util/Map;Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_o"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1c
    const-string v1, "app"

    :goto_1e
    move-object v5, v1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaa;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaa;->zzd()Ljava/lang/String;

    move-result-object v1

    :cond_2d
    move-object v3, v1

    .line 7
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzat;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaa;->zza()J

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;J)V

    return-object v1
.end method

.method final zzj(Lcom/google/android/gms/measurement/internal/zzao;)Lcom/google/android/gms/internal/measurement/zzfo;
    .registers 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zze()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzao;->zze:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzl(J)Lcom/google/android/gms/internal/measurement/zzfn;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzao;->zzf:Lcom/google/android/gms/measurement/internal/zzar;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 2
    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzar;)V

    .line 3
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zza()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzao;->zzf:Lcom/google/android/gms/measurement/internal/zzar;

    .line 6
    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzu(Lcom/google/android/gms/internal/measurement/zzfr;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zze(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfn;

    goto :goto_10

    .line 10
    :cond_31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfo;

    return-object p1
.end method

.method final zzm(Lcom/google/android/gms/internal/measurement/zzfw;)Ljava/lang/String;
    .registers 13

    if-nez p1, :cond_5

    const-string p1, ""

    return-object p1

    .line 1
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nbatch {\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfw;->zzd()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "}\n"

    if-eqz v1, :cond_39f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy;

    if-eqz v1, :cond_17

    const/4 v3, 0x1

    .line 4
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    const-string v4, "bundle {\n"

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbh()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzd()I

    move-result v4

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "protocol_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzK()Ljava/lang/String;

    move-result-object v4

    const-string v5, "platform"

    .line 7
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbd()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzn()J

    move-result-wide v4

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "gmp_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_5f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbn()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzs()J

    move-result-wide v4

    .line 9
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "uploading_gmp_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbb()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzk()J

    move-result-wide v4

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "dynamite_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_85
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzaY()Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzi()J

    move-result-wide v4

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "config_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_98
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzH()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gmp_app_id"

    .line 12
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzx()Ljava/lang/String;

    move-result-object v4

    const-string v5, "admob_app_id"

    .line 13
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id"

    .line 14
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzB()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_version"

    .line 15
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzaW()Z

    move-result v4

    if-eqz v4, :cond_cf

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zza()I

    move-result v4

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "app_version_major"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_cf
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzF()Ljava/lang/String;

    move-result-object v4

    const-string v5, "firebase_instance_id"

    .line 17
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzba()Z

    move-result v4

    if-eqz v4, :cond_eb

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzj()J

    move-result-wide v4

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "dev_cert_hash"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_eb
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzA()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_store"

    .line 19
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbm()Z

    move-result v4

    if-eqz v4, :cond_107

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzr()J

    move-result-wide v4

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "upload_timestamp_millis"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_107
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbk()Z

    move-result v4

    if-eqz v4, :cond_11a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzq()J

    move-result-wide v4

    .line 21
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "start_timestamp_millis"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_11a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbc()Z

    move-result v4

    if-eqz v4, :cond_12d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzm()J

    move-result-wide v4

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "end_timestamp_millis"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_12d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbg()Z

    move-result v4

    if-eqz v4, :cond_140

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzp()J

    move-result-wide v4

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "previous_bundle_start_timestamp_millis"

    .line 24
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_140
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbf()Z

    move-result v4

    if-eqz v4, :cond_153

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzo()J

    move-result-wide v4

    .line 25
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "previous_bundle_end_timestamp_millis"

    .line 26
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_153
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzz()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_instance_id"

    .line 27
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzL()Ljava/lang/String;

    move-result-object v4

    const-string v5, "resettable_device_id"

    .line 28
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzE()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ds_id"

    .line 29
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbe()Z

    move-result v4

    if-eqz v4, :cond_181

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzaT()Z

    move-result v4

    .line 30
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "limited_ad_tracking"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_181
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzJ()Ljava/lang/String;

    move-result-object v4

    const-string v5, "os_version"

    .line 31
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzD()Ljava/lang/String;

    move-result-object v4

    const-string v5, "device_model"

    .line 32
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzM()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_default_language"

    .line 33
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbl()Z

    move-result v4

    if-eqz v4, :cond_1af

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzf()I

    move-result v4

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "time_zone_offset_minutes"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1af
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzaX()Z

    move-result v4

    if-eqz v4, :cond_1c2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzb()I

    move-result v4

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "bundle_sequential_index"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1c2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbj()Z

    move-result v4

    if-eqz v4, :cond_1d5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzaU()Z

    move-result v4

    .line 36
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "service_upload"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1d5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzI()Ljava/lang/String;

    move-result-object v4

    const-string v5, "health_monitor"

    .line 37
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    .line 39
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdy;->zzam:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v4

    if-nez v4, :cond_20a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzaV()Z

    move-result v4

    if-eqz v4, :cond_20a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzh()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-eqz v9, :cond_20a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzh()J

    move-result-wide v4

    .line 40
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_20a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbi()Z

    move-result v4

    if-eqz v4, :cond_21d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zze()I

    move-result v4

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "retry_counter"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_21d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzaZ()Z

    move-result v4

    if-eqz v4, :cond_22c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzC()Ljava/lang/String;

    move-result-object v4

    const-string v5, "consent_signals"

    .line 42
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_22c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzP()Ljava/util/List;

    move-result-object v4

    const-string v5, "name"

    const/4 v7, 0x2

    if-nez v4, :cond_237

    goto/16 :goto_2b1

    .line 43
    :cond_237
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23b
    :goto_23b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2b1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgh;

    if-eqz v8, :cond_23b

    .line 44
    invoke-static {v0, v7}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    const-string v9, "user_property {\n"

    .line 45
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgh;->zzs()Z

    move-result v9

    if-eqz v9, :cond_260

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgh;->zzc()J

    move-result-wide v9

    .line 46
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_261

    :cond_260
    move-object v9, v6

    :goto_261
    const-string v10, "set_timestamp_millis"

    .line 47
    invoke-static {v0, v7, v10, v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 48
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgh;->zzf()Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 50
    invoke-static {v0, v7, v5, v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgh;->zzg()Ljava/lang/String;

    move-result-object v9

    const-string v10, "string_value"

    .line 51
    invoke-static {v0, v7, v10, v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgh;->zzr()Z

    move-result v9

    if-eqz v9, :cond_28f

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgh;->zzb()J

    move-result-wide v9

    .line 52
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_290

    :cond_28f
    move-object v9, v6

    :goto_290
    const-string v10, "int_value"

    invoke-static {v0, v7, v10, v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgh;->zzq()Z

    move-result v9

    if-eqz v9, :cond_2a4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgh;->zza()D

    move-result-wide v8

    .line 53
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_2a5

    :cond_2a4
    move-object v8, v6

    :goto_2a5
    const-string v9, "double_value"

    .line 54
    invoke-static {v0, v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-static {v0, v7}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23b

    .line 42
    :cond_2b1
    :goto_2b1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzN()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2b8

    goto :goto_317

    .line 57
    :cond_2b8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2bc
    :goto_2bc
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_317

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfk;

    if-eqz v6, :cond_2bc

    .line 58
    invoke-static {v0, v7}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    const-string v8, "audience_membership {\n"

    .line 59
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zzk()Z

    move-result v8

    if-eqz v8, :cond_2e5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zza()I

    move-result v8

    .line 60
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "audience_id"

    invoke-static {v0, v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2e5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zzm()Z

    move-result v8

    if-eqz v8, :cond_2f8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zzj()Z

    move-result v8

    .line 61
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "new_audience"

    invoke-static {v0, v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 62
    :cond_2f8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd()Lcom/google/android/gms/internal/measurement/zzgd;

    move-result-object v8

    const-string v9, "current_data"

    invoke-static {v0, v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzku;->zzI(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzgd;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zzn()Z

    move-result v8

    if-eqz v8, :cond_310

    .line 63
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zze()Lcom/google/android/gms/internal/measurement/zzgd;

    move-result-object v6

    const-string v8, "previous_data"

    invoke-static {v0, v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzku;->zzI(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzgd;)V

    .line 64
    :cond_310
    invoke-static {v0, v7}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2bc

    .line 42
    :cond_317
    :goto_317
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzO()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_31f

    goto/16 :goto_397

    .line 66
    :cond_31f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_323
    :goto_323
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_397

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfo;

    if-eqz v4, :cond_323

    .line 67
    invoke-static {v0, v7}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    const-string v6, "event {\n"

    .line 68
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 69
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo;->zzh()Ljava/lang/String;

    move-result-object v8

    .line 70
    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v7, v5, v6}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo;->zzu()Z

    move-result v6

    if-eqz v6, :cond_35d

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()J

    move-result-wide v8

    .line 71
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "timestamp_millis"

    invoke-static {v0, v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_35d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo;->zzt()Z

    move-result v6

    if-eqz v6, :cond_370

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo;->zzc()J

    move-result-wide v8

    .line 72
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "previous_timestamp_millis"

    invoke-static {v0, v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_370
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo;->zzs()Z

    move-result v6

    if-eqz v6, :cond_383

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo;->zza()I

    move-result v6

    .line 73
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "count"

    invoke-static {v0, v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 74
    :cond_383
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo;->zzb()I

    move-result v6

    if-eqz v6, :cond_390

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo;->zzi()Ljava/util/List;

    move-result-object v4

    .line 75
    invoke-direct {p0, v0, v7, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzE(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 76
    :cond_390
    invoke-static {v0, v7}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_323

    .line 78
    :cond_397
    :goto_397
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_17

    .line 80
    :cond_39f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zzo(Lcom/google/android/gms/internal/measurement/zzej;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    const-string p1, "null"

    return-object p1

    .line 1
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nevent_filter {\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzej;->zzp()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzej;->zzb()I

    move-result v1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzej;->zzg()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "event_name"

    .line 6
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzej;->zzk()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzej;->zzm()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzej;->zzn()Z

    move-result v4

    .line 7
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzH(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "filter_type"

    .line 9
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzej;->zzo()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_61

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzej;->zzf()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v1

    const-string v3, "event_count_filter"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzK(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzeq;)V

    .line 11
    :cond_61
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzej;->zza()I

    move-result v1

    if-lez v1, :cond_85

    const-string v1, "  filters {\n"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzej;->zzh()Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_74
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    const/4 v1, 0x2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzel;

    .line 14
    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzku;->zzF(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzel;)V

    goto :goto_74

    .line 15
    :cond_85
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n}\n"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zzp(Lcom/google/android/gms/internal/measurement/zzes;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    const-string p1, "null"

    return-object p1

    .line 1
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzes;->zzj()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzes;->zza()I

    move-result v1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzes;->zze()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "property_name"

    .line 6
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzes;->zzg()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzes;->zzh()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzes;->zzi()Z

    move-result v4

    .line 7
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzH(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "filter_type"

    .line 9
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_51
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzes;->zzb()Lcom/google/android/gms/internal/measurement/zzel;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzku;->zzF(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzel;)V

    const-string p1, "}\n"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zzr(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Ignoring negative bit index to be cleared"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    .line 6
    :cond_2b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4f

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Ignoring bit index greater than bitSet size"

    invoke-virtual {v1, v3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 11
    :cond_4f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rem-int/lit8 p2, p2, 0x40

    shl-long/2addr v4, p2

    not-long v4, v4

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 12
    :cond_6c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_76
    move v6, p2

    move p2, p1

    move p1, v6

    if-ltz p1, :cond_8f

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8c

    goto :goto_8f

    :cond_8c
    add-int/lit8 p2, p1, -0x1

    goto :goto_76

    :cond_8f
    :goto_8f
    const/4 p1, 0x0

    .line 15
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final zzt(Landroid/os/Bundle;Z)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpe;->zzc()Z

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    const/4 v5, 0x0

    .line 4
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzdy;->zzau:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 7
    instance-of v4, v3, [Landroid/os/Parcelable;

    if-nez v4, :cond_4f

    instance-of v4, v3, Ljava/util/ArrayList;

    if-nez v4, :cond_4f

    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_49

    goto :goto_4f

    .line 6
    :cond_3c
    instance-of v4, v3, [Landroid/os/Bundle;

    if-nez v4, :cond_4f

    instance-of v4, v3, Ljava/util/ArrayList;

    if-nez v4, :cond_4f

    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_49

    goto :goto_4f

    :cond_49
    if-eqz v3, :cond_d

    .line 8
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_4f
    :goto_4f
    if-eqz p2, :cond_d

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10
    instance-of v5, v3, [Landroid/os/Parcelable;

    const/4 v6, 0x0

    if-eqz v5, :cond_73

    .line 11
    check-cast v3, [Landroid/os/Parcelable;

    array-length v5, v3

    const/4 v7, 0x0

    :goto_5f
    if-ge v7, v5, :cond_a1

    aget-object v8, v3, v7

    .line 12
    instance-of v9, v8, Landroid/os/Bundle;

    if-eqz v9, :cond_70

    .line 13
    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {p0, v8, v6}, Lcom/google/android/gms/measurement/internal/zzku;->zzt(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    add-int/lit8 v7, v7, 0x1

    goto :goto_5f

    .line 14
    :cond_73
    instance-of v5, v3, Ljava/util/ArrayList;

    if-eqz v5, :cond_94

    .line 15
    check-cast v3, Ljava/util/ArrayList;

    .line 16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_7e
    if-ge v7, v5, :cond_a1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 17
    instance-of v9, v8, Landroid/os/Bundle;

    if-eqz v9, :cond_91

    .line 18
    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {p0, v8, v6}, Lcom/google/android/gms/measurement/internal/zzku;->zzt(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_91
    add-int/lit8 v7, v7, 0x1

    goto :goto_7e

    .line 19
    :cond_94
    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_a1

    .line 20
    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p0, v3, v6}, Lcom/google/android/gms/measurement/internal/zzku;->zzt(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_a1
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_a6
    return-object v0
.end method

.method final zzu(Lcom/google/android/gms/internal/measurement/zzfr;Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzg()Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr;->zze()Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzd()Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzf()Lcom/google/android/gms/internal/measurement/zzfr;

    .line 3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 4
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    return-void

    .line 5
    :cond_19
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_27

    .line 6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfr;

    return-void

    .line 7
    :cond_27
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_35

    .line 8
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzh(D)Lcom/google/android/gms/internal/measurement/zzfr;

    return-void

    .line 9
    :cond_35
    instance-of v0, p2, [Landroid/os/Bundle;

    if-eqz v0, :cond_43

    .line 12
    check-cast p2, [Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzku;->zzq([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfr;

    return-void

    :cond_43
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) event param value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzv(Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgg;->zzc()Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgg;->zzb()Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgg;->zza()Lcom/google/android/gms/internal/measurement/zzgg;

    .line 3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 4
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgg;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    return-void

    .line 5
    :cond_16
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_24

    .line 6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzgg;->zze(J)Lcom/google/android/gms/internal/measurement/zzgg;

    return-void

    .line 7
    :cond_24
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_32

    .line 10
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzgg;->zzd(D)Lcom/google/android/gms/internal/measurement/zzgg;

    return-void

    :cond_32
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) user attribute value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzx(JJ)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_20

    cmp-long v2, p3, v0

    if-lez v2, :cond_20

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long v0, p1, p3

    if-lez v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p1, 0x0

    return p1

    :cond_20
    :goto_20
    const/4 p1, 0x1

    return p1
.end method

.method final zzz([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v1, "Failed to gzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    throw p1
.end method
