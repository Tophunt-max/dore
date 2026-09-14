###### Class io.dcloud.share.a (io.dcloud.share.a)
.class public Lio/dcloud/share/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lio/dcloud/common/DHInterface/AbsMgr;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/share/IFShareApi;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/share/ShareAuthorizeView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/share/a;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    .line 4
    iget-object p1, p0, Lio/dcloud/share/a;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1, p2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lio/dcloud/share/a;->d:Ljava/util/HashMap;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 297
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "android.intent.extra.TEXT"

    .line 298
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    :cond_b
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    const-string p2, "android.intent.extra.SUBJECT"

    .line 301
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    :cond_16
    invoke-static {p4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "android.intent.action.SEND"

    if-nez p2, :cond_49

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_49

    const-string p2, "image/*"

    .line 304
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    const-string v1, "android.intent.extra.STREAM"

    if-le p2, v0, :cond_3b

    const-string p2, "android.intent.action.SEND_MULTIPLE"

    .line 306
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p1, v1, p4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_51

    .line 309
    :cond_3b
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 310
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_51

    .line 313
    :cond_49
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "text/plain"

    .line 314
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_51
    return-object p1
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;)Ljava/lang/String;
    .registers 11

    const-string v0, "ShareApiManager getServices "

    .line 222
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    iget-object v2, p0, Lio/dcloud/share/a;->d:Ljava/util/HashMap;

    if-eqz v2, :cond_ad

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ad

    .line 225
    iget-object v2, p0, Lio/dcloud/share/a;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 229
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 231
    :try_start_28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 232
    iget-object v6, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/share/IFShareApi;

    if-nez v6, :cond_5d

    .line 234
    iget-object v6, p0, Lio/dcloud/share/a;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_40} :catch_92
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_40} :catch_72

    .line 235
    :try_start_40
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lio/dcloud/share/IFShareApi;

    .line 236
    invoke-interface {v6}, Lio/dcloud/share/IFShareApi;->initConfig()V

    .line 237
    iget-object v3, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    invoke-interface {v6}, Lio/dcloud/share/IFShareApi;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_40 .. :try_end_57} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_57} :catch_59

    move-object v3, v5

    goto :goto_5d

    :catch_59
    move-exception v3

    goto :goto_76

    :catch_5b
    move-object v3, v5

    goto :goto_92

    .line 240
    :cond_5d
    :goto_5d
    :try_start_5d
    invoke-interface {v6, p1}, Lio/dcloud/share/IFShareApi;->getJsonObject(Lio/dcloud/common/DHInterface/IWebview;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    iget-object v5, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eq v4, v5, :cond_a9

    const-string v5, ","

    .line 242
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_71
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5d .. :try_end_71} :catch_92
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_71} :catch_72

    goto :goto_a9

    :catch_72
    move-exception v5

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    .line 247
    :goto_76
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Exception ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_a9

    .line 248
    :catch_92
    :goto_92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is Not found!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    :cond_a9
    :goto_a9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_22

    :cond_ad
    const-string p1, "]"

    .line 254
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/io/File;Landroid/content/Intent;)Landroid/net/Uri;
    .registers 11

    .line 315
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v4, v3

    const-string v3, "_data=? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 322
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 323
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "content://media/external/images/media"

    .line 324
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 328
    :cond_49
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4c
    if-nez v1, :cond_67

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dc.fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :cond_67
    if-nez v1, :cond_7d

    .line 336
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "_data"

    .line 337
    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    :cond_7d
    return-object v1
.end method

