###### Class io.dcloud.feature.ui.c (io.dcloud.feature.ui.c)
.class public Lio/dcloud/feature/ui/c;
.super Lio/dcloud/feature/ui/b;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# static fields
.field private static final Y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field A:I

.field B:Ljava/lang/Object;

.field C:Z

.field D:Z

.field E:I

.field F:Z

.field G:Z

.field H:Z

.field I:Z

.field J:Z

.field K:Z

.field protected L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/ui/b;",
            ">;"
        }
    .end annotation
.end field

.field M:Ljava/lang/String;

.field N:Lio/dcloud/common/DHInterface/IWebview;

.field O:Ljava/lang/String;

.field P:Lio/dcloud/common/DHInterface/IWebview;

.field Q:Ljava/lang/String;

.field R:Lio/dcloud/common/DHInterface/IWebview;

.field S:Lio/dcloud/feature/ui/c;

.field private T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/ui/c;",
            ">;"
        }
    .end annotation
.end field

.field private U:Ljava/lang/String;

.field private V:I

.field private W:Z

.field X:Ljava/lang/Runnable;

.field u:J

.field v:Lorg/json/JSONArray;

.field w:Lio/dcloud/common/DHInterface/IWebview;

.field x:Lorg/json/JSONObject;

.field y:Lio/dcloud/common/DHInterface/IFrameView;

