###### Class io.dcloud.ads.base.entry.AdData (io.dcloud.ads.base.entry.AdData)
.class public Lio/dcloud/ads/base/entry/AdData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/ads/base/entry/AdData$e;,
        Lio/dcloud/ads/base/entry/AdData$ExtBean;,
        Lio/dcloud/ads/base/entry/AdData$TrackerBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/dcloud/ads/base/entry/AdData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private action:Ljava/lang/String;

.field private b:[B

.field private bundle:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private downloadAppName:Ljava/lang/String;

.field private dplk:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private expires:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/ads/base/entry/AdData$TrackerBean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/ads/base/entry/AdData$TrackerBean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/ads/base/entry/AdData$TrackerBean;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/view/MotionEvent;

.field private l:Landroid/view/MotionEvent;

.field private m:Z

.field private n:Landroid/graphics/RectF;

.field protected o:Landroid/content/Context;

.field private price:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private src:Ljava/lang/String;

.field private tid:Ljava/lang/String;

.field private ua:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/ads/base/entry/AdData$d;

    invoke-direct {v0}, Lio/dcloud/ads/base/entry/AdData$d;-><init>()V

    sput-object v0, Lio/dcloud/ads/base/entry/AdData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->d:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->h:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->i:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lio/dcloud/ads/base/entry/AdData;->m:Z

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->n:Landroid/graphics/RectF;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->d:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->h:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->i:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lio/dcloud/ads/base/entry/AdData;->m:Z

    .line 34
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->n:Landroid/graphics/RectF;

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->provider:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->ua:Ljava/lang/String;

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->src:Ljava/lang/String;

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->action:Ljava/lang/String;

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->url:Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->bundle:Ljava/lang/String;

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->downloadAppName:Ljava/lang/String;

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->dplk:Ljava/lang/String;

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->price:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->tid:Ljava/lang/String;

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->expires:Ljava/lang/String;

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->a:Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->b:[B

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->c:Ljava/lang/String;

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->d:Ljava/lang/String;

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->e:Ljava/lang/String;

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->f:Ljava/lang/String;

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->g:Ljava/lang/String;

    .line 487
    sget-object v1, Lio/dcloud/ads/base/entry/AdData$TrackerBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/ads/base/entry/AdData;->h:Ljava/util/List;

    .line 488
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/ads/base/entry/AdData;->i:Ljava/util/List;

    .line 489
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->j:Ljava/util/List;

    .line 490
    const-class v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->k:Landroid/view/MotionEvent;

    .line 491
    const-class v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    iput-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->l:Landroid/view/MotionEvent;

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_c9

    const/4 v0, 0x1

    :cond_c9
    iput-boolean v0, p0, Lio/dcloud/ads/base/entry/AdData;->m:Z

    .line 493
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    iput-object p1, p0, Lio/dcloud/ads/base/entry/AdData;->n:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic a(Lio/dcloud/ads/base/entry/AdData;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/ads/base/entry/AdData;->src:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lio/dcloud/ads/base/entry/AdData;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 3
    iput-object p1, p0, Lio/dcloud/ads/base/entry/AdData;->a:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/dcloud/ads/base/entry/AdData$TrackerBean;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/ads/base/entry/AdData$TrackerBean;

    .line 92
    invoke-static {}, Lio/dcloud/f/a/d/f;->a()Lio/dcloud/f/a/d/f;

    move-result-object v1

    new-instance v2, Lio/dcloud/ads/base/entry/AdData$c;

    invoke-direct {v2, p0, v0}, Lio/dcloud/ads/base/entry/AdData$c;-><init>(Lio/dcloud/ads/base/entry/AdData;Lio/dcloud/ads/base/entry/AdData$TrackerBean;)V

    invoke-virtual {v1, v2}, Lio/dcloud/f/a/d/f;->a(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_1d
    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Lio/dcloud/ads/base/entry/AdData$TrackerBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_20

    const/4 v0, 0x0

    .line 63
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 66
    new-instance v2, Lio/dcloud/ads/base/entry/AdData$TrackerBean;

    const-string v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lio/dcloud/ads/base/entry/AdData$TrackerBean;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_20
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "report"

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_29

    const-string v0, "imptracker"

    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->h:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lio/dcloud/ads/base/entry/AdData;->a(Lorg/json/JSONArray;Ljava/util/List;)V

    const-string v0, "clktracker"

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->i:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lio/dcloud/ads/base/entry/AdData;->a(Lorg/json/JSONArray;Ljava/util/List;)V

    const-string v0, "dptracker"

    .line 61
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->j:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lio/dcloud/ads/base/entry/AdData;->a(Lorg/json/JSONArray;Ljava/util/List;)V

    :cond_29
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lio/dcloud/ads/base/entry/AdData$e;)V
    .registers 7

    const-string v0, "data"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_c4

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 9
    array-length v2, v1

    if-lez v2, :cond_39

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3d
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 14
    :try_start_49
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_3d

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 15
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_63} :catch_6b

    const/4 v3, 0x1

    .line 17
    :try_start_64
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 18
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6a
    .catch Ljava/lang/IllegalAccessException; {:try_start_64 .. :try_end_6a} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6a} :catch_6b

    goto :goto_3d

    :catch_6b
    nop

    goto :goto_3d

    .line 25
    :cond_6d
    iget-object p1, p0, Lio/dcloud/ads/base/entry/AdData;->src:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b9

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/dcloud_ad/img/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->src:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 28
    iput-object p1, p0, Lio/dcloud/ads/base/entry/AdData;->a:Ljava/lang/String;

    if-eqz p2, :cond_ab

    .line 29
    invoke-interface {p2}, Lio/dcloud/ads/base/entry/AdData$e;->a()V

    :cond_ab
    return-void

    .line 32
    :cond_ac
    invoke-static {}, Lio/dcloud/f/a/d/f;->a()Lio/dcloud/f/a/d/f;

    move-result-object v0

    new-instance v1, Lio/dcloud/ads/base/entry/AdData$a;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/ads/base/entry/AdData$a;-><init>(Lio/dcloud/ads/base/entry/AdData;Ljava/lang/String;Lio/dcloud/ads/base/entry/AdData$e;)V

    invoke-virtual {v0, v1}, Lio/dcloud/f/a/d/f;->a(Ljava/lang/Runnable;)V

    goto :goto_ce

    :cond_b9
    if-eqz p2, :cond_ce

    const p1, 0xea68

    const-string v0, "\u56fe\u7247\u8d44\u6e90\u8def\u5f84\u5f02\u5e38"

    .line 50
    invoke-interface {p2, p1, v0}, Lio/dcloud/ads/base/entry/AdData$e;->a(ILjava/lang/String;)V

    goto :goto_ce

    :cond_c4
    if-eqz p2, :cond_ce

    const p1, 0xea67

    const-string v0, "\u65e0\u5e7f\u544a\u586b\u5145"

    .line 54
    invoke-interface {p2, p1, v0}, Lio/dcloud/ads/base/entry/AdData$e;->a(ILjava/lang/String;)V

    :cond_ce
    :goto_ce
    return-void
.end method

.method static synthetic a(Lio/dcloud/ads/base/entry/AdData;[B)[B
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/ads/base/entry/AdData;->b:[B

    return-object p1
.end method

.method private b(Landroid/content/Context;)V
    .registers 6

    .line 4
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->i:Ljava/util/List;

    invoke-direct {p0, v0}, Lio/dcloud/ads/base/entry/AdData;->a(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->dplk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->dplk:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/dcloud/f/a/d/b;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 6
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->j:Ljava/util/List;

    invoke-direct {p0, v0}, Lio/dcloud/ads/base/entry/AdData;->a(Ljava/util/List;)V

    .line 7
    invoke-static {}, Lio/dcloud/f/a/d/f;->a()Lio/dcloud/f/a/d/f;

    move-result-object v0

    new-instance v1, Lio/dcloud/ads/base/entry/AdData$b;

    invoke-direct {v1, p0, p1}, Lio/dcloud/ads/base/entry/AdData$b;-><init>(Lio/dcloud/ads/base/entry/AdData;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/dcloud/f/a/d/f;->a(Ljava/lang/Runnable;)V

    return-void

    .line 16
    :cond_27
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "url"

    sparse-switch v2, :sswitch_data_a4

    goto :goto_58

    :sswitch_3a
    const-string v2, "download"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_58

    :cond_43
    const/4 v1, 0x2

    goto :goto_58

    :sswitch_45
    const-string v2, "browser"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_58

    :cond_4e
    const/4 v1, 0x1

    goto :goto_58

    :sswitch_50
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_58

    :cond_57
    const/4 v1, 0x0

    :goto_58
    packed-switch v1, :pswitch_data_b2

    goto :goto_a2

    .line 33
    :pswitch_5c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->url:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    .line 35
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    const-class v1, Lio/dcloud/ads/base/service/DownloadService;

    const/16 v2, 0x271a

    invoke-static {p1, v1, v2, v0}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    goto :goto_a2

    .line 37
    :pswitch_73
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/dcloud/f/a/d/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a2

    .line 38
    :pswitch_79
    :try_start_79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "io.dcloud.WebviewActivity"

    .line 39
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->url:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_a2} :catch_a2

    :catch_a2
    :goto_a2
    return-void

    nop

    :sswitch_data_a4
    .sparse-switch
        0x1c56f -> :sswitch_50
        0x8ff2b28 -> :sswitch_45
        0x551ac888 -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_79
        :pswitch_73
        :pswitch_5c
    .end packed-switch
.end method

.method static synthetic b(Lio/dcloud/ads/base/entry/AdData;)[B
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/ads/base/entry/AdData;->b:[B

    return-object p0
.end method

.method static synthetic c(Lio/dcloud/ads/base/entry/AdData;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/ads/base/entry/AdData;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lio/dcloud/ads/base/entry/AdData;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/ads/base/entry/AdData;->tid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lio/dcloud/ads/base/entry/AdData;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/ads/base/entry/AdData;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lio/dcloud/ads/base/entry/AdData;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/ads/base/entry/AdData;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lio/dcloud/ads/base/entry/AdData;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/ads/base/entry/AdData;->f:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "${User-Agent}"

    .line 79
    :try_start_2
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->o:Landroid/content/Context;

    invoke-static {v1}, Lio/dcloud/f/a/c/b/g;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "${click_id}"

    const-string v1, ""

    .line 80
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_1a} :catch_103

    const-string v0, "${down_x}"

    .line 81
    :try_start_1c
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->k:Landroid/view/MotionEvent;

    const/16 v2, -0x3e7

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_2d

    :cond_2b
    const/16 v1, -0x3e7

    :goto_2d
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_35
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_35} :catch_103

    const-string v0, "${down_y}"

    .line 82
    :try_start_37
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->k:Landroid/view/MotionEvent;

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_46

    :cond_44
    const/16 v1, -0x3e7

    :goto_46
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_4e} :catch_103

    const-string v0, "${up_x}"

    .line 83
    :try_start_50
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->l:Landroid/view/MotionEvent;

    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_5f

    :cond_5d
    const/16 v1, -0x3e7

    :goto_5f
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_67
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_50 .. :try_end_67} :catch_103

    const-string v0, "${up_y}"

    .line 84
    :try_start_69
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->l:Landroid/view/MotionEvent;

    if-eqz v1, :cond_76

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_78

    :cond_76
    const/16 v1, -0x3e7

    :goto_78
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_80
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_69 .. :try_end_80} :catch_103

    const-string v0, "${relative_down_x}"

    .line 85
    :try_start_82
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->k:Landroid/view/MotionEvent;

    if-eqz v1, :cond_94

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v3, p0, Lio/dcloud/ads/base/entry/AdData;->n:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_96

    :cond_94
    const/16 v1, -0x3e7

    :goto_96
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_9e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_82 .. :try_end_9e} :catch_103

    const-string v0, "${relative_down_y}"

    .line 86
    :try_start_a0
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->k:Landroid/view/MotionEvent;

    if-eqz v1, :cond_b2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lio/dcloud/ads/base/entry/AdData;->n:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_b4

    :cond_b2
    const/16 v1, -0x3e7

    :goto_b4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_bc
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a0 .. :try_end_bc} :catch_103

    const-string v0, "${relative_up_x}"

    .line 87
    :try_start_be
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->l:Landroid/view/MotionEvent;

    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v3, p0, Lio/dcloud/ads/base/entry/AdData;->n:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_d2

    :cond_d0
    const/16 v1, -0x3e7

    :goto_d2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_da
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_be .. :try_end_da} :catch_103

    const-string v0, "${relative_up_y}"

    .line 88
    :try_start_dc
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->l:Landroid/view/MotionEvent;

    if-eqz v1, :cond_ed

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lio/dcloud/ads/base/entry/AdData;->n:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    :cond_ed
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_f5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_dc .. :try_end_f5} :catch_103

    const-string v0, "${ts}"

    .line 89
    :try_start_f7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_103
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f7 .. :try_end_103} :catch_103

    :catch_103
    return-object p1
