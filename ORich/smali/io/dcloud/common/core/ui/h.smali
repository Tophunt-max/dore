###### Class io.dcloud.common.core.ui.h (io.dcloud.common.core.ui.h)
.class Lio/dcloud/common/core/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IJsInterface;
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# static fields
.field static e:Z = false


# instance fields
.field a:Lio/dcloud/common/DHInterface/AbsMgr;

.field b:Lio/dcloud/common/DHInterface/IWebview;

.field c:Ljava/lang/String;

.field d:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/common/core/ui/h;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 3
    iput-object v0, p0, Lio/dcloud/common/core/ui/h;->b:Lio/dcloud/common/DHInterface/IWebview;

    .line 4
    iput-object v0, p0, Lio/dcloud/common/core/ui/h;->c:Ljava/lang/String;

    .line 11
    new-instance v0, Lio/dcloud/common/core/ui/h$a;

    invoke-direct {v0, p0}, Lio/dcloud/common/core/ui/h$a;-><init>(Lio/dcloud/common/core/ui/h;)V

    iput-object v0, p0, Lio/dcloud/common/core/ui/h;->d:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    .line 12
    iput-object p1, p0, Lio/dcloud/common/core/ui/h;->b:Lio/dcloud/common/DHInterface/IWebview;

    .line 13
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/core/ui/h;->c:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lio/dcloud/common/core/ui/h;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/core/ui/h;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p3}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/common/core/ui/h;->exec(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 9

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/h;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    const-string p1, ""

    return-object p1

    .line 5
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_3c

    const-string v0, "io.dcloud.HBuilder"

    .line 6
    :try_start_11
    iget-object v1, p0, Lio/dcloud/common/core/ui/h;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lio/dcloud/common/core/ui/h;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/dcloud/common/core/ui/h;->b:Lio/dcloud/common/DHInterface/IWebview;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v4, 0x2

    aput-object p2, v2, v4

    const/4 v4, 0x3

    aput-object p3, v2, v4

    invoke-interface {v0, v1, v3, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3b} :catch_3c

    return-object p1

    :catch_3c
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JsInterfaceImpl.exec pApiFeatureName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";pActionName="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";pArgs="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public forceStop(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/h;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public prompt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    sget-boolean v0, Lio/dcloud/common/core/ui/h;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v2, "JsInterfaceImpl"

    invoke-static {v2, v0}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    sput-boolean v1, Lio/dcloud/common/core/ui/h;->e:Z

    :cond_10
    const/4 v0, 0x0

    if-eqz p2, :cond_5b

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_5b

    const/4 v2, 0x0

    const/4 v4, 0x4

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pdr:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 10
    :try_start_28
    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v5, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    .line 13
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    .line 14
    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz v5, :cond_52

    .line 16
    iget-object v5, p0, Lio/dcloud/common/core/ui/h;->d:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    aput-object v4, v3, v1

    aput-object p1, v3, v6

    invoke-static {v5, v3}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    goto :goto_5b

    .line 18
    :cond_52
    invoke-virtual {p0, p2, v4, p1}, Lio/dcloud/common/core/ui/h;->exec(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception p1

    .line 21
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5b
    :goto_5b
    return-object v0
.end method

###### Class io.dcloud.common.core.ui.h.a (io.dcloud.common.core.ui.h$a)
.class Lio/dcloud/common/core/ui/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/h;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/h$a;->a:Lio/dcloud/common/core/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 4
    aget-object p1, p1, v2

    check-cast p1, Lorg/json/JSONArray;

    .line 5
    iget-object v2, p0, Lio/dcloud/common/core/ui/h$a;->a:Lio/dcloud/common/core/ui/h;

    invoke-virtual {v2, v0, v1, p1}, Lio/dcloud/common/core/ui/h;->exec(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    return-void
.end method
