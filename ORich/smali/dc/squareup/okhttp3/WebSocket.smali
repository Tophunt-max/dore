###### Class dc.squareup.okhttp3.WebSocket (dc.squareup.okhttp3.WebSocket)
.class public interface abstract Ldc/squareup/okhttp3/WebSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/WebSocket$Factory;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract close(ILjava/lang/String;)Z
.end method

.method public abstract queueSize()J
.end method

.method public abstract request()Ldc/squareup/okhttp3/Request;
.end method

.method public abstract send(Ldc/squareup/okio/ByteString;)Z
.end method

.method public abstract send(Ljava/lang/String;)Z
.end method

###### Class dc.squareup.okhttp3.WebSocket.Factory (dc.squareup.okhttp3.WebSocket$Factory)
.class public interface abstract Ldc/squareup/okhttp3/WebSocket$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract newWebSocket(Ldc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/WebSocketListener;)Ldc/squareup/okhttp3/WebSocket;
.end method
