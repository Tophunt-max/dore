###### Class com.igexin.push.e.c.b (com.igexin.push.e.c.b)
.class public Lcom/igexin/push/e/c/b;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:B

.field public c:B

.field public d:B

.field public e:[B

.field public f:I

.field public g:B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_7

    :cond_4
    iput-object p1, p0, Lcom/igexin/push/e/c/b;->e:[B

    array-length p1, p1

    :goto_7
    iput p1, p0, Lcom/igexin/push/e/c/b;->a:I

    return-void
.end method
