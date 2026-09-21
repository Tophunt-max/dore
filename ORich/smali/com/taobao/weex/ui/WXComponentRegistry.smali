###### Class com.taobao.weex.ui.WXComponentRegistry (com.taobao.weex.ui.WXComponentRegistry)
.class public Lcom/taobao/weex/ui/WXComponentRegistry;
.super Ljava/lang/Object;
.source "WXComponentRegistry.java"


# static fields
.field private static sComponentInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sTypeComponentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/IFComponentHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/ui/WXComponentRegistry;->sTypeComponentMap:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/weex/ui/WXComponentRegistry;->sComponentInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/taobao/weex/ui/WXComponentRegistry;->registerNativeComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .registers 1

    .line 41
    sget-object v0, Lcom/taobao/weex/ui/WXComponentRegistry;->sComponentInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/Map;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lcom/taobao/weex/ui/WXComponentRegistry;->registerJSComponent(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static getComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/IFComponentHolder;
    .registers 2

    .line 130
    sget-object v0, Lcom/taobao/weex/ui/WXComponentRegistry;->sTypeComponentMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/IFComponentHolder;

    return-object p0
.end method

.method public static declared-synchronized registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/IFComponentHolder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    const-class v0, Lcom/taobao/weex/ui/WXComponentRegistry;

    monitor-enter v0

    if-eqz p1, :cond_2a

    .line 78
    :try_start_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2a

    .line 82
    :cond_c
    invoke-static {}, Lcom/taobao/weex/utils/cache/RegisterCache;->getInstance()Lcom/taobao/weex/utils/cache/RegisterCache;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/taobao/weex/utils/cache/RegisterCache;->cacheComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z

    move-result v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_27

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    .line 83
    monitor-exit v0

    return v2

    .line 87
    :cond_19
    :try_start_19
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    new-instance v3, Lcom/taobao/weex/ui/WXComponentRegistry$2;

    invoke-direct {v3, p2, p0, p1}, Lcom/taobao/weex/ui/WXComponentRegistry$2;-><init>(Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)V

    .line 88
    invoke-virtual {v1, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_27

    .line 108
    monitor-exit v0

    return v2

    :catchall_27
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    .line 79
    monitor-exit v0

    return p0
.end method

.method public static declared-synchronized registerComponent(Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;",
            ">;)Z"
        }
    .end annotation

    const-class v0, Lcom/taobao/weex/ui/WXComponentRegistry;

    monitor-enter v0

    .line 47
    :try_start_3
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_22

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 48
    monitor-exit v0

    return v2

    .line 49
    :cond_c
    :try_start_c
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 50
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    new-instance v3, Lcom/taobao/weex/ui/WXComponentRegistry$1;

    invoke-direct {v3, p0}, Lcom/taobao/weex/ui/WXComponentRegistry$1;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v1, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_22

    .line 74
    monitor-exit v0

    return v2

    :catchall_22
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static registerJSComponent(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKManager;->registerComponents(Ljava/util/List;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static registerNativeComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 113
    :try_start_0
    invoke-interface {p1}, Lcom/taobao/weex/ui/IFComponentHolder;->loadIfNonLazy()V

    .line 114
    sget-object v0, Lcom/taobao/weex/ui/WXComponentRegistry;->sTypeComponentMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/ArrayStoreException;->printStackTrace()V

    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static reload()V
    .registers 2

    .line 134
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/WXComponentRegistry$3;

    invoke-direct {v1}, Lcom/taobao/weex/ui/WXComponentRegistry$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.taobao.weex.ui.WXComponentRegistry.AnonymousClass1 (com.taobao.weex.ui.WXComponentRegistry$1)
.class final Lcom/taobao/weex/ui/WXComponentRegistry$1;
.super Ljava/lang/Object;
.source "WXComponentRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    :goto_5
    iget-object v1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 55
    iget-object v1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 57
    :try_start_15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;

    .line 58
    iget-object v2, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;->componentInfo:Ljava/util/Map;

    if-nez v2, :cond_24

    .line 60
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_24
    const-string v3, "type"

    .line 62
    iget-object v4, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;->type:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "methods"

    .line 63
    iget-object v4, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;->holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-interface {v4}, Lcom/taobao/weex/ui/IFComponentHolder;->getMethods()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v3, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;->type:Ljava/lang/String;

    iget-object v1, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;->holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-static {v3, v1}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$000(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)Z

    .line 65
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Lcom/taobao/weex/common/WXException; {:try_start_15 .. :try_end_47} :catch_48

    goto :goto_5

    :catch_48
    move-exception v1

    .line 68
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXException;->printStackTrace()V

    goto :goto_5

    .line 71
    :cond_4d
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/WXSDKManager;->registerComponents(Ljava/util/List;)V

    return-void
.end method

###### Class com.taobao.weex.ui.WXComponentRegistry.AnonymousClass2 (com.taobao.weex.ui.WXComponentRegistry$2)
.class final Lcom/taobao/weex/ui/WXComponentRegistry$2;
.super Ljava/lang/Object;
.source "WXComponentRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$componentInfo:Ljava/util/Map;

.field final synthetic val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)V
    .registers 4

    .line 88
    iput-object p1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$componentInfo:Ljava/util/Map;

    iput-object p2, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$componentInfo:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_9
    const-string v1, "type"

    .line 97
    iget-object v2, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "methods"

    .line 98
    iget-object v2, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-interface {v2}, Lcom/taobao/weex/ui/IFComponentHolder;->getMethods()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-static {v1, v2}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$000(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)Z

    .line 100
    invoke-static {v0}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$200(Ljava/util/Map;)Z

    .line 101
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_33

    :catch_2d
    move-exception v0

    const-string v1, "register component error:"

    .line 103
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_33
    return-void
.end method

###### Class com.taobao.weex.ui.WXComponentRegistry.AnonymousClass3 (com.taobao.weex.ui.WXComponentRegistry$3)
.class final Lcom/taobao/weex/ui/WXComponentRegistry$3;
.super Ljava/lang/Object;
.source "WXComponentRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/WXComponentRegistry;->reload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 138
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 139
    invoke-static {v1}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$200(Ljava/util/Map;)Z
    :try_end_17
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_8

    :catch_18
    move-exception v0

    const-string v1, ""

    .line 142
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    return-void
.end method
