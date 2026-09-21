###### Class com.igexin.assist.control.fcm.JobSender (com.igexin.assist.control.fcm.JobSender)
.class public Lcom/igexin/assist/control/fcm/JobSender;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "Assist_FCM"

.field private static a:Lcom/igexin/assist/control/fcm/JobSender;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/igexin/assist/control/fcm/JobSender;
    .registers 2

    const-class v0, Lcom/igexin/assist/control/fcm/JobSender;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/igexin/assist/control/fcm/JobSender;->a:Lcom/igexin/assist/control/fcm/JobSender;

    if-nez v1, :cond_e

    new-instance v1, Lcom/igexin/assist/control/fcm/JobSender;

    invoke-direct {v1}, Lcom/igexin/assist/control/fcm/JobSender;-><init>()V

    sput-object v1, Lcom/igexin/assist/control/fcm/JobSender;->a:Lcom/igexin/assist/control/fcm/JobSender;

    :cond_e
    sget-object v1, Lcom/igexin/assist/control/fcm/JobSender;->a:Lcom/igexin/assist/control/fcm/JobSender;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public runJob(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_8

    return v1

    :cond_8
    if-nez p1, :cond_b

    return v1

    :cond_b
    if-eqz p2, :cond_63

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_63

    :cond_14
    :try_start_14
    const-string v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {v0, p3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p3

    const-string v0, "android.app.job.JobWorkItem"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-class v3, Landroid/app/job/JobScheduler;

    const-string v4, "enqueue"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/app/job/JobInfo;

    aput-object v7, v6, v1

    aput-object v0, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p3, v3, v1

    aput-object p2, v3, v2

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catchall {:try_start_14 .. :try_end_62} :catchall_63

    return v2

    :catchall_63
    :cond_63
    :goto_63
    return v1
.end method
