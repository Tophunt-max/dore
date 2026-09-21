###### Class com.appsflyer.internal.ay (com.appsflyer.internal.ay)
.class public final Lcom/appsflyer/internal/ay;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static AFInAppEventType:Ljava/lang/String; = "Status code failure"

.field public static AFKeystoreWrapper:Ljava/lang/String; = "No dev key"

.field public static valueOf:Ljava/lang/String; = "Skipping event because \'isStopped\' is true"

.field public static values:Ljava/lang/String; = "Event timeout. Check \'minTimeBetweenSessions\' param"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
