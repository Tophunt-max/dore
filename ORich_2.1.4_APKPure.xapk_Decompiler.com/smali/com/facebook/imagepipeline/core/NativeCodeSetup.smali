###### Class com.facebook.imagepipeline.core.NativeCodeSetup (com.facebook.imagepipeline.core.NativeCodeSetup)
.class public Lcom/facebook/imagepipeline/core/NativeCodeSetup;
.super Ljava/lang/Object;
.source "NativeCodeSetup.java"


# static fields
.field private static sUseNativeCode:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUseNativeCode()Z
    .registers 1

    .line 35
    sget-boolean v0, Lcom/facebook/imagepipeline/core/NativeCodeSetup;->sUseNativeCode:Z

    return v0
.end method

.method public static setUseNativeCode(Z)V
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useNativeCode"
        }
    .end annotation

    .line 26
    sput-boolean p0, Lcom/facebook/imagepipeline/core/NativeCodeSetup;->sUseNativeCode:Z

    return-void
.end method
