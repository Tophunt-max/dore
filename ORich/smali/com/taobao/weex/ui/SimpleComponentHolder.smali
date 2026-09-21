###### Class com.taobao.weex.ui.SimpleComponentHolder (com.taobao.weex.ui.SimpleComponentHolder)
.class public Lcom/taobao/weex/ui/SimpleComponentHolder;
.super Ljava/lang/Object;
.source "SimpleComponentHolder.java"

# interfaces
.implements Lcom/taobao/weex/ui/IFComponentHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleComponentHolder"


# instance fields
.field private final mClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mCreator:Lcom/taobao/weex/ui/ComponentCreator;

.field private mMethodInvokers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/Invoker;",
            ">;"
        }
    .end annotation
.end field

.field private mPropertyInvokers:Ljava/util/Map;
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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)V"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;",
            "Lcom/taobao/weex/ui/ComponentCreator;",
            ")V"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mClz:Ljava/lang/Class;

    .line 151
    iput-object p2, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mCreator:Lcom/taobao/weex/ui/ComponentCreator;

    return-void
.end method

.method private declared-synchronized generate()V
    .registers 4

    monitor-enter p0

    .line 169
    :try_start_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "SimpleComponentHolder"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generate Component:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mClz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_23
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mClz:Ljava/lang/Class;

    invoke-static {v0}, Lcom/taobao/weex/ui/SimpleComponentHolder;->getMethods(Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v0

    .line 174
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mPropertyInvokers:Ljava/util/Map;

    .line 175
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mMethodInvokers:Ljava/util/Map;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 176
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getMethods(Ljava/lang/Class;)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/Invoker;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/Invoker;",
            ">;>;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 180
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 185
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v2, :cond_9f

    aget-object v5, p0, v4
    :try_end_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_15} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_94

    .line 187
    :try_start_15
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 188
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1b
    if-ge v8, v7, :cond_90

    .line 190
    aget-object v9, v6, v8

    if-nez v9, :cond_22

    goto :goto_8d

    .line 194
    :cond_22
    instance-of v10, v9, Lcom/taobao/weex/ui/component/WXComponentProp;

    const/4 v11, 0x1

    if-eqz v10, :cond_36

    .line 195
    check-cast v9, Lcom/taobao/weex/ui/component/WXComponentProp;

    invoke-interface {v9}, Lcom/taobao/weex/ui/component/WXComponentProp;->name()Ljava/lang/String;

    move-result-object v6

    .line 196
    new-instance v7, Lcom/taobao/weex/bridge/MethodInvoker;

    invoke-direct {v7, v5, v11}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_90

    .line 198
    :cond_36
    instance-of v10, v9, Lcom/taobao/weex/annotation/JSMethod;
    :try_end_38
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_15 .. :try_end_38} :catch_90
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_15 .. :try_end_38} :catch_90
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_38} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_38} :catch_94

    const-string v12, "_"

    if-eqz v10, :cond_59

    .line 199
    :try_start_3c
    check-cast v9, Lcom/taobao/weex/annotation/JSMethod;

    .line 200
    invoke-interface {v9}, Lcom/taobao/weex/annotation/JSMethod;->alias()Ljava/lang/String;

    move-result-object v6

    .line 201
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 202
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 204
    :cond_4c
    new-instance v7, Lcom/taobao/weex/bridge/MethodInvoker;

    invoke-interface {v9}, Lcom/taobao/weex/annotation/JSMethod;->uiThread()Z

    move-result v8

    invoke-direct {v7, v5, v8}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_90

    .line 206
    :cond_59
    instance-of v10, v9, Lio/dcloud/feature/uniapp/ui/component/UniComponentProp;

    if-eqz v10, :cond_6c

    .line 207
    check-cast v9, Lio/dcloud/feature/uniapp/ui/component/UniComponentProp;

    invoke-interface {v9}, Lio/dcloud/feature/uniapp/ui/component/UniComponentProp;->name()Ljava/lang/String;

    move-result-object v6

    .line 208
    new-instance v7, Lcom/taobao/weex/bridge/MethodInvoker;

    invoke-direct {v7, v5, v11}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_90

    .line 210
    :cond_6c
    instance-of v10, v9, Lio/dcloud/feature/uniapp/annotation/UniJSMethod;

    if-eqz v10, :cond_8d

    .line 211
    check-cast v9, Lio/dcloud/feature/uniapp/annotation/UniJSMethod;

    .line 212
    invoke-interface {v9}, Lio/dcloud/feature/uniapp/annotation/UniJSMethod;->alias()Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 214
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 216
    :cond_80
    new-instance v7, Lcom/taobao/weex/bridge/MethodInvoker;

    invoke-interface {v9}, Lio/dcloud/feature/uniapp/annotation/UniJSMethod;->uiThread()Z

    move-result v8

    invoke-direct {v7, v5, v8}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3c .. :try_end_8c} :catch_90
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_3c .. :try_end_8c} :catch_90
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3c .. :try_end_8c} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_8c} :catch_94

    goto :goto_90

    :cond_8d
    :goto_8d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :catch_90
    :cond_90
    :goto_90
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_11

    :catch_94
    move-exception p0

    const-string v2, "SimpleComponentHolder"

    .line 228
    invoke-static {v2, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9f

    :catch_9b
    move-exception p0

    .line 225
    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 230
    :cond_9f
    :goto_9f
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public declared-synchronized createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    monitor-enter p0

    .line 237
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mCreator:Lcom/taobao/weex/ui/ComponentCreator;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/ui/ComponentCreator;->createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    .line 239
    invoke-virtual {p1, p0}, Lcom/taobao/weex/ui/component/WXComponent;->bindHolder(Lcom/taobao/weex/ui/IFComponentHolder;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 240
    monitor-exit p0

    return-object p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mMethodInvokers:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 255
    invoke-direct {p0}, Lcom/taobao/weex/ui/SimpleComponentHolder;->generate()V

    .line 257
    :cond_7
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/bridge/Invoker;

    return-object p1
.end method

.method public declared-synchronized getMethods()[Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 262
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mMethodInvokers:Ljava/util/Map;

    if-nez v0, :cond_8

    .line 263
    invoke-direct {p0}, Lcom/taobao/weex/ui/SimpleComponentHolder;->generate()V

    .line 265
    :cond_8
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_42

    .line 267
    :try_start_e
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object v0

    .line 269
    :catchall_1c
    :try_start_1c
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mClz:Ljava/lang/Class;

    if-eqz v0, :cond_3d

    .line 270
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": gen methods failed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_COMPONENT:Lcom/taobao/weex/common/WXErrorCode;

    const-string v2, "registerComponents"

    const/4 v3, 0x0

    invoke-static {v3, v1, v2, v0, v3}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_42

    .line 278
    monitor-exit p0

    return-object v0

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPropertyInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;
    .registers 3

    monitor-enter p0

    .line 245
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mPropertyInvokers:Ljava/util/Map;

    if-nez v0, :cond_8

    .line 246
    invoke-direct {p0}, Lcom/taobao/weex/ui/SimpleComponentHolder;->generate()V

    .line 249
    :cond_8
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mPropertyInvokers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/bridge/Invoker;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public loadIfNonLazy()V
    .registers 6

    .line 156
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mClz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 158
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    .line 159
    instance-of v4, v3, Lcom/taobao/weex/annotation/Component;

    if-eqz v4, :cond_20

    .line 160
    check-cast v3, Lcom/taobao/weex/annotation/Component;

    invoke-interface {v3}, Lcom/taobao/weex/annotation/Component;->lazyload()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mMethodInvokers:Ljava/util/Map;

    if-nez v0, :cond_1f

    .line 161
    invoke-direct {p0}, Lcom/taobao/weex/ui/SimpleComponentHolder;->generate()V

    :cond_1f
    return-void

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_23
    return-void
.end method

###### Class com.taobao.weex.ui.SimpleComponentHolder.ClazzComponentCreator (com.taobao.weex.ui.SimpleComponentHolder$ClazzComponentCreator)
.class public Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;
.super Ljava/lang/Object;
.source "SimpleComponentHolder.java"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/SimpleComponentHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClazzComponentCreator"
.end annotation


# instance fields
.field private mAbsConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
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
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mCompClz:Ljava/lang/Class;

    return-void
.end method

.method private getComponentConstructor(Ljava/lang/Boolean;)Ljava/lang/reflect/Constructor;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mCompClz:Ljava/lang/Class;

    .line 86
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 87
    const-class p1, Lio/dcloud/feature/uniapp/UniSDKInstance;

    .line 88
    const-class v1, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;

    .line 89
    const-class v2, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    goto :goto_15

    .line 91
    :cond_f
    const-class p1, Lcom/taobao/weex/WXSDKInstance;

    .line 92
    const-class v1, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 93
    const-class v2, Lcom/taobao/weex/ui/action/BasicComponentData;

    :goto_15
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_19
    new-array v7, v6, [Ljava/lang/Class;

    aput-object p1, v7, v5

    aput-object v1, v7, v4

    aput-object v2, v7, v3

    .line 96
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19 .. :try_end_25} :catch_26

    goto :goto_54

    :catch_26
    const-string v7, "ClazzComponentCreator"

    const-string v8, "Use deprecated component constructor"

    .line 98
    invoke-static {v7, v8}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    :try_start_2e
    new-array v8, v7, [Ljava/lang/Class;

    aput-object p1, v8, v5

    aput-object v1, v8, v4

    .line 101
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    aput-object v2, v8, v6

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_3e} :catch_3f

    goto :goto_54

    :catch_3f
    const/4 v8, 0x5

    :try_start_40
    new-array v8, v8, [Ljava/lang/Class;

    aput-object p1, v8, v5

    aput-object v1, v8, v4

    .line 105
    const-class p1, Ljava/lang/String;

    aput-object p1, v8, v3

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object p1, v8, v6

    aput-object v2, v8, v7

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_54
    .catch Ljava/lang/NoSuchMethodException; {:try_start_40 .. :try_end_54} :catch_55

    :goto_54
    return-object p1

    .line 107
    :catch_55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "shutao"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance p1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string v0, "Can\'t find constructor of component."

    invoke-direct {p1, v0}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 117
    const-class v0, Lio/dcloud/feature/uniapp/ui/component/UniVContainer;

    iget-object v1, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mCompClz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_19

    const-class v0, Lio/dcloud/feature/uniapp/ui/component/UniComponent;

    iget-object v3, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mCompClz:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    if-eqz v0, :cond_2d

    .line 120
    iget-object v3, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mAbsConstructor:Ljava/lang/reflect/Constructor;

    if-nez v3, :cond_2a

    .line 121
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->getComponentConstructor(Ljava/lang/Boolean;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mAbsConstructor:Ljava/lang/reflect/Constructor;

    .line 123
    :cond_2a
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mAbsConstructor:Ljava/lang/reflect/Constructor;

    goto :goto_3d

    .line 125
    :cond_2d
    iget-object v3, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mConstructor:Ljava/lang/reflect/Constructor;

    if-nez v3, :cond_3b

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->getComponentConstructor(Ljava/lang/Boolean;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 128
    :cond_3b
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 130
    :goto_3d
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v3, v5, :cond_55

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    aput-object p3, v3, v4

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    goto :goto_89

    :cond_55
    const/4 v6, 0x4

    if-ne v3, v6, :cond_6d

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    .line 136
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v4

    aput-object p3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    goto :goto_89

    :cond_6d
    new-array p3, v6, [Ljava/lang/Object;

    aput-object p1, p3, v2

    aput-object p2, p3, v1

    .line 139
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v4

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXVContainer;->isLazy()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p3, v5

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    :goto_89
    return-object p1
.end method
