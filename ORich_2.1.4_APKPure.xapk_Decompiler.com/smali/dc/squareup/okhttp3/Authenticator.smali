###### Class dc.squareup.okhttp3.Authenticator (dc.squareup.okhttp3.Authenticator)
.class public interface abstract Ldc/squareup/okhttp3/Authenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NONE:Ldc/squareup/okhttp3/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/Authenticator$1;

    invoke-direct {v0}, Ldc/squareup/okhttp3/Authenticator$1;-><init>()V

    sput-object v0, Ldc/squareup/okhttp3/Authenticator;->NONE:Ldc/squareup/okhttp3/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Ldc/squareup/okhttp3/Route;Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class dc.squareup.okhttp3.Authenticator.AnonymousClass1 (dc.squareup.okhttp3.Authenticator$1)
.class final Ldc/squareup/okhttp3/Authenticator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/Authenticator;
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
.method public authenticate(Ldc/squareup/okhttp3/Route;Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Request;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method
