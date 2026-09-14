###### Class com.bumptech.glide.manager.ConnectivityMonitor (com.bumptech.glide.manager.ConnectivityMonitor)
.class public interface abstract Lcom/bumptech/glide/manager/ConnectivityMonitor;
.super Ljava/lang/Object;
.source "ConnectivityMonitor.java"

# interfaces
.implements Lcom/bumptech/glide/manager/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
    }
.end annotation

###### Class com.bumptech.glide.manager.ConnectivityMonitor.ConnectivityListener (com.bumptech.glide.manager.ConnectivityMonitor$ConnectivityListener)
.class public interface abstract Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
.super Ljava/lang/Object;
.source "ConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/ConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectivityListener"
.end annotation


# virtual methods
.method public abstract onConnectivityChanged(Z)V
.end method
