###### Class com.appsflyer.internal.bi (com.appsflyer.internal.bi)
.class public final Lcom/appsflyer/internal/bi;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Body:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final AFKeystoreWrapper:I

.field private final valueOf:Z

.field final values:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBody;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBody;IZ)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/appsflyer/internal/bi;->values:Ljava/lang/Object;

    .line 14
    iput p2, p0, Lcom/appsflyer/internal/bi;->AFKeystoreWrapper:I

    .line 15
    iput-boolean p3, p0, Lcom/appsflyer/internal/bi;->valueOf:Z

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lcom/appsflyer/internal/bi;->valueOf:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 38
    :cond_12
    check-cast p1, Lcom/appsflyer/internal/bi;

    .line 40
    iget v2, p0, Lcom/appsflyer/internal/bi;->AFKeystoreWrapper:I

    iget v3, p1, Lcom/appsflyer/internal/bi;->AFKeystoreWrapper:I

    if-eq v2, v3, :cond_1b

    return v1

    .line 41
    :cond_1b
    iget-boolean v2, p0, Lcom/appsflyer/internal/bi;->valueOf:Z

    iget-boolean v3, p1, Lcom/appsflyer/internal/bi;->valueOf:Z

    if-eq v2, v3, :cond_22

    return v1

    .line 42
    :cond_22
    iget-object v2, p0, Lcom/appsflyer/internal/bi;->values:Ljava/lang/Object;

    iget-object p1, p1, Lcom/appsflyer/internal/bi;->values:Ljava/lang/Object;

    if-eqz v2, :cond_2d

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2d
    if-nez p1, :cond_30

    return v0

    :cond_30
    :goto_30
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/appsflyer/internal/bi;->values:Ljava/lang/Object;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    iget v1, p0, Lcom/appsflyer/internal/bi;->AFKeystoreWrapper:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 49
    iget-boolean v1, p0, Lcom/appsflyer/internal/bi;->valueOf:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{body="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/bi;->values:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/appsflyer/internal/bi;->AFKeystoreWrapper:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/appsflyer/internal/bi;->valueOf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
