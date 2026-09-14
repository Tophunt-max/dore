###### Class com.appsflyer.internal.cf (com.appsflyer.internal.cf)
.class public final Lcom/appsflyer/internal/cf;
.super Lcom/appsflyer/internal/by;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "af_purchase"

    invoke-direct {p0, v1, v0, p1}, Lcom/appsflyer/internal/by;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final values(Ljava/lang/String;)Lcom/appsflyer/internal/f;
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/cf;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/appsflyer/internal/by;->values(Ljava/lang/String;)Lcom/appsflyer/internal/f;

    move-result-object p1

    return-object p1
.end method
