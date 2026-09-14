###### Class com.bun.miitmdid.core.JLibrary (com.bun.miitmdid.core.JLibrary)
.class public Lcom/bun/miitmdid/core/JLibrary;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;
    }
.end annotation


# static fields
.field public static ASSET:Ljava/lang/String; = "assets/"

.field public static SeriailizationString:Ljava/lang/String; = "stub_liu_0_dex_so:39285EFA@com/jdog;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;"

.field public static final TAG:Ljava/lang/String; = "JLibrary"

.field public static classLoader:Ljava/lang/ClassLoader; = null

.field public static context:Landroid/content/Context; = null

.field public static o00o0a0odod:Ljava/lang/String; = null

.field public static o00o0a0odou:Ljava/lang/String; = null

.field public static xdata:Ljava/lang/String; = ".00000000000"

.field public static ydata:Ljava/lang/String; = ".11111111111"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitEntry(Landroid/content/Context;)Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_2b

    sput-object p0, Lcom/bun/miitmdid/core/JLibrary;->context:Landroid/content/Context;

    const-class p0, Lcom/bun/miitmdid/core/JLibrary;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    sput-object p0, Lcom/bun/miitmdid/core/JLibrary;->classLoader:Ljava/lang/ClassLoader;

    sget-object p0, Lcom/bun/miitmdid/core/JLibrary;->SeriailizationString:Ljava/lang/String;

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/bun/miitmdid/core/JLibrary;->SeriailizationString:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/bun/miitmdid/core/JLibrary;->a()Z

    sget-object p0, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;->RETURN_OK:Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    return-object p0

    :cond_2b
    new-instance p0, Ljava/lang/ExceptionInInitializerError;

    const-string v0, "pass InitEntry arg(context) is null"

    invoke-direct {p0, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ReadByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    if-lt v1, v2, :cond_18

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_2c

    :cond_18
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_27

    add-int/2addr v1, v2

    goto :goto_e

    :catch_27
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_2c
    return-object p0
.end method

.method public static native a()Z
.end method

.method public static o0o0o0o0o0(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-lt v3, v1, :cond_37

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, [Ljava/nio/ByteBuffer;

    aput-object v4, v3, v2

    const-class v4, Ljava/util/List;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p0, p2, v3}, Lcom/bun/miitmdid/core/JLibrary;->o0o0o0o0o0o0(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    aput-object p3, v1, v5

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_37
    aget-object v4, p1, v3

    invoke-static {v4}, Lcom/bun/miitmdid/core/JLibrary;->ReadByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e
.end method

.method private static varargs o0o0o0o0o0o0(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_1a

    :try_start_6
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_14} :catch_15

    :cond_14
    return-object v1

    :catch_15
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    :cond_1a
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with parameters "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not found in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static o0oo0o0(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/bun/miitmdid/core/Utils;->getXdataDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bun/miitmdid/core/JLibrary;->o00o0a0odod:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/bun/miitmdid/core/Utils;->getYdataDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bun/miitmdid/core/JLibrary;->o00o0a0odou:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/bun/miitmdid/core/JLibrary;->o00o0a0odod:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/bun/miitmdid/core/JLibrary;->o00o0a0odou:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_39

    const/4 v3, 0x3

    :goto_2c
    add-int/lit8 v5, v3, -0x1

    if-gtz v3, :cond_31

    goto :goto_3a

    :cond_31
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_35} :catch_ba

    if-nez v3, :cond_3a

    move v3, v5

    goto :goto_2c

    :cond_39
    const/4 v5, 0x3

    :cond_3a
    :goto_3a
    const-string v3, "User dir cannot be created: "

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a4

    :try_start_3f
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_53

    :goto_45
    add-int/lit8 v0, v4, -0x1

    if-gtz v4, :cond_4a

    goto :goto_52

    :cond_4a
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_52

    move v4, v0

    goto :goto_45

    :cond_52
    :goto_52
    move v4, v0

    :cond_53
    if-eq v4, v6, :cond_8e

    invoke-static {p0}, Lcom/bun/miitmdid/core/Utils;->update(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_78

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/bun/miitmdid/core/JLibrary;->o00o0a0odod:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_be

    :cond_78
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/bun/miitmdid/core/JLibrary;->o00o0a0odod:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/bun/miitmdid/core/Utils;->x0xooXdata(Ljava/io/InputStream;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_be

    :cond_8e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_ba} :catch_ba

    :catch_ba
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_be
    :goto_be
    return-void
.end method

###### Class com.bun.miitmdid.core.JLibrary.ReturnStatus (com.bun.miitmdid.core.JLibrary$ReturnStatus)
.class final enum Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/miitmdid/core/JLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReturnStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

.field public static final enum RETURN_ERR:Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

.field public static final enum RETURN_OK:Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    const-string v1, "RETURN_OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;->RETURN_OK:Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    new-instance v1, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    const-string v3, "RETURN_ERR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;->RETURN_ERR:Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;->ENUM$VALUES:[Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;
    .registers 2

    const-class v0, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    return-object p0
.end method

.method public static values()[Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;
    .registers 4

    sget-object v0, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;->ENUM$VALUES:[Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
