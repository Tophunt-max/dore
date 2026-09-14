###### Class com.zui.opendeviceidlibrary.OpenDeviceId (com.zui.opendeviceidlibrary.OpenDeviceId)
.class public Lcom/zui/opendeviceidlibrary/OpenDeviceId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String; = "OpenDeviceId library"

.field private static d:Z


# instance fields
.field private a:Lcom/zui/deviceidservice/IDeviceidInterface;

.field private b:Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;


# direct methods
.method static native synthetic a(Lcom/zui/opendeviceidlibrary/OpenDeviceId;Lcom/zui/deviceidservice/IDeviceidInterface;)Lcom/zui/deviceidservice/IDeviceidInterface;
.end method

.method static native synthetic a(Lcom/zui/opendeviceidlibrary/OpenDeviceId;)Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;
.end method

.method static native synthetic a(Lcom/zui/opendeviceidlibrary/OpenDeviceId;Ljava/lang/String;)V
.end method

.method private native a(Ljava/lang/String;)V
.end method

###### Class com.zui.opendeviceidlibrary.OpenDeviceId.AnonymousClass1 (com.zui.opendeviceidlibrary.OpenDeviceId$1)
.class Lcom/zui/opendeviceidlibrary/OpenDeviceId$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/zui/opendeviceidlibrary/OpenDeviceId;


# virtual methods
.method public synchronized native onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public native onServiceDisconnected(Landroid/content/ComponentName;)V
.end method

###### Class com.zui.opendeviceidlibrary.OpenDeviceId.CallBack (com.zui.opendeviceidlibrary.OpenDeviceId$CallBack)
.class public interface abstract Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/opendeviceidlibrary/OpenDeviceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallBack"
.end annotation


# virtual methods
.method public abstract a(Lcom/zui/opendeviceidlibrary/OpenDeviceId;)V
.end method
