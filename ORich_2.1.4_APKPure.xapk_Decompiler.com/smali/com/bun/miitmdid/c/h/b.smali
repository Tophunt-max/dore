###### Class com.bun.miitmdid.c.h.b (com.bun.miitmdid.c.h.b)
.class public Lcom/bun/miitmdid/c/h/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/supplier/InnerIdSupplier;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bun/miitmdid/c/h/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public native a(Lcom/bun/supplier/SupplierListener;)V
.end method

.method public native a()Z
.end method

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

.method public native shutDown()V
.end method

###### Class com.bun.miitmdid.c.h.b.a (com.bun.miitmdid.c.h.b$a)
.class Lcom/bun/miitmdid/c/h/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/c/h/b;->a(Lcom/bun/supplier/SupplierListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bun/supplier/SupplierListener;

.field final synthetic b:Lcom/bun/miitmdid/c/h/b;


# direct methods
.method constructor <init>(Lcom/bun/miitmdid/c/h/b;Lcom/bun/supplier/SupplierListener;)V
    .registers 3

    iput-object p1, p0, Lcom/bun/miitmdid/c/h/b$a;->b:Lcom/bun/miitmdid/c/h/b;

    iput-object p2, p0, Lcom/bun/miitmdid/c/h/b$a;->a:Lcom/bun/supplier/SupplierListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
