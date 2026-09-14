###### Class com.taobao.weex.Script (com.taobao.weex.Script)
.class public Lcom/taobao/weex/Script;
.super Ljava/lang/Object;
.source "Script.java"


# instance fields
.field private mBinary:[B

.field private mContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/taobao/weex/Script;->mContent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/taobao/weex/Script;->mBinary:[B

    return-void
.end method


# virtual methods
.method public getBinary()[B
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/taobao/weex/Script;->mBinary:[B

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/taobao/weex/Script;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/taobao/weex/Script;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/taobao/weex/Script;->mBinary:[B

    if-eqz v0, :cond_f

    array-length v0, v0

    if-nez v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public length()I
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/taobao/weex/Script;->mContent:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 46
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/Script;->mBinary:[B

    if-eqz v0, :cond_f

    .line 47
    array-length v0, v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method
