###### Class io.dcloud.feature.uniapp.UniSDKEngine (io.dcloud.feature.uniapp.UniSDKEngine)
.class public Lio/dcloud/feature/uniapp/UniSDKEngine;
.super Lcom/taobao/weex/WXSDKEngine;
.source "UniSDKEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/uniapp/UniSDKEngine$DestroyableUniModuleFactory;,
        Lio/dcloud/feature/uniapp/UniSDKEngine$DestroyableUniModule;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine;-><init>()V

    return-void
.end method

.method public static registerModuleWithFactory(Ljava/lang/String;Lio/dcloud/feature/uniapp/ui/IExternalUniModuleGetter;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/dcloud/feature/uniapp/common/UniModule;",
            ">(",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/uniapp/ui/IExternalUniModuleGetter;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lio/dcloud/feature/uniapp/ui/IExternalUniModuleGetter;->getExternalModuleClass(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/dcloud/feature/uniapp/UniSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    move-result p0

    return p0
.end method

.method public static varargs registerUniComponent(Lio/dcloud/feature/uniapp/ui/IFUniComponentHolder;Z[Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/dcloud/feature/uniapp/common/UniException;
        }
    .end annotation

    .line 73
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/uniapp/UniSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs registerUniComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/dcloud/feature/uniapp/ui/component/UniComponent;",
            ">;Z[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/dcloud/feature/uniapp/common/UniException;
        }
    .end annotation

    .line 69
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/uniapp/UniSDKEngine;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static registerUniComponent(Ljava/lang/String;Lio/dcloud/feature/uniapp/ui/IExternalUniComponentGetter;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/dcloud/feature/uniapp/common/UniException;
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;-><init>(Ljava/lang/String;Lcom/taobao/weex/ui/IExternalComponentGetter;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-static {v0, p2, p1}, Lio/dcloud/feature/uniapp/UniSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static registerUniComponent(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lio/dcloud/feature/uniapp/ui/component/UniComponent;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static registerUniComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lio/dcloud/feature/uniapp/ui/component/UniComponent;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/dcloud/feature/uniapp/common/UniException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 61
    invoke-static {p1, p2, v0}, Lio/dcloud/feature/uniapp/UniSDKEngine;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static registerUniModule(Ljava/lang/String;Lio/dcloud/feature/uniapp/bridge/UniModuleFactory;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/dcloud/feature/uniapp/common/UniModule;",
            ">(",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/uniapp/bridge/UniModuleFactory;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 89
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/bridge/WXModuleManager;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    move-result p0

    return p0
.end method

.method public static registerUniModule(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lio/dcloud/feature/uniapp/common/UniModule;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 93
    invoke-static {p0, p1, v0}, Lio/dcloud/feature/uniapp/UniSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    move-result p0

    return p0
.end method

.method public static registerUniModule(Ljava/lang/String;Ljava/lang/Class;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/dcloud/feature/uniapp/common/UniModule;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/dcloud/feature/uniapp/common/UniException;
        }
    .end annotation

    .line 77
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/uniapp/UniSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    move-result p0

    return p0
.end method

.method public static registerUniModuleWithFactory(Ljava/lang/String;Lio/dcloud/feature/uniapp/UniSDKEngine$DestroyableUniModuleFactory;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/dcloud/feature/uniapp/common/UniModule;",
            ">(",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/uniapp/UniSDKEngine$DestroyableUniModuleFactory;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/dcloud/feature/uniapp/common/UniException;
        }
    .end annotation

    .line 81
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/uniapp/UniSDKEngine;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    move-result p0

    return p0
.end method

.method public static registerUniVContainer(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lio/dcloud/feature/uniapp/ui/component/UniVContainer;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

###### Class io.dcloud.feature.uniapp.UniSDKEngine.DestroyableUniModule (io.dcloud.feature.uniapp.UniSDKEngine$DestroyableUniModule)
.class public abstract Lio/dcloud/feature/uniapp/UniSDKEngine$DestroyableUniModule;
.super Lio/dcloud/feature/uniapp/common/UniModule;
.source "UniSDKEngine.java"

# interfaces
.implements Lcom/taobao/weex/common/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/UniSDKEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DestroyableUniModule"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lio/dcloud/feature/uniapp/common/UniModule;-><init>()V

    return-void
.end method

###### Class io.dcloud.feature.uniapp.UniSDKEngine.DestroyableUniModuleFactory (io.dcloud.feature.uniapp.UniSDKEngine$DestroyableUniModuleFactory)
.class public abstract Lio/dcloud/feature/uniapp/UniSDKEngine$DestroyableUniModuleFactory;
.super Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory;
.source "UniSDKEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/UniSDKEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DestroyableUniModuleFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/dcloud/feature/uniapp/common/UniDestroyableModule;",
        ">",
        "Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory<",
        "TT;>;"
    }
.end annotation


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

    .line 48
    invoke-direct {p0, p1}, Lio/dcloud/feature/uniapp/common/TypeUniModuleFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method
