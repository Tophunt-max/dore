###### Class com.taobao.weex.bridge.MethodInvoker (com.taobao.weex.bridge.MethodInvoker)
.class public Lcom/taobao/weex/bridge/MethodInvoker;
.super Ljava/lang/Object;
.source "MethodInvoker.java"

# interfaces
.implements Lcom/taobao/weex/bridge/Invoker;


# instance fields
.field final mMethod:Ljava/lang/reflect/Method;

.field mParam:[Ljava/lang/reflect/Type;

.field final mRunOnUIThread:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 3

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Z)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/taobao/weex/bridge/MethodInvoker;->mMethod:Ljava/lang/reflect/Method;

    .line 40
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/bridge/MethodInvoker;->mParam:[Ljava/lang/reflect/Type;

    .line 41
    iput-boolean p2, p0, Lcom/taobao/weex/bridge/MethodInvoker;->mRunOnUIThread:Z

    return-void
.end method


# virtual methods
.method public getParameterTypes()[Ljava/lang/reflect/Type;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/taobao/weex/bridge/MethodInvoker;->mParam:[Ljava/lang/reflect/Type;

    if-nez v0, :cond_c

    .line 52
    iget-object v0, p0, Lcom/taobao/weex/bridge/MethodInvoker;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/bridge/MethodInvoker;->mParam:[Ljava/lang/reflect/Type;

    .line 54
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/bridge/MethodInvoker;->mParam:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/taobao/weex/bridge/MethodInvoker;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isRunOnUIThread()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/taobao/weex/bridge/MethodInvoker;->mRunOnUIThread:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/taobao/weex/bridge/MethodInvoker;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
