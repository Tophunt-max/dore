###### Class com.appsflyer.internal.bh (com.appsflyer.internal.bh)
.class public final Lcom/appsflyer/internal/bh;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static AFKeystoreWrapper:Ljava/lang/String; = "https://%smonitorsdk.%s/remote-debug?app_id="


# instance fields
.field public final AFInAppEventParameterName:Lcom/appsflyer/internal/n;

.field public final values:Lcom/appsflyer/internal/u;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/u;Lcom/appsflyer/internal/n;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/appsflyer/internal/bh;->values:Lcom/appsflyer/internal/u;

    .line 32
    iput-object p2, p0, Lcom/appsflyer/internal/bh;->AFInAppEventParameterName:Lcom/appsflyer/internal/n;

    return-void
.end method
