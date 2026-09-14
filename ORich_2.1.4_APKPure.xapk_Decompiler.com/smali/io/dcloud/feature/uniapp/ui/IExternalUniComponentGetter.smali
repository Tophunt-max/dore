###### Class io.dcloud.feature.uniapp.ui.IExternalUniComponentGetter (io.dcloud.feature.uniapp.ui.IExternalUniComponentGetter)
.class public Lio/dcloud/feature/uniapp/ui/IExternalUniComponentGetter;
.super Ljava/lang/Object;
.source "IExternalUniComponentGetter.java"

# interfaces
.implements Lcom/taobao/weex/ui/IExternalComponentGetter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExternalComponentClass(Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/WXSDKInstance;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
