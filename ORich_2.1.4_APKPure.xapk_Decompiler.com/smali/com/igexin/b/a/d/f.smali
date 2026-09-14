###### Class com.igexin.b.a.d.f (com.igexin.b.a.d.f)
.class public Lcom/igexin/b/a/d/f;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/BroadcastReceiver;",
        "Ljava/util/Comparator<",
        "Lcom/igexin/b/a/d/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "com.igexin.b.a.d.f"

.field public static final u:J


# instance fields
.field private a:Z

.field final h:Lcom/igexin/b/a/d/j;

.field final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/igexin/b/a/d/a/b;",
            ">;"
        }
    .end annotation
.end field

.field final j:Lcom/igexin/b/a/d/c;

.field final k:Lcom/igexin/b/a/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igexin/b/a/d/d<",
            "Lcom/igexin/b/a/d/e;",
            ">;"
        }
    .end annotation
.end field

.field final l:Ljava/util/concurrent/locks/ReentrantLock;

.field m:Landroid/os/PowerManager;

.field n:Landroid/app/AlarmManager;

.field o:Landroid/content/Intent;

.field p:Landroid/app/PendingIntent;

.field q:Landroid/content/Intent;

.field r:Landroid/app/PendingIntent;

.field s:Ljava/lang/String;

.field volatile t:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/b/a/d/f;->u:J

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/igexin/b/a/d/f;->l:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/b/a/d/f;->a:Z

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/igexin/b/a/d/f;->i:Ljava/util/HashMap;

    new-instance v0, Lcom/igexin/b/a/d/d;

    invoke-direct {v0, p0, p0}, Lcom/igexin/b/a/d/d;-><init>(Ljava/util/Comparator;Lcom/igexin/b/a/d/f;)V

    iput-object v0, p0, Lcom/igexin/b/a/d/f;->k:Lcom/igexin/b/a/d/d;

    new-instance v0, Lcom/igexin/b/a/d/c;

    invoke-direct {v0}, Lcom/igexin/b/a/d/c;-><init>()V

    iput-object v0, p0, Lcom/igexin/b/a/d/f;->j:Lcom/igexin/b/a/d/c;

    new-instance v0, Lcom/igexin/b/a/d/j;

    invoke-direct {v0, p0}, Lcom/igexin/b/a/d/j;-><init>(Lcom/igexin/b/a/d/f;)V

    iput-object v0, p0, Lcom/igexin/b/a/d/f;->h:Lcom/igexin/b/a/d/j;

    sput-object p0, Lcom/igexin/b/a/d/e;->E:Lcom/igexin/b/a/d/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/igexin/b/a/d/e;Lcom/igexin/b/a/d/e;)I
    .registers 10

    iget-wide v0, p1, Lcom/igexin/b/a/d/e;->u:J

    iget-wide v2, p2, Lcom/igexin/b/a/d/e;->u:J

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_a

    return v4

    :cond_a
    iget-wide v0, p1, Lcom/igexin/b/a/d/e;->u:J

    iget-wide v2, p2, Lcom/igexin/b/a/d/e;->u:J

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-lez v6, :cond_14

    return v5

    :cond_14
    iget v0, p1, Lcom/igexin/b/a/d/e;->A:I

    iget v1, p2, Lcom/igexin/b/a/d/e;->A:I

    if-le v0, v1, :cond_1b

    return v4

    :cond_1b
    iget v0, p1, Lcom/igexin/b/a/d/e;->A:I

    iget v1, p2, Lcom/igexin/b/a/d/e;->A:I

    if-ge v0, v1, :cond_22

    return v5

    :cond_22
    iget v0, p1, Lcom/igexin/b/a/d/e;->v:I

    iget v1, p2, Lcom/igexin/b/a/d/e;->v:I

    if-ge v0, v1, :cond_29

    return v4

    :cond_29
    iget v0, p1, Lcom/igexin/b/a/d/e;->v:I

    iget v1, p2, Lcom/igexin/b/a/d/e;->v:I

    if-le v0, v1, :cond_30

    return v5

    :cond_30
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public final a(J)V
    .registers 7

    iget-boolean v0, p0, Lcom/igexin/b/a/d/f;->t:Z

    if-eqz v0, :cond_72

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setalarm|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_39

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide v0, Lcom/igexin/b/a/d/f;->u:J

    add-long/2addr p1, v0

    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/igexin/b/a/d/f;->p:Landroid/app/PendingIntent;

    if-eqz v0, :cond_72

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    if-ge v0, v1, :cond_4c

    iget-object v0, p0, Lcom/igexin/b/a/d/f;->n:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/igexin/b/a/d/f;->p:Landroid/app/PendingIntent;

    :goto_48
    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_4b
    .catchall {:try_start_39 .. :try_end_4b} :catchall_59

    goto :goto_72

    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/igexin/b/a/d/f;->n:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/igexin/b/a/d/f;->p:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_54

    goto :goto_72

    :catchall_54
    :try_start_54
    iget-object v0, p0, Lcom/igexin/b/a/d/f;->n:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/igexin/b/a/d/f;->p:Landroid/app/PendingIntent;
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_59

    goto :goto_48

    :catchall_59
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TaskService"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_72
    :goto_72
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 7

    iget-boolean v0, p0, Lcom/igexin/b/a/d/f;->a:Z

    if-nez v0, :cond_d9

    invoke-static {}, Lcom/igexin/push/util/p;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_cf

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/igexin/b/a/d/f;->m:Landroid/os/PowerManager;

    iput-boolean v1, p0, Lcom/igexin/b/a/d/f;->t:Z

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/igexin/b/a/d/f;->n:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlarmTaskSchedule."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlarmTaskScheduleBak."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmNioTaskSchedule."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/b/a/d/f;->s:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/igexin/b/a/d/f;->s:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/igexin/b/a/d/f;->o:Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v2, p0, Lcom/igexin/b/a/d/f;->o:Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-static {p1, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/b/a/d/f;->p:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/igexin/b/a/d/f;->s:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/igexin/b/a/d/f;->q:Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/igexin/b/a/d/f;->q:Landroid/content/Intent;

    invoke-static {p1, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/b/a/d/f;->r:Landroid/app/PendingIntent;

    :cond_cf
    iget-object p1, p0, Lcom/igexin/b/a/d/f;->h:Lcom/igexin/b/a/d/j;

    invoke-virtual {p1}, Lcom/igexin/b/a/d/j;->start()V

    :try_start_d4
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_d7

    :catchall_d7
    iput-boolean v1, p0, Lcom/igexin/b/a/d/f;->a:Z

    :cond_d9
    return-void
.end method

.method public final a(Lcom/igexin/b/a/d/a/b;)Z
    .registers 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/igexin/b/a/d/f;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_58

    :try_start_c
    iget-object v1, p0, Lcom/igexin/b/a/d/f;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/igexin/b/a/d/a/b;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_36

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/igexin/b/a/d/f;->i:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/igexin/b/a/d/a/b;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_36

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_36
    move-exception p1

    :try_start_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaskService|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_53

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_58

    :catchall_53
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_58
    :goto_58
    return v2
.end method

.method final a(Lcom/igexin/b/a/d/a/e;Lcom/igexin/b/a/d/a/b;)Z
    .registers 5

    invoke-interface {p1}, Lcom/igexin/b/a/d/a/e;->b()I

    move-result v0

    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_20

    if-gez v0, :cond_20

    move-object v0, p1

    check-cast v0, Lcom/igexin/b/a/d/e;

    iget-boolean v1, v0, Lcom/igexin/b/a/d/e;->t:Z

    if-eqz v1, :cond_16

    invoke-interface {p2, v0, p0}, Lcom/igexin/b/a/d/a/b;->a(Lcom/igexin/b/a/d/e;Lcom/igexin/b/a/d/f;)Z

    move-result p1

    goto :goto_1a

    :cond_16
    invoke-interface {p2, p1, p0}, Lcom/igexin/b/a/d/a/b;->a(Lcom/igexin/b/a/d/a/e;Lcom/igexin/b/a/d/f;)Z

    move-result p1

    :goto_1a
    if-eqz p1, :cond_1f

    invoke-virtual {v0}, Lcom/igexin/b/a/d/e;->c()V

    :cond_1f
    return p1

    :cond_20
    if-ltz v0, :cond_2c

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_2c

    invoke-interface {p2, p1, p0}, Lcom/igexin/b/a/d/a/b;->a(Lcom/igexin/b/a/d/a/e;Lcom/igexin/b/a/d/f;)Z

    move-result p1

    return p1

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/igexin/b/a/d/e;Z)Z
    .registers 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/igexin/b/a/d/e;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_36

    iget-boolean v0, p1, Lcom/igexin/b/a/d/e;->k:Z

    if-eqz v0, :cond_d

    goto :goto_36

    :cond_d
    iget-object v0, p0, Lcom/igexin/b/a/d/f;->k:Lcom/igexin/b/a/d/d;

    instance-of v2, p1, Lcom/igexin/b/a/b/e;

    if-eqz v2, :cond_1e

    move-object v2, p1

    check-cast v2, Lcom/igexin/b/a/b/e;

    iget-object v2, v2, Lcom/igexin/b/a/b/e;->c:Ljava/lang/Object;

    instance-of v2, v2, Lcom/igexin/push/e/c/p;

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    if-eqz v2, :cond_27

    if-eqz p2, :cond_2f

    const v1, 0x7fffffff

    goto :goto_2f

    :cond_27
    if-eqz p2, :cond_2f

    iget-object p2, v0, Lcom/igexin/b/a/d/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    :cond_2f
    :goto_2f
    iput v1, p1, Lcom/igexin/b/a/d/e;->A:I

    invoke-virtual {v0, p1}, Lcom/igexin/b/a/d/d;->a(Lcom/igexin/b/a/d/e;)Z

    move-result p1

    return p1

    :cond_36
    :goto_36
    return v1
