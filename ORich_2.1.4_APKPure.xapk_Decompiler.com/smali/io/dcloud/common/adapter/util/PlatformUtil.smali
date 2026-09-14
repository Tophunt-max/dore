###### Class io.dcloud.common.adapter.util.PlatformUtil (io.dcloud.common.adapter.util.PlatformUtil)
.class public Lio/dcloud/common/adapter/util/PlatformUtil;
.super Lio/dcloud/common/adapter/util/SP;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;
    }
.end annotation


# static fields
.field private static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field public static APS_COVER:Z = false

.field public static final ASSETS_RESOUCE:B = 0x0t

.field private static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field public static final FILE_RESOUCE:B = 0x2t

.field private static MAX_SPAN_IN_ONE_SCREEN:I = 0x10

.field private static final PROJECTION:[Ljava/lang/String;

.field public static final SRC_RESOUCE:B = 0x1t

.field private static final URI_HTC_LAUNCER:Ljava/lang/String; = "content://com.htc.launcher.settings/favorites?notify=true"

.field private static final URI_SAMSUNG_LAUNCER:Ljava/lang/String; = "content://com.sec.android.app.twlauncher.settings/favorites?notify=true"

.field private static _SCREEN_CONTENT_HEIGHT:I

.field private static _SCREEN_HEIGHT:I

.field private static _SCREEN_STATUSBAR_HEIGHT:I

.field private static _SCREEN_WIDTH:I

.field private static _blackpixels:[I

.field private static _pixels:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "iconResource"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/PlatformUtil;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/SP;-><init>()V

    return-void
.end method

.method private static GET_BLACK_LINE(I)[I
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_blackpixels:[I

    if-eqz v0, :cond_7

    array-length v0, v0

    if-eq v0, p0, :cond_18

    .line 2
    :cond_7
    new-array p0, p0, [I

    sput-object p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_blackpixels:[I

    const/4 p0, 0x0

    .line 3
    :goto_c
    sget-object v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_blackpixels:[I

    array-length v1, v0

    if-ge p0, v1, :cond_18

    const/high16 v1, -0x1000000

    .line 4
    aput v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    .line 7
    :cond_18
    sget-object p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_blackpixels:[I

    return-object p0
.end method

.method private static GET_WIHTE_LINE(I)[I
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_pixels:[I

    if-eqz v0, :cond_7

    array-length v0, v0

    if-eq v0, p0, :cond_17

    .line 2
    :cond_7
    new-array p0, p0, [I

    sput-object p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_pixels:[I

    const/4 p0, 0x0

    .line 3
    :goto_c
    sget-object v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_pixels:[I

    array-length v1, v0

    if-ge p0, v1, :cond_17

    const/4 v1, -0x1

    .line 4
    aput v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    .line 7
    :cond_17
    sget-object p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_pixels:[I

    return-object p0
.end method

.method public static MESURE_SCREEN_CONTENT_HEIGHT(Landroid/app/Activity;)I
    .registers 3

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_CONTENT_HEIGHT:I

    if-nez v0, :cond_31

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sput v1, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_CONTENT_HEIGHT:I

    .line 7
    sget v1, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    if-ltz v1, :cond_28

    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_31

    :cond_28
    const/4 v0, 0x0

    .line 8
    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    .line 9
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result p0

    sput p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_CONTENT_HEIGHT:I

    .line 12
    :cond_31
    sget p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_CONTENT_HEIGHT:I

    return p0
.end method

.method public static MESURE_SCREEN_STATUSBAR_HEIGHT(Landroid/app/Activity;)I
    .registers 3

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    if-nez v0, :cond_31

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sput v1, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_CONTENT_HEIGHT:I

    .line 7
    sget v1, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    if-ltz v1, :cond_28

    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_31

    :cond_28
    const/4 v0, 0x0

    .line 8
    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    .line 9
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result p0

    sput p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_CONTENT_HEIGHT:I

    .line 12
    :cond_31
    sget p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    return p0
.end method

.method public static RESET_H_W()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_WIDTH:I

    .line 2
    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_HEIGHT:I

    .line 3
    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    .line 4
    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_CONTENT_HEIGHT:I

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_pixels:[I

    return-void
.end method

.method public static SCREEN_HEIGHT(Landroid/content/Context;)I
    .registers 2

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_HEIGHT:I

    if-nez v0, :cond_10

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_HEIGHT:I

    .line 4
    :cond_10
    sget p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_HEIGHT:I

    return p0
.end method

.method public static SCREEN_WIDTH(Landroid/content/Context;)I
    .registers 2

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_WIDTH:I

    if-nez v0, :cond_10

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_WIDTH:I

    .line 4
    :cond_10
    sget p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_WIDTH:I

    return p0
.end method

.method public static captureView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ARGB"

    .line 1
    invoke-static {p0, v0, v0, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->captureView(Landroid/view/View;ZZLandroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static captureView(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11

    .line 27
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_e

    const/4 v4, 0x1

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_1f

    .line 30
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v6

    invoke-virtual {p0, v5, v6, v7, p1}, Landroid/view/View;->layout(IIII)V

    goto :goto_22

    .line 32
    :cond_1f
    invoke-virtual {p0, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 34
    :goto_22
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 37
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 38
    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 40
    :cond_47
    invoke-virtual {p0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    if-eqz v4, :cond_4f

    .line 41
    invoke-virtual {p0, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50

    :cond_4f
    return-object p1

    :catch_50
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static captureView(Landroid/view/View;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 26
    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->captureView(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static captureView(Landroid/view/View;ZZLandroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 2
    sget-boolean p2, Lio/dcloud/common/adapter/util/AndroidResources;->sIMEAlive:Z

    if-eqz p2, :cond_8

    return-object v0

    :cond_8
    if-eqz p3, :cond_f

    .line 5
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    :goto_13
    if-eqz p3, :cond_1a

    .line 6
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :goto_1e
    if-nez p2, :cond_21

    return-object v0

    .line 10
    :cond_21
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const-string v3, "ARGB"

    .line 11
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2d

    .line 12
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 14
    :cond_2d
    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 15
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_43

    .line 18
    iget v1, p3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget p3, p3, Landroid/graphics/Rect;->top:I

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p4, v1, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 22
    :cond_43
    invoke-virtual {p0, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_52

    .line 24
    invoke-static {p2}, Lio/dcloud/common/adapter/util/PlatformUtil;->isWhiteBitmap(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_52

    .line 25
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_52
    return-object p2
.end method

.method public static checkClass(Ljava/lang/String;)Z
    .registers 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public static checkGTAndYoumeng()Z
    .registers 1

    const-string v0, "io.dcloud.feature.apsGt.GTPushService"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->checkClass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "io.dcloud.feature.statistics.UmengStatisticsMgr"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->checkClass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static checkLauncherScreenSpace(Landroid/content/Context;)Z
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.twlauncher.settings/favorites?notify=true"

    .line 2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "screen"

    const-string v6, "spanX"

    const-string v7, "spanY"

    .line 3
    filled-new-array {v2, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7f

    .line 5
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->queryMaxLauncherScreenCount(Landroid/content/Context;)I

    move-result p0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Samsung Launcher: max screen num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PlatformUtil"

    invoke-static {v3, v2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 9
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 10
    sget v5, Lio/dcloud/common/adapter/util/PlatformUtil;->MAX_SPAN_IN_ONE_SCREEN:I

    mul-int p0, p0, v5

    :goto_44
    const/4 v5, 0x0

    .line 12
    :try_start_45
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 13
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 14
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_53} :catch_5d
    .catchall {:try_start_45 .. :try_end_53} :catchall_5b

    mul-int v6, v6, v5

    sub-int/2addr p0, v6

    goto :goto_44

    .line 22
    :cond_57
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_76

    :catchall_5b
    move-exception p0

    goto :goto_7b

    :catch_5d
    move-exception p0

    .line 23
    :try_start_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check Launcher space"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_5e .. :try_end_72} :catchall_5b

    .line 26
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    :goto_76
    if-lez p0, :cond_79

    goto :goto_7a

    :cond_79
    const/4 v1, 0x0

    :goto_7a
    return v1

    :goto_7b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 27
    throw p0

    :cond_7f
    return v1
.end method

.method public static createShortut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.shortcut.INTENT"

    .line 6
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.NAME"

    .line 7
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-static {p0, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p1

    const-string p3, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 9
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "duplicate"

    .line 10
    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static createShortut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .registers 7

    .line 13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.shortcut.INTENT"

    .line 18
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.NAME"

    .line 19
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.shortcut.ICON"

    .line 20
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "duplicate"

    .line 21
    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static destroyDrawingCache(Landroid/view/View;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    return-void
.end method

.method public static disableWebViewMultiProcess(Landroid/content/Context;)V
    .registers 4

    const-string v0, "webview_multiprocess"

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_48

    .line 3
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_48

    .line 5
    const-class p0, Landroid/provider/Settings$Global;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_44

    const-string v1, "sNameValueCache"

    :try_start_1c
    const-class v2, Landroid/provider/Settings$Global;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-static {p0, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mValues"

    invoke-static {v1, v2, p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 11
    instance-of v1, p0, Ljava/util/HashMap;

    if-eqz v1, :cond_48

    .line 12
    check-cast p0, Ljava/util/HashMap;

    const-string v1, "0"

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_48
    :goto_48
    return-void
.end method

.method public static getApkFileInfo(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;
    .registers 11

    .line 1
    new-instance v0, Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;

    invoke-direct {v0}, Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;-><init>()V

    const/4 v1, 0x0

    .line 6
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 7
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_16

    goto :goto_68

    :cond_16
    const-string v4, "android.content.res.AssetManager"

    .line 11
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 13
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/AssetManager;

    new-array v7, v3, [Ljava/lang/Class;

    .line 17
    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v5

    const-string v8, "addAssetPath"

    .line 18
    invoke-virtual {v4, v8, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    .line 21
    invoke-virtual {v4, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 25
    new-instance v3, Landroid/content/res/Resources;

    invoke-direct {v3, v6, p1, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 26
    iget p0, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez p0, :cond_59

    move-object p1, v1

    goto :goto_6e

    .line 30
    :cond_59
    iget p1, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_61
    .catchall {:try_start_6 .. :try_end_61} :catchall_69

    .line 31
    :try_start_61
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_66

    goto :goto_6e

    :catchall_66
    move-exception p0

    goto :goto_6b

    :cond_68
    :goto_68
    return-object v0

    :catchall_69
    move-exception p0

    move-object p1, v1

    .line 37
    :goto_6b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    :goto_6e
    iput-object v1, v0, Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 40
    iput-object p1, v0, Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method private static getBestActivityInfo(Ljava/util/List;Ljava/util/LinkedList;)Landroid/content/pm/ActivityInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/ActivityInfo;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 4
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 5
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_25
    const p0, 0x7fffffff

    const/4 v2, 0x0

    .line 10
    :goto_29
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    .line 12
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ge v4, p0, :cond_3f

    move-object v2, v3

    move p0, v4

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_42
    return-object v2
.end method

.method public static getFileContent(Ljava/lang/String;I)[B
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1a

    .line 4
    :try_start_7
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_e
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    goto :goto_1a

    :catchall_c
    move-exception p1

    goto :goto_16

    :catch_e
    move-exception v0

    .line 7
    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_c

    .line 9
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    goto :goto_1d

    :goto_16
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 10
    throw p1

    .line 11
    :cond_1a
    :goto_1a
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    :goto_1d
    return-object p1
.end method

.method public static getFileContent4S(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFileContent(Ljava/lang/String;I)[B

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    const-string p0, "p"

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFilePathFromContentUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 9

    const-string v0, "_data"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v3, v0

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p1, 0x0

    .line 9
    aget-object p1, v0, p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 10
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1
.end method

.method public static getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_4
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 21
    :goto_d
    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 4

    .line 1
    :try_start_0
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x2

    :cond_c
    if-nez p1, :cond_13

    .line 5
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_46

    :cond_13
    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    .line 7
    const-class p1, Lio/dcloud/common/adapter/util/PlatformUtil;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_46

    :cond_21
    if-ne p1, v1, :cond_45

    .line 9
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_45

    .line 11
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_46

    :catch_3b
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "platform"

    invoke-static {p1, p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    const/4 p0, 0x0

    :goto_46
    return-object p0
.end method

.method public static getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6

    const-string v0, "file:///android_asset/"

    const-string v1, "android_asset/"

    const-string v2, "assets://"

    .line 1
    :try_start_6
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->useAndroidPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_14} :catch_79
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_14} :catch_64
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_3a

    const-string v4, ""

    if-eqz v3, :cond_1d

    .line 5
    :try_start_18
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 6
    :cond_1d
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 7
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 8
    :cond_28
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 9
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 13
    :cond_32
    :goto_32
    sget-object v0, Lio/dcloud/common/adapter/util/AndroidResources;->sAssetMgr:Landroid/content/res/AssetManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_39} :catch_79
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_39} :catch_64
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_39} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_39} :catch_3a

    goto :goto_8e

    .line 23
    :catch_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformUtil.getResInputStream Exception pFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_8d

    .line 24
    :catch_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformUtil.getResInputStream IOException pFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_8d

    .line 25
    :catch_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformUtil.getResInputStream FileNotFoundException pFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_8d

    .line 26
    :catch_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformUtil.getResInputStream RuntimeException pFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    :goto_8d
    const/4 p0, 0x0

    :goto_8e
    return-object p0
.end method

.method public static getSechemeList(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v1, :cond_50

    .line 8
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 9
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_5b

    const-string v6, "pn"

    .line 10
    :try_start_30
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_5b

    const-string v6, "ver"

    .line 11
    :try_start_39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 15
    :cond_50
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "utf-8"

    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5a} :catch_5b

    return-object p0

    :catch_5b
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStartupSechemeList(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v1, :cond_50

    .line 8
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 9
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_55

    const-string v6, "pn"

    .line 10
    :try_start_30
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_55

    const-string v6, "ver"

    .line 11
    :try_start_39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 15
    :cond_50
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_54} :catch_55

    return-object p0

    :catch_55
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .line 1
    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public static initComponentName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "com.qihoo.appstore"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "streamapp://"

    .line 2
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_62

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_62

    .line 5
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const-string v3, "com.gionee.aora.market"

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v3, "com.ivvi.browser"

    .line 7
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v3, "com.letv.app.appstore"

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v3, "com.aspire.mm"

    .line 10
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v3, "io.dcloud.streamapps"

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {p0, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->getBestActivityInfo(Ljava/util/List;Ljava/util/LinkedList;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_62

    .line 14
    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5c

    const-string p0, "short_cut_appid"

    .line 16
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5c} :catch_5e

    :cond_5c
    const/4 v1, 0x1

    goto :goto_62

    :catch_5e
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_62
    :goto_62
    return v1
.end method

.method public static invokeFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const-string v0, "platform"

    const/4 v1, 0x0

    if-eqz p2, :cond_e

    .line 1
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_f

    :catchall_a
    move-exception p0

    goto :goto_3b

    :catch_c
    move-exception p0

    goto :goto_43

    :cond_e
    move-object v2, v1

    :goto_f
    if-nez v2, :cond_15

    .line 4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_15} :catch_c
    .catchall {:try_start_5 .. :try_end_15} :catchall_a

    :cond_15
    if-eqz v2, :cond_4a

    move-object p0, v1

    :goto_18
    if-eqz v2, :cond_30

    .line 10
    :try_start_1a
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_21
    .catchall {:try_start_1a .. :try_end_1e} :catchall_a

    if-eqz p0, :cond_22

    goto :goto_30

    :catch_21
    nop

    :cond_22
    if-nez p0, :cond_2b

    .line 17
    :try_start_24
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_28} :catch_2b
    .catchall {:try_start_24 .. :try_end_28} :catchall_a

    if-eqz p0, :cond_2b

    goto :goto_30

    .line 23
    :catch_2b
    :cond_2b
    :try_start_2b
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_18

    :cond_30
    :goto_30
    if-eqz p0, :cond_4a

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 27
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2b .. :try_end_3a} :catch_c
    .catchall {:try_start_2b .. :try_end_3a} :catchall_a

    return-object p0

    .line 33
    :goto_3b
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 34
    :goto_43
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-object v1
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 23
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 25
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_13

    .line 26
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_17

    .line 28
    :cond_13
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    :goto_17
    const/4 p2, 0x1

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 31
    array-length p2, p3

    if-nez p2, :cond_1f

    move-object p3, v0

    :cond_1f
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_24

    return-object p0

    :catchall_24
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "platform"

    invoke-static {p1, p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, p1, v2, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1, p2, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    .line 3
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-eqz p3, :cond_14

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6
    invoke-virtual {p3, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_13} :catch_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_13} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_16

    goto :goto_24

    :cond_14
    move-object p2, v0

    goto :goto_24

    :catch_16
    move-exception p2

    .line 13
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_21

    :catch_1c
    const-string p2, "NoSuchMethodException"

    goto :goto_21

    :catch_1f
    const-string p2, "ClassNotFoundException"

    :goto_21
    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    :goto_24
    if-eqz v0, :cond_4d

    const-string p3, "getJsContent"

    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4d

    .line 22
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "platform"

    invoke-static {p1, p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    return-object p2
.end method

.method public static invokeSetFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_2d

    if-eqz v1, :cond_37

    const/4 v2, 0x0

    :goto_b
    if-eqz v1, :cond_23

    .line 7
    :try_start_d
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_14
    .catchall {:try_start_d .. :try_end_11} :catchall_2d

    if-eqz v2, :cond_15

    goto :goto_23

    :catch_14
    nop

    :cond_15
    if-nez v2, :cond_1e

    .line 14
    :try_start_17
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_1e
    .catchall {:try_start_17 .. :try_end_1b} :catchall_2d

    if-eqz v2, :cond_1e

    goto :goto_23

    .line 20
    :catch_1e
    :cond_1e
    :try_start_1e
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_b

    :cond_23
    :goto_23
    if-eqz v2, :cond_37

    const/4 p1, 0x1

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 24
    invoke-virtual {v2, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2d

    return p1

    :catchall_2d
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "platform"

    invoke-static {p1, p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return v0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/dcloud/common/util/LoadAppUtils;->isAppLoad(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEmulator()Z
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static isLineWhiteBitmap(Landroid/graphics/Bitmap;Z)Z
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 3
    new-array v9, v0, [I

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 7
    invoke-static {v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->GET_WIHTE_LINE(I)[I

    move-result-object p0

    invoke-static {v9, p0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p1, :cond_2a

    .line 8
    invoke-static {v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->GET_BLACK_LINE(I)[I

    move-result-object p1

    invoke-static {v9, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    or-int/2addr p0, p1

    :cond_2a
    return p0
.end method

.method private static isPureColor([I)Z
    .registers 7

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    .line 2
    array-length v2, p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_10

    aget v5, p0, v4

    if-eq v1, v5, :cond_d

    const/4 v3, 0x0

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_10
    return v3
.end method

.method public static isResFileExists(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Lio/dcloud/common/adapter/util/AndroidResources;->sAssetMgr:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e

    const/4 v0, 0x1

    :catch_e
    :cond_e
    return v0
.end method

.method public static isWhiteBitmap(Landroid/graphics/Bitmap;)Z
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->isWhiteBitmap(Landroid/graphics/Bitmap;ZZ)Z

    move-result p0

    return p0
.end method

.method public static isWhiteBitmap(Landroid/graphics/Bitmap;ZZ)Z
    .registers 14

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 4
    new-array v9, v8, [I

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v4, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, v9

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 7
    invoke-static {v8}, Lio/dcloud/common/adapter/util/PlatformUtil;->GET_WIHTE_LINE(I)[I

    move-result-object v0

    invoke-static {v9, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz p2, :cond_24

    .line 9
    invoke-static {v9}, Lio/dcloud/common/adapter/util/PlatformUtil;->isPureColor([I)Z

    move-result v0

    :cond_24
    move v10, v0

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, v9

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 11
    invoke-static {v8}, Lio/dcloud/common/adapter/util/PlatformUtil;->GET_WIHTE_LINE(I)[I

    move-result-object v0

    invoke-static {v9, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    and-int/2addr v0, v10

    if-eqz p2, :cond_44

    .line 13
    invoke-static {v9}, Lio/dcloud/common/adapter/util/PlatformUtil;->isPureColor([I)Z

    move-result v0

    :cond_44
    move v10, v0

    .line 14
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v4, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, v9

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 15
    invoke-static {v8}, Lio/dcloud/common/adapter/util/PlatformUtil;->GET_WIHTE_LINE(I)[I

    move-result-object p0

    invoke-static {v9, p0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    and-int/2addr p0, v10

    if-eqz p2, :cond_66

    .line 17
    invoke-static {v9}, Lio/dcloud/common/adapter/util/PlatformUtil;->isPureColor([I)Z

    move-result p0

    :cond_66
    if-eqz p1, :cond_71

    .line 19
    invoke-static {v8}, Lio/dcloud/common/adapter/util/PlatformUtil;->GET_BLACK_LINE(I)[I

    move-result-object p1

    invoke-static {v9, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    or-int/2addr p0, p1

    :cond_71
    return p0
.end method

.method public static launchApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_14

    .line 5
    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    .line 7
    :goto_14
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 8
    invoke-static {p0, p2, p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->setPackageName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_27

    .line 9
    :cond_21
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_27
    :goto_27
    if-eqz p4, :cond_2e

    const/high16 p1, 0x10000000

    .line 13
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2e
    if-eqz p3, :cond_74

    .line 15
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_74

    .line 16
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 17
    :cond_3e
    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_74

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 19
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_5c

    .line 21
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 22
    invoke-virtual {p2, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3e

    .line 23
    :cond_5c
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_66

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    invoke-virtual {p2, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3e

    .line 26
    :cond_66
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3e

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 28
    invoke-virtual {p2, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3e

    .line 32
    :cond_74
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static listFsAppsFiles(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlatformUtil.listResFiles pPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static listResFiles(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->useAndroidPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/util/AndroidResources;->sAssetMgr:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlatformUtil.listResFiles pPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-string v0, "platform"

    .line 1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_18
    .catchall {:try_start_2 .. :try_end_e} :catchall_f

    return-object p0

    :catchall_f
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :catch_18
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public static openFileBySystem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 13

    const-string v0, "{code:%d,message:\'%s\'}"

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_14

    .line 2
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 3
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 5
    :cond_14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    .line 6
    invoke-static {p0, p2}, Lio/dcloud/common/adapter/util/PlatformUtil;->hasAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    const/4 v4, -0x1

    const/4 v5, 0x2

    .line 9
    :try_start_25
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "file://"

    .line 10
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    const/4 v7, 0x7

    .line 11
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_36
    const-string v7, "content://"

    .line 13
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 14
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p1, v6}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFilePathFromContentUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 17
    :cond_4e
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_55

    goto :goto_56

    :cond_55
    move-object p3, v6

    .line 20
    :goto_56
    invoke-static {p0, p1, p3}, Lio/dcloud/common/util/LoadAppUtils;->getDataAndTypeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    if-eqz v1, :cond_5f

    .line 22
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    :cond_5f
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 29
    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p0, "{}"

    .line 30
    invoke-interface {p4, v2, p0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a2

    :cond_73
    if-eqz p4, :cond_a2

    new-array p0, v5, [Ljava/lang/Object;

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "not found file"

    aput-object p1, p0, v2

    invoke-static {v0, p0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-interface {p4, v4, p0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_88
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_88} :catch_89

    goto :goto_a2

    :catch_89
    move-exception p0

    .line 38
    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/Throwable;)V

    if-eqz p4, :cond_a2

    new-array p0, v5, [Ljava/lang/Object;

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "not found 3th activity"

    aput-object p1, p0, v2

    invoke-static {v0, p0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-interface {p4, v4, p0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a2
    :goto_a2
    return-void
.end method

.method public static openURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_e
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 6
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->isDefense:Z

    if-eqz v0, :cond_1e

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p2, "android.intent.category.BROWSABLE"

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1e
    const/high16 p2, 0x10000000

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static parseApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static queryDefaultShortcut(Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "content://com.android.launcher2.settings/favorites?notify=false"

    .line 2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3
    sget-object v5, Lio/dcloud/common/adapter/util/PlatformUtil;->PROJECTION:[Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_32
    .catchall {:try_start_2 .. :try_end_10} :catchall_30

    const-string v6, "title=?"

    const/4 v2, 0x1

    :try_start_13
    new-array v7, v2, [Ljava/lang/String;

    aput-object p0, v7, v0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_27} :catch_32
    .catchall {:try_start_13 .. :try_end_27} :catchall_30

    if-eqz v1, :cond_2c

    .line 14
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2c
    return v2

    :cond_2d
    if-eqz v1, :cond_52

    goto :goto_4f

    :catchall_30
    move-exception p0

    goto :goto_53

    :catch_32
    move-exception p0

    const-string v2, "PlatformUtil"

    .line 15
    :try_start_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryHTCShortCut error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_30

    if-eqz v1, :cond_52

    .line 14
    :goto_4f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_52
    return v0

    :goto_53
    if-eqz v1, :cond_58

    .line 18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 20
    :cond_58
    throw p0
.end method

.method private static queryHTCShortCut(Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "content://com.htc.launcher.settings/favorites?notify=true"

    .line 2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3
    sget-object v5, Lio/dcloud/common/adapter/util/PlatformUtil;->PROJECTION:[Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_32
    .catchall {:try_start_2 .. :try_end_10} :catchall_30

    const-string v6, "title=?"

    const/4 v2, 0x1

    :try_start_13
    new-array v7, v2, [Ljava/lang/String;

    aput-object p0, v7, v0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_27} :catch_32
    .catchall {:try_start_13 .. :try_end_27} :catchall_30

    if-eqz v1, :cond_2c

    .line 14
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2c
    return v2

    :cond_2d
    if-eqz v1, :cond_52

    goto :goto_4f

    :catchall_30
    move-exception p0

    goto :goto_53

    :catch_32
    move-exception p0

    const-string v2, "PlatformUtil"

    .line 15
    :try_start_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryHTCShortCut error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_30

    if-eqz v1, :cond_52

    .line 14
    :goto_4f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_52
    return v0

    :goto_53
    if-eqz v1, :cond_58

    .line 18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 20
    :cond_58
    throw p0
.end method

.method private static queryMaxLauncherScreenCount(Landroid/content/Context;)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "content://com.sec.android.app.twlauncher.settings/favorites?notify=true"

    .line 2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string p0, "MAX(screen)"

    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 6
    :try_start_19
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    .line 7
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_21} :catch_29
    .catchall {:try_start_19 .. :try_end_21} :catchall_27

    add-int/lit8 v0, v0, 0x1

    .line 12
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_49

    :catchall_27
    move-exception v0

    goto :goto_44

    :catch_29
    move-exception v0

    const-string v1, "PlatformUtil"

    .line 13
    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Samsung Launcher"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_27

    .line 15
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_48

    :goto_44
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 16
    throw v0

    :cond_48
    :goto_48
    const/4 v0, -0x1

    :goto_49
    return v0
.end method

.method public static setPackageName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 4
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private static useAndroidPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x2f

    .line 1
    invoke-static {p0, v0}, Lio/dcloud/common/util/StringUtil;->trimString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    invoke-static {p0, v0}, Lio/dcloud/common/util/StringUtil;->trimString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public delShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.INTENT"

    .line 8
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10
    sget-object p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PlatformUtil.APKInfo (io.dcloud.common.adapter.util.PlatformUtil$APKInfo)
.class public Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/PlatformUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APKInfo"
.end annotation


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
