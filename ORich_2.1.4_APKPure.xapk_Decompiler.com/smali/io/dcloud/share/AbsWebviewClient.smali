###### Class io.dcloud.share.AbsWebviewClient (io.dcloud.share.AbsWebviewClient)
.class public abstract Lio/dcloud/share/AbsWebviewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getInitUrl()Ljava/lang/String;
.end method
