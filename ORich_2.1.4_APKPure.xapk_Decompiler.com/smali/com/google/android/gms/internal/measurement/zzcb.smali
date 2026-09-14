###### Class com.google.android.gms.internal.measurement.zzcb (com.google.android.gms.internal.measurement.zzcb)
.class public abstract Lcom/google/android/gms/internal/measurement/zzcb;
.super Lcom/google/android/gms/internal/measurement/zzbn;
.source "com.google.android.gms:play-services-measurement-base@@20.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcc;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbn;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzcc;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzcc;

    if-eqz v1, :cond_11

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzca;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzca;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    const-string v2, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_42c

    :pswitch_8
    const/4 v0, 0x0

    return v0

    .line 178
    :pswitch_a
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->setConsentThirdParty(Landroid/os/Bundle;J)V

    goto/16 :goto_426

    :pswitch_1b
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 6
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->setConsent(Landroid/os/Bundle;J)V

    goto/16 :goto_426

    .line 7
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzcb;->clearMeasurementEnabled(J)V

    goto/16 :goto_426

    :pswitch_35
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzcb;->setDefaultEventParameters(Landroid/os/Bundle;)V

    goto/16 :goto_426

    .line 11
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_49

    goto :goto_5a

    .line 12
    :cond_49
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 13
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v2, :cond_55

    .line 14
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_5a

    :cond_55
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 15
    :goto_5a
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_426

    .line 16
    :pswitch_5f
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzf(Landroid/os/Parcel;)Z

    move-result v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzcb;->setDataCollectionEnabled(Z)V

    goto/16 :goto_426

    .line 18
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_6f

    goto :goto_80

    .line 19
    :cond_6f
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 20
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_7b

    .line 21
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_80

    :cond_7b
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 22
    :goto_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 23
    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/measurement/zzcb;->getTestFlag(Lcom/google/android/gms/internal/measurement/zzcf;I)V

    goto/16 :goto_426

    .line 24
    :pswitch_89
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzb(Landroid/os/Parcel;)Ljava/util/HashMap;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzcb;->initForTests(Ljava/util/Map;)V

    goto/16 :goto_426

    .line 26
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_99

    goto :goto_aa

    .line 27
    :cond_99
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 28
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzci;

    if-eqz v2, :cond_a5

    .line 29
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzci;

    goto :goto_aa

    :cond_a5
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcg;-><init>(Landroid/os/IBinder;)V

    .line 30
    :goto_aa
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzci;)V

    goto/16 :goto_426

    .line 31
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_b6

    goto :goto_c7

    .line 32
    :cond_b6
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 33
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzci;

    if-eqz v2, :cond_c2

    .line 34
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzci;

    goto :goto_c7

    :cond_c2
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcg;-><init>(Landroid/os/IBinder;)V

    .line 35
    :goto_c7
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzci;)V

    goto/16 :goto_426

    .line 36
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_d3

    goto :goto_e4

    .line 37
    :cond_d3
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 38
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzci;

    if-eqz v2, :cond_df

    .line 39
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzci;

    goto :goto_e4

    :cond_df
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcg;-><init>(Landroid/os/IBinder;)V

    .line 40
    :goto_e4
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/zzci;)V

    goto/16 :goto_426

    .line 41
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object v0, p0

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzcb;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto/16 :goto_426

    :pswitch_10f
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_11e

    goto :goto_12f

    .line 49
    :cond_11e
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 50
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_12a

    .line 51
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_12f

    :cond_12a
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 52
    :goto_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 53
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcb;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcf;J)V

    goto/16 :goto_426

    .line 54
    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_147

    goto :goto_158

    .line 56
    :cond_147
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 57
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_153

    .line 58
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_158

    :cond_153
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 59
    :goto_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 60
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcb;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzcf;J)V

    goto/16 :goto_426

    .line 61
    :pswitch_161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 63
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->onActivityResumed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_426

    .line 64
    :pswitch_172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 66
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->onActivityPaused(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_426

    .line 67
    :pswitch_183
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 69
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->onActivityDestroyed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_426

    .line 70
    :pswitch_194
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 71
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 73
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcb;->onActivityCreated(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;J)V

    goto/16 :goto_426

    .line 74
    :pswitch_1ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 76
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->onActivityStopped(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_426

    .line 77
    :pswitch_1be
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 79
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->onActivityStarted(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_426

    .line 80
    :pswitch_1cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 82
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->endAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_426

    .line 83
    :pswitch_1dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 85
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->beginAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_426

    .line 86
    :pswitch_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1f0

    goto :goto_201

    .line 87
    :cond_1f0
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 88
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v2, :cond_1fc

    .line 89
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_201

    :cond_1fc
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 90
    :goto_201
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->generateEventId(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_426

    .line 91
    :pswitch_206
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_20d

    goto :goto_21e

    .line 92
    :cond_20d
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 93
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v2, :cond_219

    .line 94
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_21e

    :cond_219
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 95
    :goto_21e
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getGmpAppId(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_426

    .line 96
    :pswitch_223
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_22a

    goto :goto_23b

    .line 97
    :cond_22a
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 98
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v2, :cond_236

    .line 99
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_23b

    :cond_236
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 100
    :goto_23b
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getAppInstanceId(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_426

    .line 101
    :pswitch_240
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_247

    goto :goto_258

    .line 102
    :cond_247
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 103
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v2, :cond_253

    .line 104
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_258

    :cond_253
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 105
    :goto_258
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_426

    .line 106
    :pswitch_25d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_264

    goto :goto_277

    :cond_264
    const-string v1, "com.google.android.gms.measurement.api.internal.IStringProvider"

    .line 107
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 108
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzck;

    if-eqz v2, :cond_272

    .line 109
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzck;

    goto :goto_277

    :cond_272
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcj;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcj;-><init>(Landroid/os/IBinder;)V

    .line 110
    :goto_277
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/zzck;)V

    goto/16 :goto_426

    .line 111
    :pswitch_27c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_283

    goto :goto_294

    .line 112
    :cond_283
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 113
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v2, :cond_28f

    .line 114
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_294

    :cond_28f
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 115
    :goto_294
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_426

    .line 116
    :pswitch_299
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2a0

    goto :goto_2b1

    .line 117
    :cond_2a0
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 118
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v2, :cond_2ac

    .line 119
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_2b1

    :cond_2ac
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 120
    :goto_2b1
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_426

    .line 121
    :pswitch_2b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    .line 125
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzcb;->setCurrentScreen(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_426

    .line 126
    :pswitch_2d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 127
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzcb;->setSessionTimeoutDuration(J)V

    goto/16 :goto_426

    .line 128
    :pswitch_2d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 129
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzcb;->setMinimumSessionDuration(J)V

    goto/16 :goto_426

    .line 130
    :pswitch_2e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzcb;->resetAnalyticsData(J)V

    goto/16 :goto_426

    .line 132
    :pswitch_2eb
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzf(Landroid/os/Parcel;)Z

    move-result v1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 134
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->setMeasurementEnabled(ZJ)V

    goto/16 :goto_426

    .line 135
    :pswitch_2f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_307

    goto :goto_318

    .line 138
    :cond_307
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 139
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_313

    .line 140
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_318

    :cond_313
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 141
    :goto_318
    invoke-virtual {p0, v1, v4, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_426

    .line 142
    :pswitch_31d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 144
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 145
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzcb;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_426

    :pswitch_332
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 146
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 148
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    goto/16 :goto_426

    .line 149
    :pswitch_343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 151
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->setUserId(Ljava/lang/String;J)V

    goto/16 :goto_426

    .line 152
    :pswitch_350
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_35b

    goto :goto_36c

    .line 154
    :cond_35b
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 155
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_367

    .line 156
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_36c

    :cond_367
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 157
    :goto_36c
    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_426

    .line 158
    :pswitch_371
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzf(Landroid/os/Parcel;)Z

    move-result v5

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_384

    goto :goto_395

    .line 162
    :cond_384
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 163
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_390

    .line 164
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_395

    :cond_390
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 165
    :goto_395
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_426

    .line 166
    :pswitch_39a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 169
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzf(Landroid/os/Parcel;)Z

    move-result v4

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v0, p0

    .line 171
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzcb;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V

    goto/16 :goto_426

    .line 172
    :pswitch_3b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 174
    invoke-static {p2, v5}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_3d0

    move-object v6, v3

    goto :goto_3e1

    .line 176
    :cond_3d0
    invoke-interface {v6, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 177
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_3db

    .line 178
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_3e0

    :cond_3db
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    :goto_3e0
    move-object v6, v2

    .line 179
    :goto_3e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-wide v5, v8

    .line 180
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzcb;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcf;J)V

    goto :goto_426

    .line 181
    :pswitch_3ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 183
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 184
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzf(Landroid/os/Parcel;)Z

    move-result v4

    .line 185
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzf(Landroid/os/Parcel;)Z

    move-result v5

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v0, p0

    .line 187
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzcb;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    goto :goto_426

    .line 188
    :pswitch_40f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 189
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcl;

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 191
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcb;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzcl;J)V

    .line 192
    :goto_426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_42c
    .packed-switch 0x1
        :pswitch_40f
        :pswitch_3ee
        :pswitch_3b8
        :pswitch_39a
        :pswitch_371
        :pswitch_350
        :pswitch_343
        :pswitch_332
        :pswitch_31d
        :pswitch_2f8
        :pswitch_2eb
        :pswitch_2e2
        :pswitch_2d9
        :pswitch_2d0
        :pswitch_2b6
        :pswitch_299
        :pswitch_27c
        :pswitch_25d
        :pswitch_240
        :pswitch_223
        :pswitch_206
        :pswitch_1e9
        :pswitch_1dc
        :pswitch_1cf
        :pswitch_1be
        :pswitch_1ad
        :pswitch_194
        :pswitch_183
        :pswitch_172
        :pswitch_161
        :pswitch_138
        :pswitch_10f
        :pswitch_e9
        :pswitch_cc
        :pswitch_af
        :pswitch_92
        :pswitch_89
        :pswitch_68
        :pswitch_5f
        :pswitch_42
        :pswitch_8
        :pswitch_35
        :pswitch_2c
        :pswitch_1b
        :pswitch_a
    .end packed-switch
.end method
