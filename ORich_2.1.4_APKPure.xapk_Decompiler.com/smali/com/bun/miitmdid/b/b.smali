###### Class com.bun.miitmdid.b.b (com.bun.miitmdid.b.b)
.class public Lcom/bun/miitmdid/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bun/miitmdid/b/b$b;,
        Lcom/bun/miitmdid/b/b$c;
    }
.end annotation


# static fields
.field private static h:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/bun/miitmdid/b/b$b;

.field private c:Ljava/lang/Object;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bun/miitmdid/b/b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/bun/miitmdid/b/b;->b:Lcom/bun/miitmdid/b/b$b;

    iput-object p1, p0, Lcom/bun/miitmdid/b/b;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bun/miitmdid/b/b;->d:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bun/miitmdid/b/b;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bun/miitmdid/b/b;->f:Ljava/util/Map;

    const-string p1, "GET"

    iput-object p1, p0, Lcom/bun/miitmdid/b/b;->g:Ljava/lang/String;

    return-void
.end method

.method public static native a(Landroid/content/Context;)Lcom/bun/miitmdid/b/b;
.end method

.method static native synthetic a(Lcom/bun/miitmdid/b/b;)Ljava/lang/String;
.end method

.method private native a(Ljava/net/HttpURLConnection;)V
.end method

.method private native b()Lcom/bun/miitmdid/b/b$c;
.end method

.method static native synthetic b(Lcom/bun/miitmdid/b/b;)Lcom/bun/miitmdid/b/b$c;
.end method

.method private static native b(Ljava/lang/String;)V
.end method

.method private native c()Lcom/bun/miitmdid/b/b$c;
.end method

.method static native synthetic c(Lcom/bun/miitmdid/b/b;)Lcom/bun/miitmdid/b/b$c;
.end method

.method static native synthetic d(Lcom/bun/miitmdid/b/b;)Lcom/bun/miitmdid/b/b$b;
.end method

.method private native d()Ljava/lang/String;
.end method


# virtual methods
.method public native a()Lcom/bun/miitmdid/b/b;
.end method

.method public native a(Lcom/bun/miitmdid/b/b$b;)Lcom/bun/miitmdid/b/b;
.end method

.method public native a(Ljava/lang/Object;)Lcom/bun/miitmdid/b/b;
.end method

.method public native a(Ljava/lang/String;)Lcom/bun/miitmdid/b/b;
.end method

.method public native a(Ljava/lang/String;Ljava/lang/String;)Lcom/bun/miitmdid/b/b;
.end method

.method public native a(Ljava/util/Map;)Lcom/bun/miitmdid/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bun/miitmdid/b/b;"
        }
    .end annotation
.end method

###### Class com.bun.miitmdid.b.b.a (com.bun.miitmdid.b.b$a)
.class Lcom/bun/miitmdid/b/b$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/b/b;->a()Lcom/bun/miitmdid/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/bun/miitmdid/b/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/bun/miitmdid/b/b;

.field final synthetic b:Lcom/bun/miitmdid/b/b;


# direct methods
.method constructor <init>(Lcom/bun/miitmdid/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bun/miitmdid/b/b$a;->b:Lcom/bun/miitmdid/b/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/bun/miitmdid/b/b$a;->a:Lcom/bun/miitmdid/b/b;

    return-void
.end method


# virtual methods
.method protected varargs native a([Ljava/lang/Void;)Lcom/bun/miitmdid/b/b$c;
.end method

.method protected native a(Lcom/bun/miitmdid/b/b$c;)V
.end method

.method protected bridge native synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected bridge native synthetic onPostExecute(Ljava/lang/Object;)V
.end method

###### Class com.bun.miitmdid.b.b.InterfaceC0009b (com.bun.miitmdid.b.b$b)
.class public interface abstract Lcom/bun/miitmdid/b/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/miitmdid/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Exception;ILjava/lang/String;)V
.end method

###### Class com.bun.miitmdid.b.b.c (com.bun.miitmdid.b.b$c)
.class Lcom/bun/miitmdid/b/b$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/miitmdid/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/bun/miitmdid/b/b;Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bun/miitmdid/b/b$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bun/miitmdid/b/b$c;->c:Ljava/lang/Exception;

    iput p4, p0, Lcom/bun/miitmdid/b/b$c;->b:I

    return-void
.end method

.method static native synthetic a(Lcom/bun/miitmdid/b/b$c;)Ljava/lang/Exception;
.end method

.method static native synthetic b(Lcom/bun/miitmdid/b/b$c;)I
.end method

.method static native synthetic c(Lcom/bun/miitmdid/b/b$c;)Ljava/lang/String;
.end method
