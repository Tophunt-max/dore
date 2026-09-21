###### Class com.facebook.common.callercontext.ContextChain (com.facebook.common.callercontext.ContextChain)
.class public Lcom/facebook/common/callercontext/ContextChain;
.super Ljava/lang/Object;
.source "ContextChain.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/common/callercontext/ContextChain;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARENT_SEPARATOR:C = '/'

.field public static final TAG_INFRA:Ljava/lang/String; = "i"

.field public static final TAG_PRODUCT:Ljava/lang/String; = "p"

.field public static final TAG_PRODUCT_AND_INFRA:Ljava/lang/String; = "pi"

.field private static sUseDeepEquals:Z = false


# instance fields
.field private mExtraData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mLevel:I

.field private final mName:Ljava/lang/String;

.field private final mParent:Lcom/facebook/common/callercontext/ContextChain;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSerializedString:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 195
    new-instance v0, Lcom/facebook/common/callercontext/ContextChain$1;

    invoke-direct {v0}, Lcom/facebook/common/callercontext/ContextChain$1;-><init>()V

    sput-object v0, Lcom/facebook/common/callercontext/ContextChain;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mTag:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mLevel:I

    .line 88
    const-class v0, Lcom/facebook/common/callercontext/ContextChain;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/callercontext/ContextChain;

    iput-object p1, p0, Lcom/facebook/common/callercontext/ContextChain;->mParent:Lcom/facebook/common/callercontext/ContextChain;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/common/callercontext/ContextChain;)V
    .registers 5
    .param p3    # Lcom/facebook/common/callercontext/ContextChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "tag",
            "name",
            "parent"
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/common/callercontext/ContextChain;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/common/callercontext/ContextChain;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/common/callercontext/ContextChain;)V
    .registers 5
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/common/callercontext/ContextChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "tag",
            "name",
            "extraData",
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/common/callercontext/ContextChain;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/facebook/common/callercontext/ContextChain;->mTag:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/facebook/common/callercontext/ContextChain;->mName:Ljava/lang/String;

    if-eqz p4, :cond_e

    .line 61
    iget p1, p4, Lcom/facebook/common/callercontext/ContextChain;->mLevel:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput p1, p0, Lcom/facebook/common/callercontext/ContextChain;->mLevel:I

    .line 62
    iput-object p4, p0, Lcom/facebook/common/callercontext/ContextChain;->mParent:Lcom/facebook/common/callercontext/ContextChain;

    const/4 p1, 0x0

    if-eqz p4, :cond_1a

    .line 66
    invoke-virtual {p4}, Lcom/facebook/common/callercontext/ContextChain;->getExtraData()Ljava/util/Map;

    move-result-object p1

    :cond_1a
    if-eqz p1, :cond_23

    .line 69
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/facebook/common/callercontext/ContextChain;->mExtraData:Ljava/util/Map;

    :cond_23
    if-eqz p3, :cond_35

    .line 73
    iget-object p1, p0, Lcom/facebook/common/callercontext/ContextChain;->mExtraData:Ljava/util/Map;

    if-nez p1, :cond_30

    .line 74
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/facebook/common/callercontext/ContextChain;->mExtraData:Ljava/util/Map;

    .line 76
    :cond_30
    iget-object p1, p0, Lcom/facebook/common/callercontext/ContextChain;->mExtraData:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_35
    return-void
.end method

.method public static setUseDeepEquals(Z)V
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useDeepEquals"
        }
    .end annotation

    .line 51
    sput-boolean p0, Lcom/facebook/common/callercontext/ContextChain;->sUseDeepEquals:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 153
    sget-boolean v0, Lcom/facebook/common/callercontext/ContextChain;->sUseDeepEquals:Z

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    if-ne p0, p1, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x0

    if-eqz p1, :cond_43

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_16

    goto :goto_43

    .line 160
    :cond_16
    check-cast p1, Lcom/facebook/common/callercontext/ContextChain;

    .line 161
    iget-object v2, p0, Lcom/facebook/common/callercontext/ContextChain;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/common/callercontext/ContextChain;->mTag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/facebook/common/callercontext/ContextChain;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/common/callercontext/ContextChain;->mName:Ljava/lang/String;

    .line 162
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget v2, p0, Lcom/facebook/common/callercontext/ContextChain;->mLevel:I

    iget v3, p1, Lcom/facebook/common/callercontext/ContextChain;->mLevel:I

    if-ne v2, v3, :cond_41

    iget-object v2, p0, Lcom/facebook/common/callercontext/ContextChain;->mParent:Lcom/facebook/common/callercontext/ContextChain;

    iget-object p1, p1, Lcom/facebook/common/callercontext/ContextChain;->mParent:Lcom/facebook/common/callercontext/ContextChain;

    if-eq v2, p1, :cond_42

    if-eqz v2, :cond_41

    .line 164
    invoke-virtual {v2, p1}, Lcom/facebook/common/callercontext/ContextChain;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :cond_42
    :goto_42
    return v0

    :cond_43
    :goto_43
    return v1

    .line 166
    :cond_44
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getExtraData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mExtraData:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/facebook/common/callercontext/ContextChain;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mParent:Lcom/facebook/common/callercontext/ContextChain;

    return-object v0
