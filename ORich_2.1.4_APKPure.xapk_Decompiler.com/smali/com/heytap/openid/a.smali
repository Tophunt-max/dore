###### Class com.heytap.openid.a (com.heytap.openid.a)
.class public interface abstract Lcom/heytap/openid/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/openid/a$a;,
        Lcom/heytap/openid/a$a$a;
    }
.end annotation

###### Class com.heytap.openid.a.AbstractBinderC0016a (com.heytap.openid.a$a)
.class public abstract Lcom/heytap/openid/a$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/heytap/openid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/openid/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/openid/a$a$a;
    }
.end annotation


# direct methods
.method public static native a(Landroid/os/IBinder;)Lcom/heytap/openid/a;
.end method

###### Class com.heytap.openid.a.AbstractBinderC0016a.C0017a (com.heytap.openid.a$a$a)
.class public Lcom/heytap/openid/a$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/heytap/openid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/openid/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/openid/a$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public native a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native asBinder()Landroid/os/IBinder;
.end method
