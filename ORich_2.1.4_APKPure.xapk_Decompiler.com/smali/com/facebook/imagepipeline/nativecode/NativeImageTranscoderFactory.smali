###### Class com.facebook.imagepipeline.nativecode.NativeImageTranscoderFactory (com.facebook.imagepipeline.nativecode.NativeImageTranscoderFactory)
.class public final Lcom/facebook/imagepipeline/nativecode/NativeImageTranscoderFactory;
.super Ljava/lang/Object;
.source "NativeImageTranscoderFactory.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNativeImageTranscoderFactory(IZZ)Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "maxBitmapSize",
            "useDownSamplingRatio",
            "ensureTranscoderLibraryLoaded"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.facebook.imagepipeline.nativecode.NativeJpegTranscoderFactory"

    .line 26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    :try_end_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_36} :catch_43
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_36} :catch_41
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_36} :catch_3f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_36} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_36} :catch_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_36} :catch_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_36} :catch_37

    return-object p0

    :catch_37
    move-exception p0

    goto :goto_44

    :catch_39
    move-exception p0

    goto :goto_44

    :catch_3b
    move-exception p0

    goto :goto_44

    :catch_3d
    move-exception p0

    goto :goto_44

    :catch_3f
    move-exception p0

    goto :goto_44

    :catch_41
    move-exception p0

    goto :goto_44

    :catch_43
    move-exception p0

    .line 36
    :goto_44
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Dependency \':native-imagetranscoder\' is needed to use the default native image transcoder."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
