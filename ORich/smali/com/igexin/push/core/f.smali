###### Class com.igexin.push.core.f (com.igexin.push.core.f)
.class public Lcom/igexin/push/core/f;
.super Ljava/lang/Object;


# static fields
.field public static A:Ljava/lang/String; = null

.field public static B:Ljava/lang/String; = null

.field public static C:Ljava/lang/String; = null

.field public static D:J = 0x0L

.field public static E:J = 0x0L

.field public static F:J = 0x0L

.field public static G:J = 0x0L

.field public static H:J = 0x0L

.field public static I:J = 0x0L

.field public static J:J = 0x0L

.field public static K:J = 0x0L

.field public static L:Ljava/lang/String; = null

.field public static M:Z = false

.field public static N:J = 0x0L

.field public static O:J = 0x0L

.field public static P:Ljava/lang/String; = null

.field public static Q:J = 0x0L

.field public static R:I = 0x0

.field public static S:Ljava/lang/String; = null

.field public static T:Ljava/lang/String; = null

.field public static U:Ljava/lang/String; = null

.field public static V:Ljava/lang/String; = null

.field public static W:Ljava/lang/String; = null

.field public static X:Ljava/lang/String; = null

.field public static Y:Ljava/lang/String; = null

.field public static Z:[B = null

.field public static a:Ljava/lang/String; = ""

.field public static aA:I = 0x0

.field public static aB:[B = null

.field public static aC:Ljava/lang/String; = null

.field private static aD:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static aa:Z = false

.field public static ab:Z = false

.field public static ac:Z = false

.field public static ad:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/igexin/push/core/bean/PushTaskBean;",
            ">;"
        }
    .end annotation
.end field

.field public static ae:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static af:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static ag:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field public static ah:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/igexin/push/e/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public static ai:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static aj:I = 0x0

.field public static ak:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static al:I = 0x0

.field public static am:I = 0x0

.field public static an:I = 0x0

.field public static ao:Ljava/lang/String; = null

.field public static ap:Lcom/igexin/push/g/b/h; = null

.field public static aq:J = 0x0L

.field public static ar:Ljava/lang/String; = null

.field public static as:Ljava/lang/String; = null

.field public static at:Ljava/lang/String; = null

.field public static au:Ljava/lang/String; = null

.field public static av:Ljava/lang/String; = null

.field public static aw:Ljava/lang/String; = null

.field public static ax:J = 0x0L

.field public static ay:Z = false

.field public static az:I = 0x0

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/lang/String; = ""

.field public static d:Ljava/lang/String; = ""

.field public static e:Ljava/lang/String; = ""

.field public static f:Landroid/content/Context;

.field public static g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static h:Z

.field public static volatile i:Z

.field public static volatile j:Z

.field public static k:Z

.field public static volatile l:Z

.field public static volatile m:Z

.field public static n:Z

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:J

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/igexin/push/core/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/igexin/push/core/f;->h:Z

    sput-boolean v0, Lcom/igexin/push/core/f;->k:Z

    sput-boolean v0, Lcom/igexin/push/core/f;->n:Z

    sput v1, Lcom/igexin/push/core/f;->o:I

    sput v1, Lcom/igexin/push/core/f;->p:I

    sput v1, Lcom/igexin/push/core/f;->q:I

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/igexin/push/core/f;->r:J

    const-string v0, ""

    sput-object v0, Lcom/igexin/push/core/f;->C:Ljava/lang/String;

    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/igexin/push/core/f;->D:J

    sput-wide v4, Lcom/igexin/push/core/f;->E:J

    sput-wide v2, Lcom/igexin/push/core/f;->F:J

    sput-wide v2, Lcom/igexin/push/core/f;->G:J

    sput-wide v2, Lcom/igexin/push/core/f;->H:J

    sput-wide v2, Lcom/igexin/push/core/f;->I:J

    sput-wide v2, Lcom/igexin/push/core/f;->J:J

    sput-wide v2, Lcom/igexin/push/core/f;->K:J

    const/4 v0, 0x0

    sput-object v0, Lcom/igexin/push/core/f;->L:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/config/n;->a:Ljava/lang/String;

    const-string v4, "debug"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/f;->M:Z

    sput-wide v2, Lcom/igexin/push/core/f;->N:J

    sput-wide v2, Lcom/igexin/push/core/f;->O:J

    sput-wide v2, Lcom/igexin/push/core/f;->Q:J

    sput v1, Lcom/igexin/push/core/f;->R:I

    sput v1, Lcom/igexin/push/core/f;->aj:I

    sput v1, Lcom/igexin/push/core/f;->al:I

    sput v1, Lcom/igexin/push/core/f;->am:I

    sput v1, Lcom/igexin/push/core/f;->an:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)I
    .registers 5

    const-class v0, Lcom/igexin/push/core/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/igexin/push/core/f;->aD:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    sget-object v1, Lcom/igexin/push/core/f;->aD:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    sget-object v1, Lcom/igexin/push/core/f;->aD:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz p1, :cond_35

    add-int/lit8 v1, v1, -0x1

    sget-object p1, Lcom/igexin/push/core/f;->aD:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_35

    sget-object p1, Lcom/igexin/push/core/f;->aD:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    monitor-exit v0

    return v1

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getConfigServiceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)V
    .registers 2

    sput-wide p0, Lcom/igexin/push/core/f;->r:J

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    sput-object p0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/core/f;->d()Z

    move-result v0

    if-nez v0, :cond_15

    const-string p0, "CoreRuntimeInfo|parseManifests failed"

    invoke-static {p0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/igexin/push/core/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/igexin/push/core/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/f;->Z:[B

    invoke-static {}, Lcom/igexin/push/core/f;->c()V

    invoke-static {}, Lcom/igexin/push/core/f;->b()V

    invoke-static {}, Lcom/igexin/push/core/f;->e()V

    invoke-static {}, Lcom/igexin/push/util/a;->g()Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/f;->h:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/f;->ad:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/f;->ae:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/igexin/push/core/f;->af:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/f;->ag:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/f;->ah:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/f;->ai:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/f;->ak:Ljava/util/Map;

    new-instance v0, Lcom/igexin/sdk/a/e;

    invoke-direct {v0, p0}, Lcom/igexin/sdk/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/e;->b()Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/f;->i:Z

    new-instance v0, Lcom/igexin/sdk/a/d;

    invoke-direct {v0, p0}, Lcom/igexin/sdk/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/d;->c()Z

    move-result p0

    sput-boolean p0, Lcom/igexin/push/core/f;->j:Z

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/igexin/push/core/f;->aD:Ljava/util/Map;

    invoke-static {}, Lcom/igexin/push/core/f;->f()V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/igexin/push/core/f;->ay:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoreRuntimeInfo|getui sdk init success, isSdkOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/igexin/push/core/f;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPushOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/igexin/push/core/f;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Integer;Z)Z
    .registers 5

    const-class v0, Lcom/igexin/push/core/f;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz p2, :cond_2d

    sget-object p2, Lcom/igexin/push/core/f;->aD:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2d

    sget-object p2, Lcom/igexin/push/core/f;->aD:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int v1, p2, p1

    if-nez v1, :cond_2d

    sget-object p1, Lcom/igexin/push/core/f;->aD:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_2d
    sget-object p1, Lcom/igexin/push/core/f;->aD:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method private static b()V
    .registers 5

    const-string v0, "/sdcard/libs//"

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/igexin/push/util/t;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    :try_start_b
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/libs/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "CoreRuntimeInfo|libs is file not directory, delete libs file ++++"

    invoke-static {v2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "CoreRuntimeInfo|create libs directory failed ++++++"

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_37
    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_e8

    :try_start_3c
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/system/tmp/local"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_93

    new-instance v2, Lcom/igexin/push/core/g;

    invoke-direct {v2}, Lcom/igexin/push/core/g;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_93

    array-length v2, v1

    if-lez v2, :cond_93

    array-length v2, v1

    const/4 v3, 0x0

    :goto_70
    if-ge v3, v2, :cond_93

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_77
    .catchall {:try_start_3c .. :try_end_77} :catchall_7a

    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    :catchall_7a
    move-exception v1

    :try_start_7b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CoreRuntimeInfo|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/igexin/push/core/f;->T:Ljava/lang/String;

    const-string v1, "/sdcard/libs//com.igexin.sdk.deviceId.db"

    sput-object v1, Lcom/igexin/push/core/f;->U:Ljava/lang/String;

    const-string v1, "/sdcard/libs//app.db"

    sput-object v1, Lcom/igexin/push/core/f;->V:Ljava/lang/String;

    const-string v1, "/sdcard/libs//imsi.db"

    sput-object v1, Lcom/igexin/push/core/f;->W:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/igexin/push/core/f;->S:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".bin"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/f;->Y:Ljava/lang/String;
    :try_end_e7
    .catchall {:try_start_7b .. :try_end_e7} :catchall_e8

    goto :goto_101

    :catchall_e8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoreRuntimeInfo|initFile exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_101
    return-void
.end method

.method private static c()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_38

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_38

    aget-object v3, v0, v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1f

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoreRuntimeInfo|init exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method private static d()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_65

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_65

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "PUSH_APPID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "PUSH_APPSECRET"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "PUSH_APPKEY"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_33
    if-eqz v3, :cond_39

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_39
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_66

    :cond_3f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_60

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_60

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_52

    goto :goto_60

    :cond_52
    sput-object v2, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    sput-object v1, Lcom/igexin/push/core/f;->b:Ljava/lang/String;

    sput-object v3, Lcom/igexin/push/core/f;->c:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getLocation()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/f;->d:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_60
    :goto_60
    const-string v1, "CoreRuntimeInfo|getui sdk init error, missing parm #####"

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_65
    return v0

    :catchall_66
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CoreRuntimeInfo|get ApplicationInfo meta data exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return v0
.end method

.method private static e()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_3c

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/util/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3c

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/util/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/f;->u:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/util/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/f;->v:Ljava/lang/String;

    :cond_3c
    return-void
.end method

.method private static f()V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v2

    const-string v3, "message"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sput v1, Lcom/igexin/push/core/f;->aA:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    :cond_1b
    if-eqz v0, :cond_28

    goto :goto_25

    :catchall_1e
    :try_start_1e
    const-string v1, "CoreRuntimeInfogetMessageTableNum error"

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_29

    if-eqz v0, :cond_28

    :goto_25
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_28
    return-void

    :catchall_29
    move-exception v1

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2f
    throw v1
.end method
