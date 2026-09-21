###### Class com.nostra13.dcloudimageloader.cache.disc.naming.HashCodeFileNameGenerator (com.nostra13.dcloudimageloader.cache.disc.naming.HashCodeFileNameGenerator)
.class public Lcom/nostra13/dcloudimageloader/cache/disc/naming/HashCodeFileNameGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
