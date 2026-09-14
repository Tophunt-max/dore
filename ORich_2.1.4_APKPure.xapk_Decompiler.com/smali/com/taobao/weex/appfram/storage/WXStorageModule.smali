###### Class com.taobao.weex.appfram.storage.WXStorageModule (com.taobao.weex.appfram.storage.WXStorageModule)
.class public Lcom/taobao/weex/appfram/storage/WXStorageModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "WXStorageModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorage;


# instance fields
.field mStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    return-void
.end method

.method private ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule;->mStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    if-eqz v0, :cond_5

    return-object v0

    .line 38
    :cond_5
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getIWXStorageAdapter()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule;->mStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 175
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 177
    invoke-interface {v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->close()V

    :cond_9
    return-void
.end method

.method public getAllKeys(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 135
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    if-nez v0, :cond_a

    .line 137
    invoke-static {p1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 140
    :cond_a
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$5;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/appfram/storage/WXStorageModule$5;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->getAllKeys(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    return-void
.end method

.method public getItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 72
    invoke-static {p2}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 76
    :cond_a
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    if-nez v0, :cond_14

    .line 78
    invoke-static {p2}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 81
    :cond_14
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$2;

    invoke-direct {v1, p0, p2}, Lcom/taobao/weex/appfram/storage/WXStorageModule$2;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->getItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    return-void
.end method

.method public length(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    if-nez v0, :cond_a

    .line 119
    invoke-static {p1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 122
    :cond_a
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$4;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/appfram/storage/WXStorageModule$4;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->length(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    return-void
.end method

.method public removeItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 95
    invoke-static {p2}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 99
    :cond_a
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    if-nez v0, :cond_14

    .line 101
    invoke-static {p2}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 104
    :cond_14
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$3;

    invoke-direct {v1, p0, p2}, Lcom/taobao/weex/appfram/storage/WXStorageModule$3;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->removeItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    return-void
.end method

.method public setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-nez p2, :cond_9

    goto :goto_1c

    .line 51
    :cond_9
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    if-nez v0, :cond_13

    .line 53
    invoke-static {p3}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 56
    :cond_13
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$1;

    invoke-direct {v1, p0, p3}, Lcom/taobao/weex/appfram/storage/WXStorageModule$1;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    return-void

    .line 47
    :cond_1c
    :goto_1c
    invoke-static {p3}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void
.end method

.method public setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-nez p2, :cond_9

    goto :goto_1c

    .line 158
    :cond_9
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    if-nez v0, :cond_13

    .line 160
    invoke-static {p3}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 163
    :cond_13
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$6;

    invoke-direct {v1, p0, p3}, Lcom/taobao/weex/appfram/storage/WXStorageModule$6;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    return-void

    .line 154
    :cond_1c
    :goto_1c
    invoke-static {p3}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.WXStorageModule.AnonymousClass1 (com.taobao.weex.appfram.storage.WXStorageModule$1)
.class Lcom/taobao/weex/appfram/storage/WXStorageModule$1;
.super Ljava/lang/Object;
.source "WXStorageModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/WXStorageModule;->setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3

    .line 56
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$1;->this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_7

    .line 60
    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

###### Class com.taobao.weex.appfram.storage.WXStorageModule.AnonymousClass2 (com.taobao.weex.appfram.storage.WXStorageModule$2)
.class Lcom/taobao/weex/appfram/storage/WXStorageModule$2;
.super Ljava/lang/Object;
.source "WXStorageModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/WXStorageModule;->getItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3

    .line 81
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$2;->this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_7

    .line 85
    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

###### Class com.taobao.weex.appfram.storage.WXStorageModule.AnonymousClass3 (com.taobao.weex.appfram.storage.WXStorageModule$3)
.class Lcom/taobao/weex/appfram/storage/WXStorageModule$3;
.super Ljava/lang/Object;
.source "WXStorageModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/WXStorageModule;->removeItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3

    .line 104
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$3;->this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_7

    .line 108
    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

###### Class com.taobao.weex.appfram.storage.WXStorageModule.AnonymousClass4 (com.taobao.weex.appfram.storage.WXStorageModule$4)
.class Lcom/taobao/weex/appfram/storage/WXStorageModule$4;
.super Ljava/lang/Object;
.source "WXStorageModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/WXStorageModule;->length(Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3

    .line 122
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$4;->this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$4;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$4;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_7

    .line 126
    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

###### Class com.taobao.weex.appfram.storage.WXStorageModule.AnonymousClass5 (com.taobao.weex.appfram.storage.WXStorageModule$5)
.class Lcom/taobao/weex/appfram/storage/WXStorageModule$5;
.super Ljava/lang/Object;
.source "WXStorageModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/WXStorageModule;->getAllKeys(Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3

    .line 140
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$5;->this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_7

    .line 144
    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

###### Class com.taobao.weex.appfram.storage.WXStorageModule.AnonymousClass6 (com.taobao.weex.appfram.storage.WXStorageModule$6)
.class Lcom/taobao/weex/appfram/storage/WXStorageModule$6;
.super Ljava/lang/Object;
.source "WXStorageModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/WXStorageModule;->setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3

    .line 163
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$6;->this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$6;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$6;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_7

    .line 167
    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
