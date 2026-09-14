###### Class io.dcloud.feature.nativeObj.data.NativeImageDataItem (io.dcloud.feature.nativeObj.data.NativeImageDataItem)
.class public Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public align:Ljava/lang/String;

.field public height:Ljava/lang/String;

.field url:Ljava/lang/String;

.field public verticalAlign:Ljava/lang/String;

.field public width:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem$1;

    invoke-direct {v0}, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem$1;-><init>()V

    sput-object v0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->url:Ljava/lang/String;

    const-string v0, "center"

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->align:Ljava/lang/String;

    const-string v0, "middle"

    .line 4
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->verticalAlign:Ljava/lang/String;

    const-string v0, "auto"

    .line 5
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->height:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->width:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->url:Ljava/lang/String;

    const-string v0, "center"

    .line 9
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->align:Ljava/lang/String;

    const-string v0, "middle"

    .line 10
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->verticalAlign:Ljava/lang/String;

    const-string v0, "auto"

    .line 11
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->height:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->width:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->url:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->align:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->verticalAlign:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->height:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->width:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getHeight(IF)I
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->height:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->height:Ljava/lang/String;

    invoke-static {v0, p1, p1, p2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    return p1

    :cond_11
    const/16 p1, -0x64

    return p1
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth(IF)I
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->width:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->width:Ljava/lang/String;

    invoke-static {v0, p1, p1, p2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    return p1

    :cond_11
    const/16 p1, -0x64

    return p1
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->url:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->align:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->verticalAlign:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->height:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->width:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.data.NativeImageDataItem.AnonymousClass1 (io.dcloud.feature.nativeObj.data.NativeImageDataItem$1)
.class final Lio/dcloud/feature/nativeObj/data/NativeImageDataItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;
    .registers 3

    .line 2
    new-instance v0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;

    invoke-direct {v0, p1}, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem$1;->createFromParcel(Landroid/os/Parcel;)Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;
    .registers 2

    .line 2
    new-array p1, p1, [Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem$1;->newArray(I)[Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;

    move-result-object p1

    return-object p1
.end method
