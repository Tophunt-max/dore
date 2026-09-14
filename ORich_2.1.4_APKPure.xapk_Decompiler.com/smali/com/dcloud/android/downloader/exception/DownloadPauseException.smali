###### Class com.dcloud.android.downloader.exception.DownloadPauseException (com.dcloud.android.downloader.exception.DownloadPauseException)
.class public Lcom/dcloud/android/downloader/exception/DownloadPauseException;
.super Lcom/dcloud/android/downloader/exception/DownloadException;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/android/downloader/exception/DownloadException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/downloader/exception/DownloadException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/dcloud/android/downloader/exception/DownloadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/downloader/exception/DownloadException;-><init>(ILjava/lang/Throwable;)V

    return-void
.end method
