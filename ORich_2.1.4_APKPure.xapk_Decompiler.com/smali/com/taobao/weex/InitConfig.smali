###### Class com.taobao.weex.InitConfig (com.taobao.weex.InitConfig)
.class public Lcom/taobao/weex/InitConfig;
.super Ljava/lang/Object;
.source "InitConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/InitConfig$Builder;
    }
.end annotation


# instance fields
.field private apmGenerater:Lcom/taobao/weex/performance/IApmGenerator;

.field private classLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

.field private drawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

.field private framework:Ljava/lang/String;

.field private httpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

.field private imgAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

.field private jsFileLoaderAdapter:Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

.field private jscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

.field private mJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

.field private mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

.field private nativeLibraryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private soLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

.field private storageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

.field private utAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

.field private webSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/InitConfig$1;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/taobao/weex/InitConfig;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->mJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXHttpAdapter;)Lcom/taobao/weex/adapter/IWXHttpAdapter;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->httpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/ClassLoaderAdapter;)Lcom/taobao/weex/adapter/ClassLoaderAdapter;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->classLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/performance/IApmGenerator;)Lcom/taobao/weex/performance/IApmGenerator;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->apmGenerater:Lcom/taobao/weex/performance/IApmGenerator;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;)Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->jsFileLoaderAdapter:Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXJscProcessManager;)Lcom/taobao/weex/adapter/IWXJscProcessManager;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->jscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/taobao/weex/InitConfig;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->nativeLibraryList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$202(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;)Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->imgAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IDrawableLoader;)Lcom/taobao/weex/adapter/IDrawableLoader;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->drawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

    return-object p1
.end method

