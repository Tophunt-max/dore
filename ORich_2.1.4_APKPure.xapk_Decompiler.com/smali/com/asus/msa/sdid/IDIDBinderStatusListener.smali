###### Class com.asus.msa.sdid.IDIDBinderStatusListener (com.asus.msa.sdid.IDIDBinderStatusListener)
.class public interface abstract Lcom/asus/msa/sdid/IDIDBinderStatusListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/msa/sdid/IDIDBinderStatusListener$Stub;,
        Lcom/asus/msa/sdid/IDIDBinderStatusListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;)V
.end method

.method public abstract b()V
.end method

###### Class com.asus.msa.sdid.IDIDBinderStatusListener.Stub (com.asus.msa.sdid.IDIDBinderStatusListener$Stub)
.class public abstract Lcom/asus/msa/sdid/IDIDBinderStatusListener$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/asus/msa/sdid/IDIDBinderStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/msa/sdid/IDIDBinderStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/msa/sdid/IDIDBinderStatusListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.asus.msa.sdid.IDIDBinderStatusListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public native asBinder()Landroid/os/IBinder;
.end method

.method public native onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.end method

###### Class com.asus.msa.sdid.IDIDBinderStatusListener.Stub.Proxy (com.asus.msa.sdid.IDIDBinderStatusListener$Stub$Proxy)
.class public Lcom/asus/msa/sdid/IDIDBinderStatusListener$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/asus/msa/sdid/IDIDBinderStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/msa/sdid/IDIDBinderStatusListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field public a:Landroid/os/IBinder;


# virtual methods
.method public native a(Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;)V
.end method

.method public native asBinder()Landroid/os/IBinder;
.end method

.method public native b()V
.end method
