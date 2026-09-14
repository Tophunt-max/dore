###### Class com.taobao.weex.ui.component.list.ListStanceCell (com.taobao.weex.ui.component.list.ListStanceCell)
.class public Lcom/taobao/weex/ui/component/list/ListStanceCell;
.super Ljava/lang/Object;
.source "ListStanceCell.java"

# interfaces
.implements Lcom/taobao/weex/common/IWXObject;


# instance fields
.field private backgroundColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/ListStanceCell;->backgroundColor:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/ListStanceCell;->backgroundColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/ListStanceCell;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method
