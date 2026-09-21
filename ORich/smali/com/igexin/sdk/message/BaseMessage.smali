###### Class com.igexin.sdk.message.BaseMessage (com.igexin.sdk.message.BaseMessage)
.class public Lcom/igexin/sdk/message/BaseMessage;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/sdk/message/BaseMessage;->a:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/sdk/message/BaseMessage;->b:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/sdk/message/BaseMessage;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/sdk/message/BaseMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/sdk/message/BaseMessage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/sdk/message/BaseMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/sdk/message/BaseMessage;->a:Ljava/lang/String;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/sdk/message/BaseMessage;->c:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/sdk/message/BaseMessage;->b:Ljava/lang/String;

    return-void
.end method
