###### Class com.bun.miitmdid.c.j.b.b (com.bun.miitmdid.c.j.b.b)
.class public Lcom/bun/miitmdid/c/j/b/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z

.field private static c:Lcom/bun/miitmdid/c/j/b/b;

.field private static d:Lcom/bun/miitmdid/c/j/b/a;

.field private static e:Lcom/bun/miitmdid/c/j/b/c;

.field private static f:Lcom/bun/miitmdid/c/j/b/c;

.field private static g:Lcom/bun/miitmdid/c/j/b/c;

.field private static h:Ljava/lang/Object;

.field private static i:Landroid/os/HandlerThread;

.field private static j:Landroid/os/Handler;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bun/miitmdid/c/j/b/b;->h:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native a(Landroid/content/Context;)Lcom/bun/miitmdid/c/j/b/b;
.end method

.method public static native a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native a(Landroid/content/Context;ILjava/lang/String;)V
.end method

.method private native b(ILjava/lang/String;)V
.end method

.method static native synthetic c()Lcom/bun/miitmdid/c/j/b/a;
.end method

.method static native synthetic c(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static native synthetic d()Ljava/lang/Object;
.end method

.method public static native e()V
.end method

.method private static native f()V
.end method


# virtual methods
.method public native a()Ljava/lang/String;
.end method

.method public native a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native a(ILjava/lang/String;)V
.end method

.method public native b(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native b()Z
.end method

###### Class com.bun.miitmdid.c.j.b.b.a (com.bun.miitmdid.c.j.b.b$a)
.class final Lcom/bun/miitmdid/c/j/b/b$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/c/j/b/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public native handleMessage(Landroid/os/Message;)V
.end method
