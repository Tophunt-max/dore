###### Class io.dcloud.feature.gallery.imageedit.c.h.b (io.dcloud.feature.gallery.imageedit.c.h.b)
.class public abstract Lio/dcloud/feature/gallery/imageedit/c/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/h/b;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public a()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/h/b;->a:Landroid/net/Uri;

    return-object v0
.end method
