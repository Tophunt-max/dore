###### Class com.alibaba.android.bindingx.core.internal.ExpressionPair (com.alibaba.android.bindingx.core.internal.ExpressionPair)
.class public Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;
.super Ljava/lang/Object;
.source "ExpressionPair.java"


# instance fields
.field public final origin:Ljava/lang/String;

.field public final transformed:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->origin:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->transformed:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;
    .registers 3

    .line 44
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isValid(Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;)Z
    .registers 2

    if-eqz p0, :cond_16

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->transformed:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->transformed:Ljava/lang/String;

    const-string v0, "{}"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 56
    :cond_12
    check-cast p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    .line 58
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->origin:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->origin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_25

    :cond_21
    iget-object v2, p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->origin:Ljava/lang/String;

    if-eqz v2, :cond_26

    :goto_25
    return v1

    .line 59
    :cond_26
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->transformed:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->transformed:Ljava/lang/String;

    if-eqz v2, :cond_31

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_35

    :cond_31
    if-nez p1, :cond_34

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    return v0

    :cond_36
    :goto_36
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->origin:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->transformed:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method
