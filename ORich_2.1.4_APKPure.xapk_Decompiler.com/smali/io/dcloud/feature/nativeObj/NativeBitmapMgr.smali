###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr (io.dcloud.feature.nativeObj.NativeBitmapMgr)
.class public Lio/dcloud/feature/nativeObj/NativeBitmapMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;
    }
.end annotation


# instance fields
.field public final SUCCESS_INFO:Ljava/lang/String;

.field private mIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNativeViews:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/nativeObj/NativeView;",
            ">;"
        }
    .end annotation
.end field

.field private mSnaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/DHInterface/INativeBitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mIds:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    const-string v0, "{path:\'file://%s\', w:%d, h:%d, size:%d}"

    .line 920
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->SUCCESS_INFO:Ljava/lang/String;

    return-void
.end method

.method private createBitmap(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3
    :cond_1b
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    new-instance v1, Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-direct {v1, p1, p3, p2, p4}, Lio/dcloud/feature/nativeObj/NativeBitmap;-><init>(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mIds:Ljava/util/HashMap;

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    return-void
.end method

.method private getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/feature/nativeObj/NativeView;

    if-nez p2, :cond_2f

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/nativeObj/NativeView;

    .line 4
    iget-object v2, v1, Lio/dcloud/feature/nativeObj/NativeView;->mID:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object p2, v1

    :cond_2f
    return-object p2
.end method

.method private load(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    move-object v5, v1

    goto :goto_1b

    :cond_15
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;

    invoke-direct {v0, p0, p1, p4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;-><init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    move-object v5, v0

    .line 9
    :goto_1b
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v6, v1

    goto :goto_29

    :cond_23
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;

    invoke-direct {v0, p0, p1, p4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;-><init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    move-object v6, v0

    :goto_29
    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    .line 10
    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/nativeObj/NativeBitmap;->load(Lio/dcloud/common/DHInterface/IWebview;Landroid/content/Context;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method private loadBase64Data(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, v1

    goto :goto_e

    :cond_9
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;

    invoke-direct {v0, p0, p1, p4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;-><init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 9
    :goto_e
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_1a

    :cond_15
    new-instance v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;

    invoke-direct {v1, p0, p1, p4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;-><init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 10
    :goto_1a
    invoke-virtual {p2, p3, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->loadBase64Data(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method private save(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 14

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

    .line 2
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v4, p4}, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v5

    .line 3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1e

    move-object v6, v0

    goto :goto_24

    :cond_1e
    new-instance p4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;

    invoke-direct {p4, p0, p1, p5}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;-><init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    move-object v6, p4

    .line 15
    :goto_24
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2c

    move-object v7, v0

    goto :goto_32

    :cond_2c
    new-instance p4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;

    invoke-direct {p4, p0, p1, p5}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;-><init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    move-object v7, p4

    :goto_32
    move-object v1, p2

    move-object v3, p3

    .line 16
    invoke-virtual/range {v1 .. v7}, Lio/dcloud/feature/nativeObj/NativeBitmap;->save(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;FLio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/INativeBitmap;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_51

    .line 3
    :try_start_16
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/INativeBitmap;->clear()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v1

    .line 5
    :try_start_1b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 8
    :cond_1f
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 12
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/nativeObj/NativeView;

    if-eqz v1, :cond_33

    .line 14
    invoke-virtual {v1}, Lio/dcloud/feature/nativeObj/NativeView;->clearNativeViewData()V

    goto :goto_33

    .line 17
    :cond_45
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 19
    invoke-static {}, Lio/dcloud/feature/nativeObj/NativeTypefaceFactory;->clearCache()V

    .line 20
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_55
    return-void
.end method

.method public destroyNativeView(Lio/dcloud/feature/nativeObj/NativeView;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/NativeView;->clearNativeViewData()V

    if-ne v0, p1, :cond_15

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mUUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 6
    :cond_15
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1c
    return-void
.end method

.method public doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    const-string v0, "addNativeView"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4a

    .line 2
    check-cast p2, [Ljava/lang/Object;

    .line 3
    aget-object p1, p2, v2

    check-cast p1, Lio/dcloud/common/DHInterface/IFrameView;

    .line 4
    aget-object p2, p2, v3

    check-cast p2, Ljava/lang/String;

    .line 5
    invoke-direct {p0, p2, p2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object p2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNativeView outter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "adadad"

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_18f

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNativeView inner"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, p1}, Lio/dcloud/feature/nativeObj/NativeView;->attachToViewGroup(Lio/dcloud/common/DHInterface/IFrameView;)V

    goto/16 :goto_18f

    :cond_4a
    const-string v0, "removeNativeView"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 12
    check-cast p2, [Ljava/lang/Object;

    .line 14
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1, p1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object p1

    if-eqz p1, :cond_18f

    .line 17
    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/NativeView;->removeFromViewGroup()V

    goto/16 :goto_18f

    :cond_63
    const-string v0, "getNativeView"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 21
    :try_start_6b
    check-cast p2, [Ljava/lang/Object;

    .line 22
    aget-object p1, p2, v2

    check-cast p1, Lio/dcloud/common/DHInterface/IFrameView;

    .line 23
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1, p1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v1
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_79} :catch_7b

    goto/16 :goto_18f

    :catch_7b
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_18f

    :cond_81
    const-string v0, "makeRichText"

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 29
    check-cast p2, [Ljava/lang/Object;

    .line 30
    invoke-static {p2}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout;->makeRichText([Ljava/lang/Object;)Landroid/widget/TextView;

    move-result-object p1

    goto/16 :goto_190

    :cond_91
    const-string v0, "View"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_11f

    .line 33
    :try_start_9a
    check-cast p2, [Ljava/lang/Object;

    .line 34
    aget-object p1, p2, v2

    check-cast p1, Lio/dcloud/common/DHInterface/IFrameView;

    .line 35
    aget-object p1, p2, v3

    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    .line 36
    aget-object v0, p2, v4

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    const/4 v0, 0x3

    .line 37
    aget-object v0, p2, v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const/4 v0, 0x4

    .line 38
    aget-object v0, p2, v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_bb

    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_bb
    move-object v10, v0

    .line 43
    array-length v0, p2

    const/4 v2, 0x5

    if-le v0, v2, :cond_c5

    .line 44
    aget-object v0, p2, v2

    check-cast v0, Lorg/json/JSONArray;

    goto :goto_c6

    :cond_c5
    move-object v0, v1

    .line 47
    :goto_c6
    array-length v2, p2

    const/4 v3, 0x6

    if-le v2, v3, :cond_cf

    .line 48
    aget-object p2, p2, v3

    check-cast p2, Ljava/lang/String;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_ce} :catch_119

    goto :goto_d1

    :cond_cf
    const-string p2, "nativeView"

    .line 50
    :goto_d1
    :try_start_d1
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18f

    const-string v2, "ImageSlider"

    .line 52
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 53
    new-instance p2, Lio/dcloud/feature/nativeObj/NativeImageSlider;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v5, p2

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lio/dcloud/feature/nativeObj/NativeImageSlider;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_10c

    :cond_ed
    const-string v2, "TitleNView"

    .line 55
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_101

    .line 56
    new-instance p2, Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v5, p2

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lio/dcloud/feature/nativeObj/TitleNView;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_10c

    .line 58
    :cond_101
    new-instance p2, Lio/dcloud/feature/nativeObj/NativeView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v5, p2

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lio/dcloud/feature/nativeObj/NativeView;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 60
    :goto_10c
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    iget-object v3, p2, Lio/dcloud/feature/nativeObj/NativeView;->mUUID:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0, p1, p2, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->initViewDrawItme(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONArray;)V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_116} :catch_119

    move-object p1, p2

    goto/16 :goto_190

    :catch_119
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_18f

    :cond_11f
    const-string v0, "updateSubNViews"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18f

    .line 68
    check-cast p2, [Ljava/lang/Object;

    .line 70
    aget-object p1, p2, v3

    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    .line 71
    aget-object p2, p2, v4

    check-cast p2, Lorg/json/JSONArray;

    .line 72
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    const/4 v4, 0x0

    .line 73
    :goto_138
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_18f

    .line 75
    :try_start_13e
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    .line 76
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 77
    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18c

    .line 79
    iget-object v7, v0, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->mChildNativeViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_154
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/dcloud/common/DHInterface/INativeView;

    .line 80
    invoke-interface {v8}, Lio/dcloud/common/DHInterface/INativeView;->getViewId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_154

    .line 81
    check-cast v8, Lio/dcloud/feature/nativeObj/NativeView;

    goto :goto_16e

    :cond_16d
    move-object v8, v1

    :goto_16e
    if-eqz v8, :cond_18c

    const-string v6, "tags"

    .line 87
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "styles"

    .line 88
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v6, :cond_180

    const/4 v7, 0x1

    goto :goto_181

    :cond_180
    const/4 v7, 0x0

    .line 90
    :goto_181
    invoke-virtual {v8, v5, v7}, Lio/dcloud/feature/nativeObj/NativeView;->setStyle(Lorg/json/JSONObject;Z)V

    .line 91
    invoke-virtual {p0, p1, v8, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->initViewDrawItme(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONArray;)V
    :try_end_187
    .catch Lorg/json/JSONException; {:try_start_13e .. :try_end_187} :catch_188

    goto :goto_18c

    :catch_188
    move-exception v5

    .line 95
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    :cond_18c
    :goto_18c
    add-int/lit8 v4, v4, 0x1

    goto :goto_138

    :cond_18f
    :goto_18f
    move-object p1, v1

    :goto_190
    return-object p1
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 24

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p3

    const-string v0, "viewId"

    const-string v2, "color"

    const/4 v6, 0x0

    .line 1
    :try_start_b
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    if-nez v3, :cond_16

    return-object v6

    .line 5
    :cond_16
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_686

    .line 9
    :try_start_19
    invoke-static/range {p2 .. p2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->valueOf(Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    move-result-object v4
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_1e

    goto :goto_1f

    :catch_1e
    move-object v4, v6

    .line 14
    :goto_1f
    :try_start_1f
    sget-object v5, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_686

    const-string v5, "false"

    const-string v10, "ImageSlider"

    const-string v11, "null"

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v8, 0x0

    packed-switch v4, :pswitch_data_696

    :catch_35
    :cond_35
    :goto_35
    move-object/from16 v19, v6

    goto/16 :goto_683

    .line 566
    :pswitch_39
    :try_start_39
    aget-object v0, v1, v8

    .line 567
    aget-object v1, v1, v15

    .line 568
    invoke-direct {v7, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 569
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->getViewType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 570
    check-cast v0, Lio/dcloud/feature/nativeObj/NativeImageSlider;

    .line 571
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->getCurrentImageIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_27e

    .line 572
    :pswitch_59
    aget-object v0, v1, v8

    .line 573
    aget-object v2, v1, v15

    .line 574
    aget-object v1, v1, v14

    .line 575
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    .line 576
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->getViewType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 577
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 578
    check-cast v0, Lio/dcloud/feature/nativeObj/NativeImageSlider;

    .line 579
    invoke-virtual {v0, v9, v2}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->addImages(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    goto :goto_35

    .line 580
    :pswitch_80
    aget-object v0, v1, v8

    .line 581
    aget-object v2, v1, v15

    .line 582
    aget-object v1, v1, v14

    .line 583
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    .line 584
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->getViewType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 585
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 586
    check-cast v0, Lio/dcloud/feature/nativeObj/NativeImageSlider;

    .line 587
    invoke-virtual {v0, v9, v2}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->setImages(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    goto :goto_35

    .line 588
    :pswitch_a7
    aget-object v0, v1, v8

    .line 589
    aget-object v2, v1, v15

    .line 590
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_af} :catch_1c5

    if-eqz v0, :cond_35

    .line 593
    :try_start_b1
    new-instance v2, Lorg/json/JSONArray;

    aget-object v1, v1, v14

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v7, v9, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->initViewDrawItme(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONArray;)V
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_b1 .. :try_end_bb} :catch_35
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_bb} :catch_1c5

    goto/16 :goto_35

    .line 595
    :pswitch_bd
    :try_start_bd
    aget-object v0, v1, v8

    .line 596
    aget-object v2, v1, v15

    .line 597
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v8

    if-eqz v8, :cond_35

    .line 599
    aget-object v0, v1, v14

    .line 601
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_dc

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dc

    .line 602
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v2

    goto :goto_dd

    :cond_dc
    move-object v14, v6

    .line 604
    :goto_dd
    aget-object v16, v1, v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-string v17, "clear"

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v9, p1

    .line 605
    invoke-virtual/range {v8 .. v19}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    goto/16 :goto_35

    .line 606
    :pswitch_f1
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->getInstance(Landroid/app/Activity;)Lio/dcloud/common/adapter/ui/FrameSwitchView;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->isInit()Z

    move-result v2

    if-nez v2, :cond_102

    .line 608
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->initView()V

    .line 610
    :cond_102
    aget-object v1, v1, v8

    .line 611
    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->clearSwitchAnimation(Ljava/lang/String;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_107} :catch_1c5

    goto/16 :goto_35

    .line 612
    :pswitch_109
    :try_start_109
    aget-object v10, v1, v8

    .line 613
    aget-object v2, v1, v15

    .line 614
    array-length v4, v1

    if-le v4, v14, :cond_113

    aget-object v4, v1, v14

    goto :goto_114

    :cond_113
    move-object v4, v6

    .line 615
    :goto_114
    array-length v5, v1

    if-le v5, v13, :cond_11a

    aget-object v1, v1, v13

    goto :goto_11b

    :cond_11a
    move-object v1, v6

    .line 616
    :goto_11b
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 620
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_128} :catch_35

    const-string v12, "uuid"

    const-string v13, "texts"

    if-nez v8, :cond_14b

    .line 621
    :try_start_12e
    iget-object v5, v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_148

    .line 622
    iget-object v5, v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 623
    iget-object v8, v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/nativeObj/NativeView;

    iput-boolean v15, v2, Lio/dcloud/feature/nativeObj/NativeView;->mShow:Z

    move-object v2, v6

    goto :goto_157

    :cond_148
    move-object v2, v6

    move-object v5, v2

    goto :goto_157

    .line 626
    :cond_14b
    invoke-virtual {v5, v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 627
    invoke-virtual {v5, v12, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 628
    invoke-virtual {v7, v5}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v5

    .line 633
    :goto_157
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_194

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_194

    .line 634
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_185

    .line 637
    iget-object v4, v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 638
    iget-object v8, v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeView;

    iput-boolean v15, v0, Lio/dcloud/feature/nativeObj/NativeView;->mShow:Z

    move-object v13, v4

    move-object v14, v6

    goto :goto_196

    .line 640
    :cond_185
    invoke-virtual {v8, v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-virtual {v8, v12, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 642
    invoke-virtual {v7, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v4

    move-object v14, v0

    move-object v13, v4

    goto :goto_196

    :cond_194
    move-object v13, v6

    move-object v14, v13

    .line 646
    :goto_196
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->getInstance(Landroid/app/Activity;)Lio/dcloud/common/adapter/ui/FrameSwitchView;

    move-result-object v8

    .line 647
    invoke-virtual {v8}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->isInit()Z

    move-result v0

    if-nez v0, :cond_1a7

    .line 648
    invoke-virtual {v8}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->initView()V

    :cond_1a7
    move-object/from16 v9, p1

    move-object v11, v5

    move-object v12, v2

    move-object v15, v1

    .line 650
    invoke-virtual/range {v8 .. v15}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->startAnimation(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_1af} :catch_35

    goto/16 :goto_35

    .line 651
    :pswitch_1b1
    :try_start_1b1
    aget-object v0, v1, v8

    invoke-virtual {v7, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    if-eqz v0, :cond_1bf

    .line 653
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->toBase64Data()Ljava/lang/String;

    move-result-object v6

    .line 654
    :cond_1bf
    invoke-static {v6, v15}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1c3} :catch_1c5

    goto/16 :goto_27e

    :catch_1c5
    move-exception v0

    goto/16 :goto_689

    .line 655
    :pswitch_1c8
    :try_start_1c8
    aget-object v0, v1, v8

    invoke-virtual {v7, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    .line 656
    aget-object v2, v1, v15

    .line 657
    new-instance v5, Lorg/json/JSONObject;

    aget-object v4, v1, v14

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 658
    aget-object v8, v1, v13

    .line 659
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1e3} :catch_686

    if-eqz v0, :cond_35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v0

    move-object/from16 v19, v6

    move-object v6, v8

    .line 661
    :try_start_1ed
    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->save(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_683

    :pswitch_1f2
    move-object/from16 v19, v6

    .line 662
    aget-object v0, v1, v8

    invoke-virtual {v7, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    .line 663
    aget-object v2, v1, v15

    .line 664
    aget-object v1, v1, v14

    if-eqz v0, :cond_683

    .line 666
    invoke-direct {v7, v9, v0, v2, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->loadBase64Data(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_683

    :pswitch_207
    move-object/from16 v19, v6

    .line 667
    aget-object v0, v1, v8

    invoke-virtual {v7, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    .line 668
    aget-object v2, v1, v15

    .line 669
    aget-object v1, v1, v14

    if-eqz v0, :cond_683

    .line 671
    invoke-direct {v7, v9, v0, v2, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->load(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_683

    :pswitch_21c
    move-object/from16 v19, v6

    .line 672
    aget-object v0, v1, v8

    invoke-virtual {v7, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    if-eqz v0, :cond_683

    .line 674
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->recycle()V

    goto/16 :goto_683

    :pswitch_22d
    move-object/from16 v19, v6

    .line 675
    aget-object v0, v1, v8

    invoke-virtual {v7, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    .line 676
    iget-object v1, v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 677
    iget-object v2, v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget-object v1, v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_683

    .line 680
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->clear()V

    goto/16 :goto_683

    :pswitch_258
    move-object/from16 v19, v6

    .line 681
    aget-object v0, v1, v8

    invoke-virtual {v7, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapById(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    if-eqz v0, :cond_269

    .line 682
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->toJsString()Ljava/lang/String;

    move-result-object v6
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_268} :catch_67f

    goto :goto_26b

    :cond_269
    move-object/from16 v6, v19

    .line 683
    :goto_26b
    :try_start_26b
    invoke-static {v6, v8}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_26f
    .catch Ljava/lang/Exception; {:try_start_26b .. :try_end_26f} :catch_1c5

    goto :goto_27e

    :pswitch_270
    move-object/from16 v19, v6

    .line 684
    :try_start_272
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getItems()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_27a
    .catch Ljava/lang/Exception; {:try_start_272 .. :try_end_27a} :catch_67f

    .line 685
    :try_start_27a
    invoke-static {v1, v8}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_27e
    .catch Ljava/lang/Exception; {:try_start_27a .. :try_end_27e} :catch_281

    :goto_27e
    move-object v6, v0

    goto/16 :goto_695

    :catch_281
    move-exception v0

    move-object v6, v1

    goto/16 :goto_689

    :pswitch_285
    move-object/from16 v19, v6

    .line 686
    :try_start_287
    array-length v0, v1

    if-le v0, v14, :cond_2a8

    .line 687
    aget-object v6, v1, v14

    .line 688
    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_293

    goto :goto_2aa

    .line 690
    :cond_293
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a8

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a8

    .line 691
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v6}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2aa

    :cond_2a8
    move-object/from16 v6, v19

    .line 696
    :goto_2aa
    aget-object v0, v1, v8

    aget-object v1, v1, v15

    invoke-direct {v7, v3, v0, v1, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->createBitmap(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_683

    :pswitch_2b3
    move-object/from16 v19, v6

    .line 697
    aget-object v0, v1, v8

    .line 698
    aget-object v1, v1, v15

    .line 699
    invoke-direct {v7, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_2d6

    .line 700
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2d6

    .line 701
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2cc

    goto :goto_2cd

    :cond_2cc
    const/4 v15, 0x0

    :goto_2cd
    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_27e

    .line 703
    :cond_2d6
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_27e

    :pswitch_2df
    move-object/from16 v19, v6

    .line 704
    aget-object v0, v1, v8

    .line 705
    aget-object v3, v1, v15

    .line 706
    invoke-direct {v7, v0, v3}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v8

    if-eqz v8, :cond_683

    .line 710
    aget-object v0, v1, v14

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2f1
    .catch Ljava/lang/Exception; {:try_start_287 .. :try_end_2f1} :catch_67f

    const-string v3, "#FFFFFF"

    if-nez v0, :cond_313

    .line 712
    :try_start_2f5
    new-instance v6, Lorg/json/JSONObject;

    aget-object v0, v1, v14

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2fc
    .catch Lorg/json/JSONException; {:try_start_2f5 .. :try_end_2fc} :catch_309
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_2fc} :catch_67f

    .line 713
    :try_start_2fc
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_315

    .line 714
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_306
    .catch Lorg/json/JSONException; {:try_start_2fc .. :try_end_306} :catch_307
    .catch Ljava/lang/Exception; {:try_start_2fc .. :try_end_306} :catch_67f

    goto :goto_311

    :catch_307
    move-exception v0

    goto :goto_30c

    :catch_309
    move-exception v0

    move-object/from16 v6, v19

    .line 717
    :goto_30c
    :try_start_30c
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 718
    aget-object v0, v1, v14

    :goto_311
    move-object v3, v0

    goto :goto_315

    :cond_313
    move-object/from16 v6, v19

    .line 721
    :cond_315
    :goto_315
    aget-object v0, v1, v13

    .line 723
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32a

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32a

    .line 724
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v2

    goto :goto_32c

    :cond_32a
    move-object/from16 v14, v19

    .line 726
    :goto_32c
    aget-object v16, v1, v12
    :try_end_32e
    .catch Ljava/lang/Exception; {:try_start_30c .. :try_end_32e} :catch_67f

    .line 729
    :try_start_32e
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_332
    .catch Ljava/lang/Exception; {:try_start_32e .. :try_end_332} :catch_334

    :goto_332
    move v12, v0

    goto :goto_339

    .line 731
    :catch_334
    :try_start_334
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_332

    :goto_339
    const/4 v2, 0x5

    .line 733
    aget-object v0, v1, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v18, v0, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v17, "rect"

    move-object/from16 v9, p1

    move-object v15, v6

    .line 734
    invoke-virtual/range {v8 .. v18}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    goto/16 :goto_683

    :pswitch_34f
    move-object/from16 v19, v6

    .line 735
    aget-object v0, v1, v8

    .line 736
    aget-object v1, v1, v15

    .line 737
    invoke-direct {v7, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_683

    .line 739
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->clearAnimate()V

    goto/16 :goto_683

    :pswitch_360
    move-object/from16 v19, v6

    .line 740
    aget-object v0, v1, v8

    .line 741
    aget-object v1, v1, v15

    .line 742
    invoke-direct {v7, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_683

    .line 744
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->resetNativeView()V

    goto/16 :goto_683

    :pswitch_371
    move-object/from16 v19, v6

    .line 745
    aget-object v0, v1, v8

    .line 746
    aget-object v2, v1, v15

    .line 747
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_683

    .line 749
    aget-object v2, v1, v14

    .line 750
    aget-object v1, v1, v13

    .line 751
    invoke-virtual {v0, v9, v2, v1}, Lio/dcloud/feature/nativeObj/NativeView;->StartAnimate(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_683

    :pswitch_386
    move-object/from16 v19, v6

    .line 752
    aget-object v0, v1, v8

    .line 753
    aget-object v1, v1, v15

    .line 754
    invoke-direct {v7, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_683

    .line 756
    iget-object v2, v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->removeFromViewGroup()V

    goto/16 :goto_683

    :pswitch_39c
    move-object/from16 v19, v6

    .line 758
    aget-object v0, v1, v8

    .line 759
    aget-object v1, v1, v15

    .line 760
    invoke-direct {v7, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_683

    .line 762
    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 763
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_683

    .line 764
    instance-of v1, v0, Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz v1, :cond_683

    .line 765
    check-cast v0, Lio/dcloud/common/adapter/ui/DHImageView;

    .line 766
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->clear()V

    .line 767
    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_683

    :pswitch_3c1
    move-object/from16 v19, v6

    .line 768
    aget-object v0, v1, v8

    .line 769
    aget-object v1, v1, v15

    .line 770
    invoke-direct {v7, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_683

    .line 772
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 773
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 774
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3ea

    goto/16 :goto_683

    .line 782
    :cond_3ea
    iput-boolean v15, v0, Lio/dcloud/feature/nativeObj/NativeView;->mShow:Z

    .line 783
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_3f0
    if-ge v8, v2, :cond_3ff

    .line 786
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 787
    instance-of v3, v3, Lio/dcloud/feature/internal/splash/ISplash;

    if-eqz v3, :cond_3fc

    move v2, v8

    goto :goto_3ff

    :cond_3fc
    add-int/lit8 v8, v8, 0x1

    goto :goto_3f0

    .line 792
    :cond_3ff
    :goto_3ff
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_683

    :pswitch_404
    move-object/from16 v19, v6

    .line 793
    aget-object v0, v1, v8

    .line 794
    aget-object v2, v1, v15

    .line 795
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0
    :try_end_40e
    .catch Ljava/lang/Exception; {:try_start_334 .. :try_end_40e} :catch_67f

    .line 797
    :try_start_40e
    aget-object v2, v1, v14

    .line 799
    array-length v3, v1

    if-gt v12, v3, :cond_41d

    .line 800
    aget-object v1, v1, v13

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_41d
    if-eqz v0, :cond_683

    .line 803
    invoke-virtual {v0, v2, v8}, Lio/dcloud/feature/nativeObj/NativeView;->setInputFocusById(Ljava/lang/String;Z)V
    :try_end_422
    .catch Ljava/lang/Exception; {:try_start_40e .. :try_end_422} :catch_683

    goto/16 :goto_683

    :pswitch_424
    move-object/from16 v19, v6

    .line 804
    :try_start_426
    aget-object v0, v1, v8

    .line 805
    aget-object v2, v1, v15

    .line 806
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0
    :try_end_42e
    .catch Ljava/lang/Exception; {:try_start_426 .. :try_end_42e} :catch_67f

    .line 808
    :try_start_42e
    aget-object v1, v1, v14

    if-eqz v0, :cond_683

    .line 810
    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/NativeView;->getInputFocusById(Ljava/lang/String;)Z

    move-result v0

    .line 811
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_43e
    .catch Ljava/lang/Exception; {:try_start_42e .. :try_end_43e} :catch_683

    goto/16 :goto_27e

    :pswitch_440
    move-object/from16 v19, v6

    .line 812
    :try_start_442
    aget-object v0, v1, v8

    .line 813
    aget-object v2, v1, v15

    .line 814
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0
    :try_end_44a
    .catch Ljava/lang/Exception; {:try_start_442 .. :try_end_44a} :catch_67f

    .line 816
    :try_start_44a
    aget-object v1, v1, v14

    if-eqz v0, :cond_683

    .line 818
    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/NativeView;->getInputValueById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-static {v0, v15}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_456
    .catch Ljava/lang/Exception; {:try_start_44a .. :try_end_456} :catch_683

    goto/16 :goto_27e

    :pswitch_458
    move-object/from16 v19, v6

    .line 820
    :try_start_45a
    aget-object v0, v1, v8

    .line 821
    aget-object v2, v1, v15

    .line 822
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v8
    :try_end_462
    .catch Ljava/lang/Exception; {:try_start_45a .. :try_end_462} :catch_67f

    if-eqz v8, :cond_683

    .line 826
    :try_start_464
    new-instance v0, Lorg/json/JSONObject;

    aget-object v2, v1, v14

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_46b
    .catch Lorg/json/JSONException; {:try_start_464 .. :try_end_46b} :catch_46d
    .catch Ljava/lang/Exception; {:try_start_464 .. :try_end_46b} :catch_67f

    :goto_46b
    move-object v14, v0

    goto :goto_473

    .line 828
    :catch_46d
    :try_start_46d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_472
    .catch Ljava/lang/Exception; {:try_start_46d .. :try_end_472} :catch_67f

    goto :goto_46b

    .line 832
    :goto_473
    :try_start_473
    new-instance v0, Lorg/json/JSONObject;

    aget-object v2, v1, v13

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_47a
    .catch Lorg/json/JSONException; {:try_start_473 .. :try_end_47a} :catch_47c
    .catch Ljava/lang/Exception; {:try_start_473 .. :try_end_47a} :catch_67f

    :goto_47a
    move-object v15, v0

    goto :goto_482

    .line 834
    :catch_47c
    :try_start_47c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_481
    .catch Ljava/lang/Exception; {:try_start_47c .. :try_end_481} :catch_67f

    goto :goto_47a

    .line 838
    :goto_482
    :try_start_482
    aget-object v0, v1, v12
    :try_end_484
    .catch Ljava/lang/Exception; {:try_start_482 .. :try_end_484} :catch_487

    move-object/from16 v16, v0

    goto :goto_489

    :catch_487
    move-object/from16 v16, v19

    :goto_489
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    :try_start_48d
    const-string v17, "input"

    const/16 v18, 0x1

    move-object/from16 v9, p1

    .line 840
    invoke-virtual/range {v8 .. v18}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    goto/16 :goto_683

    :pswitch_498
    move-object/from16 v19, v6

    .line 841
    aget-object v0, v1, v8

    .line 842
    aget-object v2, v1, v15

    .line 843
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v8

    .line 844
    aget-object v11, v1, v14
    :try_end_4a4
    .catch Ljava/lang/Exception; {:try_start_48d .. :try_end_4a4} :catch_67f

    if-eqz v8, :cond_683

    if-eqz v11, :cond_683

    .line 848
    :try_start_4a8
    new-instance v0, Lorg/json/JSONObject;

    aget-object v2, v1, v13

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4af
    .catch Lorg/json/JSONException; {:try_start_4a8 .. :try_end_4af} :catch_4b1
    .catch Ljava/lang/Exception; {:try_start_4a8 .. :try_end_4af} :catch_67f

    :goto_4af
    move-object v14, v0

    goto :goto_4b7

    .line 850
    :catch_4b1
    :try_start_4b1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_4b6
    .catch Ljava/lang/Exception; {:try_start_4b1 .. :try_end_4b6} :catch_67f

    goto :goto_4af

    .line 854
    :goto_4b7
    :try_start_4b7
    new-instance v0, Lorg/json/JSONObject;

    aget-object v2, v1, v12

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4be
    .catch Lorg/json/JSONException; {:try_start_4b7 .. :try_end_4be} :catch_4c0
    .catch Ljava/lang/Exception; {:try_start_4b7 .. :try_end_4be} :catch_67f

    :goto_4be
    const/4 v2, 0x5

    goto :goto_4c6

    .line 856
    :catch_4c0
    :try_start_4c0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_4be

    .line 858
    :goto_4c6
    aget-object v16, v1, v2

    const/4 v2, 0x6

    .line 859
    aget-object v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v18, v1, 0x1

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const-string v17, "font"

    move-object/from16 v9, p1

    move-object v15, v0

    .line 860
    invoke-virtual/range {v8 .. v18}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    goto/16 :goto_683

    :pswitch_4de
    move-object/from16 v19, v6

    .line 861
    aget-object v0, v1, v8

    .line 862
    aget-object v2, v1, v15

    .line 863
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v8

    if-eqz v8, :cond_683

    .line 865
    aget-object v0, v1, v14

    invoke-virtual {v7, v9, v3, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getSrcNativeBitmap(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeBitmap;

    move-result-object v10

    if-eqz v10, :cond_683

    .line 866
    invoke-virtual {v10}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_4f6
    .catch Ljava/lang/Exception; {:try_start_4c0 .. :try_end_4f6} :catch_67f

    if-eqz v0, :cond_683

    .line 869
    :try_start_4f8
    new-instance v0, Lorg/json/JSONObject;

    aget-object v2, v1, v13

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4ff
    .catch Lorg/json/JSONException; {:try_start_4f8 .. :try_end_4ff} :catch_501
    .catch Ljava/lang/Exception; {:try_start_4f8 .. :try_end_4ff} :catch_67f

    :goto_4ff
    move-object v13, v0

    goto :goto_507

    .line 871
    :catch_501
    :try_start_501
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_506
    .catch Ljava/lang/Exception; {:try_start_501 .. :try_end_506} :catch_67f

    goto :goto_4ff

    .line 875
    :goto_507
    :try_start_507
    new-instance v0, Lorg/json/JSONObject;

    aget-object v2, v1, v12

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_50e
    .catch Lorg/json/JSONException; {:try_start_507 .. :try_end_50e} :catch_511
    .catch Ljava/lang/Exception; {:try_start_507 .. :try_end_50e} :catch_67f

    :goto_50e
    move-object v14, v0

    const/4 v2, 0x5

    goto :goto_517

    .line 877
    :catch_511
    :try_start_511
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_50e

    .line 879
    :goto_517
    aget-object v16, v1, v2

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v15, 0x0

    const-string v17, "img"

    const/16 v18, 0x1

    move-object/from16 v9, p1

    .line 880
    invoke-virtual/range {v8 .. v18}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    goto/16 :goto_683

    :pswitch_527
    move-object/from16 v19, v6

    .line 881
    aget-object v0, v1, v8

    .line 882
    aget-object v2, v1, v15

    .line 883
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    .line 884
    aget-object v3, v1, v14

    if-eqz v0, :cond_683

    .line 885
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_539
    .catch Ljava/lang/Exception; {:try_start_511 .. :try_end_539} :catch_67f

    if-nez v2, :cond_683

    .line 888
    :try_start_53b
    new-instance v2, Lorg/json/JSONObject;

    aget-object v4, v1, v13

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_542
    .catch Lorg/json/JSONException; {:try_start_53b .. :try_end_542} :catch_544
    .catch Ljava/lang/Exception; {:try_start_53b .. :try_end_542} :catch_67f

    :goto_542
    move-object v4, v2

    goto :goto_54a

    .line 890
    :catch_544
    :try_start_544
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_549
    .catch Ljava/lang/Exception; {:try_start_544 .. :try_end_549} :catch_67f

    goto :goto_542

    .line 894
    :goto_54a
    :try_start_54a
    new-instance v2, Lorg/json/JSONObject;

    aget-object v5, v1, v12

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_551
    .catch Lorg/json/JSONException; {:try_start_54a .. :try_end_551} :catch_554
    .catch Ljava/lang/Exception; {:try_start_54a .. :try_end_551} :catch_67f

    :goto_551
    move-object v5, v2

    const/4 v2, 0x5

    goto :goto_55a

    .line 896
    :catch_554
    :try_start_554
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_551

    .line 898
    :goto_55a
    aget-object v6, v1, v2

    move-object v1, v0

    move-object/from16 v2, p1

    .line 899
    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/nativeObj/NativeView;->makeRichText(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_683

    :pswitch_564
    move-object/from16 v19, v6

    .line 900
    aget-object v0, v1, v8

    .line 901
    aget-object v0, v1, v15

    .line 903
    aget-object v0, v1, v14

    .line 904
    aget-object v2, v1, v13

    .line 905
    aget-object v1, v1, v12

    .line 906
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v3

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v5, 0xa

    new-array v6, v12, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v10

    aput-object v10, v6, v8

    const-string v10, "weex,io.dcloud.feature.weex.WeexFeature"

    aput-object v10, v6, v15

    const-string v10, "evalWeexJS"

    aput-object v10, v6, v14

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v9, v10, v8

    aput-object v0, v10, v15

    aput-object v2, v10, v14

    aput-object v1, v10, v13

    aput-object v10, v6, v13

    invoke-interface {v3, v4, v5, v6}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_683

    :pswitch_59d
    move-object/from16 v19, v6

    .line 907
    aget-object v0, v1, v8

    .line 908
    array-length v2, v1

    if-le v2, v15, :cond_5a7

    aget-object v6, v1, v15

    goto :goto_5a9

    :cond_5a7
    move-object/from16 v6, v19

    .line 909
    :goto_5a9
    invoke-direct {v7, v0, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_683

    .line 911
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_27e

    :pswitch_5b9
    move-object/from16 v19, v6

    .line 912
    aget-object v0, v1, v8

    .line 913
    aget-object v2, v1, v15

    .line 914
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_683

    .line 916
    aget-object v1, v1, v14

    .line 917
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_683

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_683

    .line 918
    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/NativeView;->setTouchEventRect(Ljava/lang/String;)V

    goto/16 :goto_683

    :pswitch_5d8
    move-object/from16 v19, v6

    .line 919
    aget-object v0, v1, v8

    .line 920
    aget-object v2, v1, v15

    .line 921
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_683

    .line 923
    aget-object v1, v1, v14

    .line 924
    invoke-static {v1, v15, v8}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/NativeView;->interceptTouchEvent(Z)V

    goto/16 :goto_683

    :pswitch_5ef
    move-object/from16 v19, v6

    .line 925
    aget-object v0, v1, v8

    .line 926
    aget-object v2, v1, v15

    .line 927
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_683

    .line 929
    aget-object v2, v1, v14

    .line 930
    aget-object v1, v1, v13

    .line 931
    invoke-virtual {v0, v2, v9, v1}, Lio/dcloud/feature/nativeObj/NativeView;->addEventListener(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_683

    :pswitch_604
    move-object/from16 v19, v6

    .line 932
    aget-object v0, v1, v8

    .line 933
    aget-object v2, v1, v15
    :try_end_60a
    .catch Ljava/lang/Exception; {:try_start_554 .. :try_end_60a} :catch_67f

    .line 936
    :try_start_60a
    new-instance v3, Lorg/json/JSONObject;

    aget-object v1, v1, v14

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_611
    .catch Lorg/json/JSONException; {:try_start_60a .. :try_end_611} :catch_612
    .catch Ljava/lang/Exception; {:try_start_60a .. :try_end_611} :catch_67f

    goto :goto_617

    .line 938
    :catch_612
    :try_start_612
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 940
    :goto_617
    invoke-direct {v7, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_683

    .line 942
    invoke-virtual {v0, v3, v15}, Lio/dcloud/feature/nativeObj/NativeView;->setStyle(Lorg/json/JSONObject;Z)V

    goto/16 :goto_683

    :pswitch_622
    move-object/from16 v19, v6

    .line 943
    aget-object v5, v1, v8

    .line 944
    aget-object v4, v1, v15

    .line 948
    array-length v0, v1

    if-le v0, v12, :cond_62e

    .line 949
    aget-object v0, v1, v12
    :try_end_62d
    .catch Ljava/lang/Exception; {:try_start_612 .. :try_end_62d} :catch_67f

    goto :goto_630

    :cond_62e
    const-string v0, "nativeView"

    .line 952
    :goto_630
    :try_start_630
    new-instance v2, Lorg/json/JSONObject;

    aget-object v3, v1, v14

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_637
    .catch Lorg/json/JSONException; {:try_start_630 .. :try_end_637} :catch_639
    .catch Ljava/lang/Exception; {:try_start_630 .. :try_end_637} :catch_67f

    :goto_637
    move-object v6, v2

    goto :goto_63f

    .line 954
    :catch_639
    :try_start_639
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_637

    .line 956
    :goto_63f
    array-length v2, v1
    :try_end_640
    .catch Ljava/lang/Exception; {:try_start_639 .. :try_end_640} :catch_67f

    if-le v2, v13, :cond_64b

    .line 958
    :try_start_642
    new-instance v2, Lorg/json/JSONArray;

    aget-object v1, v1, v13

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_649
    .catch Lorg/json/JSONException; {:try_start_642 .. :try_end_649} :catch_64b
    .catch Ljava/lang/Exception; {:try_start_642 .. :try_end_649} :catch_67f

    move-object v8, v2

    goto :goto_64d

    :catch_64b
    :cond_64b
    move-object/from16 v8, v19

    .line 963
    :goto_64d
    :try_start_64d
    iget-object v1, v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_683

    .line 965
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_668

    .line 966
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeImageSlider;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/nativeObj/NativeImageSlider;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_674

    .line 968
    :cond_668
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeView;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/nativeObj/NativeView;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 970
    :goto_674
    invoke-virtual {v7, v9, v0, v8}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->initViewDrawItme(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONArray;)V

    .line 971
    iget-object v1, v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lio/dcloud/feature/nativeObj/NativeView;->mUUID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67e
    .catch Ljava/lang/Exception; {:try_start_64d .. :try_end_67e} :catch_67f

    goto :goto_683

    :catch_67f
    move-exception v0

    move-object/from16 v6, v19

    goto :goto_689

    :catch_683
    :cond_683
    :goto_683
    move-object/from16 v6, v19

    goto :goto_695

    :catch_686
    move-exception v0

    move-object/from16 v19, v6

    .line 1505
    :goto_689
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeBitmapMgr"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_695
    return-object v6

    :pswitch_data_696
    .packed-switch 0x1
        :pswitch_622
        :pswitch_604
        :pswitch_5ef
        :pswitch_5d8
        :pswitch_5b9
        :pswitch_59d
        :pswitch_564
        :pswitch_527
        :pswitch_4de
        :pswitch_498
        :pswitch_458
        :pswitch_440
        :pswitch_424
        :pswitch_404
        :pswitch_3c1
        :pswitch_39c
        :pswitch_386
        :pswitch_371
        :pswitch_360
        :pswitch_34f
        :pswitch_2df
        :pswitch_2b3
        :pswitch_285
        :pswitch_270
        :pswitch_258
        :pswitch_22d
        :pswitch_21c
        :pswitch_207
        :pswitch_1f2
        :pswitch_1c8
        :pswitch_1b1
        :pswitch_109
        :pswitch_f1
        :pswitch_bd
        :pswitch_a7
        :pswitch_80
        :pswitch_59
        :pswitch_39
    .end packed-switch
.end method

.method public getBitmapById(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mIds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/DHInterface/INativeBitmap;

    return-object p1
.end method

.method public getItems()Lorg/json/JSONArray;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    :try_start_1b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/nativeObj/NativeBitmap;

    .line 9
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lio/dcloud/feature/nativeObj/NativeBitmap;->toJsString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2d} :catch_2e

    goto :goto_f

    :catch_2e
    nop

    goto :goto_f

    :cond_30
    return-object v0
.end method

.method public getSrcNativeBitmap(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeBitmap;
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    move-object v1, v0

    :goto_8
    if-eqz v1, :cond_18

    const-string p1, "id"

    .line 6
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapById(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    goto :goto_59

    .line 10
    :cond_18
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_37

    .line 12
    :cond_1f
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "null"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 13
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_37

    :cond_36
    move-object p3, v0

    .line 15
    :goto_37
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-direct {v0, p2, p1, p1, p3}, Lio/dcloud/feature/nativeObj/NativeBitmap;-><init>(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    :goto_59
    return-object v0
.end method

.method protected initViewDrawItme(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONArray;)V
    .registers 26

    move-object/from16 v0, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "richTextStyles"

    const-string v12, "rectStyles"

    const-string v11, "id"

    const-string v10, "color"

    if-eqz v14, :cond_1ef

    if-eqz v13, :cond_1ef

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 1
    :goto_14
    :try_start_14
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v9, v1, :cond_1e6

    .line 2
    invoke-virtual {v14, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    .line 5
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_2c

    :cond_2b
    move-object v8, v3

    :goto_2c
    const-string v2, "tag"

    .line 7
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "img"

    .line 8
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_38} :catch_1eb

    const-string v5, "position"

    if-eqz v4, :cond_98

    :try_start_3c
    const-string v2, "src"

    .line 9
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    move-object/from16 v7, p0

    invoke-virtual {v7, v0, v3, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getSrcNativeBitmap(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeBitmap;

    move-result-object v3
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4c} :catch_1eb

    .line 13
    :try_start_4c
    new-instance v2, Lorg/json/JSONObject;

    const-string v4, "sprite"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_57} :catch_58
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_57} :catch_1eb

    goto :goto_5d

    .line 15
    :catch_58
    :try_start_58
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_1eb

    :goto_5d
    move-object v6, v2

    .line 19
    :try_start_5e
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_5e .. :try_end_67} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_67} :catch_1eb

    move-object/from16 v16, v2

    goto :goto_71

    .line 21
    :catch_6a
    :try_start_6a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v16, v1

    :goto_71
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v17, 0x0

    const-string v18, "img"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v7, v16

    move-object/from16 v16, v8

    move-object/from16 v8, v17

    move/from16 v17, v9

    move-object/from16 v9, v16

    move-object/from16 v21, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v11

    move/from16 v11, v19

    move-object v14, v12

    move/from16 v12, v20

    .line 23
    invoke-virtual/range {v1 .. v12}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    goto :goto_e4

    :cond_98
    move-object/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v21, v10

    move-object/from16 v18, v11

    move-object v14, v12

    const-string v4, "font"

    .line 24
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_a7} :catch_1eb

    const-string v6, "text"

    if-eqz v4, :cond_e8

    .line 25
    :try_start_ab
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_af} :catch_1eb

    if-eqz v4, :cond_e4

    .line 29
    :try_start_b1
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_ba
    .catch Lorg/json/JSONException; {:try_start_b1 .. :try_end_ba} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_ba} :catch_1eb

    goto :goto_c0

    .line 31
    :catch_bb
    :try_start_bb
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c0} :catch_1eb

    :goto_c0
    move-object v7, v2

    .line 35
    :try_start_c1
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "textStyles"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_cc
    .catch Lorg/json/JSONException; {:try_start_c1 .. :try_end_cc} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_cc} :catch_1eb

    move-object v8, v2

    goto :goto_d4

    .line 37
    :catch_ce
    :try_start_ce
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v8, v1

    :goto_d4
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v10, "font"

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v9, v16

    .line 39
    invoke-virtual/range {v1 .. v12}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    :cond_e4
    :goto_e4
    move-object/from16 v20, v21

    goto/16 :goto_1db

    :cond_e8
    const-string v4, "rect"

    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_ee} :catch_1eb

    const-string v7, "null"

    if-eqz v4, :cond_152

    move-object/from16 v12, v21

    .line 43
    :try_start_f4
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 44
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_fe} :catch_1eb

    goto :goto_101

    :cond_ff
    const-string v2, "#FFFFFF"

    .line 46
    :goto_101
    :try_start_101
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_118

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_118

    .line 49
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v7, v5

    goto :goto_119

    :cond_118
    move-object v7, v3

    .line 54
    :goto_119
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12f

    .line 55
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12d

    .line 57
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_12d} :catch_1eb

    :cond_12d
    move-object v8, v1

    goto :goto_130

    :cond_12f
    move-object v8, v3

    .line 61
    :goto_130
    :try_start_130
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_134} :catch_136

    :goto_134
    move v5, v1

    goto :goto_13b

    .line 63
    :catch_136
    :try_start_136
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_134

    :goto_13b
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v10, "rect"

    const/4 v11, 0x0

    const/16 v19, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v9, v16

    move-object/from16 v20, v12

    move/from16 v12, v19

    .line 65
    invoke-virtual/range {v1 .. v12}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    goto/16 :goto_1db

    :cond_152
    move-object/from16 v20, v21

    const-string v4, "richtext"

    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_191

    .line 67
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_176

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_176

    .line 71
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_177

    :cond_176
    move-object v5, v3

    .line 74
    :goto_177
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_183

    .line 75
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object v6, v1

    goto :goto_184

    :cond_183
    move-object v6, v3

    :goto_184
    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, v16

    .line 77
    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/nativeObj/NativeView;->makeRichText(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1db

    :cond_191
    const-string v3, "input"

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_197} :catch_1eb

    if-eqz v3, :cond_1ce

    .line 81
    :try_start_199
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a2
    .catch Lorg/json/JSONException; {:try_start_199 .. :try_end_1a2} :catch_1a3
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_1a2} :catch_1eb

    goto :goto_1a8

    .line 83
    :catch_1a3
    :try_start_1a3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1a8} :catch_1eb

    :goto_1a8
    move-object v7, v2

    .line 87
    :try_start_1a9
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "inputStyles"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1b4
    .catch Lorg/json/JSONException; {:try_start_1a9 .. :try_end_1b4} :catch_1b6
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1b4} :catch_1eb

    move-object v8, v2

    goto :goto_1bc

    .line 89
    :catch_1b6
    :try_start_1b6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v8, v1

    :goto_1bc
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v10, "input"

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v9, v16

    .line 91
    invoke-virtual/range {v1 .. v12}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    goto :goto_1db

    :cond_1ce
    const-string v3, "weex"

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1db

    move-object/from16 v2, v16

    .line 93
    invoke-virtual {v13, v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeView;->makeWeexView(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_1db
    :goto_1db
    add-int/lit8 v9, v17, 0x1

    move-object v12, v14

    move-object/from16 v11, v18

    move-object/from16 v10, v20

    move-object/from16 v14, p3

    goto/16 :goto_14

    :cond_1e6
    const/4 v0, 0x1

    .line 96
    invoke-virtual {v13, v0}, Lio/dcloud/feature/nativeObj/NativeView;->nativeInvalidate(Z)V
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1ea} :catch_1eb

    goto :goto_1ef

    :catch_1eb
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1ef
    :goto_1ef
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.AnonymousClass1 (io.dcloud.feature.nativeObj.NativeBitmapMgr$1)
.class Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->load(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

.field final synthetic val$_callbackID:Ljava/lang/String;

.field final synthetic val$webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;->val$_callbackID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;->val$_callbackID:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.AnonymousClass2 (io.dcloud.feature.nativeObj.NativeBitmapMgr$2)
.class Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->load(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

.field final synthetic val$_callbackID:Ljava/lang/String;

.field final synthetic val$webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;->val$_callbackID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    if-nez p2, :cond_f

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lio/dcloud/base/R$string;->dcloud_native_obj_load_failed:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    :cond_f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_13
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;->val$_callbackID:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"code\":-100,\"message\":\""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.AnonymousClass3 (io.dcloud.feature.nativeObj.NativeBitmapMgr$3)
.class Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->loadBase64Data(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

.field final synthetic val$_callbackID:Ljava/lang/String;

.field final synthetic val$webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;->val$_callbackID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;->val$_callbackID:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.AnonymousClass4 (io.dcloud.feature.nativeObj.NativeBitmapMgr$4)
.class Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->loadBase64Data(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

.field final synthetic val$_callbackID:Ljava/lang/String;

.field final synthetic val$webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;->val$_callbackID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;->val$_callbackID:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "{\"code\":-100,\"message\":\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    .line 2
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lio/dcloud/base/R$string;->dcloud_native_obj_load_failed:I

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

    .line 3
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.AnonymousClass5 (io.dcloud.feature.nativeObj.NativeBitmapMgr$5)
.class Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->save(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

.field final synthetic val$_callbackID:Ljava/lang/String;

.field final synthetic val$webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;->val$_callbackID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 p1, 0x0

    if-eqz p2, :cond_34

    .line 1
    instance-of v0, p2, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

    if-eqz v0, :cond_34

    .line 2
    check-cast p2, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    iget-object v1, p2, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->path:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p2, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p2, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p2, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const-string p2, "{path:\'file://%s\', w:%d, h:%d, size:%d}"

    invoke-static {p2, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto :goto_35

    :cond_34
    move-object v2, p1

    .line 5
    :goto_35
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;->val$_callbackID:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.AnonymousClass6 (io.dcloud.feature.nativeObj.NativeBitmapMgr$6)
.class Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->save(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

.field final synthetic val$_callbackID:Ljava/lang/String;

.field final synthetic val$webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;->val$_callbackID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;->val$_callbackID:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v2, "{\"code\":-100,\"message\":\"\"+webview.getContext().getString(R.string.dcloud_native_obj_load_failed)+\"\"}"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.AnonymousClass7 (io.dcloud.feature.nativeObj.NativeBitmapMgr$7)
.class synthetic Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->values()[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    :try_start_9
    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->View:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setStyle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->addEventListener:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->interceptTouchEvent:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setTouchEventRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getViewById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->evalWeexJS:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawRichText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawBitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawInput:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getInputValueById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->show:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->hide:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_close:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cc
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_animate:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    :catch_d8
    :try_start_d8
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_reset:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_e4} :catch_e4

    :catch_e4
    :try_start_e4
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_restore:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_f0} :catch_f0

    :catch_f0
    :try_start_f0
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_drawRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_fc

    :catch_fc
    :try_start_fc
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->isVisible:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_108

    :catch_108
    :try_start_108
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->Bitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_114} :catch_114

    :catch_114
    :try_start_114
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getItems:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_120
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_120} :catch_120

    :catch_120
    :try_start_120
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getBitmapById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_12c} :catch_12c

    :catch_12c
    :try_start_12c
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->clear:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_138} :catch_138

    :catch_138
    :try_start_138
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->bitmapRecycle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_144
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_144} :catch_144

    :catch_144
    :try_start_144
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->load:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_150} :catch_150

    :catch_150
    :try_start_150
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->loadBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_15c

    :catch_15c
    :try_start_15c
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->save:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_168
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15c .. :try_end_168} :catch_168

    :catch_168
    :try_start_168
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->toBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_174
    .catch Ljava/lang/NoSuchFieldError; {:try_start_168 .. :try_end_174} :catch_174

    :catch_174
    :try_start_174
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->startAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_180
    .catch Ljava/lang/NoSuchFieldError; {:try_start_174 .. :try_end_180} :catch_180

    :catch_180
    :try_start_180
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->clearAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_18c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_180 .. :try_end_18c} :catch_18c

    :catch_18c
    :try_start_18c
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_clearRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_198
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18c .. :try_end_198} :catch_198

    :catch_198
    :try_start_198
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_draw:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_198 .. :try_end_1a4} :catch_1a4

    :catch_1a4
    :try_start_1a4
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a4 .. :try_end_1b0} :catch_1b0

    :catch_1b0
    :try_start_1b0
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->addImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b0 .. :try_end_1bc} :catch_1bc

    :catch_1bc
    :try_start_1bc
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->currentImageIndex:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bc .. :try_end_1c8} :catch_1c8

    :catch_1c8
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.Action (io.dcloud.feature.nativeObj.NativeBitmapMgr$Action)
.class public final enum Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum Bitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum View:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum addEventListener:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum addImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum bitmapRecycle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum clear:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum clearAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum currentImageIndex:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum drawBitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum drawInput:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum drawRichText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum drawText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum evalWeexJS:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum getBitmapById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum getInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum getInputValueById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum getItems:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum getViewById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum hide:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum interceptTouchEvent:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum isVisible:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum load:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum loadBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum save:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum setImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum setInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum setStyle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum setTouchEventRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum show:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum startAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum toBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_animate:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_clearRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_close:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_draw:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_drawRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_reset:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_restore:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;


# direct methods
.method static constructor <clinit>()V
    .registers 40

    .line 1
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "Bitmap"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->Bitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v3, "getItems"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getItems:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v3, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v5, "getBitmapById"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getBitmapById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v5, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v7, "clear"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->clear:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v9, "load"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->load:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v9, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v11, "loadBase64Data"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->loadBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v11, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v13, "save"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->save:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v13, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v15, "toBase64Data"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->toBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    .line 2
    new-instance v15, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v14, "View"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->View:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v14, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v12, "startAnimation"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->startAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v12, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v10, "clearAnimation"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->clearAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v10, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v8, "getViewById"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getViewById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v8, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "drawBitmap"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawBitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v4, "drawText"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v2, "evalWeexJS"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->evalWeexJS:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "drawRichText"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawRichText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v4, "show"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->show:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v2, "hide"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->hide:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "setImages"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v4, "addImages"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->addImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    .line 3
    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v2, "view_animate"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_animate:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "view_reset"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_reset:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v4, "view_restore"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_restore:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v4, "view_drawRect"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_drawRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "isVisible"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->isVisible:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "addEventListener"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->addEventListener:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "interceptTouchEvent"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->interceptTouchEvent:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    .line 4
    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "setTouchEventRect"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setTouchEventRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "bitmapRecycle"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->bitmapRecycle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "setStyle"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setStyle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "view_clearRect"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_clearRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "view_draw"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_draw:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "view_close"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_close:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "currentImageIndex"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->currentImageIndex:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    .line 5
    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "drawInput"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawInput:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "getInputValueById"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getInputValueById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "getInputFocusById"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "setInputFocusById"

    move-object/from16 v39, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v4, 0x26

    new-array v4, v4, [Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v32, v4, v0

    const/16 v0, 0x1e

    aput-object v33, v4, v0

    const/16 v0, 0x1f

    aput-object v34, v4, v0

    const/16 v0, 0x20

    aput-object v35, v4, v0

    const/16 v0, 0x21

    aput-object v36, v4, v0

    const/16 v0, 0x22

    aput-object v37, v4, v0

    const/16 v0, 0x23

    aput-object v38, v4, v0

    const/16 v0, 0x24

    aput-object v39, v4, v0

    const/16 v0, 0x25

    aput-object v2, v4, v0

    .line 6
    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->$VALUES:[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->$VALUES:[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v0}, [Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    return-object v0
.end method
