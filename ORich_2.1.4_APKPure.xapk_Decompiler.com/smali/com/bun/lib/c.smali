###### Class com.bun.lib.c (com.bun.lib.c)
.class public interface abstract Lcom/bun/lib/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bun/lib/c$a;,
        Lcom/bun/lib/c$a$a;
    }
.end annotation


# virtual methods
.method public abstract c()Z
.end method

.method public abstract getAAID()Ljava/lang/String;
.end method

.method public abstract getOAID()Ljava/lang/String;
.end method

.method public abstract getVAID()Ljava/lang/String;
.end method

.method public abstract isSupported()Z
.end method

.method public abstract shutDown()V
.end method

###### Class com.bun.lib.c.a (com.bun.lib.c$a)
.class public abstract Lcom/bun/lib/c$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/bun/lib/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/lib/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bun/lib/c$a$a;
    }
.end annotation


# direct methods
.method public static native a(Landroid/os/IBinder;)Lcom/bun/lib/c;
.end method

###### Class com.bun.lib.c.a.C0007a (com.bun.lib.c$a$a)
.class Lcom/bun/lib/c$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/lib/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/lib/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bun/lib/c$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public native asBinder()Landroid/os/IBinder;
.end method

.method public native c()Z
.end method

.method public native getAAID()Ljava/lang/String;
.end method

.method public native getOAID()Ljava/lang/String;
.end method

.method public native getVAID()Ljava/lang/String;
.end method

.method public native isSupported()Z
.end method

.method public native shutDown()V
.end method
