###### Class com.alibaba.android.bindingx.core.internal.Euler (com.alibaba.android.bindingx.core.internal.Euler)
.class Lcom/alibaba/android/bindingx/core/internal/Euler;
.super Ljava/lang/Object;
.source "Euler.java"


# static fields
.field private static final DEFAULT_ORDER:Ljava/lang/String; = "XYZ"


# instance fields
.field isEuler:Z

.field order:Ljava/lang/String;

.field x:D

.field y:D

.field z:D


# direct methods
.method constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/Euler;->isEuler:Z

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/Euler;->x:D

    .line 41
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/Euler;->y:D

    .line 42
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/Euler;->z:D

    return-void
.end method


# virtual methods
.method setValue(DDDLjava/lang/String;)V
    .registers 8

    .line 46
    iput-wide p1, p0, Lcom/alibaba/android/bindingx/core/internal/Euler;->x:D

    .line 47
    iput-wide p3, p0, Lcom/alibaba/android/bindingx/core/internal/Euler;->y:D

    .line 48
    iput-wide p5, p0, Lcom/alibaba/android/bindingx/core/internal/Euler;->z:D

    .line 50
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p7, "XYZ"

    :cond_e
    iput-object p7, p0, Lcom/alibaba/android/bindingx/core/internal/Euler;->order:Ljava/lang/String;

    return-void
.end method
