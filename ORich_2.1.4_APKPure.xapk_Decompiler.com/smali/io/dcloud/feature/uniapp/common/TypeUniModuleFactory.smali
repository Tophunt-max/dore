###### Class io.dcloud.feature.uniapp.common.TypeUniModuleFactory (io.dcloud.feature.uniapp.common.TypeUniModuleFactory)
.class public Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory;
.super Ljava/lang/Object;
.source "TypeUniModuleFactory.java"

# interfaces
.implements Lio/dcloud/feature/uniapp/bridge/UniModuleFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/dcloud/feature/uniapp/common/UniModule;",
        ">",
        "Ljava/lang/Object;",
        "Lio/dcloud/feature/uniapp/bridge/UniModuleFactory<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TypeModuleFactory"


# instance fields
.field mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field mMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/Invoker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory;->mClazz:Ljava/lang/Class;

    return-void
.end method

.method private generateMethodMap()V
    .registers 12

    .line 45
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractMethodNames:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory;->mClazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TypeModuleFactory"

    invoke-static {v1, v0}, Lio/dcloud/feature/uniapp/utils/UniLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    :try_start_27
    iget-object v1, p0, Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory;->mClazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v2, :cond_8b

    aget-object v5, v1, v4

    .line 52
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_3a
    if-ge v8, v7, :cond_82

    aget-object v9, v6, v8

    if-eqz v9, :cond_7f

    .line 64
    instance-of v10, v9, Lio/dcloud/feature/uniapp/annotation/UniJSMethod;

    if-eqz v10, :cond_68

    .line 65
    check-cast v9, Lio/dcloud/feature/uniapp/annotation/UniJSMethod;

    const-string v6, "_"

    .line 66
    invoke-interface {v9}, Lio/dcloud/feature/uniapp/annotation/UniJSMethod;->alias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_5b

    :cond_57
    invoke-interface {v9}, Lio/dcloud/feature/uniapp/annotation/UniJSMethod;->alias()Ljava/lang/String;

    move-result-object v6

    .line 67
    :goto_5b
    new-instance v7, Lcom/taobao/weex/bridge/MethodInvoker;

    invoke-interface {v9}, Lio/dcloud/feature/uniapp/annotation/UniJSMethod;->uiThread()Z

    move-result v8

    invoke-direct {v7, v5, v8}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    .line 69
    :cond_68
    instance-of v10, v9, Lio/dcloud/feature/uniapp/common/UniModuleAnno;

    if-eqz v10, :cond_7f

    .line 70
    check-cast v9, Lio/dcloud/feature/uniapp/common/UniModuleAnno;

    .line 71
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/taobao/weex/bridge/MethodInvoker;

    invoke-interface {v9}, Lio/dcloud/feature/uniapp/common/UniModuleAnno;->runOnUIThread()Z

    move-result v8

    invoke-direct {v7, v5, v8}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catchall {:try_start_27 .. :try_end_7e} :catchall_85

    goto :goto_82

    :cond_7f
    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_82
    :goto_82
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :catchall_85
    move-exception v1

    const-string v2, "[WXModuleManager] extractMethodNames:"

    .line 78
    invoke-static {v2, v1}, Lio/dcloud/feature/uniapp/utils/UniLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :cond_8b
    iput-object v0, p0, Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory;->mMethodMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic buildInstance()Lcom/taobao/weex/common/WXModule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory;->buildInstance()Lio/dcloud/feature/uniapp/common/UniModule;

    move-result-object v0

    return-object v0
.end method

.method public buildInstance()Lio/dcloud/feature/uniapp/common/UniModule;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory;->mClazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/uniapp/common/UniModule;

    return-object v0
.end method

.method public getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;
    .registers 3

    .line 100
    iget-object v0, p0, Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory;->mMethodMap:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 101
    invoke-direct {p0}, Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory;->generateMethodMap()V

    .line 103
    :cond_7
    iget-object v0, p0, Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory;->mMethodMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/bridge/Invoker;

    return-object p1
.end method

.method public getMethods()[Ljava/lang/String;
    .registers 3

    .line 91
    iget-object v0, p0, Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory;->mMethodMap:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 92
    invoke-direct {p0}, Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory;->generateMethodMap()V

    .line 94
    :cond_7
    iget-object v0, p0, Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory;->mMethodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
