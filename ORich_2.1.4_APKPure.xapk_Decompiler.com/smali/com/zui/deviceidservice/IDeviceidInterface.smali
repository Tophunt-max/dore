###### Class com.zui.deviceidservice.IDeviceidInterface (com.zui.deviceidservice.IDeviceidInterface)
.class public interface abstract Lcom/zui/deviceidservice/IDeviceidInterface;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/deviceidservice/IDeviceidInterface$Stub;,
        Lcom/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract a()Z
.end method

.method public abstract getAAID(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getOAID()Ljava/lang/String;
.end method

.method public abstract getUDID()Ljava/lang/String;
.end method

.method public abstract getVAID(Ljava/lang/String;)Ljava/lang/String;
.end method

###### Class com.zui.deviceidservice.IDeviceidInterface.Stub (com.zui.deviceidservice.IDeviceidInterface$Stub)
.class public abstract Lcom/zui/deviceidservice/IDeviceidInterface$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/zui/deviceidservice/IDeviceidInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/deviceidservice/IDeviceidInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.zui.deviceidservice.IDeviceidInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static native a(Landroid/os/IBinder;)Lcom/zui/deviceidservice/IDeviceidInterface;
.end method


# virtual methods
.method public native asBinder()Landroid/os/IBinder;
.end method

.method public native onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.end method

###### Class com.zui.deviceidservice.IDeviceidInterface.Stub.Proxy (com.zui.deviceidservice.IDeviceidInterface$Stub$Proxy)
.class Lcom/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zui/deviceidservice/IDeviceidInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/deviceidservice/IDeviceidInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public native a()Z
.end method

.method public native asBinder()Landroid/os/IBinder;
.end method

.method public native getAAID(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getOAID()Ljava/lang/String;
.end method

.method public native getUDID()Ljava/lang/String;
.end method

.method public native getVAID(Ljava/lang/String;)Ljava/lang/String;
.end method
