###### Class com.igexin.b.a.b.a.a.q (com.igexin.b.a.b.a.a.q)
.class public final enum Lcom/igexin/b/a/b/a/a/q;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/igexin/b/a/b/a/a/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/igexin/b/a/b/a/a/q;

.field public static final enum b:Lcom/igexin/b/a/b/a/a/q;

.field public static final enum c:Lcom/igexin/b/a/b/a/a/q;

.field public static final enum d:Lcom/igexin/b/a/b/a/a/q;

.field public static final enum e:Lcom/igexin/b/a/b/a/a/q;

.field public static final enum f:Lcom/igexin/b/a/b/a/a/q;

.field public static final enum g:Lcom/igexin/b/a/b/a/a/q;

.field private static final synthetic h:[Lcom/igexin/b/a/b/a/a/q;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    new-instance v0, Lcom/igexin/b/a/b/a/a/q;

    const-string v1, "TCP_IO_EXCEPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/igexin/b/a/b/a/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/b/a/b/a/a/q;->a:Lcom/igexin/b/a/b/a/a/q;

    new-instance v1, Lcom/igexin/b/a/b/a/a/q;

    const-string v3, "TCP_DISCONNECT_SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/igexin/b/a/b/a/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/igexin/b/a/b/a/a/q;->b:Lcom/igexin/b/a/b/a/a/q;

    new-instance v3, Lcom/igexin/b/a/b/a/a/q;

    const-string v5, "TCP_CONNECT_SUCCESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/igexin/b/a/b/a/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/igexin/b/a/b/a/a/q;->c:Lcom/igexin/b/a/b/a/a/q;

    new-instance v5, Lcom/igexin/b/a/b/a/a/q;

    const-string v7, "TCP_START_CONNECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/igexin/b/a/b/a/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/igexin/b/a/b/a/a/q;->d:Lcom/igexin/b/a/b/a/a/q;

    new-instance v7, Lcom/igexin/b/a/b/a/a/q;

    const-string v9, "TCP_CREATE_SUCCESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/igexin/b/a/b/a/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/igexin/b/a/b/a/a/q;->e:Lcom/igexin/b/a/b/a/a/q;

    new-instance v9, Lcom/igexin/b/a/b/a/a/q;

    const-string v11, "INTERRUPT_SUCCESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/igexin/b/a/b/a/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/igexin/b/a/b/a/a/q;->f:Lcom/igexin/b/a/b/a/a/q;

    new-instance v11, Lcom/igexin/b/a/b/a/a/q;

    const-string v13, "TCP_DISCONNECT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/igexin/b/a/b/a/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/igexin/b/a/b/a/a/q;->g:Lcom/igexin/b/a/b/a/a/q;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/igexin/b/a/b/a/a/q;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/igexin/b/a/b/a/a/q;->h:[Lcom/igexin/b/a/b/a/a/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/igexin/b/a/b/a/a/q;
    .registers 1

    sget-object v0, Lcom/igexin/b/a/b/a/a/q;->h:[Lcom/igexin/b/a/b/a/a/q;

    invoke-virtual {v0}, [Lcom/igexin/b/a/b/a/a/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igexin/b/a/b/a/a/q;

    return-object v0
.end method