.field z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/feature/ui/c;->Y:Ljava/util/HashMap;

    const-string v1, "close"

    const-string v2, "onclose"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "loading"

    const-string v2, "onloading"

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "failed"

    const-string v2, "onerror"

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "loaded"

    const-string v2, "onloaded"

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 10

    const-string v0, "NWindow"

    .line 2
    invoke-direct {p0, v0}, Lio/dcloud/feature/ui/b;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/feature/ui/c;->u:J

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->v:Lorg/json/JSONArray;

    .line 5
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->w:Lio/dcloud/common/DHInterface/IWebview;

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->x:Lorg/json/JSONObject;

    .line 11
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->C:Z

    .line 22
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->D:Z

    .line 23
    iput v1, p0, Lio/dcloud/feature/ui/c;->E:I

    .line 26
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->F:Z

    .line 28
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->G:Z

    .line 32
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->H:Z

    .line 34
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->I:Z

    .line 36
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->J:Z

    .line 38
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->K:Z

    .line 40
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    .line 44
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->M:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->N:Lio/dcloud/common/DHInterface/IWebview;

    .line 49
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->O:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->P:Lio/dcloud/common/DHInterface/IWebview;

    .line 54
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->Q:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->R:Lio/dcloud/common/DHInterface/IWebview;

    .line 62
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->S:Lio/dcloud/feature/ui/c;

    .line 64
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->T:Ljava/util/ArrayList;

    const-string v2, "auto"

    .line 67
    iput-object v2, p0, Lio/dcloud/feature/ui/c;->U:Ljava/lang/String;

    const/16 v2, 0x96

    .line 68
    iput v2, p0, Lio/dcloud/feature/ui/c;->V:I

    .line 70
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->W:Z

    .line 2161
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->X:Ljava/lang/Runnable;

    .line 2162
    iput-object p1, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    .line 2163
    iput-object p3, p0, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    .line 2164
    iput-object p5, p0, Lio/dcloud/feature/ui/b;->e:Ljava/lang/String;

    .line 2165
    iput-object p6, p0, Lio/dcloud/feature/ui/b;->h:Lorg/json/JSONObject;

    .line 2166
    invoke-virtual {p0, p2, p4}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lio/dcloud/feature/ui/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 13

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/ui/c;-><init>(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/feature/ui/c;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/ui/c;->U:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 7

    .line 2188
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_49

    .line 2190
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_49

    .line 2192
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/feature/ui/b;

    .line 2193
    instance-of v4, v3, Lio/dcloud/feature/ui/c;

    if-eqz v4, :cond_24

    .line 2194
    check-cast v3, Lio/dcloud/feature/ui/c;

    invoke-virtual {v3}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3d

    .line 2196
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lio/dcloud/feature/ui/b;->e:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3d
    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_46

    const-string v3, ","

    .line 2199
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_49
    const-string p0, "]"

    .line 2203
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2204
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lio/dcloud/common/DHInterface/IContainerView;Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;IIII)V
    .registers 9

    .line 193
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p2

    .line 194
    iput p3, p2, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 195
    iput p4, p2, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 196
    iput p5, p2, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 197
    iput p6, p2, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 198
    invoke-virtual {p2}, Lio/dcloud/common/adapter/util/ViewRect;->commitUpdate2JSONObject()V

    .line 199
    move-object p2, p1

    check-cast p2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    .line 200
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    .line 202
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->isUniWebView()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_28

    .line 204
    invoke-virtual {v0, v1, v1, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto :goto_2e

    .line 206
    :cond_28
    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    :goto_2e
    const/4 p2, 0x0

    .line 210
    invoke-static {v0, p2}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 211
    invoke-static {v0, p2}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 212
    invoke-static {p3, p4, p5, p6}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->createLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 213
    invoke-interface {p0, p1, p2}, Lio/dcloud/common/DHInterface/IContainerView;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "appendNWindow Y="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "View_Visible_Path"

    invoke-static {p1, p0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/ui/c;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 51

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "titletext"

    const-string v5, "titleText"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v2, :cond_65

    .line 2205
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 2206
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    .line 2207
    iget-object v5, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v5}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v5

    .line 2208
    iget-object v10, v0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v10, v10, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v11, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    aput-object v3, v6, v9

    aput-object v5, v6, v7

    const/16 v5, 0x48

    invoke-interface {v10, v11, v5, v6}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2211
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 2212
    iget-object v3, v0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v8

    .line 2213
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    aput-object v2, v4, v9

    const/16 v2, 0x49

    .line 2214
    invoke-interface {v3, v11, v2, v4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2217
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->isUniWebView()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 2218
    iget-object v1, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->titleNViewRefresh()V

    :cond_64
    return-void

    :cond_65
    if-nez v3, :cond_68

    return-void

    .line 2227
    :cond_68
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->paddingIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v10

    .line 2229
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->backgroundIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v11

    .line 2231
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->backgroundImageIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v12

    .line 2233
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->titleAlignIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v13

    .line 2235
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->redDotChange(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v14

    .line 2237
    invoke-static/range {p3 .. p3}, Lio/dcloud/common/util/TitleNViewUtil;->titleNViewStyleNoTitle(Lorg/json/JSONObject;)Z

    .line 2239
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->titleIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v15

    .line 2241
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->titleColorIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v16

    .line 2243
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->titleSizeIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v17

    .line 2245
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->titleOverflowIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v18

    .line 2248
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->splitLineIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v19

    .line 2250
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->backButtonIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v20

    .line 2252
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->progressIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v21

    if-eqz v3, :cond_a4

    const-string v6, "homeButton"

    .line 2254
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    goto :goto_a5

    :cond_a4
    const/4 v6, 0x0

    .line 2256
    :goto_a5
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->isButtonsIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v22

    .line 2258
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->isSearchInputChange(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v23

    .line 2260
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->subTitleIconChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v24

    .line 2261
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->isShadowChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v25

    .line 2263
    iget-object v7, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v7}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v7

    const/16 v27, 0x0

    if-eqz v2, :cond_ca

    .line 2266
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    move-object/from16 v9, v28

    goto :goto_cc

    :cond_ca
    move-object/from16 v9, v27

    .line 2268
    :goto_cc
    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 2269
    invoke-static {v9, v8}, Lio/dcloud/common/util/JSONUtil;->combinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move/from16 p1, v12

    .line 2270
    iget-object v12, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v12, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v12}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v12

    iget v12, v12, Lio/dcloud/common/adapter/util/ViewOptions;->coverage:I

    if-eqz v9, :cond_119

    move/from16 v29, v13

    const-string v13, "coverage"

    .line 2271
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_116

    move/from16 v31, v14

    .line 2272
    iget-object v14, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v14, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v14}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v14

    .line 2273
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/b;->a()Landroid/content/Context;

    move-result-object v32

    move/from16 v33, v6

    invoke-static/range {v32 .. v32}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_WIDTH(Landroid/content/Context;)I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v2

    invoke-static {v13, v6, v12, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    iput v2, v14, Lio/dcloud/common/adapter/util/ViewOptions;->coverage:I

    goto :goto_11f

    :cond_116
    move/from16 v33, v6

    goto :goto_11d

    :cond_119
    move/from16 v33, v6

    move/from16 v29, v13

    :goto_11d
    move/from16 v31, v14

    :goto_11f
    if-eqz v9, :cond_450

    .line 2279
    :try_start_121
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 2280
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14b

    .line 2281
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_14b

    .line 2282
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_14d

    .line 2284
    :cond_136
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 2285
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14b

    .line 2286
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_14b

    .line 2287
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_14a} :catch_14b

    goto :goto_14d

    :catch_14b
    :cond_14b
    move-object/from16 v2, v27

    :goto_14d
    const-string v4, "titleColor"

    .line 2293
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "titlecolor"

    if-eqz v5, :cond_15c

    .line 2294
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_169

    .line 2295
    :cond_15c
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_167

    .line 2296
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_169

    :cond_167
    move-object/from16 v5, v27

    .line 2298
    :goto_169
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_17d

    .line 2299
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2300
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17d

    .line 2301
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_17d
    const-string v4, "type"

    .line 2305
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "transparent"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v13, 0x0

    if-eqz v6, :cond_196

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_196

    .line 2306
    invoke-static {v5, v13}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    :cond_196
    const-string v6, "titleSize"

    .line 2310
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    const-string v13, "titlesize"

    if-eqz v14, :cond_1a5

    .line 2311
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1b2

    .line 2312
    :cond_1a5
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1b0

    .line 2313
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1b2

    :cond_1b0
    move-object/from16 v14, v27

    .line 2315
    :goto_1b2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_1c6

    .line 2316
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2317
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c6

    .line 2318
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_1c6
    const-string v6, "titleOverflow"

    .line 2321
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v13, "backgroundColor"

    .line 2324
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v34

    move/from16 v35, v10

    const-string v10, "backgroundcolor"

    if-eqz v34, :cond_1dd

    .line 2325
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    goto :goto_1ea

    .line 2326
    :cond_1dd
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_1e8

    .line 2327
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    goto :goto_1ea

    :cond_1e8
    move-object/from16 v34, v27

    .line 2329
    :goto_1ea
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_1fe

    .line 2330
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2331
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1fe

    .line 2332
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    :cond_1fe
    move-object/from16 v10, v34

    const-string v13, "backgroundImage"

    .line 2337
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_20c

    .line 2338
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    :cond_20c
    const-string v13, "\',\'"

    const-string v3, "[\'"

    const-string v34, "nativeobj"

    move-object/from16 v36, v6

    if-eqz v11, :cond_2d1

    .line 2342
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2d1

    .line 2345
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22c

    const/4 v11, 0x0

    .line 2346
    invoke-static {v10, v11}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v11

    goto :goto_240

    .line 2347
    :cond_22c
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "float"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23a

    move-object v11, v10

    goto :goto_240

    :cond_23a
    const/high16 v11, 0x3f800000    # 1.0f

    .line 2349
    invoke-static {v10, v11}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v11

    .line 2352
    :goto_240
    iget-object v12, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v12, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v12}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v12

    iget-boolean v12, v12, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v12, :cond_279

    iget-object v12, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v12

    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v12

    iget-boolean v12, v12, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    if-eqz v12, :cond_279

    .line 2353
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",\'statusbar\':{\'background\':\'"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\',\'backgroundnoalpha\':\'"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'}"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_27b

    :cond_279
    const-string v6, ""

    .line 2355
    :goto_27b
    iget-object v10, v0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v10, v10, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v12, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    move-object/from16 v37, v4

    move-object/from16 v38, v9

    const/4 v4, 0x4

    new-array v9, v4, [Ljava/lang/Object;

    .line 2356
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    const/16 v30, 0x0

    aput-object v4, v9, v30

    const/4 v4, 0x1

    aput-object v34, v9, v4

    const-string v4, "setStyle"

    const/16 v26, 0x2

    aput-object v4, v9, v26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v39, v14

    const-string v14, "\',{\'backgroundColor\':\'"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\'"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v9, v6

    const/4 v4, 0x1

    .line 2357
    invoke-interface {v10, v12, v4, v9}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d7

    :cond_2d1
    move-object/from16 v37, v4

    move-object/from16 v38, v9

    move-object/from16 v39, v14

    :goto_2d7
    const-string v4, "tags"

    .line 2361
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_328

    .line 2363
    iget-object v6, v0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v6, v6, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v8, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v9, 0x4

    new-array v10, v9, [Ljava/lang/Object;

    .line 2364
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v9, 0x1

    aput-object v34, v10, v9

    const-string v9, "view_draw"

    const/4 v11, 0x2

    aput-object v9, v10, v11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\',"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v10, v9

    const/4 v4, 0x1

    .line 2365
    invoke-interface {v6, v8, v4, v10}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2369
    :cond_328
    iget-object v4, v0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v4, v4, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v6

    iget-object v8, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v4, v6, v8, v7}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2370
    instance-of v6, v4, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v6, :cond_439

    .line 2371
    check-cast v4, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v15, :cond_341

    .line 2374
    invoke-interface {v4, v2}, Lio/dcloud/common/DHInterface/ITitleNView;->setTitleText(Ljava/lang/String;)V

    :cond_341
    if-eqz v16, :cond_346

    .line 2378
    invoke-interface {v4, v5}, Lio/dcloud/common/DHInterface/ITitleNView;->setTitleColor(Ljava/lang/String;)V

    :cond_346
    if-eqz v17, :cond_34d

    move-object/from16 v14, v39

    .line 2382
    invoke-interface {v4, v14}, Lio/dcloud/common/DHInterface/ITitleNView;->setTitleSize(Ljava/lang/String;)V

    :cond_34d
    if-eqz v18, :cond_354

    move-object/from16 v2, v36

    .line 2386
    invoke-interface {v4, v2}, Lio/dcloud/common/DHInterface/ITitleNView;->setTitleOverflow(Ljava/lang/String;)V

    :cond_354
    if-eqz v35, :cond_360

    .line 2390
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    move-object/from16 v5, v38

    invoke-static {v4, v2, v5}, Lio/dcloud/common/util/TitleNViewUtil;->setTitleNViewPadding(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V

    goto :goto_362

    :cond_360
    move-object/from16 v5, v38

    :goto_362
    if-eqz v19, :cond_387

    .line 2394
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v41

    const-string v2, "splitLine"

    move-object/from16 v6, p3

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v42

    const-string v2, "splitLine"

    move-object v6, v3

    move-object/from16 v3, p4

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    move-object/from16 v2, v37

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    const/16 v44, 0x0

    move-object/from16 v40, v4

    invoke-static/range {v40 .. v45}, Lio/dcloud/common/util/TitleNViewUtil;->setSplitLine(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLjava/lang/String;)V

    goto :goto_388

    :cond_387
    move-object v6, v3

    :goto_388
    if-eqz v20, :cond_393

    .line 2398
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v2

    invoke-static {v4, v5, v2}, Lio/dcloud/common/util/TitleNViewUtil;->setBackButton(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;I)V

    :cond_393
    if-eqz v21, :cond_398

    .line 2402
    invoke-static {v4, v5}, Lio/dcloud/common/util/TitleNViewUtil;->setProgress(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    :cond_398
    if-eqz v23, :cond_3a3

    .line 2407
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lio/dcloud/common/util/TitleNViewUtil;->setSearchInput(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    :cond_3a3
    if-eqz v22, :cond_3ba

    .line 2411
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/ITitleNView;->clearButtons()V

    .line 2412
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lio/dcloud/common/util/TitleNViewUtil;->setButtons(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 2413
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v2

    invoke-static {v4, v5, v2}, Lio/dcloud/common/util/TitleNViewUtil;->setBackButton(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;I)V

    :cond_3ba
    if-nez v33, :cond_3be

    if-eqz v22, :cond_3c7

    .line 2418
    :cond_3be
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v2

    invoke-static {v4, v5, v2}, Lio/dcloud/common/util/TitleNViewUtil;->setHomeButton(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;I)V

    :cond_3c7
    if-eqz v31, :cond_3cc

    .line 2422
    invoke-static {v4, v5}, Lio/dcloud/common/util/TitleNViewUtil;->setRedDotColor(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    :cond_3cc
    if-eqz v29, :cond_3d1

    .line 2426
    invoke-static {v4, v5}, Lio/dcloud/common/util/TitleNViewUtil;->setTitleAlign(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    :cond_3d1
    if-eqz p1, :cond_41c

    if-eqz v27, :cond_41c

    .line 2430
    iget-object v2, v0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v2, v2, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 2431
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v34, v8, v9

    const-string v9, "setStyle"

    const/4 v10, 0x2

    aput-object v9, v8, v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\',{\'backgroundImage\':\'"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v27

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'}]"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v8, v7

    const/4 v6, 0x1

    .line 2432
    invoke-interface {v2, v3, v6, v8}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_41c
    if-eqz v4, :cond_42f

    const-string v2, "backgroundRepeat"

    .line 2436
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42f

    const-string v2, "backgroundRepeat"

    .line 2437
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lio/dcloud/common/DHInterface/ITitleNView;->setBackgroundRepeat(Ljava/lang/String;)V

    :cond_42f
    if-eqz v24, :cond_434

    .line 2440
    invoke-static {v4, v5}, Lio/dcloud/common/util/TitleNViewUtil;->setSubTitleIcon(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    :cond_434
    if-eqz v25, :cond_439

    .line 2443
    invoke-static {v4, v5}, Lio/dcloud/common/util/TitleNViewUtil;->setShadow(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    .line 2446
    :cond_439
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->isUniWebView()Z

    move-result v2

    if-eqz v2, :cond_450

    .line 2447
    iget-object v1, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->titleNViewRefresh()V

    :cond_450
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 11

    const/4 v0, 0x0

    .line 1985
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 1986
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    .line 1987
    iget-object v2, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v0, v3}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1990
    :try_start_13
    iget-object v2, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget-object v2, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_64

    .line 1991
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"code\":-100,\"message\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lio/dcloud/base/R$string;->dcloud_ui_webview_not_finished:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_54} :catch_55

    return-void

    :catch_55
    move-exception v2

    .line 1995
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1996
    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v4, "{\"code\":-100,\"message\":\"\"+sWeb.getContext().getString(R.string.dcloud_ui_webview_not_finished)+\"\"}"

    move-object v2, p1

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 1998
    :cond_64
    invoke-virtual {v0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    const/4 v0, 0x2

    .line 1999
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "auto"

    if-eqz p2, :cond_7f

    const-string v2, "type"

    .line 2001
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 2002
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v5, p2

    goto :goto_80

    :cond_7f
    move-object v5, v0

    .line 2005
    :goto_80
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p2

    if-eqz p2, :cond_92

    .line 2007
    new-instance v0, Lio/dcloud/feature/ui/c$e;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lio/dcloud/feature/ui/c$e;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_92
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "auto"

    if-eqz v1, :cond_12a

    const-string v5, "acceleration"

    .line 2108
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2109
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_18

    :cond_17
    move-object v3, v5

    :goto_18
    const-string v5, "capture"

    const-string v6, "action"

    const-string v7, "none"

    .line 2111
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2113
    iget-object v8, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v8, v3}, Lio/dcloud/common/DHInterface/IFrameView;->setAccelerationType(Ljava/lang/String;)V

    .line 2115
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    const-string v11, "getNativeView"

    const-string v12, "nativeobj"

    const/4 v13, 0x4

    const-string v14, "nativeView"

    const-string v15, "__id__"

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v9, "type"

    if-eqz v8, :cond_af

    .line 2116
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_43

    return-void

    .line 2120
    :cond_43
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_8f

    .line 2121
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8f

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 2122
    iget-object v5, v0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v5, v5, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v10, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v4, v13, [Ljava/lang/Object;

    aput-object p1, v4, v17

    aput-object v12, v4, v16

    const/4 v13, 0x2

    aput-object v11, v4, v13

    move-object/from16 v19, v11

    new-array v11, v13, [Ljava/lang/Object;

    iget-object v13, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v13, v11, v17

    aput-object v8, v11, v16

    const/4 v8, 0x3

    aput-object v11, v4, v8

    const/16 v8, 0xa

    invoke-interface {v5, v10, v8, v4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b1

    .line 2123
    instance-of v5, v4, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v5, :cond_b1

    .line 2124
    iget-object v5, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v4, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v5, v4, v6}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshotView(Lio/dcloud/common/DHInterface/INativeView;Ljava/lang/String;)V

    .line 2125
    iget-object v4, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshot(Landroid/graphics/Bitmap;)V

    goto :goto_b1

    :cond_8f
    move-object/from16 v19, v11

    .line 2128
    iget-object v4, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-direct {v0, v4, v8}, Lio/dcloud/feature/ui/c;->g(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v4

    .line 2129
    iget-object v5, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v4, :cond_a4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/INativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_a5

    :cond_a4
    const/4 v4, 0x0

    :goto_a5
    invoke-interface {v5, v4}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshot(Landroid/graphics/Bitmap;)V

    .line 2130
    iget-object v4, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v7}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshotView(Lio/dcloud/common/DHInterface/INativeView;Ljava/lang/String;)V

    goto :goto_b1

    :cond_af
    move-object/from16 v19, v11

    :cond_b1
    :goto_b1
    const-string v4, "otherCapture"

    .line 2134
    iget-object v2, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->findPageB()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    if-eqz v2, :cond_143

    .line 2137
    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IFrameView;->setAccelerationType(Ljava/lang/String;)V

    .line 2139
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_143

    .line 2140
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_cb

    return-void

    .line 2144
    :cond_cb
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_110

    .line 2145
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_110

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 2146
    iget-object v1, v0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v1, v1, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v17

    aput-object v12, v5, v16

    const/4 v7, 0x2

    aput-object v19, v5, v7

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v17

    aput-object v3, v7, v16

    const/4 v3, 0x3

    aput-object v7, v5, v3

    const/16 v3, 0xa

    invoke-interface {v1, v4, v3, v5}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_143

    .line 2147
    instance-of v3, v1, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v3, :cond_143

    .line 2148
    check-cast v1, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v2, v1, v6}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshotView(Lio/dcloud/common/DHInterface/INativeView;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2149
    invoke-interface {v2, v1}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshot(Landroid/graphics/Bitmap;)V

    goto :goto_143

    .line 2152
    :cond_110
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lio/dcloud/feature/ui/c;->g(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v1

    if-eqz v2, :cond_143

    if-eqz v1, :cond_121

    .line 2154
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/INativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_122

    :cond_121
    const/4 v5, 0x0

    :goto_122
    invoke-interface {v2, v5}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshot(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 2155
    invoke-interface {v2, v1, v7}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshotView(Lio/dcloud/common/DHInterface/INativeView;Ljava/lang/String;)V

    goto :goto_143

    :cond_12a
    const/4 v1, 0x0

    .line 2161
    iget-object v4, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4, v1}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshot(Landroid/graphics/Bitmap;)V

    .line 2162
    iget-object v4, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4, v3}, Lio/dcloud/common/DHInterface/IFrameView;->setAccelerationType(Ljava/lang/String;)V

    .line 2163
    iget-object v2, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->findPageB()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    if-eqz v2, :cond_143

    .line 2165
    invoke-interface {v2, v1}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshot(Landroid/graphics/Bitmap;)V

    .line 2166
    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IFrameView;->setAccelerationType(Ljava/lang/String;)V

    :cond_143
    :goto_143
    return-void
.end method

.method private a(Lio/dcloud/feature/ui/b;Lio/dcloud/feature/ui/c;)V
    .registers 5

    .line 165
    invoke-virtual {p1}, Lio/dcloud/feature/ui/b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 166
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_80

    iget-object p1, p0, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    const-string v1, "https://"

    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_80

    iget-object p1, p2, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_80

    iget-object p1, p2, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_80

    .line 174
    :cond_2f
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_80

    iget-object p1, p2, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_80

    .line 177
    invoke-virtual {p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    .line 178
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    .line 180
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 185
    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/feature/ui/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 189
    invoke-virtual {p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/feature/ui/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"filiation\": {\"parent\":\"%s\",\"child\":\"%s\"}}"

    .line 191
    invoke-static {p1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".stream_json"

    .line 192
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_80
    :goto_80
    return-void
.end method

.method private a(Lio/dcloud/feature/ui/b;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V
    .registers 8

    .line 2008
    check-cast p1, Lio/dcloud/feature/ui/c;

    .line 2009
    iget-boolean v0, p1, Lio/dcloud/feature/ui/c;->F:Z

    if-eqz v0, :cond_36

    .line 2010
    iget-wide v0, p1, Lio/dcloud/feature/ui/c;->u:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lio/dcloud/feature/ui/c;->u:J

    const/4 v0, 0x1

    .line 2011
    iput-boolean v0, p2, Lio/dcloud/feature/ui/c;->F:Z

    .line 2012
    iput-boolean v0, p2, Lio/dcloud/feature/ui/c;->H:Z

    const/4 v1, 0x0

    .line 2013
    iput-boolean v1, p2, Lio/dcloud/feature/ui/c;->G:Z

    .line 2015
    iget-object v2, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v2, p0}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/feature/ui/c;)I

    move-result v2

    .line 2018
    iget-object v3, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v3, p3, p2, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 2019
    iget-object p3, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object p3, p3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p2, p2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object p2, v3, v1

    iget-object p1, p1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object p1, v3, v0

    const/16 p1, 0x2d

    invoke-interface {p3, v2, p1, v3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_36
    return-void
.end method

.method private a(Lio/dcloud/feature/ui/c;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_7c

    .line 2020
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_7c

    .line 2023
    :cond_a
    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-nez v0, :cond_15

    return-void

    .line 2028
    :cond_15
    iget-object v1, p1, Lio/dcloud/feature/ui/c;->S:Lio/dcloud/feature/ui/c;

    if-nez v1, :cond_1a

    goto :goto_22

    .line 2033
    :cond_1a
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object p2

    .line 2035
    :goto_22
    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v1

    .line 2036
    invoke-virtual {p1}, Lio/dcloud/feature/ui/b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 2037
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7c

    const-string p1, "http://"

    .line 2038
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7c

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4f

    goto :goto_7c

    .line 2043
    :cond_4f
    invoke-static {p2}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2044
    invoke-static {v1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2047
    invoke-interface {v0, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2048
    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2049
    invoke-interface {v0, p2}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "{\"open\": {\"opener\":\"%s\",\"opened\":\"%s\"}}"

    .line 2050
    invoke-static {p1, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".stream_json"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_7c
    :goto_7c
    return-void
.end method

.method private a(Lio/dcloud/feature/ui/c;Lorg/json/JSONObject;)V
    .registers 10

    if-nez p2, :cond_3

    return-void

    .line 2448
    :cond_3
    iget-object v0, p1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->getUniNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    .line 2449
    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 p2, 0x3

    aput-object v0, v2, p2

    .line 2450
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v6, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v1, v1, [Ljava/lang/Object;

    .line 2451
    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "weex,io.dcloud.feature.weex.WeexFeature"

    aput-object p1, v1, v5

    const-string p1, "weexViewUpdate"

    aput-object p1, v1, v3

    aput-object v2, v1, p2

    const/16 p1, 0xa

    .line 2452
    invoke-interface {v0, v6, p1, v1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;Lio/dcloud/feature/ui/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lio/dcloud/feature/ui/c;",
            ">;",
            "Lio/dcloud/feature/ui/c;",
            ")V"
        }
    .end annotation

    const-class v0, Lio/dcloud/feature/ui/c;

    monitor-enter v0

    .line 215
    :try_start_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/c;

    .line 216
    invoke-virtual {v2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    iget-object v3, p3, Lio/dcloud/feature/ui/b;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lio/dcloud/common/util/JSUtil;->broadcastWebviewEvent(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 218
    :cond_25
    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    .line 219
    invoke-virtual {p3}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    iget-object p3, p3, Lio/dcloud/feature/ui/b;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p0, p1}, Lio/dcloud/common/util/JSUtil;->broadcastWebviewEvent(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3e

    :cond_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private c(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 27
    invoke-static {v2, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 28
    invoke-static {v2, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    .line 30
    iget-object v6, v0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v5, v7}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v5

    invoke-virtual {v5}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v5

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v9

    const/4 v5, 0x2

    .line 31
    invoke-static {v2, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 36
    invoke-static {v2, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "RGB565"

    if-eqz v2, :cond_86

    const-string v8, "check"

    .line 38
    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v10, "checkKeyboard"

    .line 39
    invoke-virtual {v2, v10, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "bit"

    .line 40
    invoke-virtual {v2, v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "clip"

    .line 41
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_84

    .line 43
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 44
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 45
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v13

    const-string v14, "left"

    .line 46
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11, v3, v13}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v14

    const-string v15, "top"

    .line 47
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v12, v3, v13}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v3

    const-string v15, "width"

    .line 48
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v11, v11, v13}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v11

    const-string v15, "height"

    .line 49
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12, v12, v13}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    .line 50
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v14, v3, v11, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v14, v6

    move v11, v8

    move-object v13, v12

    goto :goto_8a

    :cond_84
    move v3, v8

    goto :goto_87

    :cond_86
    const/4 v10, 0x0

    :goto_87
    move v11, v3

    move-object v14, v6

    move-object v13, v7

    :goto_8a
    move v12, v10

    .line 53
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v8

    invoke-direct {v0, v1, v4}, Lio/dcloud/feature/ui/c;->g(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v10

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9b

    move-object v15, v7

    goto :goto_a1

    :cond_9b
    new-instance v2, Lio/dcloud/feature/ui/c$h;

    invoke-direct {v2, v0, v1, v5}, Lio/dcloud/feature/ui/c$h;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    move-object v15, v2

    .line 59
    :goto_a1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a8

    goto :goto_ad

    :cond_a8
    new-instance v7, Lio/dcloud/feature/ui/c$i;

    invoke-direct {v7, v0, v1, v5}, Lio/dcloud/feature/ui/c$i;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :goto_ad
    move-object/from16 v16, v7

    .line 60
    invoke-interface/range {v8 .. v16}, Lio/dcloud/common/DHInterface/IFrameView;->draw(Landroid/view/View;Lio/dcloud/common/DHInterface/INativeBitmap;ZZLandroid/graphics/Rect;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method private d(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V
    .registers 10

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-static {p2, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v4, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v4

    .line 6
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 7
    iget v5, v4, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    invoke-static {v3, v5}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v4, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    goto :goto_25

    .line 9
    :cond_21
    iget v3, v4, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    iput v3, v4, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    .line 13
    :goto_25
    invoke-virtual {v4, v1}, Lio/dcloud/common/adapter/util/AnimOptions;->setCloseAnimType(Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 14
    iput-byte v3, v4, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NWindow.hide view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "View_Visible_Path"

    invoke-static {v4, v3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-boolean v3, p3, Lio/dcloud/feature/ui/c;->F:Z

    if-eqz v3, :cond_73

    .line 18
    invoke-direct {p3}, Lio/dcloud/feature/ui/c;->k()Z

    move-result v3

    if-eqz v3, :cond_65

    const/4 v3, 0x2

    .line 21
    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p2

    .line 22
    invoke-direct {p0, p1, p2, p3, v1}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object p1, p1, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v1, p3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/16 v3, 0x17

    invoke-interface {p1, p2, v3, v1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    :cond_65
    const/4 p1, 0x0

    const-string p2, "hide"

    .line 25
    invoke-virtual {p0, p2, p1}, Lio/dcloud/feature/ui/c;->onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1, v0, v2}, Lio/dcloud/common/DHInterface/IFrameView;->setVisible(ZZ)V

    .line 28
    :goto_70
    iput-boolean v0, p3, Lio/dcloud/feature/ui/c;->F:Z

    goto :goto_78

    .line 31
    :cond_73
    iget-object p1, p3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1, v0, v2}, Lio/dcloud/common/DHInterface/IFrameView;->setVisible(ZZ)V

    .line 33
    :goto_78
    iput-boolean v2, p3, Lio/dcloud/feature/ui/c;->G:Z

    return-void
.end method

.method private e(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const-string v4, "isUniH5"

    const-string v5, "debugRefresh"

    const-string v6, "animationAlphaBGColor"

    .line 2
    iget-boolean v0, v3, Lio/dcloud/feature/ui/c;->I:Z

    if-nez v0, :cond_374

    .line 4
    iget-object v0, v3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    move-object v7, v0

    check-cast v7, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 5
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p2

    .line 6
    invoke-static {v0, v9}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v10

    .line 9
    iget-object v0, v8, Lio/dcloud/common/adapter/util/ViewOptions;->isTabItem:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v11, "background"

    const/4 v12, 0x1

    if-eqz v0, :cond_43

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 11
    :try_start_31
    invoke-static {v10, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v13, "tabBGColor"

    .line 13
    invoke-virtual {v10, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_3d} :catch_3f

    const/4 v13, 0x1

    goto :goto_44

    :catch_3f
    move-exception v0

    .line 16
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_43
    const/4 v13, 0x0

    .line 20
    :goto_44
    invoke-virtual {v1, v10, v12}, Lio/dcloud/feature/ui/c;->a(Lorg/json/JSONObject;Z)Z

    move-result v14

    .line 21
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v15, v0, 0x1

    if-eqz v15, :cond_68

    .line 24
    invoke-static {v10, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_68

    const-string v12, "transparent"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    const/4 v0, 0x1

    goto :goto_69

    :cond_68
    const/4 v0, 0x0

    :goto_69
    const-string v12, "webviewBGTransparent"

    .line 29
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_82

    .line 30
    invoke-static {v10, v12}, Lio/dcloud/common/util/JSONUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_82

    .line 31
    iget-object v12, v3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v12

    check-cast v12, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v12, v9}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setBgcolor(I)V

    .line 34
    :cond_82
    iget-boolean v12, v3, Lio/dcloud/feature/ui/c;->J:Z

    const/16 v16, 0x0

    if-nez v12, :cond_8c

    if-eqz v15, :cond_112

    if-nez v0, :cond_112

    :cond_8c
    if-eqz v15, :cond_ce

    .line 37
    :try_start_8e
    invoke-static {v10, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a1

    .line 39
    iget-object v12, v8, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-static {v10, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    :cond_a1
    iget-object v6, v8, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v6, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 43
    iget-object v0, v8, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-static {v10, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    :cond_b5
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 46
    iget-object v0, v8, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-static {v10, v4}, Lio/dcloud/common/util/JSONUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 48
    :cond_c4
    iget-object v0, v8, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v8, v0}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z
    :try_end_c9
    .catch Lorg/json/JSONException; {:try_start_8e .. :try_end_c9} :catch_ca

    goto :goto_ce

    :catch_ca
    move-exception v0

    .line 50
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    :cond_ce
    :goto_ce
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v0, :cond_dd

    .line 55
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    goto :goto_df

    :cond_dd
    move-object/from16 v0, v16

    .line 57
    :goto_df
    iget-object v4, v3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v7

    if-eqz v0, :cond_f5

    .line 58
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    iget-object v4, v4, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-nez v4, :cond_f5

    .line 59
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    iput-object v0, v4, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    .line 61
    :cond_f5
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/ViewRect;->getParentViewRect()Lio/dcloud/common/adapter/util/ViewRect;

    move-result-object v0

    if-nez v0, :cond_112

    .line 62
    iget-object v0, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v5, v3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v9, 0x0

    aput-object v5, v6, v9

    const/16 v5, 0x4a

    invoke-interface {v0, v4, v5, v6}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_112
    invoke-virtual {v8}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 66
    iget-object v0, v3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v7

    .line 68
    :cond_11e
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    const/4 v4, 0x1

    iput-boolean v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->allowUpdate:Z

    .line 71
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    .line 72
    iget v5, v4, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    .line 75
    :try_start_12b
    iget-object v0, v4, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v0, :cond_13f

    .line 76
    new-instance v0, Lorg/json/JSONObject;

    iget-object v6, v4, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_13a
    .catch Lorg/json/JSONException; {:try_start_12b .. :try_end_13a} :catch_13b

    goto :goto_141

    :catch_13b
    move-exception v0

    .line 79
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_13f
    move-object/from16 v0, v16

    .line 81
    :goto_141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setOption _old_win_options="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ";_new_json_option="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "View_Visible_Path"

    invoke-static {v8, v6}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v4}, Lio/dcloud/common/adapter/util/ViewRect;->getParentViewRect()Lio/dcloud/common/adapter/util/ViewRect;

    move-result-object v6

    invoke-static {v4, v6}, Lio/dcloud/common/adapter/util/ViewOptions;->createViewOptionsData(Lio/dcloud/common/adapter/util/ViewOptions;Lio/dcloud/common/adapter/util/ViewRect;)Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    .line 84
    iget-object v8, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v8}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v8

    const-string v9, "shareable"

    .line 85
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v9, v11}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "videoFullscreen"

    .line 87
    invoke-static {v10, v9}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_185

    .line 88
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v9, v11}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_185
    const-string v9, "pullToRefresh"

    .line 91
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a2

    .line 92
    invoke-static {v10, v9}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 93
    iget-object v11, v3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v11

    iget-object v12, v4, Lio/dcloud/common/adapter/util/ViewOptions;->mPullToRefresh:Lorg/json/JSONObject;

    invoke-static {v12, v9}, Lio/dcloud/common/util/JSONUtil;->combinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v12, "pull_down_refresh"

    invoke-interface {v11, v12, v9}, Lio/dcloud/common/DHInterface/IWebview;->setWebViewEvent(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1a2
    const-string v9, "bounce"

    .line 97
    invoke-static {v10, v9}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1b3

    if-eqz v8, :cond_1b3

    .line 98
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v9, v11}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_1b3
    iget-object v9, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mCacheMode:Ljava/lang/String;

    invoke-interface {v2, v9}, Lio/dcloud/common/DHInterface/IWebview;->setWebViewCacheMode(Ljava/lang/String;)V

    .line 103
    iget-object v9, v1, Lio/dcloud/feature/ui/b;->h:Lorg/json/JSONObject;

    invoke-static {v9, v10}, Lio/dcloud/common/util/JSONUtil;->combinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 105
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/b;->f()V

    const-string v9, "titleNView"

    .line 107
    invoke-static {v10, v9}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1d0

    .line 108
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v1, v2, v3, v0, v9}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/ui/c;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_1df

    :cond_1d0
    const-string v9, "navigationbar"

    .line 110
    invoke-static {v10, v9}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1df

    .line 111
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v1, v2, v3, v0, v9}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/ui/c;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_1df
    :goto_1df
    const-string v0, "uniNView"

    .line 114
    invoke-static {v10, v0}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ee

    .line 115
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/c;Lorg/json/JSONObject;)V

    .line 117
    :cond_1ee
    iget-boolean v0, v3, Lio/dcloud/feature/ui/c;->H:Z

    const-string v2, "geolocation"

    const-string v9, "plusrequire"

    const-string v11, "injection"

    const-string v12, "scalable"

    if-eqz v0, :cond_308

    .line 118
    iget v0, v6, Lio/dcloud/common/adapter/util/ViewOptions;->background:I

    move/from16 v16, v13

    .line 120
    iget v13, v6, Lio/dcloud/common/adapter/util/ViewOptions;->opacity:F

    .line 121
    invoke-virtual {v6, v10}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    move-result v17

    .line 122
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->checkAlphaTransparent(I)Z

    move-result v0

    move/from16 v18, v15

    iget v15, v6, Lio/dcloud/common/adapter/util/ViewOptions;->background:I

    invoke-static {v15}, Lio/dcloud/common/util/PdrUtil;->checkAlphaTransparent(I)Z

    move-result v15

    if-eq v0, v15, :cond_214

    const/4 v0, 0x1

    goto :goto_215

    :cond_214
    const/4 v0, 0x0

    .line 123
    :goto_215
    iget v15, v6, Lio/dcloud/common/adapter/util/ViewOptions;->opacity:F

    cmpl-float v13, v13, v15

    if-eqz v13, :cond_21d

    const/4 v13, 0x1

    goto :goto_21e

    :cond_21d
    const/4 v13, 0x0

    :goto_21e
    or-int/2addr v0, v13

    if-eqz v10, :cond_23a

    const-string v13, "render"

    .line 125
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_23a

    const-string v15, "onscreen"

    .line 126
    invoke-virtual {v10, v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "always"

    .line 127
    invoke-static {v13, v15}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 128
    iget-object v15, v3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v15, v13}, Lio/dcloud/common/DHInterface/IFrameView;->setNeedRender(Z)V

    .line 132
    :cond_23a
    invoke-virtual {v6}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v13

    iput-boolean v13, v3, Lio/dcloud/feature/ui/c;->J:Z

    const-string v13, "scrollIndicator"

    .line 134
    invoke-static {v10, v13}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_24f

    .line 135
    invoke-virtual {v6}, Lio/dcloud/common/adapter/util/ViewOptions;->getScrollIndicator()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Lio/dcloud/common/DHInterface/IWebview;->setScrollIndicator(Ljava/lang/String;)V

    .line 138
    :cond_24f
    invoke-static {v10, v12}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_25e

    .line 139
    iget-boolean v13, v6, Lio/dcloud/common/adapter/util/ViewOptions;->scalable:Z

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_25e
    iget-object v12, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mInjection:Ljava/lang/String;

    invoke-interface {v8, v11, v12}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v11, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mPlusrequire:Ljava/lang/String;

    invoke-interface {v8, v9, v11}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v9, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mGeoInject:Ljava/lang/String;

    invoke-interface {v8, v2, v9}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v2

    const-string v8, "transition"

    .line 148
    invoke-static {v10, v8}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_28c

    .line 149
    iget-object v8, v6, Lio/dcloud/common/adapter/util/ViewOptions;->transition:Lorg/json/JSONObject;

    invoke-virtual {v2, v8}, Lio/dcloud/common/adapter/util/AnimOptions;->parseTransition(Lorg/json/JSONObject;)V

    .line 150
    iget-object v8, v6, Lio/dcloud/common/adapter/util/ViewOptions;->transition:Lorg/json/JSONObject;

    const-string v9, "duration"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_28f

    const/4 v8, 0x0

    .line 151
    iput v8, v2, Lio/dcloud/common/adapter/util/AnimOptions;->duration:I

    goto :goto_28f

    :cond_28c
    const/4 v8, 0x0

    .line 154
    iput v8, v2, Lio/dcloud/common/adapter/util/AnimOptions;->duration:I

    :cond_28f
    :goto_28f
    const-string v8, "transform"

    .line 156
    invoke-static {v10, v8}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_29c

    .line 157
    iget-object v8, v6, Lio/dcloud/common/adapter/util/ViewOptions;->transform:Lorg/json/JSONObject;

    invoke-virtual {v2, v8}, Lio/dcloud/common/adapter/util/AnimOptions;->parseTransform(Lorg/json/JSONObject;)V

    :cond_29c
    if-nez v17, :cond_2cb

    if-nez v14, :cond_2cb

    if-eqz v0, :cond_2a3

    goto :goto_2cb

    .line 170
    :cond_2a3
    invoke-virtual {v4, v10}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    .line 171
    iget v0, v6, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    if-eq v5, v0, :cond_35d

    .line 172
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v2, v6, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    iput v2, v0, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    .line 173
    iget-object v0, v3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v2, v6, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    iput v2, v0, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    .line 174
    iget-object v0, v3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_35d

    .line 175
    :cond_2cb
    :goto_2cb
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2, v6}, Lio/dcloud/common/DHInterface/IFrameView;->setFrameOptions_Animate(Lio/dcloud/common/adapter/util/ViewOptions;)V

    .line 177
    invoke-virtual {v7, v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setFrameOptions_Animate(Lio/dcloud/common/adapter/util/ViewOptions;)V

    .line 179
    iget-object v2, v3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v2

    const/4 v4, 0x2

    iput-byte v4, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 180
    iget-object v5, v3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v6, 0x0

    aput-object v5, v2, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    if-eqz v17, :cond_2f0

    const/4 v14, 0x0

    :cond_2f0
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v2, v4

    .line 181
    iget-object v0, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x7

    invoke-interface {v0, v4, v5, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_35d

    :cond_308
    move/from16 v16, v13

    move/from16 v18, v15

    .line 192
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    invoke-virtual {v0, v10}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    move-result v0

    .line 193
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions_Birth()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    invoke-virtual {v4, v10}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    .line 195
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    .line 196
    invoke-virtual {v4}, Lio/dcloud/common/adapter/util/ViewOptions;->getScrollIndicator()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5}, Lio/dcloud/common/DHInterface/IWebview;->setScrollIndicator(Ljava/lang/String;)V

    .line 198
    iget-boolean v4, v4, Lio/dcloud/common/adapter/util/ViewOptions;->scalable:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v12, v4}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v4, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mInjection:Ljava/lang/String;

    invoke-interface {v8, v11, v4}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v4, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mPlusrequire:Ljava/lang/String;

    invoke-interface {v8, v9, v4}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v4, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mGeoInject:Ljava/lang/String;

    invoke-interface {v8, v2, v4}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_35d

    .line 206
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 207
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 208
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 209
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 210
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 214
    iget-object v2, v3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    .line 217
    iget v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v6, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    invoke-static {v2, v4, v5, v6, v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    :cond_35d
    :goto_35d
    if-nez v18, :cond_361

    if-eqz v16, :cond_374

    .line 221
    :cond_361
    iget-object v0, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v3, v3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/16 v3, 0x4b

    invoke-interface {v0, v2, v3, v4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_374
    return-void
.end method

.method private g(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;
    .registers 10

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "nativeobj"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "getNativeBitmap"

    const/4 v6, 0x2

    aput-object v4, v2, v6

    new-array v4, v6, [Ljava/lang/String;

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    aput-object p2, v4, v5

    const/4 p1, 0x3

    aput-object v4, v2, p1

    const/16 p1, 0xa

    .line 3
    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainMgrData(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/DHInterface/INativeBitmap;

    return-object p1
.end method

.method private i()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_27

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v1, v1, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    const-string v2, "adid"

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lio/dcloud/feature/ui/c$j;

    invoke-direct {v3, p0, v0, v1}, Lio/dcloud/feature/ui/c$j;-><init>(Lio/dcloud/feature/ui/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    :cond_27
    return-void
.end method

.method private j()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_22

    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 4
    :goto_d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_1f

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    goto :goto_22

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_22
    :goto_22
    return-void
.end method

.method private k()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->a:Lio/dcloud/feature/ui/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 2
    iget-boolean v2, v0, Lio/dcloud/feature/ui/c;->F:Z

    if-eqz v2, :cond_10

    invoke-direct {v0}, Lio/dcloud/feature/ui/c;->k()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_11
    return v1
.end method

.method private s()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v0, p0}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/feature/ui/c;)V

    .line 2
    iget-boolean v0, p0, Lio/dcloud/feature/ui/c;->H:Z

    if-eqz v0, :cond_33

    .line 3
    iget-boolean v0, p0, Lio/dcloud/feature/ui/c;->I:Z

    if-nez v0, :cond_41

    .line 4
    iget-boolean v0, p0, Lio/dcloud/feature/ui/c;->K:Z

    if-eqz v0, :cond_27

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->a:Lio/dcloud/feature/ui/c;

    if-eqz v0, :cond_18

    .line 6
    invoke-virtual {v0, p0}, Lio/dcloud/feature/ui/c;->c(Lio/dcloud/feature/ui/b;)V

    .line 9
    :cond_18
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onDispose()Z

    .line 10
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->dispose()V

    goto :goto_41

    .line 12
    :cond_27
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 13
    iput-byte v1, v0, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    goto :goto_41

    .line 17
    :cond_33
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onDispose()Z

    .line 18
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->dispose()V

    .line 21
    :cond_41
    :goto_41
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->e()V

    return-void
.end method

.method private t()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    iput-byte v1, v0, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/dcloud/feature/ui/c;->F:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/dcloud/feature/ui/c;->G:Z

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "titleUpdate"

    const-string v6, "tabBGColor"

    .line 220
    :try_start_c
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v7

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v7

    .line 221
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v9

    .line 222
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v10
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_d6d

    const-string v11, "needTouchEvent"

    const-string v12, "getFavoriteOptions"

    const-string v13, "setShareOptions"

    const-string v14, "overrideUrlLoading"

    const-string v15, "getShareOptions"

    const-string v8, "setFavoriteOptions"

    move-object/from16 v16, v6

    sparse-switch v10, :sswitch_data_d76

    goto/16 :goto_413

    :sswitch_2f
    :try_start_2f
    const-string v10, "isPause"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x54

    goto/16 :goto_414

    :sswitch_3b
    const-string v10, "getMetrics"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x9

    goto/16 :goto_414

    :sswitch_47
    const-string v10, "getTitle"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x2f

    goto/16 :goto_414

    :sswitch_53
    const-string v10, "webview_animate"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x47

    goto/16 :goto_414

    :sswitch_5f
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x43

    goto/16 :goto_414

    :sswitch_69
    const-string v10, "loadData"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x35

    goto/16 :goto_414

    :sswitch_75
    const-string v10, "setTitleNViewSearchInputText"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x25

    goto/16 :goto_414

    :sswitch_81
    const-string v10, "children"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x34

    goto/16 :goto_414

    :sswitch_8d
    const-string v10, "setPullToRefresh"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/4 v3, 0x0

    goto/16 :goto_414

    :sswitch_98
    const-string v10, "removeTitleNViewButtonBadge"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x21

    goto/16 :goto_414

    :sswitch_a4
    const-string v10, "appendNativeView"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x39

    goto/16 :goto_414

    :sswitch_b0
    const-string v10, "setStyle"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x8

    goto/16 :goto_414

    :sswitch_bc
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x4e

    goto/16 :goto_414

    :sswitch_c6
    const-string v10, "showTitleNViewButtonRedDot"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x22

    goto/16 :goto_414

    :sswitch_d2
    const-string v10, "findViewById"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x2e

    goto/16 :goto_414

    :sswitch_de
    const-string v10, "setFixBottom"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x3f

    goto/16 :goto_414

    :sswitch_ea
    const-string v10, "setVolumeButtonEnabled"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x1f

    goto/16 :goto_414

    :sswitch_f6
    const-string v10, "setBlockNetworkImage"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/4 v3, 0x5

    goto/16 :goto_414

    :sswitch_101
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x4f

    goto/16 :goto_414

    :sswitch_10b
    const-string v10, "overrideResourceRequest"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0xe

    goto/16 :goto_414

    :sswitch_117
    const-string v10, "getOption"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/4 v3, 0x6

    goto/16 :goto_414

    :sswitch_122
    const-string v10, "updateSubNViews"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x4c

    goto/16 :goto_414

    :sswitch_12e
    const-string v10, "canBack"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x17

    goto/16 :goto_414

    :sswitch_13a
    const-string v10, "getTitleNViewSearchInputText"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x26

    goto/16 :goto_414

    :sswitch_146
    const-string v10, "setOption"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/4 v3, 0x7

    goto/16 :goto_414

    :sswitch_151
    const-string v10, "endPullToRefresh"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/4 v3, 0x2

    goto/16 :goto_414

    :sswitch_15c
    const-string v10, "showBehind"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x45

    goto/16 :goto_414

    :sswitch_168
    const-string v10, "pause"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x52

    goto/16 :goto_414

    :sswitch_174
    const-string v10, "setBounce"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/4 v3, 0x3

    goto/16 :goto_414

    :sswitch_17f
    const-string v10, "close"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x12

    goto/16 :goto_414

    :sswitch_18b
    const-string v10, "clear"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x19

    goto/16 :goto_414

    :sswitch_197
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0xf

    goto/16 :goto_414

    :sswitch_1a1
    const-string v10, "stop"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x1b

    goto/16 :goto_414

    :sswitch_1ad
    const-string v10, "show"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x11

    goto/16 :goto_414

    :sswitch_1b9
    const-string v10, "load"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x1a

    goto/16 :goto_414

    :sswitch_1c5
    const-string v10, "hide"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x10

    goto/16 :goto_414

    :sswitch_1d1
    const-string v10, "draw"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x3c

    goto/16 :goto_414

    :sswitch_1dd
    const-string v10, "drag"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x42

    goto/16 :goto_414

    :sswitch_1e9
    const-string v10, "back"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x15

    goto/16 :goto_414

    :sswitch_1f5
    const-string v10, "beginPullToRefresh"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/4 v3, 0x1

    goto/16 :goto_414

    :sswitch_200
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x50

    goto/16 :goto_414

    :sswitch_20a
    const-string v10, "isVisible"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x2b

    goto/16 :goto_414

    :sswitch_216
    const-string v10, "removeNativeView"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x36

    goto/16 :goto_414

    :sswitch_222
    const-string v10, "setCssText"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x44

    goto/16 :goto_414

    :sswitch_22e
    const-string v10, "setCssFile"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x3e

    goto/16 :goto_414

    :sswitch_23a
    const-string v10, "evalJSSync"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x14

    goto/16 :goto_414

    :sswitch_246
    const-string v10, "webview_restore"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x48

    goto/16 :goto_414

    :sswitch_252
    const-string v10, "setContentVisible"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x2d

    goto/16 :goto_414

    :sswitch_25e
    const-string v10, "clearSnapshot"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x3b

    goto/16 :goto_414

    :sswitch_26a
    const-string v10, "hideSoftKeybord"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x1d

    goto/16 :goto_414

    :sswitch_276
    const-string v10, "removeEventListener"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x2a

    goto/16 :goto_414

    :sswitch_282
    const-string v10, "getSubNViews"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x4b

    goto/16 :goto_414

    :sswitch_28e
    const-string v10, "addEventListener"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x29

    goto/16 :goto_414

    :sswitch_29a
    const-string v10, "forward"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x16

    goto/16 :goto_414

    :sswitch_2a6
    const-string v10, "setVisible"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x2c

    goto/16 :goto_414

    :sswitch_2b2
    const-string v10, "isHardwareAccelerated"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x3d

    goto/16 :goto_414

    :sswitch_2be
    const-string v10, "resume"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x53

    goto/16 :goto_414

    :sswitch_2ca
    const-string v10, "remove"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x37

    goto/16 :goto_414

    :sswitch_2d6
    const-string v10, "reload"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x1c

    goto/16 :goto_414

    :sswitch_2e2
    const-string v10, "parent"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x33

    goto/16 :goto_414

    :sswitch_2ee
    const-string v10, "opener"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x30

    goto/16 :goto_414

    :sswitch_2fa
    const-string v10, "opened"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x31

    goto/16 :goto_414

    :sswitch_306
    const-string v10, "checkRenderedContent"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x46

    goto/16 :goto_414

    :sswitch_312
    const-string v10, "interceptTouchEvent"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x4a

    goto/16 :goto_414

    :sswitch_31e
    const-string v10, "setTitleNViewButtonStyle"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x27

    goto/16 :goto_414

    :sswitch_32a
    const-string v10, "setPreloadJsFile"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0xb

    goto/16 :goto_414

    :sswitch_336
    const-string v10, "setTitleNViewButtonBadge"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x20

    goto/16 :goto_414

    :sswitch_342
    const-string v10, "removeFromParent"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x32

    goto/16 :goto_414

    :sswitch_34e
    const-string v10, "getUrl"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0xa

    goto/16 :goto_414

    :sswitch_35a
    const-string v10, "resetBounce"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/4 v3, 0x4

    goto/16 :goto_414

    :sswitch_365
    const-string v10, "hideTitleNViewButtonRedDot"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x23

    goto/16 :goto_414

    :sswitch_371
    const-string v10, "setAssistantType"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x28

    goto/16 :goto_414

    :sswitch_37d
    const-string v10, "evalJS"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x13

    goto/16 :goto_414

    :sswitch_389
    const-string v10, "setSoftinputTemporary"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x51

    goto/16 :goto_414

    :sswitch_395
    const-string v10, "getNavigationbar"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x40

    goto/16 :goto_414

    :sswitch_3a1
    const-string v10, "append"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x38

    goto/16 :goto_414

    :sswitch_3ad
    const-string v10, "setRenderedEventOptions"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x49

    goto :goto_414

    :sswitch_3b8
    const-string v10, "showSoftKeybord"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x1e

    goto :goto_414

    :sswitch_3c3
    const-string v10, "appendPreloadJsFile"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0xc

    goto :goto_414

    :sswitch_3ce
    const-string v10, "setTitleNViewSearchInputFocus"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x24

    goto :goto_414

    :sswitch_3d9
    const-string v10, "captureSnapshot"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x3a

    goto :goto_414

    :sswitch_3e4
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x4d

    goto :goto_414

    :sswitch_3ed
    const-string v10, "listenResourceLoading"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0xd

    goto :goto_414

    :sswitch_3f8
    const-string v10, "canForward"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    const/16 v3, 0x18

    goto :goto_414

    :sswitch_403
    const-string v10, "getTitleNView"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_409
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_409} :catch_40e

    if-eqz v3, :cond_413

    const/16 v3, 0x41

    goto :goto_414

    :catch_40e
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    goto/16 :goto_d70

    :cond_413
    :goto_413
    const/4 v3, -0x1

    :goto_414
    const-string v10, "nativeobj"

    const-string v6, ""

    move-object/from16 v18, v14

    const-string v14, "{\'uuid\':%s,\'id\':%s}"

    move-object/from16 v19, v5

    const-string v5, "bounce_register"

    move-object/from16 p2, v5

    const-string v5, "pull_down_refresh"

    const-string v20, "undefined"

    packed-switch v3, :pswitch_data_ecc

    :cond_429
    :goto_429
    const/4 v6, 0x0

    goto/16 :goto_d73

    .line 903
    :pswitch_42c
    :try_start_42c
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_429

    .line 905
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->isPause()Z

    move-result v2

    invoke-static {v2}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_833

    .line 906
    :pswitch_43e
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_429

    .line 908
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->resume()V

    goto :goto_429

    .line 909
    :pswitch_44a
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_429

    .line 911
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->pause()V

    goto :goto_429

    .line 912
    :pswitch_456
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    const/4 v3, 0x0

    .line 913
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 914
    invoke-static {}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getInstance()Lio/dcloud/common/core/ui/DCKeyboardManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lio/dcloud/common/core/ui/DCKeyboardManager;->setHTMLInputRect(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto :goto_429

    .line 915
    :pswitch_469
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2, v15}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 916
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_429

    const/4 v3, 0x0

    .line 917
    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_833

    :pswitch_480
    const/4 v2, 0x0

    .line 918
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 919
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v13, v2}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_429

    .line 920
    :pswitch_48f
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2, v12}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 921
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_429

    const/4 v3, 0x0

    .line 922
    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_833

    :pswitch_4a6
    const/4 v2, 0x0

    .line 923
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 924
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v8, v2}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_429

    .line 925
    :pswitch_4b6
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    instance-of v3, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v3, :cond_429

    .line 926
    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/util/SubNViewsUtil;->updateSubNViews(Lio/dcloud/common/adapter/ui/AdaFrameView;Lorg/json/JSONArray;)V

    goto/16 :goto_429

    .line 927
    :pswitch_4c8
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    instance-of v3, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v3, :cond_429

    .line 928
    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 929
    iget-object v3, v2, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->mChildNativeViewList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4fc

    .line 931
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 932
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4dd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/DHInterface/INativeView;

    .line 933
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/INativeView;->toJSON()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4dd

    .line 935
    :cond_4f1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_833

    .line 936
    :cond_4fc
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    iget-object v3, v3, Lio/dcloud/common/adapter/util/ViewOptions;->mSubNViews:Lorg/json/JSONArray;

    if-eqz v3, :cond_429

    .line 937
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mSubNViews:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_833

    :pswitch_515
    const/4 v2, 0x0

    .line 938
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 939
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IFrameView;->interceptTouchEvent(Z)V

    goto/16 :goto_429

    :pswitch_529
    const/4 v2, 0x0

    .line 940
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_52e
    .catch Ljava/lang/Exception; {:try_start_42c .. :try_end_52e} :catch_40e

    const-string v3, "type"

    .line 941
    :try_start_530
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->U:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/dcloud/feature/ui/c;->U:Ljava/lang/String;
    :try_end_538
    .catch Ljava/lang/Exception; {:try_start_530 .. :try_end_538} :catch_40e

    const-string v3, "interval"

    .line 942
    :try_start_53a
    iget v4, v1, Lio/dcloud/feature/ui/c;->V:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lio/dcloud/feature/ui/c;->V:I

    goto/16 :goto_429

    .line 943
    :pswitch_544
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->restore()V

    goto/16 :goto_429

    :pswitch_54b
    const/4 v3, 0x0

    .line 944
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    .line 945
    invoke-static {v4, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v4

    .line 946
    iget-object v5, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v5, v2, v3, v4}, Lio/dcloud/common/DHInterface/IFrameView;->animate(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_429

    .line 947
    :pswitch_55c
    invoke-direct {v1, v2, v4}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    goto/16 :goto_429

    :pswitch_561
    const/4 v2, 0x1

    .line 948
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 949
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v3, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v3

    if-nez v3, :cond_429

    .line 951
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;
    :try_end_570
    .catch Ljava/lang/Exception; {:try_start_53a .. :try_end_570} :catch_40e

    const/4 v4, 0x0

    :try_start_571
    invoke-virtual {v3, v2, v2, v4}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v2
    :try_end_575
    .catch Ljava/lang/Exception; {:try_start_571 .. :try_end_575} :catch_7a9

    .line 953
    :try_start_575
    invoke-direct {v1, v2, v1, v9}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/b;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V

    goto/16 :goto_429

    :pswitch_57a
    const/4 v2, 0x0

    .line 954
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 955
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_429

    .line 956
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3
    :try_end_58b
    .catch Ljava/lang/Exception; {:try_start_575 .. :try_end_58b} :catch_40e

    const/4 v4, 0x0

    :try_start_58c
    invoke-interface {v3, v4, v2}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58f
    .catch Ljava/lang/Exception; {:try_start_58c .. :try_end_58f} :catch_7a9

    goto/16 :goto_429

    .line 957
    :pswitch_591
    :try_start_591
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    const-string v3, "true"

    .line 958
    invoke-interface {v2, v11, v3}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59c
    .catch Ljava/lang/Exception; {:try_start_591 .. :try_end_59c} :catch_40e

    const-string v8, "false"

    goto/16 :goto_d74

    :pswitch_5a0
    const/4 v3, 0x0

    .line 959
    :try_start_5a1
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v3, 0x1

    .line 960
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v3, 0x2

    .line 961
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x3

    .line 962
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_429

    const-string v3, "direction"

    .line 965
    invoke-static {v5, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_429

    const-string v3, "moveMode"

    invoke-static {v5, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_429

    .line 966
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    const-string v9, "view"

    .line 968
    invoke-static {v7, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 969
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5e9

    .line 970
    iget-object v11, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v11, v6, v9, v9}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v6

    goto :goto_5ea

    :cond_5e9
    const/4 v6, 0x0

    :goto_5ea
    if-nez v6, :cond_61e

    .line 974
    iget-object v11, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v11, v11, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v12, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v2, 0x1

    aput-object v10, v13, v2

    const-string v2, "getNativeView"

    const/4 v10, 0x2

    aput-object v2, v13, v10

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v14, 0x0

    aput-object v10, v2, v14

    const/4 v10, 0x1

    aput-object v9, v2, v10

    const/4 v9, 0x3

    aput-object v2, v13, v9

    const/16 v2, 0xa

    invoke-interface {v11, v12, v2, v13}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_61e

    .line 975
    instance-of v9, v2, Landroid/view/View;

    if-eqz v9, :cond_61e

    .line 976
    check-cast v2, Landroid/view/View;

    move-object/from16 v23, v2

    goto :goto_620

    :cond_61e
    const/16 v23, 0x0

    .line 979
    :goto_620
    iget-object v2, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v2, v8, v8, v8}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v2

    if-nez v6, :cond_62b

    const/16 v20, 0x0

    goto :goto_62f

    .line 980
    :cond_62b
    iget-object v6, v6, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    move-object/from16 v20, v6

    :goto_62f
    if-nez v2, :cond_634

    const/16 v21, 0x0

    goto :goto_638

    :cond_634
    iget-object v2, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    move-object/from16 v21, v2

    :goto_638
    if-eqz v4, :cond_63d

    move-object/from16 v22, v4

    goto :goto_63f

    :cond_63d
    const/16 v22, 0x0

    :goto_63f
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    invoke-virtual/range {v17 .. v23}, Lio/dcloud/common/adapter/util/ViewOptions;->setDragData(Lorg/json/JSONObject;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IFrameView;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_429

    .line 981
    :pswitch_64a
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 982
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    .line 983
    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v10, v5, v6

    const-string v6, "getNativeView"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v2, 0x3

    aput-object v6, v5, v2

    const/16 v2, 0xa

    .line 984
    invoke-interface {v3, v4, v2, v5}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_429

    .line 987
    instance-of v3, v2, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v3, :cond_429

    .line 988
    check-cast v2, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/INativeView;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_429

    .line 990
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_833

    .line 991
    :pswitch_696
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    const/4 v3, 0x0

    .line 992
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setFixBottom(I)V

    goto/16 :goto_429

    :pswitch_6ae
    const/4 v3, 0x0

    .line 993
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 994
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_429

    .line 995
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 996
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3
    :try_end_6c7
    .catch Ljava/lang/Exception; {:try_start_5a1 .. :try_end_6c7} :catch_40e

    const/4 v4, 0x0

    :try_start_6c8
    invoke-interface {v3, v2, v4}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6cb
    .catch Ljava/lang/Exception; {:try_start_6c8 .. :try_end_6cb} :catch_7a9

    goto/16 :goto_429

    .line 997
    :pswitch_6cd
    :try_start_6cd
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 998
    iget-boolean v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mUseHardwave:Z

    invoke-static {v2}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_833

    .line 999
    :pswitch_6dd
    invoke-direct {v1, v2, v4, v1}, Lio/dcloud/feature/ui/c;->c(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_429

    :pswitch_6e2
    const/4 v2, 0x0

    .line 1000
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1001
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IFrameView;->clearSnapshot(Ljava/lang/String;)V

    goto/16 :goto_429

    .line 1002
    :pswitch_6ee
    invoke-virtual {v1, v2, v4, v1}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_429

    :pswitch_6f3
    const/4 v3, 0x1

    .line 1003
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    .line 1004
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v4

    .line 1005
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_f7a

    goto :goto_737

    :sswitch_705
    const-string v3, "Maps"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_737

    const/4 v6, 0x0

    goto :goto_738

    :sswitch_70f
    const-string v3, "Ad"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_737

    const/4 v6, 0x4

    goto :goto_738

    :sswitch_719
    const-string v3, "barcode"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_737

    const/4 v6, 0x1

    goto :goto_738

    :sswitch_723
    const-string v3, "LivePusher"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_737

    const/4 v6, 0x3

    goto :goto_738

    :sswitch_72d
    const-string v3, "VideoPlayer"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_737

    const/4 v6, 0x2

    goto :goto_738

    :cond_737
    :goto_737
    const/4 v6, -0x1

    :goto_738
    if-eqz v6, :cond_76b

    const/4 v3, 0x1

    if-eq v6, v3, :cond_763

    const/4 v3, 0x2

    if-eq v6, v3, :cond_75b

    const/4 v3, 0x3

    if-eq v6, v3, :cond_753

    const/4 v3, 0x4

    if-eq v6, v3, :cond_74b

    .line 1027
    invoke-virtual {v1, v2, v5}, Lio/dcloud/feature/ui/c;->e(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_429

    .line 1028
    :cond_74b
    invoke-virtual {v1, v2, v5}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 1029
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->j()V

    goto/16 :goto_429

    .line 1030
    :cond_753
    invoke-virtual {v1, v2, v5}, Lio/dcloud/feature/ui/c;->c(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 1031
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->j()V

    goto/16 :goto_429

    .line 1032
    :cond_75b
    invoke-virtual {v1, v2, v5}, Lio/dcloud/feature/ui/c;->f(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 1033
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->j()V

    goto/16 :goto_429

    .line 1034
    :cond_763
    invoke-virtual {v1, v2, v5}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 1035
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->j()V

    goto/16 :goto_429

    .line 1036
    :cond_76b
    invoke-virtual {v1, v2, v5}, Lio/dcloud/feature/ui/c;->d(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 1037
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->j()V

    goto/16 :goto_429

    :pswitch_773
    const/4 v2, 0x1

    .line 1038
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 1039
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v3, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v3

    if-nez v3, :cond_787

    .line 1041
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;
    :try_end_782
    .catch Ljava/lang/Exception; {:try_start_6cd .. :try_end_782} :catch_40e

    const/4 v4, 0x0

    :try_start_783
    invoke-virtual {v3, v2, v2, v4}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v3
    :try_end_787
    .catch Ljava/lang/Exception; {:try_start_783 .. :try_end_787} :catch_7a9

    .line 1043
    :cond_787
    :try_start_787
    invoke-virtual {v1, v3}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/feature/ui/b;)Z

    move-result v2

    if-nez v2, :cond_429

    if-eqz v3, :cond_429

    .line 1045
    invoke-virtual {v1, v3}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/b;)V

    goto/16 :goto_429

    :pswitch_794
    const/4 v2, 0x0

    .line 1046
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 1047
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v3, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v3

    if-nez v3, :cond_7ae

    .line 1049
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;
    :try_end_7a3
    .catch Ljava/lang/Exception; {:try_start_787 .. :try_end_7a3} :catch_40e

    const/4 v4, 0x0

    :try_start_7a4
    invoke-virtual {v3, v2, v2, v4}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v3
    :try_end_7a8
    .catch Ljava/lang/Exception; {:try_start_7a4 .. :try_end_7a8} :catch_7a9

    goto :goto_7ae

    :catch_7a9
    move-exception v0

    move-object v2, v0

    move-object v6, v4

    goto/16 :goto_d70

    .line 1051
    :cond_7ae
    :goto_7ae
    :try_start_7ae
    invoke-virtual {v1, v3}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/feature/ui/b;)Z

    move-result v2

    if-eqz v2, :cond_429

    .line 1052
    invoke-virtual {v1, v3}, Lio/dcloud/feature/ui/c;->c(Lio/dcloud/feature/ui/b;)V

    goto/16 :goto_429

    :pswitch_7b9
    const/4 v3, 0x1

    .line 1053
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 1054
    invoke-virtual {v1, v2, v3}, Lio/dcloud/feature/ui/c;->h(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_429

    :pswitch_7c3
    const/4 v2, 0x0

    .line 1055
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1056
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_7cd
    .catch Ljava/lang/Exception; {:try_start_7ae .. :try_end_7cd} :catch_40e

    const-string v4, "text/html"

    const-string v5, "utf-8"

    if-eqz v3, :cond_7f1

    :try_start_7d3
    const-string v7, "encoding"

    .line 1061
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lio/dcloud/common/util/PdrUtil;->getNonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "mimeType"

    .line 1062
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lio/dcloud/common/util/PdrUtil;->getNonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "baseURL"

    .line 1063
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lio/dcloud/common/util/PdrUtil;->getNonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1065
    :cond_7f1
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v6, v2, v4, v5}, Lio/dcloud/common/DHInterface/IWebview;->loadContentData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_429

    .line 1066
    :pswitch_7fc
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    invoke-static {v2}, Lio/dcloud/feature/ui/c;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    goto :goto_833

    .line 1067
    :pswitch_803
    iget-object v2, v1, Lio/dcloud/feature/ui/b;->a:Lio/dcloud/feature/ui/c;

    if-eqz v2, :cond_80c

    .line 1068
    invoke-virtual {v2}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_833

    :cond_80c
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v20, v2, v3

    const/4 v4, 0x1

    aput-object v20, v2, v4

    .line 1070
    invoke-static {v14, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_833

    .line 1071
    :pswitch_81e
    iget-object v2, v1, Lio/dcloud/feature/ui/b;->a:Lio/dcloud/feature/ui/c;

    if-eqz v2, :cond_429

    .line 1073
    invoke-virtual {v2, v1}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/feature/ui/b;)Z

    move-result v3

    if-eqz v3, :cond_429

    .line 1074
    invoke-virtual {v2, v1}, Lio/dcloud/feature/ui/c;->c(Lio/dcloud/feature/ui/b;)V

    goto/16 :goto_429

    .line 1075
    :pswitch_82d
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->T:Ljava/util/ArrayList;

    invoke-static {v2}, Lio/dcloud/feature/ui/c;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    :goto_833
    move-object v8, v2

    goto/16 :goto_d74

    .line 1076
    :pswitch_836
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->S:Lio/dcloud/feature/ui/c;

    if-eqz v2, :cond_83f

    .line 1077
    invoke-virtual {v2}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_833

    :cond_83f
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v20, v2, v3

    const/4 v4, 0x1

    aput-object v20, v2, v4

    .line 1079
    invoke-static {v14, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_833

    .line 1080
    :pswitch_851
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainPageTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_833

    :pswitch_861
    const/4 v2, 0x0

    .line 1081
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 1082
    invoke-virtual {v1, v2}, Lio/dcloud/feature/ui/c;->c(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/feature/ui/b;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_833

    :pswitch_86f
    const/4 v2, 0x0

    .line 1083
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    .line 1085
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    if-eqz v2, :cond_881

    sget v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->VISIBLE:I

    goto :goto_883

    :cond_881
    sget v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->GONE:I

    :goto_883
    invoke-virtual {v3, v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setVisibility(I)V

    .line 1086
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setBgcolor(I)V

    goto/16 :goto_429

    :pswitch_892
    const/4 v2, 0x0

    .line 1087
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    .line 1088
    iput-boolean v2, v1, Lio/dcloud/feature/ui/c;->F:Z

    .line 1089
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lio/dcloud/common/DHInterface/IFrameView;->setVisible(ZZ)V

    goto/16 :goto_429

    .line 1090
    :pswitch_8a1
    iget-boolean v2, v1, Lio/dcloud/feature/ui/c;->F:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_833

    :pswitch_8ad
    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1092
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1093
    invoke-virtual {v1, v3, v2}, Lio/dcloud/feature/ui/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_429

    :pswitch_8bc
    const/4 v3, 0x0

    .line 1094
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    .line 1095
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1096
    iget-object v5, v1, Lio/dcloud/feature/ui/b;->b:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewANID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v2}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->unReceiveTitle()Z

    move-result v2

    if-nez v2, :cond_429

    move-object/from16 v2, v19

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_429

    .line 1098
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/dcloud/feature/ui/c;->onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_429

    :pswitch_8f8
    const/4 v2, 0x0

    .line 1099
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->setAssistantType(Ljava/lang/String;)V

    goto/16 :goto_429

    .line 1102
    :pswitch_906
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1103
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v5, v6, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1104
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_429

    .line 1105
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2, v3, v4, v5}, Lio/dcloud/common/util/TitleNViewUtil;->setTitleNViewButtonStyle(Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IFrameView;)V

    goto/16 :goto_429

    .line 1106
    :pswitch_931
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1107
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    iget-object v5, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v4, v5, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1108
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_429

    .line 1109
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewSearchInputText(Lio/dcloud/common/DHInterface/ITitleNView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_833

    .line 1110
    :pswitch_955
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1111
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v5, v6, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1112
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_429

    .line 1113
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/util/TitleNViewUtil;->setTitleNViewSearchInputText(Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;)V

    goto/16 :goto_429

    .line 1114
    :pswitch_979
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1115
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v5, v6, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1116
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_429

    .line 1117
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/util/TitleNViewUtil;->setTitleNViewSearchInputFocus(Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;)V

    goto/16 :goto_429

    .line 1118
    :pswitch_99d
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1119
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v5, v6, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1120
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_429

    .line 1121
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lio/dcloud/common/util/TitleNViewUtil;->titleNViewButtonRedDot(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Z)V

    goto/16 :goto_429

    .line 1122
    :pswitch_9c1
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1123
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v5, v6, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1124
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_429

    .line 1125
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lio/dcloud/common/util/TitleNViewUtil;->titleNViewButtonRedDot(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Z)V

    goto/16 :goto_429

    .line 1126
    :pswitch_9e6
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1127
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v5, v6, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1128
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_429

    .line 1129
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lio/dcloud/common/util/TitleNViewUtil;->titleNViewButtonBadge(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Z)V

    goto/16 :goto_429

    .line 1130
    :pswitch_a0a
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1131
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v5, v6, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1132
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_429

    .line 1133
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lio/dcloud/common/util/TitleNViewUtil;->titleNViewButtonBadge(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Z)V

    goto/16 :goto_429

    :pswitch_a2f
    const/4 v2, 0x0

    .line 1134
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 1135
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_429

    .line 1136
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lio/dcloud/common/adapter/util/DeviceInfo;->isVolumeButtonEnabled:Z

    goto/16 :goto_429

    .line 1137
    :pswitch_a46
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/adapter/util/DeviceInfo;->showIME(Landroid/view/View;)V

    goto/16 :goto_429

    .line 1138
    :pswitch_a51
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/adapter/util/DeviceInfo;->hideIME(Landroid/view/View;)V

    goto/16 :goto_429

    :pswitch_a5c
    const/4 v2, 0x0

    .line 1139
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v2}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v2

    .line 1140
    invoke-virtual {v1, v1, v2}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/c;Z)V

    goto/16 :goto_429

    .line 1141
    :pswitch_a6b
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->stopLoading()V

    goto/16 :goto_429

    .line 1142
    :pswitch_a76
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_429

    .line 1144
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 1145
    invoke-static {v4, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 1146
    invoke-static {v4, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1147
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v6

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v6

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NWindow.load "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    if-eqz v4, :cond_ad9

    .line 1150
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_ad9

    .line 1151
    new-instance v7, Ljava/util/HashMap;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 1152
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 1153
    :goto_ac5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ada

    .line 1154
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1155
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ac5

    :cond_ad9
    const/4 v7, 0x0

    .line 1159
    :cond_ada
    instance-of v4, v2, Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v4, :cond_b08

    .line 1160
    move-object v4, v2

    check-cast v4, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v4, v6}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkOverrideUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b08

    .line 1161
    check-cast v2, Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v2, v2, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{url:\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-virtual {v2, v4, v3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    return-object v2

    .line 1166
    :cond_b08
    invoke-interface {v2, v5, v7}, Lio/dcloud/common/DHInterface/IWebview;->setLoadURLHeads(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1167
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2, v5}, Lio/dcloud/common/DHInterface/IWebview;->setOriginalUrl(Ljava/lang/String;)V

    .line 1168
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2, v6}, Lio/dcloud/common/DHInterface/IWebview;->reload(Ljava/lang/String;)V

    .line 1170
    invoke-direct {v1, v1, v3}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/c;Ljava/lang/String;)V

    goto/16 :goto_429

    .line 1171
    :pswitch_b22
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    .line 1172
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->clearHistory()V

    goto/16 :goto_429

    :pswitch_b2d
    const/4 v3, 0x0

    .line 1173
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 1174
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    .line 1175
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->canGoForward()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_429

    :pswitch_b4b
    const/4 v3, 0x0

    .line 1176
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 1177
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    .line 1178
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->canGoBack()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_429

    .line 1179
    :pswitch_b69
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    .line 1180
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->stopLoading()V

    const/4 v3, 0x1

    .line 1181
    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->goBackOrForward(I)V

    goto/16 :goto_429

    .line 1182
    :pswitch_b78
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    .line 1183
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->stopLoading()V

    const/4 v3, -0x1

    .line 1184
    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->goBackOrForward(I)V

    goto/16 :goto_429

    .line 1185
    :pswitch_b87
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v7, v2, v5

    const/4 v2, 0x0

    if-nez v7, :cond_ba2

    const/4 v6, 0x1

    goto :goto_ba3

    :cond_ba2
    const/4 v6, 0x0

    .line 1186
    :goto_ba3
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 1187
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    if-eqz v6, :cond_bb9

    .line 1189
    new-instance v4, Lio/dcloud/feature/ui/c$c;

    invoke-direct {v4, v1, v3, v2}, Lio/dcloud/feature/ui/c$c;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {v4}, Lio/dcloud/common/adapter/util/MessageHandler;->post(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    return-object v2

    .line 1199
    :cond_bb9
    new-instance v4, Lio/dcloud/feature/ui/c$d;

    invoke-direct {v4, v1, v3, v2}, Lio/dcloud/feature/ui/c$d;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {v4}, Lio/dcloud/common/adapter/util/MessageHandler;->postAndWait(Lio/dcloud/common/adapter/util/MessageHandler$UncheckedCallable;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_429

    .line 1220
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_833

    :pswitch_bce
    const/4 v3, 0x0

    .line 1221
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 1222
    iget-object v5, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    const/4 v6, 0x1

    .line 1224
    invoke-static {v4, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v4

    .line 1225
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bed

    .line 1226
    new-instance v6, Lio/dcloud/feature/ui/c$b;

    invoke-direct {v6, v1, v2, v4}, Lio/dcloud/feature/ui/c$b;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {v3, v6}, Lio/dcloud/common/adapter/ui/ReceiveJSValue;->registerCallback(Ljava/lang/String;Lio/dcloud/common/adapter/ui/ReceiveJSValue$ReceiveJSValueCallback;)Ljava/lang/String;

    move-result-object v3

    .line 1250
    :cond_bed
    invoke-interface {v5, v3}, Lio/dcloud/common/DHInterface/IWebview;->evalJS(Ljava/lang/String;)V

    goto/16 :goto_429

    .line 1251
    :pswitch_bf2
    invoke-virtual {v1, v2, v4, v1}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_429

    .line 1252
    :pswitch_bf7
    invoke-virtual {v1, v2, v4, v1, v9}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V

    goto/16 :goto_429

    .line 1253
    :pswitch_bfc
    invoke-direct {v1, v2, v4, v1}, Lio/dcloud/feature/ui/c;->d(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_429

    :pswitch_c01
    const/4 v3, 0x0

    .line 1254
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v5, 0x1

    .line 1255
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/feature/ui/c;->O:Ljava/lang/String;

    .line 1256
    iput-object v2, v1, Lio/dcloud/feature/ui/c;->P:Lio/dcloud/common/DHInterface/IWebview;

    .line 1257
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setOverrideUrlLoadingData(Lorg/json/JSONObject;)V

    goto/16 :goto_429

    :pswitch_c1a
    const/4 v2, 0x0

    .line 1258
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 1259
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->setOverrideResourceRequest(Lorg/json/JSONArray;)V

    goto/16 :goto_429

    :pswitch_c2a
    const/4 v3, 0x0

    .line 1260
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v5, 0x1

    .line 1261
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/feature/ui/c;->Q:Ljava/lang/String;

    .line 1262
    iput-object v2, v1, Lio/dcloud/feature/ui/c;->R:Lio/dcloud/common/DHInterface/IWebview;

    .line 1263
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setListenResourceLoading(Lorg/json/JSONObject;)V

    goto/16 :goto_429

    :pswitch_c43
    const/4 v3, 0x0

    .line 1264
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 1265
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1266
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    goto/16 :goto_429

    :pswitch_c61
    const/4 v3, 0x0

    .line 1267
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 1268
    invoke-virtual {v4, v6, v3}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v3

    .line 1269
    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_429

    .line 1270
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v5}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1271
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setPreloadJsFile(Ljava/lang/String;Z)V

    goto/16 :goto_429

    .line 1272
    :pswitch_c8a
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1273
    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_833

    :pswitch_c9b
    const/4 v3, 0x0

    .line 1274
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 1275
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->n()Ljava/lang/String;

    move-result-object v4

    .line 1276
    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_429

    .line 1277
    :pswitch_caf
    invoke-direct {v1, v2, v4, v1}, Lio/dcloud/feature/ui/c;->e(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_429

    .line 1278
    :pswitch_cb4
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 1279
    invoke-virtual {v2}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v3

    if-eqz v3, :cond_ccc

    .line 1280
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 1282
    :cond_ccc
    new-instance v3, Lorg/json/JSONObject;

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v16

    .line 1284
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ceb

    .line 1285
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1286
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "background"

    .line 1287
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1289
    :cond_ceb
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_833

    :pswitch_cf6
    const/4 v2, 0x0

    .line 1290
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 1291
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    const-string v4, "blockNetworkImage"

    invoke-interface {v3, v4, v2}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_429

    .line 1292
    :pswitch_d06
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->endWebViewEvent(Ljava/lang/String;)V

    goto/16 :goto_429

    :pswitch_d13
    move-object/from16 v3, p2

    const/4 v2, 0x0

    .line 1293
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1294
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->setWebViewEvent(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_429

    .line 1295
    :pswitch_d25
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2, v5}, Lio/dcloud/common/DHInterface/IWebview;->endWebViewEvent(Ljava/lang/String;)V
    :try_end_d2e
    .catch Ljava/lang/Exception; {:try_start_7d3 .. :try_end_d2e} :catch_40e

    goto/16 :goto_429

    .line 1296
    :pswitch_d30
    :try_start_d30
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    const-string v3, "pull_down_refresh_begin"
    :try_end_d38
    .catch Ljava/lang/Exception; {:try_start_d30 .. :try_end_d38} :catch_d6d

    const/4 v6, 0x0

    :try_start_d39
    invoke-interface {v2, v3, v6}, Lio/dcloud/common/DHInterface/IWebview;->setWebViewEvent(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d3c
    .catch Ljava/lang/Exception; {:try_start_d39 .. :try_end_d3c} :catch_d6b

    goto :goto_d73

    :pswitch_d3d
    const/4 v6, 0x0

    const-string v2, "View_Visible_Path"

    .line 1297
    :try_start_d40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshLoadingViewsSize setPullToRefresh args="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1298
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    .line 1299
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 1300
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    .line 1303
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v5, v2}, Lio/dcloud/common/DHInterface/IWebview;->setWebViewEvent(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d6a
    .catch Ljava/lang/Exception; {:try_start_d40 .. :try_end_d6a} :catch_d6b

    goto :goto_d73

    :catch_d6b
    move-exception v0

    goto :goto_d6f

    :catch_d6d
    move-exception v0

    const/4 v6, 0x0

    :goto_d6f
    move-object v2, v0

    .line 1984
    :goto_d70
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d73
    move-object v8, v6

    :goto_d74
    return-object v8

    nop

    :sswitch_data_d76
    .sparse-switch
        -0x7c6fdb4f -> :sswitch_403
        -0x7c0dbf2b -> :sswitch_3f8
        -0x7a44d379 -> :sswitch_3ed
        -0x78570760 -> :sswitch_3e4
        -0x6c3ba4d6 -> :sswitch_3d9
        -0x6416b82d -> :sswitch_3ce
        -0x5ae82b2c -> :sswitch_3c3
        -0x5802f0a9 -> :sswitch_3b8
        -0x55277c85 -> :sswitch_3ad
        -0x541b30e6 -> :sswitch_3a1
        -0x52cffa37 -> :sswitch_395
        -0x4d314fad -> :sswitch_389
        -0x4cf9fd1b -> :sswitch_37d
        -0x4c39060a -> :sswitch_371
        -0x4b568ef9 -> :sswitch_365
        -0x4b547749 -> :sswitch_35a
        -0x4a7789c7 -> :sswitch_34e
        -0x47d6db68 -> :sswitch_342
        -0x477ebf6c -> :sswitch_336
        -0x477b4374 -> :sswitch_32a
        -0x46863d5e -> :sswitch_31e
        -0x41313b03 -> :sswitch_312
        -0x3fad9824 -> :sswitch_306
        -0x3c3c3797 -> :sswitch_2fa
        -0x3c3c3789 -> :sswitch_2ee
        -0x3b54f756 -> :sswitch_2e2
        -0x37b57e67 -> :sswitch_2d6
        -0x37b5077c -> :sswitch_2ca
        -0x37b237d3 -> :sswitch_2be
        -0x3592d76b -> :sswitch_2b2
        -0x32ef8650 -> :sswitch_2a6
        -0x285c6d3b -> :sswitch_29a
        -0x254d19b3 -> :sswitch_28e
        -0x21c155b6 -> :sswitch_282
        -0x204670b6 -> :sswitch_276
        -0x1cb1a00e -> :sswitch_26a
        -0x1b05accf -> :sswitch_25e
        -0x1872c145 -> :sswitch_252
        -0x17e553b8 -> :sswitch_246
        -0x170868e0 -> :sswitch_23a
        -0xf0544a3 -> :sswitch_22e
        -0xefef4f2 -> :sswitch_222
        -0x945e500 -> :sswitch_216
        -0x6bcc818 -> :sswitch_20a
        -0x27467cb -> :sswitch_200
        -0x18b930e -> :sswitch_1f5
        0x2e04e7 -> :sswitch_1e9
        0x2f2d34 -> :sswitch_1dd
        0x2f2d44 -> :sswitch_1d1
        0x30dd42 -> :sswitch_1c5
        0x32c4e6 -> :sswitch_1b9
        0x35dafd -> :sswitch_1ad
        0x360802 -> :sswitch_1a1
        0x11431b9 -> :sswitch_197
        0x5a5b64d -> :sswitch_18b
        0x5a5ddf8 -> :sswitch_17f
        0x5da4d8a -> :sswitch_174
        0x65825f6 -> :sswitch_168
        0x10d2e697 -> :sswitch_15c
        0x1712be00 -> :sswitch_151
        0x1c16df77 -> :sswitch_146
        0x1e5a2e5e -> :sswitch_13a
        0x20bc90d7 -> :sswitch_12e
        0x26abf237 -> :sswitch_122
        0x28e1ab6b -> :sswitch_117
        0x2de6c535 -> :sswitch_10b
        0x33d49341 -> :sswitch_101
        0x406fccb8 -> :sswitch_f6
        0x47159ef3 -> :sswitch_ea
        0x4d3f205e -> :sswitch_de
        0x4ff8c0f0 -> :sswitch_d2
        0x505da082 -> :sswitch_c6
        0x50d25f2c -> :sswitch_bc
        0x53b6de6f -> :sswitch_b0
        0x5a812e16 -> :sswitch_a4
        0x5d584db2 -> :sswitch_98
        0x6232bdd9 -> :sswitch_8d
        0x62ea5dff -> :sswitch_81
        0x682686d2 -> :sswitch_75
        0x6dfa45b0 -> :sswitch_69
        0x6f9d73d1 -> :sswitch_5f
        0x739c0c9b -> :sswitch_53
        0x7531c8a2 -> :sswitch_47
        0x76c5fc8d -> :sswitch_3b
        0x7b40d2ec -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_ecc
    .packed-switch 0x0
        :pswitch_d3d
        :pswitch_d30
        :pswitch_d25
        :pswitch_d13
        :pswitch_d06
        :pswitch_cf6
        :pswitch_cb4
        :pswitch_caf
        :pswitch_caf
        :pswitch_c9b
        :pswitch_c8a
        :pswitch_c61
        :pswitch_c43
        :pswitch_c2a
        :pswitch_c1a
        :pswitch_c01
        :pswitch_bfc
        :pswitch_bf7
        :pswitch_bf2
        :pswitch_bce
        :pswitch_b87
        :pswitch_b78
        :pswitch_b69
        :pswitch_b4b
        :pswitch_b2d
        :pswitch_b22
        :pswitch_a76
        :pswitch_a6b
        :pswitch_a5c
        :pswitch_a51
        :pswitch_a46
        :pswitch_a2f
        :pswitch_a0a
        :pswitch_9e6
        :pswitch_9c1
        :pswitch_99d
        :pswitch_979
        :pswitch_955
        :pswitch_931
        :pswitch_906
        :pswitch_8f8
        :pswitch_8bc
        :pswitch_8ad
        :pswitch_8a1
        :pswitch_892
        :pswitch_86f
        :pswitch_861
        :pswitch_851
        :pswitch_836
        :pswitch_82d
        :pswitch_81e
        :pswitch_803
        :pswitch_7fc
        :pswitch_7c3
        :pswitch_7b9
        :pswitch_794
        :pswitch_773
        :pswitch_6f3
        :pswitch_6ee
        :pswitch_6e2
        :pswitch_6dd
        :pswitch_6cd
        :pswitch_6ae
        :pswitch_696
        :pswitch_64a
        :pswitch_64a
        :pswitch_5a0
        :pswitch_591
        :pswitch_57a
        :pswitch_561
        :pswitch_55c
        :pswitch_54b
        :pswitch_544
        :pswitch_529
        :pswitch_515
        :pswitch_4c8
        :pswitch_4b6
        :pswitch_4a6
        :pswitch_48f
        :pswitch_480
        :pswitch_469
        :pswitch_456
        :pswitch_44a
        :pswitch_43e
        :pswitch_42c
    .end packed-switch

    :sswitch_data_f7a
    .sparse-switch
        -0x640344e4 -> :sswitch_72d
        -0x5a568a8d -> :sswitch_723
        -0x13e21780 -> :sswitch_719
        0x843 -> :sswitch_70f
        0x247ab7 -> :sswitch_705
    .end sparse-switch
.end method

.method public a(IIIIII)V
    .registers 7

    return-void
.end method

.method public a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_12

    .line 3
    iput-object p1, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    .line 4
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IWebview;->initWebviewUUID(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IWebview;->setFrameId(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method protected a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 9

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "ad"

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "addNativeView"

    const/4 v5, 0x2

    aput-object p1, v2, v5

    new-array p1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v5, p1, v3

    aput-object p2, p1, v4

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/16 p1, 0xa

    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V
    .registers 8

    const/4 v0, 0x0

    .line 2167
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2168
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    .line 2169
    iget-object p3, p3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    move-object v1, v2

    goto :goto_1a

    :cond_15
    new-instance v1, Lio/dcloud/feature/ui/c$f;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/feature/ui/c$f;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 2175
    :goto_1a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_26

    :cond_21
    new-instance v2, Lio/dcloud/feature/ui/c$g;

    invoke-direct {v2, p0, p1, p2}, Lio/dcloud/feature/ui/c$g;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 2176
    :goto_26
    invoke-interface {p3, v0, v1, v2}, Lio/dcloud/common/DHInterface/IFrameView;->captureSnapshot(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V
    .registers 14

    .line 2051
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v0, p3}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/feature/ui/c;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_39

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showWebview url="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p3, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "stream_manager"

    invoke-static {v6, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    iput v5, p3, Lio/dcloud/feature/ui/c;->A:I

    .line 2054
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v0, p3}, Lio/dcloud/feature/ui/a;->f(Lio/dcloud/feature/ui/c;)V

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    .line 2055
    iput-object v0, p3, Lio/dcloud/feature/ui/c;->B:Ljava/lang/Object;

    return-void

    .line 2058
    :cond_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p3, Lio/dcloud/feature/ui/c;->u:J

    .line 2060
    iput-boolean v5, p3, Lio/dcloud/feature/ui/c;->F:Z

    .line 2061
    invoke-static {p2, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 2063
    invoke-static {p2, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v6

    .line 2064
    invoke-static {p2, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/feature/ui/c;->M:Ljava/lang/String;

    .line 2065
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 2066
    iput-object p1, p0, Lio/dcloud/feature/ui/c;->N:Lio/dcloud/common/DHInterface/IWebview;

    .line 2068
    :cond_57
    iget-object v2, p3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v2

    const-string v7, "auto"

    .line 2071
    invoke-static {v7, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const-string v8, "none"

    if-eqz v7, :cond_6c

    .line 2072
    iget-object v7, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    goto :goto_75

    :cond_6c
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    move-object v7, v8

    goto :goto_75

    :cond_74
    move-object v7, v0

    :goto_75
    iput-object v7, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    .line 2073
    invoke-static {v8, v7}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v5

    .line 2074
    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_91

    .line 2075
    iget-object v6, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string v8, "pop-in"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_99

    const/16 v6, 0x12c

    .line 2076
    iput v6, v2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    goto :goto_99

    .line 2079
    :cond_91
    iget v8, v2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    invoke-static {v6, v8}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    .line 2082
    :cond_99
    :goto_99
    iget-boolean v6, p3, Lio/dcloud/feature/ui/c;->G:Z

    if-nez v6, :cond_a2

    iget-boolean v6, p3, Lio/dcloud/feature/ui/c;->H:Z

    if-eqz v6, :cond_a2

    const/4 v7, 0x0

    .line 2085
    :cond_a2
    iget-object v6, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v6, p0}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/feature/ui/c;)I

    move-result v6

    .line 2089
    iget-object v8, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v8, p4, p3, v6}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 2093
    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p2

    .line 2095
    invoke-direct {p0, p1, p2, p3, v0}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V

    .line 2097
    iget-boolean p1, p3, Lio/dcloud/feature/ui/c;->G:Z

    if-eqz p1, :cond_c8

    .line 2098
    iput-byte v3, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 2099
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object p1, p1, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object p4, p3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/16 v0, 0x18

    invoke-interface {p1, p2, v0, p4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e1

    .line 2101
    :cond_c8
    iput-byte v4, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 2102
    iput-boolean v5, p3, Lio/dcloud/feature/ui/c;->H:Z

    .line 2104
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object p1, p1, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array p4, v1, [Ljava/lang/Object;

    iget-object v0, p3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v0, p4, v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p4, v5

    invoke-interface {p1, p2, v5, p4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2106
    :goto_e1
    iput-boolean v4, p3, Lio/dcloud/feature/ui/c;->G:Z

    .line 2107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "show "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ";webview_name="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "View_Visible_Path"

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lio/dcloud/feature/ui/b;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 9
    iget-object v1, v0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    if-nez v1, :cond_10

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    .line 13
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v15

    .line 14
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->c()B

    move-result v14

    .line 15
    sget-byte v1, Lio/dcloud/common/adapter/util/ViewRect;->POSITION_DOCK:B

    if-ne v14, v1, :cond_24

    .line 16
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->b()B

    move-result v1

    invoke-virtual {v15, v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setPosition(I)V

    goto :goto_27

    .line 18
    :cond_24
    invoke-virtual {v15, v14}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setPosition(I)V

    .line 20
    :goto_27
    iget-object v1, v0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    return-void

    .line 22
    :cond_30
    instance-of v1, v8, Lio/dcloud/feature/ui/c;

    const/4 v2, 0x0

    const-string v9, "View_Visible_Path"

    const/4 v13, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_bb

    .line 23
    move-object v1, v8

    check-cast v1, Lio/dcloud/feature/ui/c;

    .line 26
    invoke-direct {v0, v8, v1}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/b;Lio/dcloud/feature/ui/c;)V

    .line 28
    iget-object v4, v0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v4, v1}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/feature/ui/c;)Z

    move-result v4

    if-eqz v4, :cond_53

    iget-boolean v4, v0, Lio/dcloud/feature/ui/c;->F:Z

    if-eqz v4, :cond_53

    const/4 v4, 0x4

    .line 29
    iput v4, v1, Lio/dcloud/feature/ui/c;->A:I

    .line 30
    iget-object v4, v0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v4, v1}, Lio/dcloud/feature/ui/a;->f(Lio/dcloud/feature/ui/c;)V

    .line 34
    :cond_53
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v4

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_7e

    iget-boolean v4, v1, Lio/dcloud/feature/ui/c;->G:Z

    if-nez v4, :cond_7e

    .line 35
    iput-boolean v3, v1, Lio/dcloud/feature/ui/c;->F:Z

    .line 36
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4, v3, v3}, Lio/dcloud/common/DHInterface/IFrameView;->setVisible(ZZ)V

    .line 37
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    instance-of v5, v4, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v5, :cond_79

    .line 38
    check-cast v4, Lio/dcloud/common/adapter/ui/AdaFrameView;

    const-string v5, "child_initialize_show"

    invoke-virtual {v4, v5, v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_79
    const-string v4, "NWindow.appendView childView set visible true"

    .line 40
    invoke-static {v9, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_7e
    iget-object v4, v0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v5, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v4, v5}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/common/DHInterface/IFrameView;)V

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "append "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-boolean v3, v1, Lio/dcloud/feature/ui/c;->K:Z

    .line 48
    iput-boolean v3, v1, Lio/dcloud/feature/ui/c;->H:Z

    .line 49
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    if-eqz v4, :cond_c8

    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 50
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    goto :goto_c8

    .line 52
    :cond_bb
    instance-of v1, v8, Lio/dcloud/feature/ui/d;

    if-eqz v1, :cond_ca

    .line 53
    move-object v1, v8

    check-cast v1, Lio/dcloud/feature/ui/d;

    .line 54
    invoke-virtual {v1}, Lio/dcloud/feature/ui/d;->i()V

    .line 55
    invoke-virtual {v1, v3}, Lio/dcloud/feature/ui/d;->a(Z)V

    :cond_c8
    :goto_c8
    const/4 v10, 0x1

    goto :goto_cb

    :cond_ca
    const/4 v10, 0x0

    .line 58
    :goto_cb
    iget-object v1, v8, Lio/dcloud/feature/ui/b;->h:Lorg/json/JSONObject;

    .line 59
    iget-object v4, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v4, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v12

    .line 60
    iget-object v4, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v4

    .line 61
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v11

    .line 63
    invoke-virtual {v15}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v7

    .line 65
    sget-byte v5, Lio/dcloud/feature/ui/b;->p:B

    if-ne v14, v5, :cond_f5

    .line 66
    iget-object v2, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    .line 67
    invoke-virtual {v12}, Lio/dcloud/common/adapter/util/ViewRect;->getParentViewRect()Lio/dcloud/common/adapter/util/ViewRect;

    move-result-object v5

    invoke-virtual {v11, v5}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 68
    invoke-virtual {v11, v12}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lio/dcloud/common/adapter/util/ViewRect;)V

    :goto_f3
    move-object v6, v2

    goto :goto_112

    .line 70
    :cond_f5
    sget-byte v5, Lio/dcloud/feature/ui/b;->o:B

    if-ne v14, v5, :cond_fc

    .line 71
    iget-object v2, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    goto :goto_106

    .line 72
    :cond_fc
    sget-byte v5, Lio/dcloud/feature/ui/b;->n:B

    if-ne v14, v5, :cond_106

    .line 73
    iget-object v2, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    .line 78
    :cond_106
    :goto_106
    iget-object v5, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v5, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    .line 79
    invoke-virtual {v7, v5}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    goto :goto_f3

    .line 81
    :goto_112
    invoke-virtual {v12}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v2

    if-eqz v2, :cond_130

    .line 82
    iget v2, v11, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v5, v11, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget v3, v11, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    invoke-virtual {v7, v1, v2, v5, v3}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;IIF)Z

    .line 83
    invoke-virtual {v7}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v1

    if-eqz v1, :cond_139

    .line 84
    iput v13, v7, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 85
    iput v13, v7, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 86
    iput v13, v7, Lio/dcloud/common/adapter/util/ViewRect;->anim_top:I

    .line 87
    iput v13, v7, Lio/dcloud/common/adapter/util/ViewRect;->anim_left:I

    goto :goto_139

    .line 90
    :cond_130
    iget v2, v12, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v3, v12, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget v5, v12, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    invoke-virtual {v7, v1, v2, v3, v5}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;IIF)Z

    .line 93
    :cond_139
    :goto_139
    sget-byte v1, Lio/dcloud/feature/ui/b;->p:B

    if-ne v14, v1, :cond_1a2

    .line 94
    move-object v1, v6

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    invoke-virtual {v7, v1}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 95
    invoke-static {v11, v7}, Lio/dcloud/common/adapter/util/ViewRect;->layoutDockViewRect(Lio/dcloud/common/adapter/util/ViewRect;Lio/dcloud/common/adapter/util/ViewRect;)V

    const/4 v1, 0x1

    .line 97
    iput-boolean v1, v4, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNeedOrientationUpdate:Z

    .line 101
    invoke-virtual {v11, v7}, Lio/dcloud/common/adapter/util/ViewRect;->putRelViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 103
    iget v1, v11, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 104
    iget v2, v11, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 105
    iget v3, v11, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 106
    iget v5, v11, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 107
    sget-boolean v16, Lio/dcloud/common/util/BaseInfo;->isImmersive:Z

    if-eqz v16, :cond_16c

    iget-boolean v13, v11, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v13, :cond_16c

    .line 108
    invoke-virtual {v12}, Lio/dcloud/common/adapter/util/ViewRect;->isHeightAbsolute()Z

    move-result v13

    if-nez v13, :cond_169

    .line 109
    sget v13, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v5, v13

    .line 111
    :cond_169
    sget v13, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v2, v13

    .line 113
    :cond_16c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v6

    const-string v6, "NWindow.appendView ---> _webview left="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";top="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";width="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";height="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v1, v2, v3, v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    goto :goto_1a4

    :cond_1a2
    move-object/from16 v17, v6

    .line 117
    :goto_1a4
    iget v13, v7, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 118
    iget v6, v7, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 119
    iget v5, v7, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 120
    iget v4, v7, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 122
    iget v2, v11, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v3, v11, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v1, v11, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    move/from16 v18, v5

    iget v5, v11, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move/from16 v19, v1

    move-object/from16 v1, p1

    move/from16 v20, v4

    move/from16 v4, v19

    move/from16 v19, v18

    move/from16 v18, v6

    move-object/from16 v22, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v22

    move v6, v13

    move-object/from16 v21, v7

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lio/dcloud/feature/ui/b;->a(IIIIII)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NWindow.appendView childView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    move-object v6, v12

    check-cast v6, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    invoke-virtual {v15, v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setParentFrameItem(Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;)V

    if-eqz v10, :cond_278

    .line 128
    sget-byte v1, Lio/dcloud/feature/ui/b;->n:B

    if-ne v14, v1, :cond_1ff

    invoke-virtual/range {v21 .. v21}, Lio/dcloud/common/adapter/util/ViewRect;->hasHeightAbsolutevalue()Z

    move-result v1

    if-nez v1, :cond_1ff

    .line 129
    iget v1, v11, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-lez v1, :cond_1ff

    goto :goto_201

    :cond_1ff
    move/from16 v1, v18

    .line 133
    :goto_201
    invoke-virtual {v15}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    move-object v9, v12

    move-object v10, v15

    move-object/from16 v2, v17

    move/from16 v12, v19

    move v3, v13

    const/4 v4, 0x0

    move/from16 v13, v20

    move v5, v14

    move v14, v3

    move-object v7, v15

    move v15, v1

    invoke-static/range {v9 .. v15}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IContainerView;Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;IIII)V

    .line 134
    sget-byte v9, Lio/dcloud/feature/ui/b;->p:B

    if-ne v5, v9, :cond_244

    .line 135
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->b()B

    move-result v5

    sget-byte v9, Lio/dcloud/feature/ui/b;->s:B

    if-ne v5, v9, :cond_244

    .line 136
    iget-object v5, v2, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v5, :cond_244

    invoke-static {v5}, Lio/dcloud/common/util/TitleNViewUtil;->isTitleTypeForDef(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_244

    .line 137
    iget-object v5, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v5

    const-string v9, "44px"

    invoke-static {v9, v4, v4, v5}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    move/from16 v5, v20

    add-int/2addr v4, v5

    goto :goto_247

    :cond_244
    move/from16 v5, v20

    move v4, v5

    :goto_247
    move-object/from16 v5, v21

    .line 141
    iget-boolean v9, v5, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v9, :cond_25d

    iget-boolean v2, v2, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v2, :cond_25d

    .line 142
    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v4, v2

    .line 143
    invoke-virtual {v5}, Lio/dcloud/common/adapter/util/ViewRect;->isBottomAbsolute()Z

    move-result v2

    if-eqz v2, :cond_25d

    .line 144
    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    sub-int/2addr v1, v2

    .line 147
    :cond_25d
    iget-boolean v2, v5, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v2, :cond_26a

    .line 148
    invoke-virtual {v5}, Lio/dcloud/common/adapter/util/ViewRect;->isBottomAbsolute()Z

    move-result v2

    if-nez v2, :cond_26a

    .line 149
    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v1, v2

    :cond_26a
    const/4 v2, -0x1

    if-ge v1, v2, :cond_26e

    const/4 v1, -0x1

    .line 155
    :cond_26e
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    move/from16 v7, v19

    invoke-static {v2, v7, v4, v3, v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    goto :goto_28a

    :cond_278
    move v3, v13

    move/from16 v1, v18

    move/from16 v7, v19

    move/from16 v5, v20

    .line 157
    invoke-static {v7, v5, v3, v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->createLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 158
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v2

    invoke-interface {v12, v2, v1}, Lio/dcloud/common/DHInterface/IContainerView;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    :goto_28a
    iget-object v1, v0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iput-object v0, v8, Lio/dcloud/feature/ui/b;->a:Lio/dcloud/feature/ui/c;

    .line 162
    iget-object v1, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->sortNativeViewBringToFront()V

    .line 163
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-boolean v1, v1, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v1, :cond_2a7

    .line 164
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    :cond_2a7
    return-void
.end method

.method a(Lio/dcloud/feature/ui/c;Z)V
    .registers 3

    .line 2177
    iget-object p1, p1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IWebview;->reload(Z)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/dcloud/feature/ui/c;->W:Z

    return-void
.end method

.method a(Lorg/json/JSONObject;Z)Z
    .registers 6

    const-string v0, "zindex"

    .line 2178
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_25

    .line 2179
    invoke-static {p1, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2181
    :try_start_d
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2182
    iget v0, p0, Lio/dcloud/feature/ui/c;->E:I

    if-eq p1, v0, :cond_25

    const/4 v2, 0x1

    .line 2184
    iput p1, p0, Lio/dcloud/feature/ui/c;->E:I

    .line 2185
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    iput p1, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mZIndex:I

    if-eqz p2, :cond_25

    .line 2187
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {p1, p0}, Lio/dcloud/feature/ui/a;->g(Lio/dcloud/feature/ui/c;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    return v2
.end method

.method protected b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 9

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "barcode"

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "appendToFrameView"

    const/4 v5, 0x2

    aput-object p1, v2, v5

    new-array p1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v5, p1, v3

    aput-object p2, p1, v4

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/16 p1, 0xa

    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method b(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V
    .registers 9

    .line 11
    iget-boolean v0, p3, Lio/dcloud/feature/ui/c;->H:Z

    if-eqz v0, :cond_7a

    .line 12
    iget-boolean v0, p3, Lio/dcloud/feature/ui/c;->I:Z

    if-nez v0, :cond_8d

    .line 14
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v0, p3}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/feature/ui/c;)V

    .line 15
    iget-boolean v0, p3, Lio/dcloud/feature/ui/c;->K:Z

    if-eqz v0, :cond_27

    .line 16
    iget-object p1, p3, Lio/dcloud/feature/ui/b;->a:Lio/dcloud/feature/ui/c;

    if-eqz p1, :cond_18

    .line 17
    invoke-virtual {p1, p3}, Lio/dcloud/feature/ui/c;->c(Lio/dcloud/feature/ui/b;)V

    .line 20
    :cond_18
    invoke-virtual {p3}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onDispose()Z

    .line 21
    invoke-virtual {p3}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->dispose()V

    goto :goto_8d

    :cond_27
    const/4 v0, 0x0

    .line 23
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 25
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 26
    iget-object v3, p3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v3, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v3

    .line 27
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    const-string v0, "auto"

    .line 28
    :cond_41
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 29
    iget v4, v3, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    invoke-static {v2, v4}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    goto :goto_61

    :cond_50
    const-string v2, "pop-out"

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const/16 v2, 0x168

    .line 32
    iput v2, v3, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    goto :goto_61

    .line 34
    :cond_5d
    iget v2, v3, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    iput v2, v3, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    .line 40
    :goto_61
    invoke-virtual {v3, v0}, Lio/dcloud/common/adapter/util/AnimOptions;->setCloseAnimType(Ljava/lang/String;)V

    .line 41
    iput-byte v1, v3, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    const/4 v1, 0x2

    .line 43
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p2

    .line 45
    invoke-direct {p0, p1, p2, p3, v0}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object p1, p1, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v0, p3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1, p2, v1, v0}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8d

    .line 51
    :cond_7a
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {p1, p3}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/feature/ui/c;)V

    .line 52
    invoke-virtual {p3}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onDispose()Z

    .line 53
    invoke-virtual {p3}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->dispose()V

    .line 56
    :cond_8d
    :goto_8d
    invoke-virtual {p3}, Lio/dcloud/feature/ui/c;->e()V

    return-void
.end method

.method protected b(Lio/dcloud/feature/ui/c;)V
    .registers 3

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->T:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/ui/c;->T:Ljava/util/ArrayList;

    .line 6
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->T:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iput-object p0, p1, Lio/dcloud/feature/ui/c;->S:Lio/dcloud/feature/ui/c;

    .line 8
    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 9
    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IWebview;->setOpener(Lio/dcloud/common/DHInterface/IWebview;)V

    :cond_23
    return-void
.end method

.method public b(Z)V
    .registers 2

    return-void
.end method

.method public b(Lio/dcloud/feature/ui/b;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method b(Ljava/lang/String;)Z
    .registers 6

    .line 69
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_24

    .line 72
    iget-object v2, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/b;

    .line 73
    instance-of v3, v2, Lio/dcloud/feature/ui/c;

    if-eqz v3, :cond_21

    .line 74
    check-cast v2, Lio/dcloud/feature/ui/c;

    invoke-virtual {v2, p1}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    return v1

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 80
    :cond_24
    invoke-virtual {p0, p1}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8

    .line 57
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_28

    .line 60
    iget-object v2, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/b;

    .line 61
    instance-of v3, v2, Lio/dcloud/feature/ui/c;

    if-eqz v3, :cond_25

    check-cast v2, Lio/dcloud/feature/ui/c;

    iget-boolean v3, v2, Lio/dcloud/feature/ui/c;->F:Z

    if-eqz v3, :cond_25

    .line 62
    invoke-virtual {v2, p1, p2, p3}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_25

    return v1

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 68
    :cond_28
    invoke-virtual {p0, p1}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    return v1
.end method

.method protected c(Ljava/lang/String;)Lio/dcloud/feature/ui/b;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_13
    if-ltz v0, :cond_29

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/ui/b;

    .line 5
    iget-object v2, v1, Lio/dcloud/feature/ui/b;->f:Ljava/lang/String;

    invoke-static {p1, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_29

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_29
    :goto_29
    return-object v1
.end method

.method protected c(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 9

    .line 26
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "livepusher"

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "appendToFrameView"

    const/4 v5, 0x2

    aput-object p1, v2, v5

    new-array p1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v5, p1, v3

    aput-object p2, p1, v4

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/16 p1, 0xa

    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c(Lio/dcloud/feature/ui/b;)V
    .registers 5

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    if-eqz v0, :cond_68

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_68

    .line 9
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Lio/dcloud/feature/ui/b;->a:Lio/dcloud/feature/ui/c;

    .line 11
    invoke-virtual {p1}, Lio/dcloud/feature/ui/b;->c()B

    move-result v0

    .line 13
    instance-of v1, p1, Lio/dcloud/feature/ui/c;

    .line 15
    sget-byte v2, Lio/dcloud/feature/ui/b;->n:B

    if-ne v0, v2, :cond_2b

    .line 16
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/dcloud/common/DHInterface/IContainerView;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    goto :goto_68

    .line 18
    :cond_2b
    sget-byte v2, Lio/dcloud/feature/ui/b;->o:B

    if-ne v0, v2, :cond_3d

    .line 19
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    goto :goto_68

    .line 20
    :cond_3d
    sget-byte v2, Lio/dcloud/feature/ui/b;->p:B

    if-ne v0, v2, :cond_68

    .line 21
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IContainerView;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    if-eqz v1, :cond_61

    .line 23
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/util/ViewRect;->delRelViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 25
    :cond_61
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    :cond_68
    :goto_68
    return-void
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8

    .line 61
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_28

    .line 64
    iget-object v2, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/b;

    .line 65
    instance-of v3, v2, Lio/dcloud/feature/ui/c;

    if-eqz v3, :cond_25

    check-cast v2, Lio/dcloud/feature/ui/c;

    iget-boolean v3, v2, Lio/dcloud/feature/ui/c;->F:Z

    if-eqz v3, :cond_25

    .line 66
    invoke-virtual {v2, p1, p2, p3}, Lio/dcloud/feature/ui/c;->c(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_25

    return v1

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 72
    :cond_28
    invoke-virtual {p0, p1}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 75
    :cond_33
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    instance-of p2, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz p2, :cond_70

    .line 76
    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    const-string p2, "backButton"

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_51

    const-string p2, "all"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 78
    :cond_51
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    if-eqz p1, :cond_70

    iget-object p1, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 79
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IWebview;->goBackOrForward(I)V

    return v1

    .line 84
    :cond_70
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->backButtonAutoControl:Ljava/lang/String;

    const-string p2, "hide"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "[\'auto\',null]"

    if-eqz p1, :cond_92

    .line 85
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-static {p2}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-direct {p0, p1, p2, p0}, Lio/dcloud/feature/ui/c;->d(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    return v1

    .line 87
    :cond_92
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->backButtonAutoControl:Ljava/lang/String;

    const-string p3, "quit"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 88
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object p1, p1, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object p3, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p3

    const/16 v0, 0x14

    invoke-interface {p1, p2, v0, p3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_d6

    .line 89
    :cond_b6
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->backButtonAutoControl:Ljava/lang/String;

    const-string p3, "close"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d6

    .line 90
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-static {p2}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p0}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    return v1

    :cond_d6
    :goto_d6
    const/4 p1, 0x0

    return p1
.end method

.method public d()Lio/dcloud/common/adapter/ui/AdaFrameItem;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    return-object v0
.end method

.method protected d(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "maps"

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "appendToFrameView"

    const/4 v5, 0x2

    aput-object p1, v2, v5

    new-array p1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v5, p1, v3

    aput-object p2, p1, v4

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/16 p1, 0xa

    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected e()V
    .registers 4

    .line 222
    invoke-direct {p0}, Lio/dcloud/feature/ui/c;->i()V

    .line 223
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->S:Lio/dcloud/feature/ui/c;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lio/dcloud/feature/ui/c;->T:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 224
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_e
    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->S:Lio/dcloud/feature/ui/c;

    .line 227
    iput-object v0, p0, Lio/dcloud/feature/ui/b;->a:Lio/dcloud/feature/ui/c;

    .line 228
    iget-object v1, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    if-eqz v1, :cond_32

    .line 229
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/b;

    .line 230
    invoke-virtual {v2}, Lio/dcloud/feature/ui/b;->e()V

    goto :goto_1b

    .line 232
    :cond_2b
    iget-object v1, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 233
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->L:Ljava/util/ArrayList;

    .line 235
    :cond_32
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->N:Lio/dcloud/common/DHInterface/IWebview;

    .line 236
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->M:Ljava/lang/String;

    .line 237
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->O:Ljava/lang/String;

    .line 238
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->P:Lio/dcloud/common/DHInterface/IWebview;

    const/16 v0, 0x96

    .line 239
    iput v0, p0, Lio/dcloud/feature/ui/c;->V:I

    .line 241
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_45

    .line 242
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_45
    return-void
.end method

.method protected e(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "nativeobj"

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "addNativeView"

    const/4 v5, 0x2

    aput-object p1, v2, v5

    new-array p1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v5, p1, v3

    aput-object p2, p1, v4

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/16 p1, 0xa

    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected f(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "videoplayer"

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "appendToFrameView"

    const/4 v5, 0x2

    aput-object p1, v2, v5

    new-array p1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v5, p1, v3

    aput-object p2, p1, v4

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/16 p1, 0xa

    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 8

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "{}"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-eqz v0, :cond_35

    new-array v0, v6, [Ljava/lang/Object;

    .line 3
    iget-object v6, p0, Lio/dcloud/feature/ui/b;->e:Ljava/lang/String;

    aput-object v6, v0, v5

    const-string v5, "undefined"

    aput-object v5, v0, v4

    iget-object v4, p0, Lio/dcloud/feature/ui/b;->d:Ljava/lang/String;

    aput-object v4, v0, v3

    iget-object v3, p0, Lio/dcloud/feature/ui/c;->x:Lorg/json/JSONObject;

    if-nez v3, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2c
    aput-object v1, v0, v2

    const-string v1, "(function(){return {\'uuid\':\'%s\',\'id\':%s,\'identity\':\'%s\',\'extras\':%s}})()"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_35
    new-array v0, v6, [Ljava/lang/Object;

    .line 5
    iget-object v6, p0, Lio/dcloud/feature/ui/b;->e:Ljava/lang/String;

    aput-object v6, v0, v5

    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v4, p0, Lio/dcloud/feature/ui/b;->d:Ljava/lang/String;

    aput-object v4, v0, v3

    iget-object v3, p0, Lio/dcloud/feature/ui/c;->x:Lorg/json/JSONObject;

    if-nez v3, :cond_4e

    goto :goto_52

    :cond_4e
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_52
    aput-object v1, v0, v2

    const-string v1, "(function(){return {\'uuid\':\'%s\',\'id\':\'%s\',\'identity\':\'%s\',\'extras\':%s}})()"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "nativeobj"

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "removeNativeView"

    const/4 v5, 0x2

    aput-object p1, v2, v5

    new-array p1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v5, p1, v3

    aput-object p2, p1, v4

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/16 p1, 0xa

    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public l()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_20

    const-string v1, "rendered"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->X:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 3
    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_13
    new-instance v0, Lio/dcloud/feature/ui/c$a;

    invoke-direct {v0, p0}, Lio/dcloud/feature/ui/c$a;-><init>(Lio/dcloud/feature/ui/c;)V

    iput-object v0, p0, Lio/dcloud/feature/ui/c;->X:Ljava/lang/Runnable;

    .line 17
    iget v1, p0, Lio/dcloud/feature/ui/c;->V:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_20
    return-void
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    int-to-float v2, v2

    iget v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    int-to-float v2, v2

    iget v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    int-to-float v2, v2

    iget v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    int-to-float v2, v2

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    div-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-string v0, "{top:%d,left:%d,width:%d,height:%d}"

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->isWebviewCovered()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NWindow.onCallBack pEventType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v4, "yl"

    invoke-static {v4, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const-string v7, "touchstart"

    const/4 v8, -0x1

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    sparse-switch v1, :sswitch_data_35a

    goto/16 :goto_125

    :sswitch_35
    const-string v1, "show_loading"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto/16 :goto_125

    :cond_3f
    const/16 v1, 0x12

    goto/16 :goto_126

    :sswitch_43
    const-string v1, "titleNViewSearchInputClicked"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    goto/16 :goto_125

    :cond_4d
    const/16 v1, 0x11

    goto/16 :goto_126

    :sswitch_51
    const-string v1, "titleNViewSearchInputChanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    goto/16 :goto_125

    :cond_5b
    const/16 v1, 0x10

    goto/16 :goto_126

    :sswitch_5f
    const-string v1, "slide_webview_close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    goto/16 :goto_125

    :cond_69
    const/16 v1, 0xf

    goto/16 :goto_126

    :sswitch_6d
    const-string v1, "titleNViewSearchInputConfirmed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    goto/16 :goto_125

    :cond_77
    const/16 v1, 0xe

    goto/16 :goto_126

    :sswitch_7b
    const-string v1, "titleUpdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    goto/16 :goto_125

    :cond_85
    const/16 v1, 0xd

    goto/16 :goto_126

    :sswitch_89
    const-string v1, "slide_webview_hide"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_93

    goto/16 :goto_125

    :cond_93
    const/16 v1, 0xc

    goto/16 :goto_126

    :sswitch_97
    const-string v1, "overrideUrlLoading"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a1

    goto/16 :goto_125

    :cond_a1
    const/16 v1, 0xb

    goto/16 :goto_126

    :sswitch_a5
    const-string v1, "popGesture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    goto/16 :goto_125

    :cond_af
    const/16 v1, 0xa

    goto/16 :goto_126

    :sswitch_b3
    const-string v1, "show_animation_end"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    goto/16 :goto_125

    :cond_bd
    const/16 v1, 0x9

    goto/16 :goto_126

    :sswitch_c1
    const-string v1, "progressChanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cb

    goto/16 :goto_125

    :cond_cb
    const/16 v1, 0x8

    goto/16 :goto_126

    :sswitch_cf
    const-string v1, "resize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d8

    goto :goto_125

    :cond_d8
    const/4 v1, 0x7

    goto :goto_126

    :sswitch_da
    const-string v1, "hide_loading"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e3

    goto :goto_125

    :cond_e3
    const/4 v1, 0x6

    goto :goto_126

    :sswitch_e5
    const-string v1, "titleNViewSearchInputFocusChanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ee

    goto :goto_125

    :cond_ee
    const/4 v1, 0x5

    goto :goto_126

    :sswitch_f0
    const-string v1, "slideBounce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f9

    goto :goto_125

    :cond_f9
    const/4 v1, 0x4

    goto :goto_126

    :sswitch_fb
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_102

    goto :goto_125

    :cond_102
    const/4 v1, 0x3

    goto :goto_126

    :sswitch_104
    const-string v1, "dragBounce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10d

    goto :goto_125

    :cond_10d
    const/4 v1, 0x2

    goto :goto_126

    :sswitch_10f
    const-string v1, "onresize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_118

    goto :goto_125

    :cond_118
    const/4 v1, 0x1

    goto :goto_126

    :sswitch_11a
    const-string v1, "listenResourceLoading"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_123

    goto :goto_125

    :cond_123
    const/4 v1, 0x0

    goto :goto_126

    :goto_125
    const/4 v1, -0x1

    :goto_126
    const/4 v12, 0x0

    packed-switch v1, :pswitch_data_3a8

    .line 83
    sget-object v1, Lio/dcloud/feature/ui/c;->Y:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26a

    .line 85
    iget-object v7, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    iget-object v7, v7, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-static {v1, p2, v7, p0}, Lio/dcloud/feature/ui/c;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_26a

    .line 148
    :pswitch_141
    iget-boolean p1, p0, Lio/dcloud/feature/ui/c;->H:Z

    if-eqz p1, :cond_359

    .line 149
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {p1, p0}, Lio/dcloud/feature/ui/a;->f(Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_359

    .line 186
    :pswitch_14c
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    move-object p2, v12

    goto :goto_158

    :cond_154
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_158
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_359

    .line 187
    :pswitch_15d
    invoke-direct {p0}, Lio/dcloud/feature/ui/c;->s()V

    goto/16 :goto_359

    :pswitch_162
    new-array v0, v2, [Ljava/lang/Object;

    if-nez p2, :cond_169

    const-string p2, "\'\'"

    goto :goto_171

    .line 188
    :cond_169
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_171
    aput-object p2, v0, v3

    const-string p2, "{title:%s}"

    invoke-static {p2, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 189
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->l()V

    goto/16 :goto_359

    .line 221
    :pswitch_181
    invoke-direct {p0}, Lio/dcloud/feature/ui/c;->t()V

    goto/16 :goto_359

    .line 222
    :pswitch_186
    iget-object v4, p0, Lio/dcloud/feature/ui/c;->P:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->O:Ljava/lang/String;

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    sget v7, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_359

    .line 256
    :pswitch_196
    check-cast p2, [Ljava/lang/Object;

    .line 257
    aget-object v1, p2, v3

    check-cast v1, Ljava/lang/String;

    .line 258
    aget-object v4, p2, v2

    .line 259
    aget-object p2, p2, v0

    check-cast p2, Lio/dcloud/common/DHInterface/IFrameView;

    .line 260
    iget-object v5, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {v5, p2}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/common/DHInterface/IFrameView;)Lio/dcloud/feature/ui/c;

    move-result-object p2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v4, v5, v2

    .line 262
    iget-object v1, p2, Lio/dcloud/feature/ui/b;->e:Ljava/lang/String;

    aput-object v1, v5, v0

    iget-object v0, p2, Lio/dcloud/feature/ui/b;->f:Ljava/lang/String;

    aput-object v0, v5, v11

    iget-object p2, p2, Lio/dcloud/feature/ui/c;->x:Lorg/json/JSONObject;

    aput-object p2, v5, v10

    const-string p2, "{type:\'%s\', result:%s, private_args:{uuid:\'%s\',id:\'%s\',extras:\'%s\'}}"

    invoke-static {p2, v5}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_359

    .line 263
    :pswitch_1c5
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->M:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1dc

    iget-object v0, p0, Lio/dcloud/feature/ui/c;->N:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_1dc

    .line 264
    iget-object v1, p0, Lio/dcloud/feature/ui/c;->M:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, ""

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 266
    :cond_1dc
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e4

    move-object p1, v12

    goto :goto_1e8

    :cond_1e4
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1e8
    const-string p2, "show"

    invoke-virtual {p0, p2, p1}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_359

    :pswitch_1ef
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 287
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plus.webview._find__Window_By_UUID__(\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/ui/b;->f:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/ui/b;->e:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    const-string p2, "{progress:%s,target:%s}"

    invoke-static {p2, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_359

    .line 288
    :pswitch_222
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {p1, p0}, Lio/dcloud/feature/ui/a;->d(Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_359

    .line 328
    :pswitch_229
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_359

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_359

    .line 329
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23b

    move-object p2, v12

    goto :goto_23f

    :cond_23b
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_23f
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_359

    .line 330
    :pswitch_244
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24c

    move-object p2, v12

    goto :goto_250

    :cond_24c
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_250
    invoke-virtual {p0, p1, p2, v3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_359

    .line 369
    :pswitch_255
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->q()V

    goto/16 :goto_359

    .line 370
    :pswitch_25a
    iget-object v4, p0, Lio/dcloud/feature/ui/c;->R:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->Q:Ljava/lang/String;

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    sget v7, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_359

    .line 87
    :cond_26a
    :goto_26a
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3d2

    :goto_277
    const/4 v0, -0x1

    goto/16 :goto_2db

    :sswitch_27a
    const-string v0, "rendering"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_283

    goto :goto_277

    :cond_283
    const/16 v0, 0x8

    goto :goto_2db

    :sswitch_286
    const-string v0, "loading"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28f

    goto :goto_277

    :cond_28f
    const/4 v0, 0x7

    goto :goto_2db

    :sswitch_291
    const-string v0, "pullToRefresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29a

    goto :goto_277

    :cond_29a
    const/4 v0, 0x6

    goto :goto_2db

    :sswitch_29c
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a5

    goto :goto_277

    :cond_2a5
    const/4 v0, 0x5

    goto :goto_2db

    :sswitch_2a7
    const-string v0, "hide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b0

    goto :goto_277

    :cond_2b0
    const/4 v0, 0x4

    goto :goto_2db

    :sswitch_2b2
    const-string v0, "webPause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2bb

    goto :goto_277

    :cond_2bb
    const/4 v0, 0x3

    goto :goto_2db

    :sswitch_2bd
    const-string v1, "window_close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2db

    goto :goto_277

    :sswitch_2c6
    const-string v0, "loaded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cf

    goto :goto_277

    :cond_2cf
    const/4 v0, 0x1

    goto :goto_2db

    :sswitch_2d1
    const-string v0, "webResume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2da

    goto :goto_277

    :cond_2da
    const/4 v0, 0x0

    :cond_2db
    :goto_2db
    const-string v1, "{}"

    packed-switch v0, :pswitch_data_3f8

    .line 118
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e8

    move-object p2, v12

    goto :goto_2ec

    :cond_2e8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_2ec
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_359

    .line 119
    :pswitch_2f0
    iget-object p2, p0, Lio/dcloud/feature/ui/b;->c:Lio/dcloud/feature/ui/a;

    invoke-virtual {p2, p0}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/feature/ui/c;)V

    .line 120
    invoke-virtual {p0, p1, v1, v3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_359

    .line 121
    :pswitch_2f9
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_301

    move-object p2, v12

    goto :goto_305

    :cond_301
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_305
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    invoke-virtual {p0}, Lio/dcloud/feature/ui/b;->g()V

    goto :goto_359

    .line 123
    :pswitch_30c
    iget-object p2, p0, Lio/dcloud/feature/ui/c;->v:Lorg/json/JSONArray;

    if-eqz p2, :cond_31f

    .line 124
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->w:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, p2, p0, v2}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V

    .line 126
    :cond_31f
    sget-object p2, Lio/dcloud/common/util/TestUtil;->CREATE_WEBVIEW:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u4ece\u52a0\u8f7d\u5b8c\u6210\u5206\u53d1loaded\u4e8b\u4ef6\u5230\u5f00\u59cb\u5206\u53d1\u4e8b\u4ef6 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENTS_LOADED mUrl="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Main_Path"

    invoke-static {v0, p2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p1, v1, v3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_359

    .line 147
    :pswitch_356
    invoke-virtual {p0, p1, v1, v3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_359
    :goto_359
    return-object v12

    :sswitch_data_35a
    .sparse-switch
        -0x7a44d379 -> :sswitch_11a
        -0x722278ad -> :sswitch_10f
        -0x70efa724 -> :sswitch_104
        -0x5e176b7d -> :sswitch_fb
        -0x5478a867 -> :sswitch_f0
        -0x4612885d -> :sswitch_e5
        -0x41b6fcc1 -> :sswitch_da
        -0x37b2634c -> :sswitch_cf
        -0x14fa2439 -> :sswitch_c1
        -0xfd36022 -> :sswitch_b3
        -0x4efca48 -> :sswitch_a5
        0x11431b9 -> :sswitch_97
        0xaffa196 -> :sswitch_89
        0x21fc2541 -> :sswitch_7b
        0x3bda4fd8 -> :sswitch_6d
        0x54afa424 -> :sswitch_5f
        0x552e396d -> :sswitch_51
        0x5c6d66e0 -> :sswitch_43
        0x69fe15fa -> :sswitch_35
    .end sparse-switch

    :pswitch_data_3a8
    .packed-switch 0x0
        :pswitch_25a
        :pswitch_255
        :pswitch_244
        :pswitch_229
        :pswitch_244
        :pswitch_244
        :pswitch_222
        :pswitch_244
        :pswitch_1ef
        :pswitch_1c5
        :pswitch_196
        :pswitch_186
        :pswitch_181
        :pswitch_162
        :pswitch_244
        :pswitch_15d
        :pswitch_244
        :pswitch_14c
        :pswitch_141
    .end packed-switch

    :sswitch_data_3d2
    .sparse-switch
        -0x46844f5f -> :sswitch_2d1
        -0x416acffb -> :sswitch_2c6
        -0x2eea9717 -> :sswitch_2bd
        -0x2baea0fe -> :sswitch_2b2
        0x30dd42 -> :sswitch_2a7
        0x5a5ddf8 -> :sswitch_29c
        0x11fc9b1b -> :sswitch_291
        0x1410e13c -> :sswitch_286
        0x6da6e68c -> :sswitch_27a
    .end sparse-switch

    :pswitch_data_3f8
    .packed-switch 0x0
        :pswitch_356
        :pswitch_30c
        :pswitch_2f9
        :pswitch_356
        :pswitch_356
        :pswitch_2f0
        :pswitch_356
        :pswitch_356
        :pswitch_356
    .end packed-switch
.end method

.method public p()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/ui/c;->W:Z

    return v0
.end method

.method protected q()V
    .registers 1

    return-void
.end method

.method public r()Lio/dcloud/common/DHInterface/IWebview;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.feature.ui.c.a (io.dcloud.feature.ui.c$a)
.class Lio/dcloud/feature/ui/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/c;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/ui/c;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/c$a;->a:Lio/dcloud/feature/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c$a;->a:Lio/dcloud/feature/ui/c;

    iget-object v0, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/ui/c$a;->a:Lio/dcloud/feature/ui/c;

    invoke-static {v1}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/c;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IWebview;->checkWhite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/ui/c$a;->a:Lio/dcloud/feature/ui/c;

    invoke-virtual {v0}, Lio/dcloud/feature/ui/c;->l()V

    goto :goto_24

    .line 5
    :cond_1a
    iget-object v0, p0, Lio/dcloud/feature/ui/c$a;->a:Lio/dcloud/feature/ui/c;

    const/4 v1, 0x0

    const-string v2, "rendered"

    const-string v3, "{}"

    invoke-virtual {v0, v2, v3, v1}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7
    :goto_24
    iget-object v0, p0, Lio/dcloud/feature/ui/c$a;->a:Lio/dcloud/feature/ui/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/dcloud/feature/ui/c;->X:Ljava/lang/Runnable;

    return-void
.end method

###### Class io.dcloud.feature.ui.c.b (io.dcloud.feature.ui.c$b)
.class Lio/dcloud/feature/ui/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/ui/ReceiveJSValue$ReceiveJSValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/ui/c$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/ui/c$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4
    :try_start_b
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    move-object v1, v4

    .line 7
    :goto_11
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_76

    const-string v3, "string"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_76

    .line 9
    :cond_1e
    instance-of v3, v1, Lorg/json/JSONArray;

    if-eqz v3, :cond_32

    .line 10
    iget-object v5, v0, Lio/dcloud/feature/ui/c$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v6, v0, Lio/dcloud/feature/ui/c$b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_86

    .line 11
    :cond_32
    instance-of v3, v1, Lorg/json/JSONObject;

    if-nez v3, :cond_66

    const-string v3, "object"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_66

    :cond_3f
    const-string v3, "undefined"

    .line 13
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 14
    iget-object v5, v0, Lio/dcloud/feature/ui/c$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v6, v0, Lio/dcloud/feature/ui/c$b;->b:Ljava/lang/String;

    sget v8, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v7, "undefined"

    invoke-static/range {v5 .. v10}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_86

    .line 16
    :cond_55
    iget-object v11, v0, Lio/dcloud/feature/ui/c$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v12, v0, Lio/dcloud/feature/ui/c$b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_86

    .line 17
    :cond_66
    :goto_66
    iget-object v5, v0, Lio/dcloud/feature/ui/c$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v6, v0, Lio/dcloud/feature/ui/c$b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_86

    .line 18
    :cond_76
    :goto_76
    iget-object v11, v0, Lio/dcloud/feature/ui/c$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v12, v0, Lio/dcloud/feature/ui/c$b;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget v14, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_86
    return-object v4
.end method

###### Class io.dcloud.feature.ui.c.RunnableC0051c (io.dcloud.feature.ui.c$c)
.class Lio/dcloud/feature/ui/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/ui/c$c;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/ui/c$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c$c;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/c$c;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/IWebview;->evalJSSync(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

###### Class io.dcloud.feature.ui.c.d (io.dcloud.feature.ui.c$d)
.class Lio/dcloud/feature/ui/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$UncheckedCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/ui/c$d;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/ui/c$d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/ui/c$d;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/c$d;->b:Ljava/lang/String;

    new-instance v2, Lio/dcloud/feature/ui/c$d$a;

    invoke-direct {v2, p0, p1}, Lio/dcloud/feature/ui/c$d$a;-><init>(Lio/dcloud/feature/ui/c$d;Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;)V

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/IWebview;->evalJSSync(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_18

    :catch_d
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_18

    const-string v0, ""

    .line 12
    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->callBack(Ljava/lang/Object;)V

    :cond_18
    :goto_18
    return-void
.end method

###### Class io.dcloud.feature.ui.c.d.a (io.dcloud.feature.ui.c$d$a)
.class Lio/dcloud/feature/ui/c$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/c$d;->run(Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/c$d;Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/ui/c$d$a;->a:Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/c$d$a;->a:Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->callBack(Ljava/lang/Object;)V

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.ui.c.e (io.dcloud.feature.ui.c$e)
.class Lio/dcloud/feature/ui/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/dcloud/feature/ui/c;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/c$e;->e:Lio/dcloud/feature/ui/c;

    iput-object p2, p0, Lio/dcloud/feature/ui/c$e;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/ui/c$e;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/ui/c$e;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/feature/ui/c$e;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/ui/c$e;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/c$e;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IWebview;->checkWhite(Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/ui/c$e;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/ui/c$e;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"code\":100,\"rendered\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_62

    :catch_2c
    nop

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/ui/c$e;->e:Lio/dcloud/feature/ui/c;

    invoke-virtual {v0}, Lio/dcloud/feature/ui/b;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 5
    iget-object v1, p0, Lio/dcloud/feature/ui/c$e;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/ui/c$e;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"code\":-100,\"message\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/feature/ui/c$e;->e:Lio/dcloud/feature/ui/c;

    invoke-virtual {v3}, Lio/dcloud/feature/ui/b;->a()Landroid/content/Context;

    move-result-object v3

    sget v4, Lio/dcloud/base/R$string;->dcloud_common_screenshot_fail:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_62
    :goto_62
    return-void
.end method

###### Class io.dcloud.feature.ui.c.f (io.dcloud.feature.ui.c$f)
.class Lio/dcloud/feature/ui/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/ui/c$f;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/ui/c$f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c$f;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/c$f;->b:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.ui.c.g (io.dcloud.feature.ui.c$g)
.class Lio/dcloud/feature/ui/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/ui/c$g;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/ui/c$g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c$g;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/c$g;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "{\"code\":-100,\"message\":\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/dcloud/feature/ui/c$g;->a:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lio/dcloud/base/R$string;->dcloud_common_screenshot_fail:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.ui.c.h (io.dcloud.feature.ui.c$h)
.class Lio/dcloud/feature/ui/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/c;->c(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/ui/c$h;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/ui/c$h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c$h;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/c$h;->b:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.ui.c.i (io.dcloud.feature.ui.c$i)
.class Lio/dcloud/feature/ui/c$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/c;->c(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/feature/ui/c;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/c$i;->c:Lio/dcloud/feature/ui/c;

    iput-object p2, p0, Lio/dcloud/feature/ui/c$i;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/ui/c$i;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c$i;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/c$i;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"code\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\"message\":\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_29

    :cond_1d
    iget-object p1, p0, Lio/dcloud/feature/ui/c$i;->c:Lio/dcloud/feature/ui/c;

    invoke-virtual {p1}, Lio/dcloud/feature/ui/b;->a()Landroid/content/Context;

    move-result-object p1

    sget p2, Lio/dcloud/base/R$string;->dcloud_common_screenshot_fail:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.ui.c.j (io.dcloud.feature.ui.c$j)
.class Lio/dcloud/feature/ui/c$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/c;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/feature/ui/c;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/c$j;->c:Lio/dcloud/feature/ui/c;

    iput-object p2, p0, Lio/dcloud/feature/ui/c$j;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/feature/ui/c$j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c$j;->c:Lio/dcloud/feature/ui/c;

    invoke-virtual {v0}, Lio/dcloud/feature/ui/b;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/ui/c$j;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/ui/c$j;->c:Lio/dcloud/feature/ui/c;

    iget-object v2, v2, Lio/dcloud/feature/ui/b;->g:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/feature/ui/c$j;->b:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-static {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/TestUtil$PointTime;->commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
