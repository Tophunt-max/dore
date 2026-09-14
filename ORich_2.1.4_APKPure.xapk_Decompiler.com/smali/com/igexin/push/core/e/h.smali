###### Class com.igexin.push.core.e.h (com.igexin.push.core.e.h)
.class public Lcom/igexin/push/core/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private a:Landroid/os/IBinder;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igexin/push/core/e/h;->a:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/igexin/push/core/e/h;->b:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/os/IBinder;Ljava/lang/String;)Lcom/igexin/push/core/e/h;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/igexin/push/core/e/h;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/igexin/push/core/e/h;

    return-object v0

    :cond_f
    new-instance v0, Lcom/igexin/push/core/e/h;

    invoke-direct {v0, p0, p1}, Lcom/igexin/push/core/e/h;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    iget-object v2, p0, Lcom/igexin/push/core/e/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1f
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_28
    iget-object p1, p0, Lcom/igexin/push/core/e/h;->a:Landroid/os/IBinder;

    const/4 p2, 0x0

    invoke-interface {p1, p4, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_36

    goto :goto_3e

    :catchall_36
    :try_start_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3c} :catch_3c

    :catch_3c
    const-string p1, ""

    :goto_3e
    return-object p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/e/h;->a:Landroid/os/IBinder;

    return-object v0
.end method
