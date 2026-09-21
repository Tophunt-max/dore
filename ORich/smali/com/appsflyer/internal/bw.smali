###### Class com.appsflyer.internal.bw (com.appsflyer.internal.bw)
.class public final Lcom/appsflyer/internal/bw;
.super Lcom/appsflyer/internal/f;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0, v1}, Lcom/appsflyer/internal/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final values(Ljava/lang/String;)Lcom/appsflyer/internal/f;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/bw;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/appsflyer/internal/f;->values(Ljava/lang/String;)Lcom/appsflyer/internal/f;

    move-result-object p1

    return-object p1
.end method
