###### Class com.appsflyer.internal.d (com.appsflyer.internal.d)
.class final Lcom/appsflyer/internal/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/d$e;,
        Lcom/appsflyer/internal/d$b;
    }
.end annotation


# instance fields
.field private values:Landroid/content/IntentFilter;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsflyer/internal/d;->values:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method final AFKeystoreWrapper(Landroid/content/Context;)Lcom/appsflyer/internal/d$b;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    :try_start_2
    iget-object v2, p0, Lcom/appsflyer/internal/d;->values:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4d

    const-string v2, "status"

    const/4 v3, -0x1

    .line 44
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v5, v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_33

    const-string v2, "plugged"

    .line 47
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_30

    if-eq v2, v5, :cond_2d

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2a

    const-string v0, "other"

    goto :goto_35

    :cond_2a
    const-string v0, "wireless"

    goto :goto_35

    :cond_2d
    const-string v0, "usb"

    goto :goto_35

    :cond_30
    const-string v0, "ac"

    goto :goto_35

    :cond_33
    const-string v0, "no"

    :goto_35
    const-string v2, "level"

    .line 66
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "scale"

    .line 67
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_4d

    if-eq v3, v2, :cond_4d

    if-eq v3, p1, :cond_4d

    const/high16 v1, 0x42c80000    # 100.0f

    int-to-float v2, v2

    mul-float v2, v2, v1

    int-to-float p1, p1

    div-float/2addr v2, p1

    move v1, v2

    .line 76
    :catchall_4d
    :cond_4d
    new-instance p1, Lcom/appsflyer/internal/d$b;

    invoke-direct {p1, v1, v0}, Lcom/appsflyer/internal/d$b;-><init>(FLjava/lang/String;)V

    return-object p1
.end method

###### Class com.appsflyer.internal.d.b (com.appsflyer.internal.d$b)
.class final Lcom/appsflyer/internal/d$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final AFInAppEventParameterName:F

.field final valueOf:Ljava/lang/String;


# direct methods
.method constructor <init>(FLjava/lang/String;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/appsflyer/internal/d$b;->AFInAppEventParameterName:F

    .line 85
    iput-object p2, p0, Lcom/appsflyer/internal/d$b;->valueOf:Ljava/lang/String;

    return-void
.end method

###### Class com.appsflyer.internal.d.e (com.appsflyer.internal.d$e)
.class final Lcom/appsflyer/internal/d$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# static fields
.field static final values:Lcom/appsflyer/internal/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Lcom/appsflyer/internal/d;

    invoke-direct {v0}, Lcom/appsflyer/internal/d;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/d$e;->values:Lcom/appsflyer/internal/d;

    return-void
.end method
