###### Class com.taobao.weex.http.CertDTO (com.taobao.weex.http.CertDTO)
.class public Lcom/taobao/weex/http/CertDTO;
.super Ljava/lang/Object;
.source "CertDTO.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# instance fields
.field public client:Ljava/lang/String;

.field public clientPassword:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public server:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClient()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/taobao/weex/http/CertDTO;->client:Ljava/lang/String;

    return-object v0
.end method

.method public getClientPassword()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/taobao/weex/http/CertDTO;->clientPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/taobao/weex/http/CertDTO;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()[Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/taobao/weex/http/CertDTO;->server:[Ljava/lang/String;

    return-object v0
.end method

.method public setClient(Ljava/lang/String;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/taobao/weex/http/CertDTO;->client:Ljava/lang/String;

    return-void
.end method

.method public setClientPassword(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/taobao/weex/http/CertDTO;->clientPassword:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/taobao/weex/http/CertDTO;->host:Ljava/lang/String;

    return-void
.end method

.method public setServer([Ljava/lang/String;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/taobao/weex/http/CertDTO;->server:[Ljava/lang/String;

    return-void
.end method
