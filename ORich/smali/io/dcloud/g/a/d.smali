###### Class io.dcloud.g.a.d (io.dcloud.g.a.d)
.class Lio/dcloud/g/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/g/a/d$c;
    }
.end annotation


# instance fields
.field a:Lio/dcloud/common/DHInterface/AbsMgr;

.field b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/g/a/d$c;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/g/a/d$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/AbsMgr;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/g/a/d;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/g/a/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/g/a/d;->c:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lio/dcloud/g/a/d;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/g/a/d$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "snc:"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x4

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_23
    :goto_23
    if-ge v4, v1, :cond_56

    .line 11
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v4, v4, 0x1

    if-eq v4, v1, :cond_41

    .line 14
    invoke-virtual {p0, v6}, Lio/dcloud/g/a/d;->b(C)Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_41

    .line 15
    :cond_3b
    invoke-virtual {p0, v6}, Lio/dcloud/g/a/d;->a(C)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 16
    :cond_41
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 17
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 19
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v4

    goto :goto_23

    .line 23
    :cond_56
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_5a
    if-ge v3, p1, :cond_79

    .line 25
    new-instance v1, Lio/dcloud/g/a/d$c;

    invoke-direct {v1, p0}, Lio/dcloud/g/a/d$c;-><init>(Lio/dcloud/g/a/d;)V

    .line 26
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lio/dcloud/g/a/d$c;->a:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    .line 27
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lio/dcloud/g/a/d$c;->b:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x2

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_79
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 4

    monitor-enter p0

    .line 7
    :try_start_1
    iget-object v0, p0, Lio/dcloud/g/a/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lio/dcloud/g/a/d;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 8
    iget-object v0, p0, Lio/dcloud/g/a/d;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/g/a/d$c;

    if-eqz v0, :cond_28

    .line 10
    iget-object v1, p0, Lio/dcloud/g/a/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "runing"

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, v0}, Lio/dcloud/g/a/d;->a(Lio/dcloud/g/a/d$c;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    :cond_28
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lio/dcloud/g/a/d$c;)V
    .registers 3

    .line 12
    new-instance v0, Lio/dcloud/g/a/d$a;

    invoke-direct {v0, p0, p1}, Lio/dcloud/g/a/d$a;-><init>(Lio/dcloud/g/a/d;Lio/dcloud/g/a/d$c;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-void
.end method

.method declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0, p1}, Lio/dcloud/g/a/d;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3
    iget-object v0, p0, Lio/dcloud/g/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_12
    invoke-virtual {p0}, Lio/dcloud/g/a/d;->a()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 13

    monitor-enter p0

    .line 13
    :try_start_1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8b

    if-nez v0, :cond_89

    const/4 v0, 0x0

    .line 17
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_d} :catch_e
    .catchall {:try_start_8 .. :try_end_d} :catchall_8b

    goto :goto_13

    :catch_e
    move-exception p1

    .line 19
    :try_start_f
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    :goto_13
    const/4 p1, -0x1

    if-nez v1, :cond_24

    const-string v1, "console"

    const-string v2, "nativeApp pull fail"

    .line 22
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_22

    .line 24
    invoke-interface {p2, p1, v0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_8b

    :cond_22
    monitor-exit p0

    return-void

    :cond_24
    :try_start_24
    const-string v2, "appid"

    .line 28
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "filePath"

    .line 29
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_7b

    .line 37
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/www"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 38
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 40
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p1

    new-instance v0, Lio/dcloud/g/a/d$b;

    move-object v4, v0

    move-object v5, p0

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lio/dcloud/g/a/d$b;-><init>(Lio/dcloud/g/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lio/dcloud/common/DHInterface/ICallBack;)V

    invoke-virtual {p1, v0}, Lio/dcloud/common/util/ThreadPool;->addSingleThreadTask(Ljava/lang/Runnable;)V

    goto :goto_89

    :cond_6e
    const-string v1, "console"

    const-string v2, "nativeApp pull fail"

    .line 59
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_89

    .line 61
    invoke-interface {p2, p1, v0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    :cond_7b
    :goto_7b
    const-string v1, "console"

    const-string v2, "nativeApp pull fail"

    .line 62
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_87

    .line 64
    invoke-interface {p2, p1, v0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_24 .. :try_end_87} :catchall_8b

    :cond_87
    monitor-exit p0

    return-void

    :cond_89
    :goto_89
    monitor-exit p0

    return-void

    :catchall_8b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(C)Z
    .registers 3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_b

    const/16 v0, 0xa

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method b(C)Z
    .registers 3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1b

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1b

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1b

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x3000

    if-ne p1, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

###### Class io.dcloud.g.a.d.a (io.dcloud.g.a.d$a)
.class Lio/dcloud/g/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/d;->a(Lio/dcloud/g/a/d$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/g/a/d$c;

.field final synthetic b:Lio/dcloud/g/a/d;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/d;Lio/dcloud/g/a/d$c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    iput-object p2, p0, Lio/dcloud/g/a/d$a;->a:Lio/dcloud/g/a/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lio/dcloud/g/a/d$a;->a:Lio/dcloud/g/a/d$c;

    iget-object p1, p1, Lio/dcloud/g/a/d$c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_148

    goto :goto_40

    :sswitch_15
    const-string v0, "pull"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_40

    :cond_1e
    const/4 v3, 0x3

    goto :goto_40

    :sswitch_20
    const-string v0, "update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_40

    :cond_29
    const/4 v3, 0x2

    goto :goto_40

    :sswitch_2b
    const-string v0, "script"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_40

    :cond_34
    const/4 v3, 0x1

    goto :goto_40

    :sswitch_36
    const-string v0, "delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    :goto_40
    const/4 p1, 0x0

    packed-switch v3, :pswitch_data_15a

    goto/16 :goto_147

    .line 35
    :pswitch_46
    iget-object p1, p0, Lio/dcloud/g/a/d$a;->a:Lio/dcloud/g/a/d$c;

    iget-object p1, p1, Lio/dcloud/g/a/d$c;->b:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_147

    .line 37
    iget-object v0, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    new-instance v1, Lio/dcloud/g/a/d$a$a;

    invoke-direct {v1, p0}, Lio/dcloud/g/a/d$a$a;-><init>(Lio/dcloud/g/a/d$a;)V

    invoke-virtual {v0, p1, v1}, Lio/dcloud/g/a/d;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V

    goto/16 :goto_147

    .line 38
    :pswitch_5c
    iget-object v0, p0, Lio/dcloud/g/a/d$a;->a:Lio/dcloud/g/a/d$c;

    iget-object v0, v0, Lio/dcloud/g/a/d$c;->b:Ljava/lang/String;

    const-string v1, "all"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 40
    iget-object v0, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    iget-object v0, v0, Lio/dcloud/g/a/d;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_93

    :cond_74
    const-string v1, "current"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 42
    iget-object v0, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    iget-object v0, v0, Lio/dcloud/g/a/d;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_93

    .line 44
    :cond_88
    iget-object p1, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    iget-object p1, p1, Lio/dcloud/g/a/d;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0xe

    invoke-interface {p1, v1, v2, v0}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_93
    iget-object p1, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    iget-object p1, p1, Lio/dcloud/g/a/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 47
    iget-object p1, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    invoke-virtual {p1}, Lio/dcloud/g/a/d;->a()V

    goto/16 :goto_147

    .line 51
    :pswitch_a1
    iget-object v0, p0, Lio/dcloud/g/a/d$a;->a:Lio/dcloud/g/a/d$c;

    iget-object v0, v0, Lio/dcloud/g/a/d$c;->b:Ljava/lang/String;

    const-string v3, "restart"

    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 53
    iget-object p1, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    iget-object p1, p1, Lio/dcloud/g/a/d;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const-string v2, "snc:CID"

    invoke-interface {p1, v0, v1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_10b

    :cond_b9
    const-string v1, "debugRefresh"

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 56
    iget-object v0, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    iget-object v0, v0, Lio/dcloud/g/a/d;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0x1b

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_10b

    :cond_cd
    const-string p1, "restartAndRun"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10b

    .line 58
    iget-object p1, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    iget-object p1, p1, Lio/dcloud/g/a/d;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    iget-object v0, v0, Lio/dcloud/g/a/d;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {v0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    iget-object v0, v0, Lio/dcloud/g/a/d;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {v0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/Runtime;->exit(I)V

    .line 65
    :cond_10b
    :goto_10b
    iget-object p1, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    iget-object p1, p1, Lio/dcloud/g/a/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 66
    iget-object p1, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    invoke-virtual {p1}, Lio/dcloud/g/a/d;->a()V

    goto :goto_147

    .line 94
    :pswitch_118
    iget-object p1, p0, Lio/dcloud/g/a/d$a;->a:Lio/dcloud/g/a/d$c;

    iget-object p1, p1, Lio/dcloud/g/a/d$c;->b:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 98
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/g/a/d$a$b;

    invoke-direct {v1, p0, p1}, Lio/dcloud/g/a/d$a$b;-><init>(Lio/dcloud/g/a/d$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addSingleThreadTask(Ljava/lang/Runnable;)V

    goto :goto_147

    :cond_134
    const-string p1, "console"

    const-string v0, "rm file fail"

    .line 111
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p1, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    iget-object p1, p1, Lio/dcloud/g/a/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 113
    iget-object p1, p0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    invoke-virtual {p1}, Lio/dcloud/g/a/d;->a()V

    :cond_147
    :goto_147
    return-void

    :sswitch_data_148
    .sparse-switch
        -0x4f997a55 -> :sswitch_36
        -0x361a2f35 -> :sswitch_2b
        -0x31ffc737 -> :sswitch_20
        0x34ae45 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_118
        :pswitch_a1
        :pswitch_5c
        :pswitch_46
    .end packed-switch
.end method

###### Class io.dcloud.g.a.d.a.C0061a (io.dcloud.g.a.d$a$a)
.class Lio/dcloud/g/a/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/d$a;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/g/a/d$a;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/d$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/d$a$a;->a:Lio/dcloud/g/a/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-string p2, "console"

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    goto :goto_14

    :cond_9
    const-string p1, "nativeApp pull success"

    .line 1
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_f
    const-string p1, "nativeApp pull fail"

    .line 5
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_14
    iget-object p1, p0, Lio/dcloud/g/a/d$a$a;->a:Lio/dcloud/g/a/d$a;

    iget-object p1, p1, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    iget-object p1, p1, Lio/dcloud/g/a/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 10
    iget-object p1, p0, Lio/dcloud/g/a/d$a$a;->a:Lio/dcloud/g/a/d$a;

    iget-object p1, p1, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    invoke-virtual {p1}, Lio/dcloud/g/a/d;->a()V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.g.a.d.a.b (io.dcloud.g.a.d$a$b)
.class Lio/dcloud/g/a/d$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/d$a;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/g/a/d$a;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/d$a;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/d$a$b;->b:Lio/dcloud/g/a/d$a;

    iput-object p2, p0, Lio/dcloud/g/a/d$a$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/d$a$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "console"

    if-eqz v0, :cond_10

    const-string v0, "rm file success"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_10
    const-string v0, "rm file fail"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_15
    iget-object v0, p0, Lio/dcloud/g/a/d$a$b;->b:Lio/dcloud/g/a/d$a;

    iget-object v0, v0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    iget-object v0, v0, Lio/dcloud/g/a/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 7
    iget-object v0, p0, Lio/dcloud/g/a/d$a$b;->b:Lio/dcloud/g/a/d$a;

    iget-object v0, v0, Lio/dcloud/g/a/d$a;->b:Lio/dcloud/g/a/d;

    invoke-virtual {v0}, Lio/dcloud/g/a/d;->a()V

    return-void
.end method

###### Class io.dcloud.g.a.d.b (io.dcloud.g.a.d$b)
.class Lio/dcloud/g/a/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/d;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Lio/dcloud/common/DHInterface/ICallBack;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 6

    .line 1
    iput-object p2, p0, Lio/dcloud/g/a/d$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/g/a/d$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/g/a/d$b;->c:Ljava/io/File;

    iput-object p5, p0, Lio/dcloud/g/a/d$b;->d:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/d$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/g/a/d$b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lio/dcloud/g/a/d$b;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    .line 5
    iget-object v0, p0, Lio/dcloud/g/a/d$b;->d:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_25

    .line 6
    invoke-interface {v0, v2, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 9
    :cond_1d
    iget-object v0, p0, Lio/dcloud/g/a/d$b;->d:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_25

    const/4 v2, -0x1

    .line 10
    invoke-interface {v0, v2, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_25
    :goto_25
    return-void
.end method

###### Class io.dcloud.g.a.d.c (io.dcloud.g.a.d$c)
.class Lio/dcloud/g/a/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/g/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/d;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
