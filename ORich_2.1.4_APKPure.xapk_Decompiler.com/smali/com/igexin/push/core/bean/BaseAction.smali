###### Class com.igexin.push.core.bean.BaseAction (com.igexin.push.core.bean.BaseAction)
.class public Lcom/igexin/push/core/bean/BaseAction;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/core/bean/BaseAction;->d:Z

    return-void
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/BaseAction;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDoActionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/BaseAction;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/BaseAction;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportExt()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/core/bean/BaseAction;->d:Z

    return v0
.end method

.method public setActionId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/BaseAction;->a:Ljava/lang/String;

    return-void
.end method

.method public setDoActionId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/BaseAction;->c:Ljava/lang/String;

    return-void
.end method

.method public setSupportExt(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/core/bean/BaseAction;->d:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/BaseAction;->b:Ljava/lang/String;

    return-void
.end method