.end method

.method public a()V
    .registers 2

    .line 93
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->h:Ljava/util/List;

    invoke-direct {p0, v0}, Lio/dcloud/ads/base/entry/AdData;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lio/dcloud/ads/base/entry/AdData;->b(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/graphics/RectF;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lio/dcloud/ads/base/entry/AdData;->n:Landroid/graphics/RectF;

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lio/dcloud/ads/base/entry/AdData;->k:Landroid/view/MotionEvent;

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lio/dcloud/ads/base/entry/AdData$e;Z)V
    .registers 5

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->c:Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1}, Lio/dcloud/ads/base/entry/AdData;->a(Lorg/json/JSONObject;)V

    .line 69
    invoke-direct {p0, p1, p2}, Lio/dcloud/ads/base/entry/AdData;->a(Lorg/json/JSONObject;Lio/dcloud/ads/base/entry/AdData$e;)V

    const-string p2, "appid"

    const-string v0, ""

    .line 70
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/ads/base/entry/AdData;->d:Ljava/lang/String;

    const-string p2, "adpid"

    .line 71
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/ads/base/entry/AdData;->g:Ljava/lang/String;

    const-string p2, "tid"

    .line 72
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/ads/base/entry/AdData;->tid:Ljava/lang/String;

    const-string p2, "adid"

    .line 73
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/ads/base/entry/AdData;->f:Ljava/lang/String;

    const-string p2, "did"

    .line 74
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/ads/base/entry/AdData;->e:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lio/dcloud/ads/base/entry/AdData;->m()Z

    move-result p2

    if-eqz p2, :cond_4d

    if-eqz p3, :cond_4d

    iget-object p2, p0, Lio/dcloud/ads/base/entry/AdData;->expires:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4d

    .line 76
    invoke-virtual {p0, p1}, Lio/dcloud/ads/base/entry/AdData;->b(Lorg/json/JSONObject;)V

    :cond_4d
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/view/MotionEvent;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lio/dcloud/ads/base/entry/AdData;->l:Landroid/view/MotionEvent;

    return-void
