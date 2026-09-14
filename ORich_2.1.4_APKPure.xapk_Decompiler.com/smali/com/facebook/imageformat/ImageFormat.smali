###### Class com.facebook.imageformat.ImageFormat (com.facebook.imageformat.ImageFormat)
.class public Lcom/facebook/imageformat/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imageformat/ImageFormat$FormatChecker;
    }
.end annotation


# static fields
.field public static final UNKNOWN:Lcom/facebook/imageformat/ImageFormat;


# instance fields
.field private final mFileExtension:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 40
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "fileExtension"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/imageformat/ImageFormat;->mName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/facebook/imageformat/ImageFormat;->mFileExtension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileExtension()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormat;->mFileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormat;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 62
    invoke-virtual {p0}, Lcom/facebook/imageformat/ImageFormat;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imageformat.ImageFormat.FormatChecker (com.facebook.imageformat.ImageFormat$FormatChecker)
.class public interface abstract Lcom/facebook/imageformat/ImageFormat$FormatChecker;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imageformat/ImageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FormatChecker"
.end annotation


# virtual methods
.method public abstract determineFormat([BI)Lcom/facebook/imageformat/ImageFormat;
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headerBytes",
            "headerSize"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getHeaderSize()I
.end method
