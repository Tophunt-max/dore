###### Class com.igexin.sdk.message.UnBindAliasCmdMessage (com.igexin.sdk.message.UnBindAliasCmdMessage)
.class public Lcom/igexin/sdk/message/UnBindAliasCmdMessage;
.super Lcom/igexin/sdk/message/GTCmdMessage;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/sdk/message/GTCmdMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p3}, Lcom/igexin/sdk/message/GTCmdMessage;-><init>(I)V

    iput-object p1, p0, Lcom/igexin/sdk/message/UnBindAliasCmdMessage;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/igexin/sdk/message/UnBindAliasCmdMessage;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/sdk/message/UnBindAliasCmdMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/sdk/message/UnBindAliasCmdMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/sdk/message/UnBindAliasCmdMessage;->b:Ljava/lang/String;

    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/sdk/message/UnBindAliasCmdMessage;->a:Ljava/lang/String;

    return-void
.end method
