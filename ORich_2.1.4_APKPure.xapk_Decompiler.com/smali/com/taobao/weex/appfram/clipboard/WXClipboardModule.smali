###### Class com.taobao.weex.appfram.clipboard.WXClipboardModule (com.taobao.weex.appfram.clipboard.WXClipboardModule)
.class public Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXClipboardModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/clipboard/IWXClipboard;


# static fields
.field private static final DATA:Ljava/lang/String; = "data"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final RESULT_FAILED:Ljava/lang/String; = "failed"

.field private static final RESULT_OK:Ljava/lang/String; = "success"


# instance fields
.field private final CLIP_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    const-string v0, "WEEX_CLIP_KEY_MAIN"

    .line 44
    iput-object v0, p0, Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;->CLIP_KEY:Ljava/lang/String;

    return-void
.end method

.method private coerceToText(Landroid/content/Context;Landroid/content/ClipData$Item;)Ljava/lang/CharSequence;
    .registers 9

    .line 92
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 98
    :cond_7
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8d

    .line 103
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "text/*"

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_1c} :catch_7d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_58
    .catchall {:try_start_e .. :try_end_1c} :catchall_55

    .line 105
    :try_start_1c
    new-instance p2, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {p2, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_23} :catch_53
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_4e
    .catchall {:try_start_1c .. :try_end_23} :catchall_4c

    .line 107
    :try_start_23
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x2000

    new-array v2, v2, [C

    .line 110
    :goto_2e
    invoke-virtual {p2, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-lez v3, :cond_39

    const/4 v4, 0x0

    .line 111
    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 113
    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_3d} :catch_4a
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3d} :catch_48
    .catchall {:try_start_23 .. :try_end_3d} :catchall_6e

    .line 122
    :try_start_3d
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_42

    :catch_41
    nop

    :goto_42
    if-eqz p1, :cond_47

    .line 129
    :try_start_44
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_47

    :catch_47
    :cond_47
    return-object v0

    :catch_48
    move-exception v1

    goto :goto_5c

    :catch_4a
    move-object v1, p2

    goto :goto_7e

    :catchall_4c
    move-exception v0

    goto :goto_70

    :catch_4e
    move-exception p2

    move-object v5, v1

    move-object v1, p2

    move-object p2, v5

    goto :goto_5c

    :catch_53
    nop

    goto :goto_7e

    :catchall_55
    move-exception v0

    move-object p1, v1

    goto :goto_70

    :catch_58
    move-exception p1

    move-object p2, v1

    move-object v1, p1

    move-object p1, p2

    :goto_5c
    :try_start_5c
    const-string v2, "ClippedData Failure loading text."

    .line 118
    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_6e

    if-eqz p2, :cond_68

    .line 122
    :try_start_63
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_68

    :catch_67
    nop

    :cond_68
    :goto_68
    if-eqz p1, :cond_88

    .line 129
    :goto_6a
    :try_start_6a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_88

    goto :goto_88

    :catchall_6e
    move-exception v0

    move-object v1, p2

    :goto_70
    if-eqz v1, :cond_77

    .line 122
    :try_start_72
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_77

    :catch_76
    nop

    :cond_77
    :goto_77
    if-eqz p1, :cond_7c

    .line 129
    :try_start_79
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7c

    .line 134
    :catch_7c
    :cond_7c
    throw v0

    :catch_7d
    move-object p1, v1

    :goto_7e
    if-eqz v1, :cond_85

    .line 122
    :try_start_80
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_85

    :catch_84
    nop

    :cond_85
    :goto_85
    if-eqz p1, :cond_88

    goto :goto_6a

    .line 136
    :catch_88
    :cond_88
    :goto_88
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 140
    :cond_8d
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_99

    const/4 p2, 0x1

    .line 142
    invoke-virtual {p1, p2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_99
    return-object v1
.end method


# virtual methods
.method public getString(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 10
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 71
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 72
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    const-string v3, ""

    const-string v4, "data"

    const-string v5, "failed"

    const-string v6, "result"

    if-eqz v1, :cond_3f

    .line 73
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-lez v7, :cond_3f

    const/4 v7, 0x0

    .line 74
    invoke-virtual {v1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 75
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;->coerceToText(Landroid/content/Context;Landroid/content/ClipData$Item;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_35

    const-string v5, "success"

    .line 77
    :cond_35
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_3b

    move-object v3, v0

    .line 78
    :cond_3b
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    .line 80
    :cond_3f
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_45
    if-eqz p1, :cond_4a

    .line 85
    invoke-interface {p1, v2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_4a
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "WEEX_CLIP_KEY_MAIN"

    .line 61
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 62
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
