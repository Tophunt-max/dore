###### Class com.bun.miitmdid.supplier.sumsung.SumsungCore (com.bun.miitmdid.supplier.sumsung.SumsungCore)
.class public Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;
.super Ljava/lang/Object;


# static fields
.field private static DBG:Z = false

.field private static SAMSUNGTAG:Ljava/lang/String; = "Samsung_DeviceIdService"

.field private static TAG:Ljava/lang/String; = "SumsungCore library"


# instance fields
.field private mCallerCallBack:Lcom/bun/miitmdid/c/e/a;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeviceidInterface:Lcom/samsung/android/deviceidservice/IDeviceIdService;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bun/miitmdid/c/e/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mCallerCallBack:Lcom/bun/miitmdid/c/e/a;

    const-string v0, "Context can not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mCallerCallBack:Lcom/bun/miitmdid/c/e/a;

    new-instance p1, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore$a;

    invoke-direct {p1, p0}, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore$a;-><init>(Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;)V

    iput-object p1, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mConnection:Landroid/content/ServiceConnection;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.deviceidservice"

    const-string v0, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_37

    sget-object p1, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->TAG:Ljava/lang/String;

    const-string p2, "bindService Successful!"

    invoke-static {p1, p2}, Lcom/bun/lib/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :cond_37
    iget-object p1, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object p1, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->TAG:Ljava/lang/String;

    const-string p2, "bindService Failed!"

    invoke-static {p1, p2}, Lcom/bun/lib/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mCallerCallBack:Lcom/bun/miitmdid/c/e/a;

    if-eqz p1, :cond_4c

    invoke-interface {p1}, Lcom/bun/miitmdid/c/e/a;->b()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method static native synthetic access$002(Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;Lcom/samsung/android/deviceidservice/IDeviceIdService;)Lcom/samsung/android/deviceidservice/IDeviceIdService;
.end method

.method static native synthetic access$100(Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;)Lcom/bun/miitmdid/c/e/a;
.end method

.method static native synthetic access$200()Ljava/lang/String;
.end method


# virtual methods
.method public native getAAID()Ljava/lang/String;
.end method

.method public native getOAID()Ljava/lang/String;
.end method

.method public native getUDID()Ljava/lang/String;
.end method

.method public native getVAID()Ljava/lang/String;
.end method

.method public native isSupported()Z
.end method

.method public native shutdown()V
.end method

###### Class com.bun.miitmdid.supplier.sumsung.SumsungCore.a (com.bun.miitmdid.supplier.sumsung.SumsungCore$a)
.class Lcom/bun/miitmdid/supplier/sumsung/SumsungCore$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;-><init>(Landroid/content/Context;Lcom/bun/miitmdid/c/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;


# direct methods
.method constructor <init>(Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;)V
    .registers 2

    iput-object p1, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore$a;->a:Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synchronized native onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public native onServiceDisconnected(Landroid/content/ComponentName;)V
.end method
