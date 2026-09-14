###### Class com.taobao.weex.ui.component.list.WXListComponent (com.taobao.weex.ui.component.list.WXListComponent)
.class public Lcom/taobao/weex/ui/component/list/WXListComponent;
.super Lcom/taobao/weex/ui/component/list/BasicListComponent;
.source "WXListComponent.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/list/WXListComponent$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/list/BasicListComponent<",
        "Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private hasSetGapItemDecoration:Z

.field private mPaddingLeft:F

.field private mPaddingRight:F

.field private mSpanOffsets:[Ljava/lang/Float;

.field private mSpanOffsetsStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/list/WXListComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 89
    invoke-direct {p0, p1, p2, p4}, Lcom/taobao/weex/ui/component/list/BasicListComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const-string p1, "WXListComponent"

    .line 65
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->hasSetGapItemDecoration:Z

    return-void
.end method

.method private hasColumnPros()Z
    .registers 4

    .line 134
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "columnWidth"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnWidth:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_58

    .line 135
    :cond_1e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "columnCount"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->parseInt(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_58

    .line 136
    :cond_3a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "columnGap"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5a

    :cond_58
    const/4 v0, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v0, 0x0

    :goto_5b
    return v0
.end method

.method private isRecycler(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .registers 4

    .line 335
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "waterfall"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 336
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recycle-list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 337
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "recycler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method private removeFooterOrHeader(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 327
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v0, :cond_e

    .line 328
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_1b

    .line 329
    :cond_e
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz v0, :cond_1b

    .line 330
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .registers 7

    .line 146
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 147
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->TAG:Ljava/lang/String;

    const-string v0, "setRefreshOrLoading: HostView == null !!!!!! check list attr has append =tree"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 150
    :cond_f
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    const-wide/16 v2, 0x64

    if-eqz v0, :cond_34

    .line 151
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-object v4, p1

    check-cast v4, Lcom/taobao/weex/ui/component/WXRefresh;

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    new-instance v4, Lcom/taobao/weex/ui/component/list/WXListComponent$1;

    invoke-direct {v4, p0, p1}, Lcom/taobao/weex/ui/component/list/WXListComponent$1;-><init>(Lcom/taobao/weex/ui/component/list/WXListComponent;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v4}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1, v2, v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    .line 161
    :cond_34
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v0, :cond_57

    .line 162
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-object v4, p1

    check-cast v4, Lcom/taobao/weex/ui/component/WXLoading;

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V

    .line 163
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    new-instance v4, Lcom/taobao/weex/ui/component/list/WXListComponent$2;

    invoke-direct {v4, p0, p1}, Lcom/taobao/weex/ui/component/list/WXListComponent$2;-><init>(Lcom/taobao/weex/ui/component/list/WXListComponent;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v4}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1, v2, v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :cond_57
    const/4 p1, 0x0

    return p1
.end method

.method private updateRecyclerAttr()V
    .registers 10

    .line 175
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "columnCount"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->parseInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    .line 176
    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    const/4 v2, 0x1

    if-gtz v0, :cond_63

    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    if-eq v0, v2, :cond_63

    .line 177
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 178
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getComponentType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "componentType"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/dom/WXAttr;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "attribute"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "stackTrace"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_LIST_INVALID_COLUMN_COUNT:Lcom/taobao/weex/common/WXErrorCode;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    .line 185
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "You are trying to set the list/recycler/vlist/waterfall\'s column to %d, which is illegal. The column count should be a positive integer"

    .line 183
    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-static {v3, v4, v1, v5, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 187
    iput v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    .line 189
    :cond_63
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "columnGap"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    .line 190
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "columnWidth"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnWidth:F

    .line 191
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "paddingLeft"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mPaddingLeft:F

    .line 192
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "paddingRight"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mPaddingRight:F

    .line 193
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "spanOffsets"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsetsStr:Ljava/lang/String;

    .line 196
    :try_start_b1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 197
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsetsStr:Ljava/lang/String;

    const-class v1, Ljava/lang/Float;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 199
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsets:[Ljava/lang/Float;

    if-eqz v3, :cond_ca

    array-length v3, v3

    if-eq v3, v1, :cond_ce

    .line 200
    :cond_ca
    new-array v1, v1, [Ljava/lang/Float;

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsets:[Ljava/lang/Float;

    .line 202
    :cond_ce
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsets:[Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_de

    :cond_d4
    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsets:[Ljava/lang/Float;
    :try_end_d7
    .catchall {:try_start_b1 .. :try_end_d7} :catchall_d8

    goto :goto_de

    :catchall_d8
    move-exception v0

    const-string v1, "Parser SpanOffsets error "

    .line 207
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    :goto_de
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->hasSetGapItemDecoration:Z

    if-nez v0, :cond_110

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getSpanOffsets()[Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_110

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_110

    .line 211
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_110

    .line 212
    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->hasSetGapItemDecoration:Z

    .line 213
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    new-instance v1, Lcom/taobao/weex/ui/component/list/GapItemDecoration;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/list/GapItemDecoration;-><init>(Lcom/taobao/weex/ui/component/list/WXListComponent;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_110
    return-void
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .registers 9

    .line 121
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    if-eqz p1, :cond_39

    const/4 v0, -0x1

    if-ge p2, v0, :cond_9

    goto :goto_39

    .line 125
    :cond_9
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/WXListComponent;->setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z

    .line 127
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_39

    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->hasColumnPros()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 128
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->updateRecyclerAttr()V

    .line 129
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    :cond_39
    :goto_39
    return-void
.end method

.method public createChildViewAt(I)V
    .registers 6

    if-gez p1, :cond_b

    .line 290
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->childCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_b

    return-void

    .line 295
    :cond_b
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getListChild(I)Lcom/taobao/weex/common/IWXObject;

    move-result-object v0

    .line 296
    instance-of v1, v0, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz v1, :cond_57

    .line 297
    move-object p1, v0

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 298
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    .line 299
    instance-of v1, v0, Lcom/taobao/weex/ui/component/WXRefresh;

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_39

    .line 300
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    check-cast v0, Lcom/taobao/weex/ui/component/WXRefresh;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V

    .line 301
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    new-instance v1, Lcom/taobao/weex/ui/component/list/WXListComponent$3;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/list/WXListComponent$3;-><init>(Lcom/taobao/weex/ui/component/list/WXListComponent;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5a

    .line 307
    :cond_39
    instance-of v1, v0, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v1, :cond_5a

    .line 308
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    check-cast v0, Lcom/taobao/weex/ui/component/WXLoading;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V

    .line 309
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    new-instance v1, Lcom/taobao/weex/ui/component/list/WXListComponent$4;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/list/WXListComponent$4;-><init>(Lcom/taobao/weex/ui/component/list/WXListComponent;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5a

    .line 317
    :cond_57
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createChildViewAt(I)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method protected bridge synthetic generateListView(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .registers 3

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/WXListComponent;->generateListView(Landroid/content/Context;I)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method protected generateListView(Landroid/content/Context;I)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    .registers 10

    .line 94
    new-instance v6, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    move-object v0, v6

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;-><init>(Landroid/content/Context;IIFI)V

    .line 95
    invoke-virtual {v6}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object p1

    const/4 p2, 0x0

    .line 104
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p1, :cond_35

    .line 96
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v0, "nestedScrollingEnabled"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 97
    invoke-virtual {v6}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setNestedScrollingEnabled(Z)V

    .line 104
    :cond_35
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v0, "pagingEnabled"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_72

    .line 106
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string p2, "pageSize"

    invoke-virtual {p1, p2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 108
    new-instance p1, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {p1}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    goto :goto_69

    .line 110
    :cond_64
    new-instance p1, Lcom/taobao/weex/ui/component/list/WXPagerSnapHelper;

    invoke-direct {p1}, Lcom/taobao/weex/ui/component/list/WXPagerSnapHelper;-><init>()V

    .line 113
    :goto_69
    invoke-virtual {v6}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_72
    return-object v6
.end method

.method public getSpanOffsets()[Ljava/lang/Float;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsets:[Ljava/lang/Float;

    return-object v0
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .registers 3

    .line 322
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 323
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/WXListComponent;->removeFooterOrHeader(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

.method public setColumnCount(I)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "columnCount"
    .end annotation

    .line 239
    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    if-eq p1, v0, :cond_28

    .line 240
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->markComponentUsable()V

    .line 241
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->updateRecyclerAttr()V

    .line 242
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 243
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    :cond_28
    return-void
.end method

.method public setColumnGap(F)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "columnGap"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 249
    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2a

    .line 250
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->markComponentUsable()V

    .line 251
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->updateRecyclerAttr()V

    .line 252
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 253
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    :cond_2a
    return-void
.end method

.method public setColumnWidth(F)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "columnWidth"
    .end annotation

    .line 229
    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnWidth:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2a

    .line 230
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->markComponentUsable()V

    .line 231
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->updateRecyclerAttr()V

    .line 232
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 233
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    :cond_2a
    return-void
.end method

.method public setScrollable(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollable"
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 260
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setScrollable(Z)V

    return-void
.end method

.method public setSpanOffsets(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "spanOffsets"
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsetsStr:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 220
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->markComponentUsable()V

    .line 221
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->updateRecyclerAttr()V

    .line 222
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 223
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    :cond_2c
    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 265
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->updateProperties(Ljava/util/Map;)V

    .line 266
    invoke-direct {p0, p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->isRecycler(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 267
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "waterfall"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x3

    .line 268
    iput v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    goto :goto_23

    .line 270
    :cond_19
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getLayoutType()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    :cond_23
    :goto_23
    const-string v0, "padding"

    .line 274
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "paddingRight"

    const-string v2, "paddingLeft"

    if-nez v0, :cond_3b

    .line 275
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 276
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 277
    :cond_3b
    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mPaddingLeft:F

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_57

    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mPaddingRight:F

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result p1

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_7b

    .line 278
    :cond_57
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->markComponentUsable()V

    .line 279
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->updateRecyclerAttr()V

    .line 280
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 281
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    :cond_7b
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.WXListComponent.AnonymousClass1 (com.taobao.weex.ui.component.list.WXListComponent$1)
.class Lcom/taobao/weex/ui/component/list/WXListComponent$1;
.super Ljava/lang/Object;
.source "WXListComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/WXListComponent;->setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/WXListComponent;

.field final synthetic val$child:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/WXListComponent;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 152
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$1;->this$0:Lcom/taobao/weex/ui/component/list/WXListComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$1;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$1;->this$0:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$1;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.list.WXListComponent.AnonymousClass2 (com.taobao.weex.ui.component.list.WXListComponent$2)
.class Lcom/taobao/weex/ui/component/list/WXListComponent$2;
.super Ljava/lang/Object;
.source "WXListComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/WXListComponent;->setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/WXListComponent;

.field final synthetic val$child:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/WXListComponent;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 163
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/WXListComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$2;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$2;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.list.WXListComponent.AnonymousClass3 (com.taobao.weex.ui.component.list.WXListComponent$3)
.class Lcom/taobao/weex/ui/component/list/WXListComponent$3;
.super Ljava/lang/Object;
.source "WXListComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/WXListComponent;->createChildViewAt(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/WXListComponent;

.field final synthetic val$childComponent:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/WXListComponent;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 301
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$3;->this$0:Lcom/taobao/weex/ui/component/list/WXListComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$3;->val$childComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 304
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$3;->this$0:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$3;->val$childComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.list.WXListComponent.AnonymousClass4 (com.taobao.weex.ui.component.list.WXListComponent$4)
.class Lcom/taobao/weex/ui/component/list/WXListComponent$4;
.super Ljava/lang/Object;
.source "WXListComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/WXListComponent;->createChildViewAt(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/WXListComponent;

.field final synthetic val$childComponent:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/WXListComponent;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 309
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$4;->this$0:Lcom/taobao/weex/ui/component/list/WXListComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$4;->val$childComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$4;->this$0:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$4;->val$childComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.list.WXListComponent.Creator (com.taobao.weex.ui.component.list.WXListComponent$Creator)
.class public Lcom/taobao/weex/ui/component/list/WXListComponent$Creator;
.super Ljava/lang/Object;
.source "WXListComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/list/WXListComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/taobao/weex/ui/component/list/WXListComponent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/taobao/weex/ui/component/list/WXListComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-object v0
.end method
