###### Class com.taobao.weex.bridge.ModuleFactoryImpl (com.taobao.weex.bridge.ModuleFactoryImpl)
.class public Lcom/taobao/weex/bridge/ModuleFactoryImpl;
.super Ljava/lang/Object;
.source "ModuleFactoryImpl.java"


# instance fields
.field public hasRigster:Z

.field public mFactory:Lcom/taobao/weex/bridge/ModuleFactory;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/bridge/ModuleFactory;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->hasRigster:Z

    .line 30
    iput-object p1, p0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/bridge/ModuleFactory;Z)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->hasRigster:Z

    .line 34
    iput-object p1, p0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    .line 35
    iput-boolean p2, p0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->hasRigster:Z

    return-void
.end method
