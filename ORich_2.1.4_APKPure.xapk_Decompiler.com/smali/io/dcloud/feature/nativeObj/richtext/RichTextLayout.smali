###### Class io.dcloud.feature.nativeObj.richtext.RichTextLayout (io.dcloud.feature.nativeObj.richtext.RichTextLayout)
.class public Lio/dcloud/feature/nativeObj/richtext/RichTextLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;,
        Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeRichText([Ljava/lang/Object;)Landroid/widget/TextView;
    .registers 8

    const/4 v0, 0x0

    .line 96
    aget-object v0, p0, v0

    check-cast v0, Lio/dcloud/common/DHInterface/IFrameView;

    .line 97
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    const/4 v0, 0x1

    .line 98
    aget-object v0, p0, v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v0, 0x2

    .line 99
    aget-object v0, p0, v0

    move-object v5, v0

    check-cast v5, Lorg/json/JSONObject;

    .line 100
    new-instance v0, Landroid/widget/TextView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v1, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$1;

    invoke-direct {v1, v2}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$1;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    const/4 v3, 0x3

    aget-object p0, p0, v3

    move-object v6, p0

    check-cast v6, Lio/dcloud/common/DHInterface/ICallBack;

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lio/dcloud/feature/nativeObj/richtext/RichTextParser;->updateFromHTML(Lio/dcloud/feature/nativeObj/richtext/IAssets;Lio/dcloud/common/DHInterface/IWebview;Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/ICallBack;)V

    return-object v0
.end method

.method public static makeRichText(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;
    .registers 8

    .line 1
    new-instance v0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;

    invoke-direct {v0, p0, p1, p2, p6}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;Ljava/lang/String;)V

    .line 2
    invoke-static {v0, p3, p4, p5}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout;->makeRichText(Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;

    move-result-object p0

    return-object p0
.end method

.method public static makeRichText(Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 3
    iget-object v2, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mMainView:Landroid/widget/TextView;

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-static {v0, v2, v3, v4, v5}, Lio/dcloud/feature/nativeObj/richtext/RichTextParser;->updateFromHTML(Lio/dcloud/feature/nativeObj/richtext/IAssets;Lio/dcloud/common/DHInterface/IWebview;Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->updateLayout()V

    .line 6
    iget-object v2, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    .line 7
    iget v3, v2, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    .line 8
    iget v4, v2, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    const-string v5, "left"

    .line 9
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    const-string v7, "right"

    .line 10
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    const-string v9, "top"

    .line 11
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    const-string v11, "width"

    .line 12
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    const-string v13, "height"

    .line 13
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    const-string v15, "bottom"

    .line 14
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    move-object/from16 p1, v15

    .line 16
    iget v15, v2, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    move/from16 p3, v15

    iget v15, v2, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    const/16 v17, 0x0

    if-eqz v14, :cond_80

    .line 18
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 19
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7b

    const-string v2, "wrap_content"

    .line 20
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v2, -0x2

    const/4 v14, 0x0

    goto :goto_83

    .line 24
    :cond_69
    iget v2, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mNativeViewHeight:I

    int-to-float v2, v2

    move/from16 v18, v14

    int-to-float v14, v4

    invoke-virtual {v0, v13, v14}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->convertHeight(Ljava/lang/String;F)F

    move-result v13

    invoke-static {v2, v13}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    move/from16 v14, v18

    goto :goto_83

    :cond_7b
    move/from16 v18, v14

    .line 27
    iget v2, v2, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    goto :goto_83

    :cond_80
    move/from16 v18, v14

    move v2, v4

    :goto_83
    if-eqz v12, :cond_96

    .line 31
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 32
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_96

    int-to-float v13, v3

    .line 33
    invoke-virtual {v0, v11, v13}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->convertWidth(Ljava/lang/String;F)F

    move-result v11

    float-to-int v11, v11

    goto :goto_97

    :cond_96
    move v11, v3

    :goto_97
    if-eqz v10, :cond_a9

    .line 37
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 38
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a9

    int-to-float v13, v4

    .line 39
    invoke-virtual {v0, v9, v13}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->convertHeight(Ljava/lang/String;F)F

    move-result v9

    float-to-int v15, v9

    :cond_a9
    if-eqz v6, :cond_bc

    .line 44
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_bc

    int-to-float v9, v3

    .line 46
    invoke-virtual {v0, v5, v9}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->convertWidth(Ljava/lang/String;F)F

    move-result v5

    float-to-int v5, v5

    goto :goto_be

    :cond_bc
    move/from16 v5, p3

    :goto_be
    if-eqz v8, :cond_d1

    .line 50
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d1

    int-to-float v9, v3

    .line 52
    invoke-virtual {v0, v7, v9}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->convertWidth(Ljava/lang/String;F)F

    move-result v7

    float-to-int v7, v7

    goto :goto_d2

    :cond_d1
    const/4 v7, 0x0

    :goto_d2
    if-eqz v16, :cond_e7

    move-object/from16 v9, p1

    .line 56
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e7

    int-to-float v9, v4

    .line 58
    invoke-virtual {v0, v1, v9}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->convertHeight(Ljava/lang/String;F)F

    move-result v1

    float-to-int v1, v1

    goto :goto_e8

    :cond_e7
    const/4 v1, 0x0

    :goto_e8
    if-nez v6, :cond_100

    if-nez v12, :cond_f0

    if-eqz v8, :cond_f0

    neg-int v5, v7

    goto :goto_107

    :cond_f0
    if-eqz v12, :cond_f8

    if-nez v8, :cond_f8

    sub-int/2addr v3, v11

    .line 66
    div-int/lit8 v5, v3, 0x2

    goto :goto_107

    :cond_f8
    if-eqz v12, :cond_107

    if-eqz v8, :cond_107

    sub-int/2addr v3, v11

    sub-int v5, v3, v7

    goto :goto_107

    :cond_100
    if-nez v12, :cond_107

    if-eqz v8, :cond_107

    sub-int/2addr v3, v5

    sub-int v11, v3, v7

    :cond_107
    :goto_107
    if-nez v10, :cond_11f

    if-nez v14, :cond_10f

    if-eqz v16, :cond_10f

    neg-int v15, v1

    goto :goto_126

    :cond_10f
    if-eqz v14, :cond_117

    if-nez v16, :cond_117

    sub-int/2addr v4, v2

    .line 80
    div-int/lit8 v15, v4, 0x2

    goto :goto_126

    :cond_117
    if-eqz v14, :cond_126

    if-eqz v16, :cond_126

    sub-int/2addr v4, v2

    sub-int v15, v4, v1

    goto :goto_126

    :cond_11f
    if-nez v14, :cond_126

    if-eqz v16, :cond_126

    sub-int/2addr v4, v15

    sub-int v2, v4, v1

    .line 90
    :cond_126
    :goto_126
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 92
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 93
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 94
    iput v15, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 95
    iget-object v1, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mMainView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

###### Class io.dcloud.feature.nativeObj.richtext.RichTextLayout.AnonymousClass1 (io.dcloud.feature.nativeObj.richtext.RichTextLayout$1)
.class final Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$1;
.super Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/richtext/RichTextLayout;->makeRichText([Ljava/lang/Object;)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    return-void
.end method


# virtual methods
.method public getDefaultColor(Z)I
    .registers 2

    if-eqz p1, :cond_6

    const p1, -0xffff01

    goto :goto_7

    :cond_6
    const/4 p1, -0x1

    :goto_7
    return p1
.end method

###### Class io.dcloud.feature.nativeObj.richtext.RichTextLayout.DefaultAssets (io.dcloud.feature.nativeObj.richtext.RichTextLayout$DefaultAssets)
.class Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/nativeObj/richtext/IAssets;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/richtext/RichTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultAssets"
.end annotation


# instance fields
.field isClick:Z

.field mCallBackId:Ljava/lang/String;

.field mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

.field mWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;-><init>(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;)V

    return-void
.end method

.method constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 4
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->isClick:Z

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->mCallBackId:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 12
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    return-void
.end method


# virtual methods
.method public convert2InputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lio/dcloud/common/DHInterface/IApp;->obtainResInStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public convertHeight(Ljava/lang/String;F)F
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    if-eqz v0, :cond_10

    .line 2
    iget v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->getScale()F

    move-result v1

    invoke-static {p1, v0, p2, v1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result p1

    return p1

    .line 4
    :cond_10
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->getScale()F

    move-result v1

    invoke-static {p1, v0, p2, v1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result p1

    return p1
.end method

.method public convertWidth(Ljava/lang/String;F)F
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    if-eqz v0, :cond_10

    .line 2
    iget v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->getScale()F

    move-result v1

    invoke-static {p1, v0, p2, v1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result p1

    return p1

    .line 4
    :cond_10
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->getScale()F

    move-result v1

    invoke-static {p1, v0, p2, v1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result p1

    return p1
.end method

.method public getDefaultColor(Z)I
    .registers 2

    if-eqz p1, :cond_6

    const p1, -0xffff01

    goto :goto_8

    :cond_6
    const/high16 p1, -0x1000000

    :goto_8
    return p1
.end method

.method public getOnClickCallBackId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->mCallBackId:Ljava/lang/String;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    if-eqz v0, :cond_7

    .line 2
    iget v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    return v0

    .line 4
    :cond_7
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    return v0
.end method

.method public isClick()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->isClick:Z

    return v0
.end method

.method public loadResource(Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;->getInstance()Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;

    move-result-object v0

    iget-object v1, p1, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->url:Ljava/lang/String;

    new-instance v2, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets$1;

    invoke-direct {v2, p0, p1}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets$1;-><init>(Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;)V

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/dcloudimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;)V

    return-void
.end method

.method public setClick(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->isClick:Z

    return-void
.end method

.method public setOnClickCallBackId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->mCallBackId:Ljava/lang/String;

    return-void
.end method

.method public stringToColor(Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

###### Class io.dcloud.feature.nativeObj.richtext.RichTextLayout.DefaultAssets.AnonymousClass1 (io.dcloud.feature.nativeObj.richtext.RichTextLayout$DefaultAssets$1)
.class Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->loadResource(Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;

.field final synthetic val$loader:Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets$1;->this$0:Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets$1;->val$loader:Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets$1;->val$loader:Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;

    invoke-virtual {p1, p3}, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->onComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/dcloudimageloader/core/assist/FailReason;)V
    .registers 4

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.richtext.RichTextLayout.RichTextLayoutHolder (io.dcloud.feature.nativeObj.richtext.RichTextLayout$RichTextLayoutHolder)
.class public Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/nativeObj/richtext/IAssets;
.implements Lio/dcloud/feature/nativeObj/INativeViewChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/richtext/RichTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RichTextLayoutHolder"
.end annotation


# instance fields
.field public isClick:Z

.field mCallBackId:Ljava/lang/String;

.field mDefaultAssets:Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;

.field mItemId:Ljava/lang/String;

.field public mMainView:Landroid/widget/TextView;

.field mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

.field mNativeViewHeight:I

.field mWebView:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mMainView:Landroid/widget/TextView;

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    .line 4
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    .line 5
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mItemId:Ljava/lang/String;

    const/4 v1, -0x2

    .line 6
    iput v1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mNativeViewHeight:I

    .line 7
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mDefaultAssets:Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->isClick:Z

    .line 9
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mCallBackId:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    .line 13
    iput-object p3, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    .line 14
    iput-object p4, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mItemId:Ljava/lang/String;

    .line 15
    new-instance p4, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder$1;

    invoke-direct {p4, p0, p1}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder$1;-><init>(Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;Landroid/content/Context;)V

    iput-object p4, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mMainView:Landroid/widget/TextView;

    .line 27
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 28
    new-instance p1, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;

    invoke-direct {p1, p2, p3}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;-><init>(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;)V

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mDefaultAssets:Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;

    return-void
.end method


# virtual methods
.method public convert2InputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mDefaultAssets:Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->convert2InputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public convertHeight(Ljava/lang/String;F)F
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mDefaultAssets:Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->convertHeight(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public convertWidth(Ljava/lang/String;F)F
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mDefaultAssets:Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->convertWidth(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getDefaultColor(Z)I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mDefaultAssets:Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->getDefaultColor(Z)I

    move-result p1

    return p1
.end method

.method getIWebview()Lio/dcloud/common/DHInterface/IWebview;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    return-object v0
.end method

.method public getOnClickCallBackId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mCallBackId:Ljava/lang/String;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    return v0
.end method

.method public isClick()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->isClick:Z

    return v0
.end method

.method public loadResource(Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mDefaultAssets:Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->loadResource(Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;)V

    return-void
.end method

.method public obtainMainView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mMainView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    const/4 v3, -0x2

    if-eq v1, v3, :cond_1e

    if-eq v1, v2, :cond_1e

    .line 3
    iget-object v4, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget v4, v4, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 5
    :cond_1e
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v0, v3, :cond_32

    if-eq v0, v2, :cond_32

    .line 6
    iget v1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mNativeViewHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 8
    :cond_32
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setClick(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->isClick:Z

    return-void
.end method

.method public setOnClickCallBackId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mCallBackId:Ljava/lang/String;

    return-void
.end method

.method public stringToColor(Ljava/lang/String;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mDefaultAssets:Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$DefaultAssets;->stringToColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateLayout()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_13

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget v1, v1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mNativeViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    :cond_13
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget v2, v1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    invoke-virtual {v1}, Lio/dcloud/feature/nativeObj/NativeView;->isStatusBar()Z

    move-result v1

    if-eqz v1, :cond_20

    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 6
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget v2, v1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 7
    iget v2, v1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 8
    iget v2, v1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iput v2, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mNativeViewHeight:I

    if-nez v2, :cond_47

    .line 9
    iget-object v1, v1, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wrap_content"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, -0x2

    .line 10
    iput v1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mNativeViewHeight:I

    .line 12
    :cond_47
    iget v1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;->mNativeViewHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.richtext.RichTextLayout.RichTextLayoutHolder.AnonymousClass1 (io.dcloud.feature.nativeObj.richtext.RichTextLayout$RichTextLayoutHolder$1)
.class Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder$1;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder$1;->this$0:Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_15

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method
