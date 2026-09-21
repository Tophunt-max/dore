###### Class com.igexin.sdk.Tag (com.igexin.sdk.Tag)
.class public Lcom/igexin/sdk/Tag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ltz v0, :cond_51

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x4e00

    if-lt v3, v4, :cond_17

    const v4, 0x9fa5

    if-le v3, v4, :cond_4a

    :cond_17
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1f

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4a

    :cond_1f
    const/16 v4, 0x61

    if-lt v3, v4, :cond_27

    const/16 v4, 0x7a

    if-le v3, v4, :cond_4a

    :cond_27
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2f

    const/16 v4, 0x39

    if-le v3, v4, :cond_4a

    :cond_2f
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_4a

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4a

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_4a

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_4a

    const/16 v4, 0x20

    if-eq v3, v4, :cond_4a

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_48

    goto :goto_4a

    :cond_48
    const/4 v3, 0x0

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 v3, 0x1

    :goto_4b
    if-nez v3, :cond_4e

    goto :goto_51

    :cond_4e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_51
    :goto_51
    return v3
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/sdk/Tag;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isValidTagValue(Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/igexin/sdk/Tag;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setName(Ljava/lang/String;)Lcom/igexin/sdk/Tag;
    .registers 2

    iput-object p1, p0, Lcom/igexin/sdk/Tag;->a:Ljava/lang/String;

    return-object p0
.end method
