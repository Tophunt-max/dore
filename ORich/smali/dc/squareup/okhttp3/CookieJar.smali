###### Class dc.squareup.okhttp3.CookieJar (dc.squareup.okhttp3.CookieJar)
.class public interface abstract Ldc/squareup/okhttp3/CookieJar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_COOKIES:Ldc/squareup/okhttp3/CookieJar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/CookieJar$1;

    invoke-direct {v0}, Ldc/squareup/okhttp3/CookieJar$1;-><init>()V

    sput-object v0, Ldc/squareup/okhttp3/CookieJar;->NO_COOKIES:Ldc/squareup/okhttp3/CookieJar;

    return-void
.end method


# virtual methods
.method public abstract loadForRequest(Ldc/squareup/okhttp3/HttpUrl;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/squareup/okhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Cookie;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveFromResponse(Ldc/squareup/okhttp3/HttpUrl;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/squareup/okhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Cookie;",
            ">;)V"
        }
    .end annotation
.end method

###### Class dc.squareup.okhttp3.CookieJar.AnonymousClass1 (dc.squareup.okhttp3.CookieJar$1)
.class final Ldc/squareup/okhttp3/CookieJar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okhttp3/CookieJar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/CookieJar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadForRequest(Ldc/squareup/okhttp3/HttpUrl;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/squareup/okhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public saveFromResponse(Ldc/squareup/okhttp3/HttpUrl;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/squareup/okhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