.end method

.method b(Lorg/json/JSONObject;)V
    .registers 4

    .line 2
    invoke-static {}, Lio/dcloud/f/a/c/b/f;->a()Lio/dcloud/f/a/c/b/f;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->o:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p0, p1}, Lio/dcloud/f/a/c/b/f;->a(Landroid/content/Context;Lio/dcloud/ads/base/entry/AdData;Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 3
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/ads/base/entry/AdData;->o:Landroid/content/Context;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()[B
    .registers 2

    .line 2
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->b:[B

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "expires"

    .line 3
    :try_start_7
    iget-object v2, p0, Lio/dcloud/ads/base/entry/AdData;->expires:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_c

    .line 6
    :catch_c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->o:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/dcloud_ad/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->src:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->action:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->ua:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->src:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->bundle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->downloadAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->dplk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->price:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->tid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->expires:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->b:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 14
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 20
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 21
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->j:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 22
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->k:Landroid/view/MotionEvent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 23
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->l:Landroid/view/MotionEvent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    iget-boolean v0, p0, Lio/dcloud/ads/base/entry/AdData;->m:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 25
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData;->n:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

###### Class io.dcloud.ads.base.entry.AdData.ExtBean (io.dcloud.ads.base.entry.AdData$ExtBean)
.class public Lio/dcloud/ads/base/entry/AdData$ExtBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/ads/base/entry/AdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/dcloud/ads/base/entry/AdData$ExtBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/ads/base/entry/AdData$ExtBean$a;

    invoke-direct {v0}, Lio/dcloud/ads/base/entry/AdData$ExtBean$a;-><init>()V

    sput-object v0, Lio/dcloud/ads/base/entry/AdData$ExtBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/ads/base/entry/AdData$ExtBean;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lio/dcloud/ads/base/entry/AdData$ExtBean;->b:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lio/dcloud/ads/base/entry/AdData$ExtBean;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lio/dcloud/ads/base/entry/AdData$ExtBean;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class io.dcloud.ads.base.entry.AdData.ExtBean.a (io.dcloud.ads.base.entry.AdData$ExtBean$a)
.class final Lio/dcloud/ads/base/entry/AdData$ExtBean$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/ads/base/entry/AdData$ExtBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/dcloud/ads/base/entry/AdData$ExtBean;",
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
.method public a(Landroid/os/Parcel;)Lio/dcloud/ads/base/entry/AdData$ExtBean;
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/ads/base/entry/AdData$ExtBean;

    invoke-direct {v0, p1}, Lio/dcloud/ads/base/entry/AdData$ExtBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lio/dcloud/ads/base/entry/AdData$ExtBean;
    .registers 2

    .line 2
    new-array p1, p1, [Lio/dcloud/ads/base/entry/AdData$ExtBean;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/ads/base/entry/AdData$ExtBean$a;->a(Landroid/os/Parcel;)Lio/dcloud/ads/base/entry/AdData$ExtBean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/ads/base/entry/AdData$ExtBean$a;->a(I)[Lio/dcloud/ads/base/entry/AdData$ExtBean;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.ads.base.entry.AdData.TrackerBean (io.dcloud.ads.base.entry.AdData$TrackerBean)
.class public Lio/dcloud/ads/base/entry/AdData$TrackerBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/ads/base/entry/AdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackerBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/dcloud/ads/base/entry/AdData$TrackerBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/ads/base/entry/AdData$TrackerBean$a;

    invoke-direct {v0}, Lio/dcloud/ads/base/entry/AdData$TrackerBean$a;-><init>()V

    sput-object v0, Lio/dcloud/ads/base/entry/AdData$TrackerBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/ads/base/entry/AdData$TrackerBean;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/ads/base/entry/AdData$TrackerBean;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lio/dcloud/ads/base/entry/AdData$TrackerBean;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/ads/base/entry/AdData$TrackerBean;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lio/dcloud/ads/base/entry/AdData$TrackerBean;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.ads.base.entry.AdData.TrackerBean.a (io.dcloud.ads.base.entry.AdData$TrackerBean$a)
.class final Lio/dcloud/ads/base/entry/AdData$TrackerBean$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/ads/base/entry/AdData$TrackerBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/dcloud/ads/base/entry/AdData$TrackerBean;",
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
.method public a(Landroid/os/Parcel;)Lio/dcloud/ads/base/entry/AdData$TrackerBean;
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/ads/base/entry/AdData$TrackerBean;

    invoke-direct {v0, p1}, Lio/dcloud/ads/base/entry/AdData$TrackerBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lio/dcloud/ads/base/entry/AdData$TrackerBean;
    .registers 2

    .line 2
    new-array p1, p1, [Lio/dcloud/ads/base/entry/AdData$TrackerBean;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/ads/base/entry/AdData$TrackerBean$a;->a(Landroid/os/Parcel;)Lio/dcloud/ads/base/entry/AdData$TrackerBean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/ads/base/entry/AdData$TrackerBean$a;->a(I)[Lio/dcloud/ads/base/entry/AdData$TrackerBean;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.ads.base.entry.AdData.a (io.dcloud.ads.base.entry.AdData$a)
.class Lio/dcloud/ads/base/entry/AdData$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/ads/base/entry/AdData;->a(Lorg/json/JSONObject;Lio/dcloud/ads/base/entry/AdData$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/ads/base/entry/AdData$e;

.field final synthetic c:Lio/dcloud/ads/base/entry/AdData;


# direct methods
.method constructor <init>(Lio/dcloud/ads/base/entry/AdData;Ljava/lang/String;Lio/dcloud/ads/base/entry/AdData$e;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/ads/base/entry/AdData$a;->c:Lio/dcloud/ads/base/entry/AdData;

    iput-object p2, p0, Lio/dcloud/ads/base/entry/AdData$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/ads/base/entry/AdData$a;->b:Lio/dcloud/ads/base/entry/AdData$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lio/dcloud/ads/base/entry/AdData$a;->c:Lio/dcloud/ads/base/entry/AdData;

    invoke-static {v2}, Lio/dcloud/ads/base/entry/AdData;->a(Lio/dcloud/ads/base/entry/AdData;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lio/dcloud/f/a/d/d;->a(Ljava/lang/String;Ljava/util/HashMap;Z[Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_30

    .line 4
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData$a;->c:Lio/dcloud/ads/base/entry/AdData;

    invoke-static {v1, v0}, Lio/dcloud/ads/base/entry/AdData;->a(Lio/dcloud/ads/base/entry/AdData;[B)[B

    .line 5
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData$a;->c:Lio/dcloud/ads/base/entry/AdData;

    invoke-static {v0}, Lio/dcloud/ads/base/entry/AdData;->b(Lio/dcloud/ads/base/entry/AdData;)[B

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lio/dcloud/f/a/d/c;->a([BILjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData$a;->c:Lio/dcloud/ads/base/entry/AdData;

    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/ads/base/entry/AdData;->a(Lio/dcloud/ads/base/entry/AdData;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData$a;->b:Lio/dcloud/ads/base/entry/AdData$e;

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Lio/dcloud/ads/base/entry/AdData$e;->a()V

    goto :goto_3c

    .line 10
    :cond_30
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData$a;->b:Lio/dcloud/ads/base/entry/AdData$e;

    if-eqz v0, :cond_3c

    const v1, 0xea69

    const-string v2, "\u56fe\u7247\u4e0b\u8f7d\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lio/dcloud/ads/base/entry/AdData$e;->a(ILjava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

###### Class io.dcloud.ads.base.entry.AdData.b (io.dcloud.ads.base.entry.AdData$b)
.class Lio/dcloud/ads/base/entry/AdData$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/ads/base/entry/AdData;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lio/dcloud/ads/base/entry/AdData;


# direct methods
.method constructor <init>(Lio/dcloud/ads/base/entry/AdData;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/ads/base/entry/AdData$b;->b:Lio/dcloud/ads/base/entry/AdData;

    iput-object p2, p0, Lio/dcloud/ads/base/entry/AdData$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData$b;->a:Landroid/content/Context;

    if-eqz v0, :cond_2a

    .line 2
    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData$b;->b:Lio/dcloud/ads/base/entry/AdData;

    invoke-static {v1}, Lio/dcloud/ads/base/entry/AdData;->c(Lio/dcloud/ads/base/entry/AdData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/ads/base/entry/AdData$b;->b:Lio/dcloud/ads/base/entry/AdData;

    invoke-static {v2}, Lio/dcloud/ads/base/entry/AdData;->d(Lio/dcloud/ads/base/entry/AdData;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/ads/base/entry/AdData$b;->b:Lio/dcloud/ads/base/entry/AdData;

    invoke-static {v3}, Lio/dcloud/ads/base/entry/AdData;->e(Lio/dcloud/ads/base/entry/AdData;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lio/dcloud/ads/base/entry/AdData$b;->b:Lio/dcloud/ads/base/entry/AdData;

    invoke-static {v3}, Lio/dcloud/ads/base/entry/AdData;->f(Lio/dcloud/ads/base/entry/AdData;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lio/dcloud/ads/base/entry/AdData$b;->b:Lio/dcloud/ads/base/entry/AdData;

    invoke-static {v3}, Lio/dcloud/ads/base/entry/AdData;->g(Lio/dcloud/ads/base/entry/AdData;)Ljava/lang/String;

    move-result-object v7

    const/16 v4, 0x32

    const/4 v8, 0x0

    const-string v3, ""

    invoke-static/range {v0 .. v8}, Lio/dcloud/f/a/c/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_2a
    return-void
.end method

###### Class io.dcloud.ads.base.entry.AdData.c (io.dcloud.ads.base.entry.AdData$c)
.class Lio/dcloud/ads/base/entry/AdData$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/ads/base/entry/AdData;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/ads/base/entry/AdData$TrackerBean;

.field final synthetic b:Lio/dcloud/ads/base/entry/AdData;


# direct methods
.method constructor <init>(Lio/dcloud/ads/base/entry/AdData;Lio/dcloud/ads/base/entry/AdData$TrackerBean;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/ads/base/entry/AdData$c;->b:Lio/dcloud/ads/base/entry/AdData;

    iput-object p2, p0, Lio/dcloud/ads/base/entry/AdData$c;->a:Lio/dcloud/ads/base/entry/AdData$TrackerBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/ads/base/entry/AdData$c;->b:Lio/dcloud/ads/base/entry/AdData;

    iget-object v1, p0, Lio/dcloud/ads/base/entry/AdData$c;->a:Lio/dcloud/ads/base/entry/AdData$TrackerBean;

    invoke-static {v1}, Lio/dcloud/ads/base/entry/AdData$TrackerBean;->a(Lio/dcloud/ads/base/entry/AdData$TrackerBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/ads/base/entry/AdData;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Lio/dcloud/f/a/d/d;->a(Ljava/lang/String;Ljava/util/HashMap;Z)[B
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

###### Class io.dcloud.ads.base.entry.AdData.d (io.dcloud.ads.base.entry.AdData$d)
.class final Lio/dcloud/ads/base/entry/AdData$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/ads/base/entry/AdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/dcloud/ads/base/entry/AdData;",
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
.method public a(Landroid/os/Parcel;)Lio/dcloud/ads/base/entry/AdData;
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/ads/base/entry/AdData;

    invoke-direct {v0, p1}, Lio/dcloud/ads/base/entry/AdData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lio/dcloud/ads/base/entry/AdData;
    .registers 2

    .line 2
    new-array p1, p1, [Lio/dcloud/ads/base/entry/AdData;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/ads/base/entry/AdData$d;->a(Landroid/os/Parcel;)Lio/dcloud/ads/base/entry/AdData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/ads/base/entry/AdData$d;->a(I)[Lio/dcloud/ads/base/entry/AdData;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.ads.base.entry.AdData.e (io.dcloud.ads.base.entry.AdData$e)
.class public interface abstract Lio/dcloud/ads/base/entry/AdData$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/ads/base/entry/AdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "e"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(ILjava/lang/String;)V
.end method
