###### Class com.igexin.push.core.b (com.igexin.push.core.b)
.class public Lcom/igexin/push/core/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const-string v0, "co."

    const-string v1, "mi."

    const-string v2, "gex."

    const-string v3, "ins."

    const-string v4, "dka."

    const-string v5, "cti."

    const-string v6, "on."

    const-string v7, "notifi."

    const-string v8, "cation."

    const-string v9, "burying."

    const-string v10, "point."

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "pre_burypoint."

    invoke-static {v1, v2, v0}, Lcom/igexin/push/core/b;->a(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/b;->a:Ljava/lang/String;

    const-string v2, "com."

    const-string v3, "ige."

    const-string v4, "xin."

    const-string v5, "sdk."

    const-string v6, "act."

    const-string v7, "ion."

    const-string v8, "do."

    const-string v9, "act."

    const-string v10, "tion."

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    const-string v3, "pre_doaction."

    invoke-static {v2, v3, v0}, Lcom/igexin/push/core/b;->a(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/Sdk/ImgCache/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/b;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/Sdk/WebCache/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/igexin/push/core/b;->e:I

    const/4 v3, 0x2

    sput v3, Lcom/igexin/push/core/b;->f:I

    const/4 v4, 0x3

    sput v4, Lcom/igexin/push/core/b;->g:I

    const/4 v4, 0x4

    sput v4, Lcom/igexin/push/core/b;->h:I

    const/16 v4, 0xb

    sput v4, Lcom/igexin/push/core/b;->i:I

    sput v2, Lcom/igexin/push/core/b;->j:I

    sput v1, Lcom/igexin/push/core/b;->k:I

    const/4 v1, 0x7

    sput v1, Lcom/igexin/push/core/b;->l:I

    const/16 v1, 0x8

    sput v1, Lcom/igexin/push/core/b;->m:I

    const/16 v1, 0x9

    sput v1, Lcom/igexin/push/core/b;->n:I

    const/16 v1, 0xa

    sput v1, Lcom/igexin/push/core/b;->o:I

    sput v0, Lcom/igexin/push/core/b;->p:I

    const/4 v0, 0x1

    sput v0, Lcom/igexin/push/core/b;->q:I

    sput v3, Lcom/igexin/push/core/b;->r:I

    const-string v0, "com.igexin.sdk.PushService"

    sput-object v0, Lcom/igexin/push/core/b;->s:Ljava/lang/String;

    const-string v0, "com.igexin.sdk.coordinator.SdkMsgService"

    sput-object v0, Lcom/igexin/push/core/b;->t:Ljava/lang/String;

    const-string v0, "com.igexin.sdk.coordinator.GexinMsgService"

    sput-object v0, Lcom/igexin/push/core/b;->u:Ljava/lang/String;

    const-string v0, "com.igexin.sdk.GTPushService"

    sput-object v0, Lcom/igexin/push/core/b;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-lez p0, :cond_39

    if-eqz p2, :cond_39

    array-length v0, p2

    if-gtz v0, :cond_8

    goto :goto_39

    :cond_8
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, p0, :cond_26

    array-length v3, p2

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v3, p2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_39
    :goto_39
    return-object p1
.end method