.method static synthetic access$402(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->utAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    return-object p1
.end method

.method static synthetic access$502(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;)Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->storageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    return-object p1
.end method

.method static synthetic access$602(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;)Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->soLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    return-object p1
.end method

.method static synthetic access$702(Lcom/taobao/weex/InitConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->framework:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/URIAdapter;)Lcom/taobao/weex/adapter/URIAdapter;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    return-object p1
.end method

.method static synthetic access$902(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->webSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    return-object p1
.end method


# virtual methods
.method public getApmGenerater()Lcom/taobao/weex/performance/IApmGenerator;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->apmGenerater:Lcom/taobao/weex/performance/IApmGenerator;

    return-object v0
.end method

.method public getClassLoaderAdapter()Lcom/taobao/weex/adapter/ClassLoaderAdapter;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->classLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    return-object v0
.end method

.method public getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->drawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

    return-object v0
.end method

.method public getFramework()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->framework:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->httpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    return-object v0
.end method

.method public getIWXSoLoaderAdapter()Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->soLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    return-object v0
.end method

.method public getImgAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->imgAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    return-object v0
.end method

.method public getJSExceptionAdapter()Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->mJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    return-object v0
.end method

.method public getJsFileLoaderAdapter()Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->jsFileLoaderAdapter:Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    return-object v0
.end method

.method public getJscProcessManager()Lcom/taobao/weex/adapter/IWXJscProcessManager;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->jscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

    return-object v0
.end method

.method getNativeLibraryList()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->nativeLibraryList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 120
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/InitConfig;->nativeLibraryList:Ljava/util/List;

    .line 122
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->nativeLibraryList:Ljava/util/List;

    return-object v0
.end method

.method public getStorageAdapter()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->storageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    return-object v0
.end method

.method public getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    return-object v0
.end method

.method public getUtAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->utAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    return-object v0
.end method

.method public getWebSocketAdapterFactory()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/taobao/weex/InitConfig;->webSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    return-object v0
.end method

.method public setClassLoaderAdapter(Lcom/taobao/weex/adapter/ClassLoaderAdapter;)Lcom/taobao/weex/InitConfig;
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/taobao/weex/InitConfig;->classLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    return-object p0
.end method

###### Class com.taobao.weex.InitConfig.AnonymousClass1 (com.taobao.weex.InitConfig$1)
.class synthetic Lcom/taobao/weex/InitConfig$1;
.super Ljava/lang/Object;
.source "InitConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/InitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.taobao.weex.InitConfig.Builder (com.taobao.weex.InitConfig$Builder)
.class public Lcom/taobao/weex/InitConfig$Builder;
.super Ljava/lang/Object;
.source "InitConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/InitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field apmGenerater:Lcom/taobao/weex/performance/IApmGenerator;

.field classLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

.field drawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

.field framework:Ljava/lang/String;

.field httpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

.field imgAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

.field private jsFileLoaderAdapter:Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

.field jscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

.field mJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

.field mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

.field private nativeLibraryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field soLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

.field storageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

.field utAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

.field webSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/InitConfig$Builder;->nativeLibraryList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addNativeLibrary(Ljava/lang/String;)Lcom/taobao/weex/InitConfig$Builder;
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/taobao/weex/InitConfig$Builder;->nativeLibraryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/taobao/weex/InitConfig;
    .registers 3

    .line 230
    new-instance v0, Lcom/taobao/weex/InitConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/InitConfig;-><init>(Lcom/taobao/weex/InitConfig$1;)V

    .line 231
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->httpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$102(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXHttpAdapter;)Lcom/taobao/weex/adapter/IWXHttpAdapter;

    .line 232
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->imgAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$202(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;)Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    .line 233
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->drawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$302(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IDrawableLoader;)Lcom/taobao/weex/adapter/IDrawableLoader;

    .line 234
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->utAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$402(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .line 235
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->storageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$502(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;)Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    .line 236
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->soLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$602(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;)Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    .line 237
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->framework:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$702(Lcom/taobao/weex/InitConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$802(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/URIAdapter;)Lcom/taobao/weex/adapter/URIAdapter;

    .line 239
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->webSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$902(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    .line 240
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->mJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$1002(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    .line 241
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->classLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$1102(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/ClassLoaderAdapter;)Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    .line 242
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->apmGenerater:Lcom/taobao/weex/performance/IApmGenerator;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$1202(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/performance/IApmGenerator;)Lcom/taobao/weex/performance/IApmGenerator;

    .line 243
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->jsFileLoaderAdapter:Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$1302(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;)Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    .line 244
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->jscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$1402(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXJscProcessManager;)Lcom/taobao/weex/adapter/IWXJscProcessManager;

    .line 245
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->nativeLibraryList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$1502(Lcom/taobao/weex/InitConfig;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public getJscProcessManager()Lcom/taobao/weex/adapter/IWXJscProcessManager;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/taobao/weex/InitConfig$Builder;->jscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

    return-object v0
.end method

.method public setApmGenerater(Lcom/taobao/weex/performance/IApmGenerator;)Lcom/taobao/weex/InitConfig$Builder;
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->apmGenerater:Lcom/taobao/weex/performance/IApmGenerator;

    return-object p0
.end method

.method public setClassLoaderAdapter(Lcom/taobao/weex/adapter/ClassLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->classLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    return-object p0
.end method

.method public setDrawableLoader(Lcom/taobao/weex/adapter/IDrawableLoader;)Lcom/taobao/weex/InitConfig$Builder;
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->drawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

    return-object p0
.end method

.method public setFramework(Ljava/lang/String;)Lcom/taobao/weex/InitConfig$Builder;
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->framework:Ljava/lang/String;

    return-object p0
.end method

.method public setHttpAdapter(Lcom/taobao/weex/adapter/IWXHttpAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->httpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    return-object p0
.end method

.method public setImgAdapter(Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->imgAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    return-object p0
.end method

.method public setJSExceptionAdapter(Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->mJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    return-object p0
.end method

.method public setJsFileLoaderAdapter(Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->jsFileLoaderAdapter:Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    return-object p0
.end method

.method public setJscProcessManager(Lcom/taobao/weex/adapter/IWXJscProcessManager;)Lcom/taobao/weex/InitConfig$Builder;
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->jscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

    return-object p0
.end method

.method public setSoLoader(Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->soLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    return-object p0
.end method

.method public setStorageAdapter(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->storageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    return-object p0
.end method

.method public setURIAdapter(Lcom/taobao/weex/adapter/URIAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    return-object p0
.end method

.method public setUtAdapter(Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->utAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    return-object p0
.end method

.method public setWebSocketAdapterFactory(Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;)Lcom/taobao/weex/InitConfig$Builder;
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->webSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    return-object p0
.end method
