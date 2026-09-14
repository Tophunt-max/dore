###### Class com.taobao.weex.utils.WXViewToImageUtil (com.taobao.weex.utils.WXViewToImageUtil)
.class public Lcom/taobao/weex/utils/WXViewToImageUtil;
.super Ljava/lang/Object;
.source "WXViewToImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;
    }
.end annotation


# static fields
.field public static mBackgroundColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateImage(Landroid/view/View;IILcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;)V
    .registers 6

    .line 53
    sput p2, Lcom/taobao/weex/utils/WXViewToImageUtil;->mBackgroundColor:I

    .line 56
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXWorkThreadManager()Lcom/taobao/weex/common/WXWorkThreadManager;

    move-result-object p2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/taobao/weex/utils/WXViewToImageUtil$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/taobao/weex/utils/WXViewToImageUtil$1;-><init>(Landroid/view/View;ILcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Lcom/taobao/weex/common/WXWorkThreadManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getBitmapFromImageView(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .registers 4

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_25

    :cond_c
    const/high16 v0, 0x40000000    # 2.0f

    .line 142
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v0, 0x0

    .line 143
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 142
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v0, p1, v1}, Landroid/view/View;->layout(IIII)V

    :cond_25
    const/4 p1, 0x1

    .line 147
    invoke-virtual {p0, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static saveBitmapToGallery(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;)Ljava/lang/String;
    .registers 9

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Weex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 97
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    :try_start_2e
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 102
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 103
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 104
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_40} :catch_4d
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_40} :catch_41

    goto :goto_58

    :catch_41
    move-exception p1

    if-eqz p2, :cond_49

    const-string v3, "Android IOException"

    .line 111
    invoke-interface {p2, v3}, Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;->onSaveFailed(Ljava/lang/String;)V

    .line 112
    :cond_49
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    :catch_4d
    move-exception p1

    if-eqz p2, :cond_55

    const-string v3, "Image creation failed due to system reason"

    .line 107
    invoke-interface {p2, v3}, Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;->onSaveFailed(Ljava/lang/String;)V

    .line 108
    :cond_55
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 117
    :goto_58
    :try_start_58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 118
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    .line 117
    invoke-static {p1, p2, v1, v3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_64
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_64} :catch_65

    goto :goto_69

    :catch_65
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 124
    :goto_69
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.taobao.weex.utils.WXViewToImageUtil.AnonymousClass1 (com.taobao.weex.utils.WXViewToImageUtil$1)
.class final Lcom/taobao/weex/utils/WXViewToImageUtil$1;
.super Ljava/lang/Object;
.source "WXViewToImageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/WXViewToImageUtil;->generateImage(Landroid/view/View;IILcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imageView:Landroid/view/View;

.field final synthetic val$mOnImageSavedCallback:Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Landroid/view/View;ILcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;)V
    .registers 4

    .line 56
    iput-object p1, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$imageView:Landroid/view/View;

    iput p2, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$width:I

    iput-object p3, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$mOnImageSavedCallback:Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$imageView:Landroid/view/View;

    iget v1, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$width:I

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewToImageUtil;->getBitmapFromImageView(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_14

    .line 63
    iget-object v0, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$mOnImageSavedCallback:Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;

    if-eqz v0, :cond_13

    const-string v1, "Image is empty"

    .line 64
    invoke-interface {v0, v1}, Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;->onSaveFailed(Ljava/lang/String;)V

    :cond_13
    return-void

    .line 70
    :cond_14
    iget-object v1, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$imageView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$mOnImageSavedCallback:Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;

    invoke-static {v1, v0, v2}, Lcom/taobao/weex/utils/WXViewToImageUtil;->saveBitmapToGallery(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/taobao/weex/utils/WXViewToImageUtil$1$1;

    invoke-direct {v2, p0, v0}, Lcom/taobao/weex/utils/WXViewToImageUtil$1$1;-><init>(Lcom/taobao/weex/utils/WXViewToImageUtil$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.taobao.weex.utils.WXViewToImageUtil.AnonymousClass1.RunnableC00201 (com.taobao.weex.utils.WXViewToImageUtil$1$1)
.class Lcom/taobao/weex/utils/WXViewToImageUtil$1$1;
.super Ljava/lang/Object;
.source "WXViewToImageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/WXViewToImageUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/utils/WXViewToImageUtil$1;

.field final synthetic val$destPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/utils/WXViewToImageUtil$1;Ljava/lang/String;)V
    .registers 3

    .line 72
    iput-object p1, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1$1;->this$0:Lcom/taobao/weex/utils/WXViewToImageUtil$1;

    iput-object p2, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1$1;->val$destPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 75
    iget-object v0, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1$1;->this$0:Lcom/taobao/weex/utils/WXViewToImageUtil$1;

    iget-object v0, v0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$mOnImageSavedCallback:Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;

    if-eqz v0, :cond_27

    .line 76
    iget-object v0, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1$1;->this$0:Lcom/taobao/weex/utils/WXViewToImageUtil$1;

    iget-object v0, v0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$mOnImageSavedCallback:Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;

    iget-object v1, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1$1;->val$destPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;->onSaveSucceed(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1$1;->this$0:Lcom/taobao/weex/utils/WXViewToImageUtil$1;

    iget-object v0, v0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$imageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1$1;->val$destPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_27
    return-void
.end method

###### Class com.taobao.weex.utils.WXViewToImageUtil.OnImageSavedCallback (com.taobao.weex.utils.WXViewToImageUtil$OnImageSavedCallback)
.class public interface abstract Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;
.super Ljava/lang/Object;
.source "WXViewToImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/WXViewToImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnImageSavedCallback"
.end annotation


# virtual methods
.method public abstract onSaveFailed(Ljava/lang/String;)V
.end method

.method public abstract onSaveSucceed(Ljava/lang/String;)V
.end method