.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    sparse-switch v0, :sswitch_data_1d6

    goto/16 :goto_8c

    :sswitch_19
    const-string v0, "authorize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    goto/16 :goto_8c

    :cond_23
    const/16 v9, 0x9

    goto/16 :goto_8c

    :sswitch_27
    const-string v0, "openCustomerServiceChat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_31

    goto/16 :goto_8c

    :cond_31
    const/16 v9, 0x8

    goto/16 :goto_8c

    :sswitch_35
    const-string v0, "sendWithSystem"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3e

    goto :goto_8c

    :cond_3e
    const/4 v9, 0x7

    goto :goto_8c

    :sswitch_40
    const-string v0, "send"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_49

    goto :goto_8c

    :cond_49
    const/4 v9, 0x6

    goto :goto_8c

    :sswitch_4b
    const-string v0, "load"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_54

    goto :goto_8c

    :cond_54
    const/4 v9, 0x5

    goto :goto_8c

    :sswitch_56
    const-string v0, "getServices"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5f

    goto :goto_8c

    :cond_5f
    const/4 v9, 0x4

    goto :goto_8c

    :sswitch_61
    const-string v0, "setVisible"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6a

    goto :goto_8c

    :cond_6a
    const/4 v9, 0x3

    goto :goto_8c

    :sswitch_6c
    const-string v0, "forbid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_75

    goto :goto_8c

    :cond_75
    const/4 v9, 0x2

    goto :goto_8c

    :sswitch_77
    const-string v0, "create"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_80

    goto :goto_8c

    :cond_80
    const/4 v9, 0x1

    goto :goto_8c

    :sswitch_82
    const-string v0, "launchMiniProgram"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8b

    goto :goto_8c

    :cond_8b
    const/4 v9, 0x0

    :goto_8c
    const-string p2, "{code:%d,message:\'%s\'}"

    const/4 v0, -0x3

    packed-switch v9, :pswitch_data_200

    goto/16 :goto_1d3

    .line 8
    :pswitch_94
    iget-object p2, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    aget-object v0, p3, v7

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/share/IFShareApi;

    .line 9
    aget-object v0, p3, v8

    aget-object p3, p3, v6

    invoke-interface {p2, p1, v0, p3}, Lio/dcloud/share/IFShareApi;->authorize(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d3

    .line 72
    :pswitch_a7
    aget-object v2, p3, v8

    .line 73
    aget-object v1, p3, v7

    .line 74
    iget-object v3, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/share/IFShareApi;

    .line 75
    instance-of v3, v1, Lio/dcloud/share/IWeiXinFShareApi;

    if-eqz v3, :cond_c0

    .line 76
    check-cast v1, Lio/dcloud/share/IWeiXinFShareApi;

    aget-object p2, p3, v6

    invoke-interface {v1, p1, p2, v2}, Lio/dcloud/share/IWeiXinFShareApi;->openCustomerServiceChat(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d3

    :cond_c0
    new-array p3, v6, [Ljava/lang/Object;

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v8

    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_NOT_SUPPORT:Ljava/lang/String;

    aput-object v0, p3, v7

    invoke-static {p2, p3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 79
    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_1d3

    .line 80
    :pswitch_da
    aget-object p2, p3, v8

    aget-object p3, p3, v7

    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/share/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d3

    .line 81
    :pswitch_e3
    iget-object p2, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    aget-object v0, p3, v7

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/share/IFShareApi;

    .line 82
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 83
    instance-of v1, v0, Lio/dcloud/application/DCloudApplication;

    if-eqz v1, :cond_fe

    .line 84
    check-cast v0, Lio/dcloud/application/DCloudApplication;

    invoke-virtual {v0}, Lio/dcloud/application/DCloudApplication;->stopB2FOnce()V

    .line 86
    :cond_fe
    aget-object v0, p3, v8

    aget-object p3, p3, v6

    invoke-interface {p2, p1, v0, p3}, Lio/dcloud/share/IFShareApi;->send(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d3

    .line 108
    :pswitch_107
    iget-object p1, p0, Lio/dcloud/share/a;->c:Ljava/util/HashMap;

    aget-object p2, p3, v8

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/share/ShareAuthorizeView;

    .line 109
    aget-object p2, p3, v7

    invoke-virtual {p1, p0, p2}, Lio/dcloud/share/ShareAuthorizeView;->load(Lio/dcloud/share/a;Ljava/lang/String;)V

    goto/16 :goto_1d3

    .line 110
    :pswitch_118
    aget-object v1, p3, v8

    invoke-direct {p0, p1}, Lio/dcloud/share/a;->a(Lio/dcloud/common/DHInterface/IWebview;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_1d3

    .line 157
    :pswitch_127
    iget-object p1, p0, Lio/dcloud/share/a;->c:Ljava/util/HashMap;

    aget-object p2, p3, v8

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/share/ShareAuthorizeView;

    .line 158
    aget-object p2, p3, v7

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13e

    .line 160
    invoke-virtual {p1, v8}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setVisibility(I)V

    goto/16 :goto_1d3

    .line 162
    :cond_13e
    invoke-virtual {p1, v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setVisibility(I)V

    goto/16 :goto_1d3

    .line 163
    :pswitch_143
    iget-object p2, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    aget-object p3, p3, v8

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/share/IFShareApi;

    .line 164
    invoke-interface {p2, p1}, Lio/dcloud/share/IFShareApi;->forbid(Lio/dcloud/common/DHInterface/IWebview;)V

    goto/16 :goto_1d3

    .line 181
    :pswitch_152
    new-instance p2, Lio/dcloud/share/ShareAuthorizeView;

    aget-object v0, p3, v7

    invoke-direct {p2, p1, v0}, Lio/dcloud/share/ShareAuthorizeView;-><init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 182
    aget-object v0, p3, v6

    if-eqz v0, :cond_168

    aget-object v0, p3, v7

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_168

    goto :goto_19b

    .line 184
    :cond_168
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    .line 185
    aget-object v1, p3, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 186
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v4, v4

    .line 187
    aget-object v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    .line 188
    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    .line 189
    invoke-static {v1, v4, v3, v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->createLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lio/dcloud/common/DHInterface/IContainerView;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    :goto_19b
    iget-object p1, p0, Lio/dcloud/share/a;->c:Ljava/util/HashMap;

    aget-object p3, p3, v8

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d3

    .line 210
    :pswitch_1a3
    aget-object v1, p3, v8

    .line 211
    aget-object v2, p3, v7

    .line 212
    iget-object v3, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/share/IFShareApi;

    .line 213
    instance-of v3, v2, Lio/dcloud/share/IWeiXinFShareApi;

    if-eqz v3, :cond_1bb

    .line 214
    check-cast v2, Lio/dcloud/share/IWeiXinFShareApi;

    aget-object p2, p3, v6

    invoke-interface {v2, p1, p2, v1}, Lio/dcloud/share/IWeiXinFShareApi;->launchMiniProgram(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d3

    :cond_1bb
    new-array p3, v6, [Ljava/lang/Object;

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v8

    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_NOT_SUPPORT:Ljava/lang/String;

    aput-object v0, p3, v7

    invoke-static {p2, p3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 217
    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_1d3
    const/4 p1, 0x0

    return-object p1

    nop

    :sswitch_data_1d6
    .sparse-switch
        -0x68326786 -> :sswitch_82
        -0x509a5f04 -> :sswitch_77
        -0x4ba0306c -> :sswitch_6c
        -0x32ef8650 -> :sswitch_61
        -0x31f0b22c -> :sswitch_56
        0x32c4e6 -> :sswitch_4b
        0x35cf88 -> :sswitch_40
        0x116c43d -> :sswitch_35
        0x3b617645 -> :sswitch_27
        0x57f407e9 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_200
    .packed-switch 0x0
        :pswitch_1a3
        :pswitch_152
        :pswitch_143
        :pswitch_127
        :pswitch_118
        :pswitch_107
        :pswitch_e3
        :pswitch_da
        :pswitch_a7
        :pswitch_94
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "sinaweibo"

    .line 218
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 219
    iget-object p1, p0, Lio/dcloud/share/a;->d:Ljava/util/HashMap;

    const-string v0, "sina"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_27

    :cond_13
    const-string v0, "tencentweibo"

    .line 220
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 221
    iget-object p1, p0, Lio/dcloud/share/a;->d:Ljava/util/HashMap;

    const-string v0, "tencent"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return-object p1
.end method

.method public a()V
    .registers 3

    .line 339
    iget-object v0, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_22

    .line 340
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 341
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/share/IFShareApi;

    invoke-interface {v1}, Lio/dcloud/share/IFShareApi;->dispose()V

    goto :goto_c

    .line 344
    :cond_22
    iget-object v0, p0, Lio/dcloud/share/a;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_44

    .line 345
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 346
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/share/ShareAuthorizeView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->dispose()V

    goto :goto_2e

    .line 349
    :cond_44
    iget-object v0, p0, Lio/dcloud/share/a;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_4b

    .line 350
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 352
    :cond_4b
    iget-object v0, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_52

    .line 353
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 355
    :cond_52
    iget-object v0, p0, Lio/dcloud/share/a;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_59

    .line 356
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_59
    return-void
.end method

.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 256
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "content"

    .line 257
    invoke-virtual {v2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "title"

    .line 258
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "href"

    .line 259
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_33
    const-string v4, "pictures"

    .line 263
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 264
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 265
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b1

    .line 266
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 267
    :goto_4a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_ad

    .line 268
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 269
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v8

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 270
    sget-object v8, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 271
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateExternalDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateDir:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 272
    invoke-static {v7, v8, v1, v0}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v9

    if-ne v9, v1, :cond_8a

    move-object v7, v8

    .line 277
    :cond_8a
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-lt v8, v9, :cond_9e

    .line 278
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v9, v4}, Lio/dcloud/share/a;->a(Landroid/content/Context;Ljava/io/File;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_a7

    .line 280
    :cond_9e
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 282
    :goto_a7
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 284
    :cond_ad
    invoke-direct {p0, v4, p3, v3, v5}, Lio/dcloud/share/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_b5

    :cond_b1
    const/4 v2, 0x0

    .line 287
    invoke-direct {p0, v4, p3, v3, v2}, Lio/dcloud/share/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_b5
    const-string p3, ""

    .line 290
    invoke-static {v4, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p3

    .line 291
    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 292
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c5} :catch_d1

    const-string v5, ""

    .line 293
    :try_start_c7
    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d0} :catch_d1

    goto :goto_ef

    :catch_d1
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/16 v2, -0x63

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v0

    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_UNKNOWN_ERROR:Ljava/lang/String;

    aput-object v0, p3, v1

    const-string v0, "{code:%d,message:\'%s\'}"

    invoke-static {v0, p3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 296
    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_ef
    return-void
.end method
