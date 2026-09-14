###### Class dc.squareup.okhttp3.EventListener (dc.squareup.okhttp3.EventListener)
.class public abstract Ldc/squareup/okhttp3/EventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/EventListener$Factory;
    }
.end annotation


# static fields
.field public static final NONE:Ldc/squareup/okhttp3/EventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/EventListener$1;

    invoke-direct {v0}, Ldc/squareup/okhttp3/EventListener$1;-><init>()V

    sput-object v0, Ldc/squareup/okhttp3/EventListener;->NONE:Ldc/squareup/okhttp3/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static factory(Ldc/squareup/okhttp3/EventListener;)Ldc/squareup/okhttp3/EventListener$Factory;
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/EventListener$2;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/EventListener$2;-><init>(Ldc/squareup/okhttp3/EventListener;)V

    return-object v0
.end method


# virtual methods
.method public callEnd(Ldc/squareup/okhttp3/Call;)V
    .registers 2

    return-void
.end method

.method public callFailed(Ldc/squareup/okhttp3/Call;Ljava/io/IOException;)V
    .registers 3

    return-void
.end method

.method public callStart(Ldc/squareup/okhttp3/Call;)V
    .registers 2

    return-void
.end method

.method public connectEnd(Ldc/squareup/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ldc/squareup/okhttp3/Protocol;)V
    .registers 5

    return-void
.end method

.method public connectFailed(Ldc/squareup/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ldc/squareup/okhttp3/Protocol;Ljava/io/IOException;)V
    .registers 6

    return-void
.end method

.method public connectStart(Ldc/squareup/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .registers 4

    return-void
.end method

.method public connectionAcquired(Ldc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/Connection;)V
    .registers 3

    return-void
.end method

.method public connectionReleased(Ldc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/Connection;)V
    .registers 3

    return-void
.end method

.method public dnsEnd(Ldc/squareup/okhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/squareup/okhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public dnsStart(Ldc/squareup/okhttp3/Call;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public requestBodyEnd(Ldc/squareup/okhttp3/Call;J)V
    .registers 4

    return-void
.end method

.method public requestBodyStart(Ldc/squareup/okhttp3/Call;)V
    .registers 2

    return-void
.end method

.method public requestHeadersEnd(Ldc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/Request;)V
    .registers 3

    return-void
.end method

.method public requestHeadersStart(Ldc/squareup/okhttp3/Call;)V
    .registers 2

    return-void
.end method

.method public responseBodyEnd(Ldc/squareup/okhttp3/Call;J)V
    .registers 4

    return-void
.end method

.method public responseBodyStart(Ldc/squareup/okhttp3/Call;)V
    .registers 2

    return-void
.end method

.method public responseHeadersEnd(Ldc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/Response;)V
    .registers 3

    return-void
.end method

.method public responseHeadersStart(Ldc/squareup/okhttp3/Call;)V
    .registers 2

    return-void
.end method

.method public secureConnectEnd(Ldc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/Handshake;)V
    .registers 3

    return-void
.end method

.method public secureConnectStart(Ldc/squareup/okhttp3/Call;)V
    .registers 2

    return-void
.end method

###### Class dc.squareup.okhttp3.EventListener.AnonymousClass1 (dc.squareup.okhttp3.EventListener$1)
.class final Ldc/squareup/okhttp3/EventListener$1;
.super Ldc/squareup/okhttp3/EventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/EventListener;-><init>()V

    return-void
.end method

###### Class dc.squareup.okhttp3.EventListener.AnonymousClass2 (dc.squareup.okhttp3.EventListener$2)
.class final Ldc/squareup/okhttp3/EventListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okhttp3/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/EventListener;->factory(Ldc/squareup/okhttp3/EventListener;)Ldc/squareup/okhttp3/EventListener$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Ldc/squareup/okhttp3/EventListener;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/EventListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/EventListener$2;->val$listener:Ldc/squareup/okhttp3/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ldc/squareup/okhttp3/Call;)Ldc/squareup/okhttp3/EventListener;
    .registers 2

    .line 1
    iget-object p1, p0, Ldc/squareup/okhttp3/EventListener$2;->val$listener:Ldc/squareup/okhttp3/EventListener;

    return-object p1
.end method

###### Class dc.squareup.okhttp3.EventListener.Factory (dc.squareup.okhttp3.EventListener$Factory)
.class public interface abstract Ldc/squareup/okhttp3/EventListener$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Ldc/squareup/okhttp3/Call;)Ldc/squareup/okhttp3/EventListener;
.end method