.end method

.method public getRootContextChain()Lcom/facebook/common/callercontext/ContextChain;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mParent:Lcom/facebook/common/callercontext/ContextChain;

    if-nez v0, :cond_6

    move-object v0, p0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/facebook/common/callercontext/ContextChain;->getRootContextChain()Lcom/facebook/common/callercontext/ContextChain;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mExtraData:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 118
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_11

    .line 119
    :cond_d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_11
    return-object v1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 171
    sget-boolean v0, Lcom/facebook/common/callercontext/ContextChain;->sUseDeepEquals:Z

    if-eqz v0, :cond_34

    .line 172
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 173
    iget-object v1, p0, Lcom/facebook/common/callercontext/ContextChain;->mTag:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 174
    iget-object v1, p0, Lcom/facebook/common/callercontext/ContextChain;->mName:Ljava/lang/String;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 175
    iget v1, p0, Lcom/facebook/common/callercontext/ContextChain;->mLevel:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 176
    iget-object v1, p0, Lcom/facebook/common/callercontext/ContextChain;->mParent:Lcom/facebook/common/callercontext/ContextChain;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/facebook/common/callercontext/ContextChain;->hashCode()I

    move-result v2

    :cond_32
    add-int/2addr v0, v2

    return v0

    .line 179
    :cond_34
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public putObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mExtraData:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mExtraData:Ljava/util/Map;

    .line 126
    :cond_b
    iget-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mExtraData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mSerializedString:Ljava/lang/String;

    if-nez v0, :cond_40

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/common/callercontext/ContextChain;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/common/callercontext/ContextChain;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mSerializedString:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mParent:Lcom/facebook/common/callercontext/ContextChain;

    if-eqz v0, :cond_40

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/common/callercontext/ContextChain;->mParent:Lcom/facebook/common/callercontext/ContextChain;

    invoke-virtual {v1}, Lcom/facebook/common/callercontext/ContextChain;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/common/callercontext/ContextChain;->mSerializedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mSerializedString:Ljava/lang/String;

    .line 137
    :cond_40
    iget-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mSerializedString:Ljava/lang/String;

    return-object v0
.end method

.method public toStringArray()[Ljava/lang/String;
    .registers 6

    .line 141
    iget v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mLevel:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    move-object v2, p0

    :goto_7
    if-ltz v0, :cond_2d

    const-string v3, "ContextChain level mismatch, this should not happen."

    .line 144
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/facebook/common/callercontext/ContextChain;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/facebook/common/callercontext/ContextChain;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 146
    iget-object v2, v2, Lcom/facebook/common/callercontext/ContextChain;->mParent:Lcom/facebook/common/callercontext/ContextChain;

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_2d
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p0, Lcom/facebook/common/callercontext/ContextChain;->mParent:Lcom/facebook/common/callercontext/ContextChain;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

###### Class com.facebook.common.callercontext.ContextChain.AnonymousClass1 (com.facebook.common.callercontext.ContextChain$1)
.class final Lcom/facebook/common/callercontext/ContextChain$1;
.super Ljava/lang/Object;
.source "ContextChain.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/callercontext/ContextChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/common/callercontext/ContextChain;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/common/callercontext/ContextChain;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 199
    new-instance v0, Lcom/facebook/common/callercontext/ContextChain;

    invoke-direct {v0, p1}, Lcom/facebook/common/callercontext/ContextChain;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 196
    invoke-virtual {p0, p1}, Lcom/facebook/common/callercontext/ContextChain$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/common/callercontext/ContextChain;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/common/callercontext/ContextChain;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 204
    new-array p1, p1, [Lcom/facebook/common/callercontext/ContextChain;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 196
    invoke-virtual {p0, p1}, Lcom/facebook/common/callercontext/ContextChain$1;->newArray(I)[Lcom/facebook/common/callercontext/ContextChain;

    move-result-object p1

    return-object p1
.end method
