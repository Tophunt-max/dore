###### Class com.appsflyer.internal.bo (com.appsflyer.internal.bo)
.class final Lcom/appsflyer/internal/bo;
.super Ljava/lang/Exception;
.source ""


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "Data was not received from server yet."

    .line 11
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
