###### Class com.taobao.weex.ui.WXRenderManager (com.taobao.weex.ui.WXRenderManager)
.class public Lcom/taobao/weex/ui/WXRenderManager;
.super Ljava/lang/Object;
.source "WXRenderManager.java"


# static fields
.field private static mOpenGLRenderLimitValue:I = 0x0

.field private static nativeBatchTimes:I = 0x0

.field private static final sKeyAction:Ljava/lang/String; = "Action"


# instance fields
.field private final MAX_DROP_FRAME_NATIVE_BATCH:I

.field private mBatchActions:Ljava/util/ArrayList;
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

.field private mCurrentBatchInstanceId:Ljava/lang/String;

.field private volatile mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/RenderContextImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mCurrentBatchInstanceId:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mBatchActions:Ljava/util/ArrayList;

    const/16 v0, 0x7d0

    .line 64
    iput v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->MAX_DROP_FRAME_NATIVE_BATCH:I

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    new-instance v0, Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-direct {v0}, Lcom/taobao/weex/ui/WXRenderHandler;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    return-void
.end method

.method public static getOpenGLRenderLimitValue()I
    .registers 17

    .line 114
    sget v0, Lcom/taobao/weex/ui/WXRenderManager;->mOpenGLRenderLimitValue:I

    if-nez v0, :cond_9e

    const/4 v1, 0x0

    .line 117
    :try_start_5
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 118
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v8

    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 120
    invoke-interface {v0, v8, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v2, 0x7

    new-array v4, v2, [I

    const/16 v2, 0x303f

    aput v2, v4, v1

    const/16 v2, 0x308e

    const/4 v10, 0x1

    aput v2, v4, v10

    const/16 v2, 0x3029

    aput v2, v4, v9

    const/4 v11, 0x3

    aput v1, v4, v11

    const/16 v2, 0x3033

    const/4 v12, 0x4

    aput v2, v4, v12

    const/4 v13, 0x5

    aput v10, v4, v13

    const/4 v2, 0x6

    const/16 v14, 0x3038

    aput v14, v4, v2

    new-array v15, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v7, v10, [I

    const/4 v6, 0x1

    move-object v2, v0

    move-object v3, v8

    move-object v5, v15

    move-object/from16 v16, v7

    .line 128
    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 129
    aget v2, v16, v1

    if-nez v2, :cond_4d

    const/4 v1, -0x1

    .line 132
    invoke-interface {v0, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    goto :goto_9c

    .line 134
    :cond_4d
    aget-object v2, v15, v1

    new-array v3, v13, [I

    const/16 v4, 0x3057

    aput v4, v3, v1

    const/16 v4, 0x40

    aput v4, v3, v10

    const/16 v5, 0x3056

    aput v5, v3, v9

    aput v4, v3, v11

    aput v14, v3, v12

    .line 139
    invoke-interface {v0, v8, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    new-array v4, v11, [I

    const/16 v5, 0x3098

    aput v5, v4, v1

    aput v10, v4, v10

    aput v14, v4, v9

    .line 144
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v8, v2, v5, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    .line 145
    invoke-interface {v0, v8, v3, v3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    new-array v4, v10, [I

    const/16 v5, 0xd33

    .line 147
    invoke-static {v5, v4, v1}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 148
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v8, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 150
    invoke-interface {v0, v8, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 151
    invoke-interface {v0, v8, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 152
    invoke-interface {v0, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 153
    aget v1, v4, v1
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_93} :catch_94

    goto :goto_9c

    :catch_94
    move-exception v0

    .line 156
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 158
    :goto_9c
    sput v1, Lcom/taobao/weex/ui/WXRenderManager;->mOpenGLRenderLimitValue:I

    .line 160
    :cond_9e
    sget v0, Lcom/taobao/weex/ui/WXRenderManager;->mOpenGLRenderLimitValue:I

    return v0
.end method

.method private postAllStashedGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    .registers 9

    .line 206
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/RenderContextImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/taobao/weex/ui/WXRenderManager;->mBatchActions:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_14

    :cond_13
    move-object v2, v1

    .line 215
    :goto_14
    iget-object v3, p0, Lcom/taobao/weex/ui/WXRenderManager;->mBatchActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 216
    iput-object v1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mCurrentBatchInstanceId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 217
    sput v1, Lcom/taobao/weex/ui/WXRenderManager;->nativeBatchTimes:I

    if-nez v0, :cond_21

    return-void

    .line 225
    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    :goto_2a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_54

    .line 227
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "Action"

    .line 228
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 229
    instance-of v4, v3, Lcom/taobao/weex/ui/action/BasicGraphicAction;

    if-nez v4, :cond_41

    goto :goto_51

    .line 232
    :cond_41
    check-cast v3, Lcom/taobao/weex/ui/action/BasicGraphicAction;

    .line 233
    iget v4, v3, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mActionType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_51

    iget v4, v3, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mActionType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4e

    goto :goto_51

    .line 236
    :cond_4e
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 238
    :cond_54
    new-instance v1, Lcom/taobao/weex/ui/action/GraphicActionBatchAction;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getWXSDKIntance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getRef()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2, v0}, Lcom/taobao/weex/ui/action/GraphicActionBatchAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    return-void
.end method


# virtual methods
.method public getAllInstances()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/weex/WXSDKInstance;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    iget-object v1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 294
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/RenderContextImpl;

    if-eqz v2, :cond_1b

    .line 296
    invoke-virtual {v2}, Lcom/taobao/weex/ui/RenderContextImpl;->getWXSDKInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_37
    const/4 v0, 0x0

    :cond_38
    return-object v0
.end method

.method public getRenderContext(Ljava/lang/String;)Lcom/taobao/weex/dom/RenderContext;
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/dom/RenderContext;

    return-object p1
.end method

.method public getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_15

    .line 83
    :cond_a
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/WXRenderManager;->getRenderContext(Ljava/lang/String;)Lcom/taobao/weex/dom/RenderContext;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_15

    .line 84
    :cond_11
    invoke-interface {p1, p2}, Lcom/taobao/weex/dom/RenderContext;->getComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    :cond_15
    :goto_15
    return-object v0
.end method

.method public getWXComponentById(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    .line 89
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_19

    .line 92
    :cond_a
    iget-object v1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/RenderContextImpl;

    if-nez p1, :cond_15

    goto :goto_19

    .line 93
    :cond_15
    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/RenderContextImpl;->getComponentById(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/RenderContextImpl;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 110
    :cond_c
    invoke-virtual {p1}, Lcom/taobao/weex/ui/RenderContextImpl;->getWXSDKInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    return-object p1
.end method

.method public postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    .registers 7

    .line 242
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/RenderContextImpl;

    if-nez v0, :cond_b

    return-void

    .line 249
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mCurrentBatchInstanceId:Ljava/lang/String;

    const-string v1, "Action"

    const/4 v2, 0x1

    if-eqz v0, :cond_3e

    if-eqz p1, :cond_3e

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mBatchActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3e

    .line 250
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mBatchActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 251
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 252
    instance-of v3, v0, Lcom/taobao/weex/ui/action/BasicGraphicAction;

    if-eqz v3, :cond_3e

    .line 253
    check-cast v0, Lcom/taobao/weex/ui/action/BasicGraphicAction;

    .line 254
    iget-object v3, p0, Lcom/taobao/weex/ui/WXRenderManager;->mCurrentBatchInstanceId:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postAllStashedGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    .line 258
    :cond_3e
    iget v0, p2, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mActionType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_47

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/WXRenderManager;->postAllStashedGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    return-void

    .line 261
    :cond_47
    iget v0, p2, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mActionType:I

    if-eq v0, v2, :cond_53

    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mBatchActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5f

    .line 262
    :cond_53
    sget v0, Lcom/taobao/weex/ui/WXRenderManager;->nativeBatchTimes:I

    add-int/2addr v0, v2

    sput v0, Lcom/taobao/weex/ui/WXRenderManager;->nativeBatchTimes:I

    const/16 v3, 0x7d0

    if-le v0, v3, :cond_65

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/WXRenderManager;->postAllStashedGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    .line 274
    :cond_5f
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/WXRenderHandler;->post(Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void

    .line 266
    :cond_65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 267
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object p2, p0, Lcom/taobao/weex/ui/WXRenderManager;->mBatchActions:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iput-object p1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mCurrentBatchInstanceId:Ljava/lang/String;

    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/WXRenderHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;J)V
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/ui/WXRenderHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/taobao/weex/ui/WXRenderHandler;->post(Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerComponent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 6

    .line 304
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/RenderContextImpl;

    if-eqz p1, :cond_25

    .line 306
    invoke-virtual {p1, p2, p3}, Lcom/taobao/weex/ui/RenderContextImpl;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 307
    invoke-virtual {p1}, Lcom/taobao/weex/ui/RenderContextImpl;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    if-eqz p2, :cond_25

    .line 308
    invoke-virtual {p1}, Lcom/taobao/weex/ui/RenderContextImpl;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p2

    .line 310
    invoke-virtual {p1}, Lcom/taobao/weex/ui/RenderContextImpl;->getComponentCount()I

    move-result p1

    int-to-double v0, p1

    const-string p1, "wxMaxComponentCount"

    .line 308
    invoke-virtual {p2, p1, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateMaxStats(Ljava/lang/String;D)V

    :cond_25
    return-void
.end method

.method public registerInstance(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 5

    .line 278
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    .line 279
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_INSTANCE_ID_NULL:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_INSTANCE_ID_NULL:Lcom/taobao/weex/common/WXErrorCode;

    .line 282
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "instanceId is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "registerInstance"

    .line 279
    invoke-static {v1, p1, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_34

    .line 285
    :cond_26
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/ui/RenderContextImpl;

    invoke-direct {v2, p1}, Lcom/taobao/weex/ui/RenderContextImpl;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_34
    return-void
.end method

.method public removeRenderStatement(Ljava/lang/String;)V
    .registers 3

    .line 189
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 192
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/RenderContextImpl;

    if-eqz v0, :cond_13

    .line 195
    invoke-virtual {v0}, Lcom/taobao/weex/ui/RenderContextImpl;->destroy()V

    :cond_13
    if-nez p1, :cond_1c

    .line 198
    iget-object p1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/WXRenderHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_25

    .line 201
    :cond_1c
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/WXRenderHandler;->removeMessages(I)V

    :goto_25
    return-void

    .line 190
    :cond_26
    new-instance p1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string v0, "[WXRenderManager] removeRenderStatement can only be called in main thread"

    invoke-direct {p1, v0}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTask(Ljava/lang/Runnable;)V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/WXRenderHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setScrollable(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/RenderContextImpl;

    .line 102
    invoke-virtual {p1, p2, p3}, Lcom/taobao/weex/ui/RenderContextImpl;->setAllScrollerScrollable(ZLjava/lang/String;)V

    return-void
.end method

.method public unregisterComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 7

    .line 317
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/RenderContextImpl;

    if-eqz p1, :cond_27

    .line 319
    invoke-virtual {p1}, Lcom/taobao/weex/ui/RenderContextImpl;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 320
    invoke-virtual {p1}, Lcom/taobao/weex/ui/RenderContextImpl;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    .line 322
    invoke-virtual {p1}, Lcom/taobao/weex/ui/RenderContextImpl;->getComponentCount()I

    move-result v1

    int-to-double v1, v1

    const-string v3, "wxMaxComponentCount"

    .line 320
    invoke-virtual {v0, v3, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->updateMaxStats(Ljava/lang/String;D)V

    .line 325
    :cond_22
    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/RenderContextImpl;->unregisterComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method
