###### Class com.taobao.weex.appfram.storage.IWXStorageAdapter (com.taobao.weex.appfram.storage.IWXStorageAdapter)
.class public interface abstract Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
.super Ljava/lang/Object;
.source "IWXStorageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getAllKeys(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end method

.method public abstract getItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end method

.method public abstract length(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end method

.method public abstract removeItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end method

.method public abstract setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end method

.method public abstract setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end method

###### Class com.taobao.weex.appfram.storage.IWXStorageAdapter.OnResultReceivedListener (com.taobao.weex.appfram.storage.IWXStorageAdapter$OnResultReceivedListener)
.class public interface abstract Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;
.super Ljava/lang/Object;
.source "IWXStorageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnResultReceivedListener"
.end annotation


# virtual methods
.method public abstract onReceived(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
