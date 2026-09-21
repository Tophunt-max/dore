###### Class io.dcloud.feature.audio.mp3.SimpleLame (io.dcloud.feature.audio.mp3.SimpleLame)
.class public Lio/dcloud/feature/audio/mp3/SimpleLame;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "lamemp3"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native close()V
.end method

.method public static native encode([S[SI[B)I
.end method

.method public static native flush([B)I
.end method

.method public static native init(IIIII)V
.end method
