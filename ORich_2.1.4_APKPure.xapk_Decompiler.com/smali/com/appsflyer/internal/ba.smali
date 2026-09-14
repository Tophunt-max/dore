###### Class com.appsflyer.internal.ba (com.appsflyer.internal.ba)
.class public final Lcom/appsflyer/internal/ba;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/az;


# instance fields
.field private final valueOf:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/appsflyer/internal/ba;->valueOf:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Ljava/lang/String;)V
    .registers 4

    .line 20
    iget-object v0, p0, Lcom/appsflyer/internal/ba;->valueOf:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final valueOf(Ljava/lang/String;)Z
    .registers 4

    .line 15
    iget-object v0, p0, Lcom/appsflyer/internal/ba;->valueOf:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
