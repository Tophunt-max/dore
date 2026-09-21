###### Class com.dcloud.android.downloader.exception.DownloadException (com.dcloud.android.downloader.exception.DownloadException)
.class public Lcom/dcloud/android/downloader/exception/DownloadException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/downloader/exception/DownloadException$ExceptionType;
    }
.end annotation


# static fields
.field public static final EXCEPTION_FILE_SIZE_ZERO:I = 0x6

.field public static final EXCEPTION_IO_EXCEPTION:I = 0x5

.field public static final EXCEPTION_OTHER:I = 0x9

.field public static final EXCEPTION_PATH_NULL:I = 0x1

.field public static final EXCEPTION_PAUSE:I = 0x7

.field public static final EXCEPTION_PROTOCOL:I = 0x4

.field public static final EXCEPTION_SERVER_ERROR:I = 0x3

.field public static final EXCEPTION_SERVER_SUPPORT_CODE:I = 0x8

.field public static final EXCEPTION_URL_ERROR:I = 0x2

.field public static final EXCEPTION_URL_NULL:I


# instance fields
.field private code:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2
    iput p1, p0, Lcom/dcloud/android/downloader/exception/DownloadException;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 3
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4
    iput p1, p0, Lcom/dcloud/android/downloader/exception/DownloadException;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 5
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iput p1, p0, Lcom/dcloud/android/downloader/exception/DownloadException;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    .line 7
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 8
    iput p1, p0, Lcom/dcloud/android/downloader/exception/DownloadException;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/downloader/exception/DownloadException;->code:I

    return v0
.end method

.method public setCode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/downloader/exception/DownloadException;->code:I

    return-void
.end method

###### Class com.dcloud.android.downloader.exception.DownloadException.ExceptionType (com.dcloud.android.downloader.exception.DownloadException$ExceptionType)
.class public interface abstract annotation Lcom/dcloud/android/downloader/exception/DownloadException$ExceptionType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/downloader/exception/DownloadException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ExceptionType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
