###### Class com.igexin.push.b.c (com.igexin.push.b.c)
.class public Lcom/igexin/push/b/c;
.super Lcom/igexin/b/a/d/a;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/b/a/d/a;-><init>()V

    iput p1, p0, Lcom/igexin/push/b/c;->a:I

    return-void
.end method


# virtual methods
.method public final b()I
    .registers 2

    const v0, 0x10006

    return v0
.end method