.end method

.method public final a(Lcom/igexin/b/a/d/e;ZZ)Z
    .registers 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/igexin/b/a/d/e;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x1

    if-eqz p2, :cond_45

    if-nez p3, :cond_45

    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->d()V

    :try_start_11
    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->b_()V

    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->g()V

    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->h()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_24
    .catchall {:try_start_11 .. :try_end_1a} :catchall_22

    iget-boolean p2, p1, Lcom/igexin/b/a/d/e;->t:Z

    if-nez p2, :cond_21

    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->c()V

    :cond_21
    return v0

    :catchall_22
    move-exception p2

    goto :goto_3d

    :catch_24
    move-exception p2

    :try_start_25
    iput-boolean v0, p1, Lcom/igexin/b/a/d/e;->t:Z

    iput-object p2, p1, Lcom/igexin/b/a/d/e;->B:Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->p()V

    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->u()V

    invoke-virtual {p0, p1}, Lcom/igexin/b/a/d/f;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/igexin/b/a/d/f;->f()V
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_22

    iget-boolean p2, p1, Lcom/igexin/b/a/d/e;->t:Z

    if-nez p2, :cond_3c

    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->c()V

    :cond_3c
    return v1

    :goto_3d
    iget-boolean p3, p1, Lcom/igexin/b/a/d/e;->t:Z

    if-nez p3, :cond_44

    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->c()V

    :cond_44
    throw p2

    :cond_45
    if-eqz p3, :cond_4a

    if-eqz p2, :cond_4a

    const/4 v1, 0x1

    :cond_4a
    invoke-virtual {p0, p1, v1}, Lcom/igexin/b/a/d/f;->a(Lcom/igexin/b/a/d/e;Z)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Class;)Z
    .registers 3

    iget-object v0, p0, Lcom/igexin/b/a/d/f;->k:Lcom/igexin/b/a/d/d;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/igexin/b/a/d/d;->a(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public final a(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    instance-of v1, p1, Lcom/igexin/push/e/c/o;

    if-eqz v1, :cond_d

    move-object v1, p1

    check-cast v1, Lcom/igexin/push/e/c/o;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    nop

    :cond_d
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskService|responseQueue ++ task = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    instance-of v1, p1, Lcom/igexin/b/a/d/a/e;

    if-eqz v1, :cond_5f

    move-object v1, p1

    check-cast v1, Lcom/igexin/b/a/d/a/e;

    invoke-interface {v1}, Lcom/igexin/b/a/d/a/e;->l()Z

    move-result v2

    if-eqz v2, :cond_43

    return v0

    :cond_43
    invoke-interface {v1, v0}, Lcom/igexin/b/a/d/a/e;->b(Z)V

    instance-of v0, p1, Lcom/igexin/push/e/b/a;

    if-nez v0, :cond_4e

    instance-of p1, p1, Lcom/igexin/push/e/b/b;

    if-eqz p1, :cond_58

    :cond_4e
    iget-object p1, p0, Lcom/igexin/b/a/d/f;->j:Lcom/igexin/b/a/d/c;

    invoke-virtual {p1}, Lcom/igexin/b/a/d/c;->a()V

    const-string p1, "TaskService|scheduleQueue_response_change_queue primaryResponseQueue"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_58
    iget-object p1, p0, Lcom/igexin/b/a/d/f;->j:Lcom/igexin/b/a/d/c;

    invoke-virtual {p1, v1}, Lcom/igexin/b/a/d/c;->a(Lcom/igexin/b/a/d/a/e;)V

    const/4 p1, 0x1

    return p1

    :cond_5f
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "response Obj is not a TaskResult "

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(J)V
    .registers 7

    invoke-static {}, Lcom/igexin/push/util/p;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setnioalarm|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_3c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide v0, Lcom/igexin/b/a/d/f;->u:J

    add-long/2addr p1, v0

    :cond_3c
    :try_start_3c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    if-ge v0, v1, :cond_4b

    iget-object v0, p0, Lcom/igexin/b/a/d/f;->n:Landroid/app/AlarmManager;

    :goto_45
    iget-object v1, p0, Lcom/igexin/b/a/d/f;->r:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_56

    goto :goto_56

    :cond_4b
    :try_start_4b
    iget-object v0, p0, Lcom/igexin/b/a/d/f;->n:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/igexin/b/a/d/f;->r:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_52} :catch_53
    .catchall {:try_start_4b .. :try_end_52} :catchall_56

    goto :goto_56

    :catch_53
    :try_start_53
    iget-object v0, p0, Lcom/igexin/b/a/d/f;->n:Landroid/app/AlarmManager;
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_56

    goto :goto_45

    :catchall_56
    :goto_56
    return-void
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/igexin/b/a/d/e;

    check-cast p2, Lcom/igexin/b/a/d/e;

    invoke-virtual {p0, p1, p2}, Lcom/igexin/b/a/d/f;->a(Lcom/igexin/b/a/d/e;Lcom/igexin/b/a/d/e;)I

    move-result p1

    return p1
.end method

.method public final e()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/igexin/b/a/d/f;->r:Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/igexin/b/a/d/f;->n:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_9

    :catchall_9
    :cond_9
    return-void
.end method

.method protected final f()V
    .registers 2

    iget-object v0, p0, Lcom/igexin/b/a/d/f;->h:Lcom/igexin/b/a/d/j;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/igexin/b/a/d/j;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/igexin/b/a/d/f;->h:Lcom/igexin/b/a/d/j;

    invoke-virtual {v0}, Lcom/igexin/b/a/d/j;->interrupt()V

    :cond_f
    return-void
.end method

.method final g()V
    .registers 10

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/igexin/b/a/d/f;->j:Lcom/igexin/b/a/d/c;

    invoke-virtual {v0}, Lcom/igexin/b/a/d/c;->c()Z

    move-result v0

    if-nez v0, :cond_db

    iget-object v0, p0, Lcom/igexin/b/a/d/f;->j:Lcom/igexin/b/a/d/c;

    invoke-virtual {v0}, Lcom/igexin/b/a/d/c;->d()Lcom/igexin/b/a/d/a/e;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskService|notifyObserver responseQueue -- task = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/igexin/b/a/d/a/e;->b(Z)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/igexin/b/a/d/f;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/high16 v3, -0x80000000

    :try_start_31
    iget-object v4, p0, Lcom/igexin/b/a/d/f;->i:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7f

    invoke-interface {v0}, Lcom/igexin/b/a/d/a/e;->m()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_5c

    iget-object v6, p0, Lcom/igexin/b/a/d/f;->i:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/igexin/b/a/d/a/b;

    if-eqz v4, :cond_7f

    invoke-interface {v4}, Lcom/igexin/b/a/d/a/b;->k()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-virtual {p0, v0, v4}, Lcom/igexin/b/a/d/f;->a(Lcom/igexin/b/a/d/a/e;Lcom/igexin/b/a/d/a/b;)Z

    move-result v1

    goto :goto_7f

    :cond_5c
    iget-object v4, p0, Lcom/igexin/b/a/d/f;->i:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_66
    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/igexin/b/a/d/a/b;

    invoke-interface {v5}, Lcom/igexin/b/a/d/a/b;->k()Z

    move-result v6

    if-nez v6, :cond_79

    goto :goto_66

    :cond_79
    invoke-virtual {p0, v0, v5}, Lcom/igexin/b/a/d/f;->a(Lcom/igexin/b/a/d/a/e;Lcom/igexin/b/a/d/a/b;)Z

    move-result v1
    :try_end_7d
    .catchall {:try_start_31 .. :try_end_7d} :catchall_93

    if-eqz v1, :cond_66

    :cond_7f
    :goto_7f
    if-nez v1, :cond_8f

    invoke-interface {v0}, Lcom/igexin/b/a/d/a/e;->b()I

    move-result v1

    if-le v1, v3, :cond_8f

    if-gez v1, :cond_8f

    :goto_89
    move-object v1, v0

    check-cast v1, Lcom/igexin/b/a/d/e;

    invoke-virtual {v1}, Lcom/igexin/b/a/d/e;->c()V

    :cond_8f
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_b7

    :catchall_93
    move-exception v4

    :try_start_94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TaskService|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_94 .. :try_end_ac} :catchall_c7

    if-nez v1, :cond_8f

    invoke-interface {v0}, Lcom/igexin/b/a/d/a/e;->b()I

    move-result v1

    if-le v1, v3, :cond_8f

    if-gez v1, :cond_8f

    goto :goto_89

    :goto_b7
    instance-of v0, v0, Lcom/igexin/push/e/c/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/b/a/d/f;->j:Lcom/igexin/b/a/d/c;

    invoke-virtual {v0}, Lcom/igexin/b/a/d/c;->b()V

    const-string v0, "TaskService|queue -> secondRespQueue"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_c7
    move-exception v4

    if-nez v1, :cond_d7

    invoke-interface {v0}, Lcom/igexin/b/a/d/a/e;->b()I

    move-result v1

    if-le v1, v3, :cond_d7

    if-gez v1, :cond_d7

    check-cast v0, Lcom/igexin/b/a/d/e;

    invoke-virtual {v0}, Lcom/igexin/b/a/d/e;->c()V

    :cond_d7
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    :cond_db
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/igexin/b/a/d/f;->t:Z

    const-string p1, "screenoff"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/b/a/d/f;->k:Lcom/igexin/b/a/d/d;

    iget-object p1, p1, Lcom/igexin/b/a/d/d;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_93

    iget-object p1, p0, Lcom/igexin/b/a/d/f;->k:Lcom/igexin/b/a/d/d;

    iget-object p1, p1, Lcom/igexin/b/a/d/d;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/igexin/b/a/d/f;->a(J)V

    goto :goto_93

    :cond_2e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/igexin/b/a/d/f;->t:Z

    const-string p1, "screenon"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_93

    :cond_43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlarmTaskSchedule."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlarmTaskScheduleBak."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5c

    goto :goto_7a

    :cond_5c
    iget-object p1, p0, Lcom/igexin/b/a/d/f;->s:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_93

    const-string p1, "receive nioalarm"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :try_start_6d
    const-string p1, "TaskService|alarm time out #######"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/b/a/b/a/a/f;->a()Lcom/igexin/b/a/b/a/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/b/a/b/a/a/f;->e()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_79} :catch_93

    goto :goto_93

    :cond_7a
    :goto_7a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "receivealarm|"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/igexin/b/a/d/f;->t:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igexin/b/a/d/f;->f()V

    :catch_93
    :cond_93
    :goto_93
    return-void
.end method
