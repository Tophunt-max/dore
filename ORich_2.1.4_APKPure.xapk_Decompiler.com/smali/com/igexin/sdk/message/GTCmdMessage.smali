###### Class com.igexin.sdk.message.GTCmdMessage (com.igexin.sdk.message.GTCmdMessage)
.class public Lcom/igexin/sdk/message/GTCmdMessage;
.super Lcom/igexin/sdk/message/BaseMessage;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/sdk/message/BaseMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/sdk/message/BaseMessage;-><init>()V

    iput p1, p0, Lcom/igexin/sdk/message/GTCmdMessage;->a:I

    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 2

    iget v0, p0, Lcom/igexin/sdk/message/GTCmdMessage;->a:I

    return v0
.end method

.method public setAction(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/sdk/message/GTCmdMessage;->a:I

    return-void
.end method
