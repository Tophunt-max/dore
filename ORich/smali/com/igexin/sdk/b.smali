###### Class com.igexin.sdk.b (com.igexin.sdk.b)
.class Lcom/igexin/sdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/job/JobParameters;

.field final synthetic b:Lcom/igexin/sdk/GTIntentService$JobIntentService;


# direct methods
.method constructor <init>(Lcom/igexin/sdk/GTIntentService$JobIntentService;Landroid/app/job/JobParameters;)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/sdk/b;->b:Lcom/igexin/sdk/GTIntentService$JobIntentService;

    iput-object p2, p0, Lcom/igexin/sdk/b;->a:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    :try_start_0
    const-string v0, "android.app.job.JobWorkItem"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/app/job/JobParameters;

    const-string v2, "dequeueWork"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v4}, Lcom/igexin/push/util/o;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "getIntent"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/igexin/push/util/o;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v4, Landroid/app/job/JobParameters;

    const-string v5, "completeWork"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v3

    invoke-static {v4, v5, v7}, Lcom/igexin/push/util/o;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_26
    iget-object v4, p0, Lcom/igexin/sdk/b;->a:Landroid/app/job/JobParameters;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_64

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/igexin/sdk/b;->a:Landroid/app/job/JobParameters;

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v4, v8, v3

    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/igexin/sdk/b;->b:Lcom/igexin/sdk/GTIntentService$JobIntentService;

    iget-object v4, v4, Lcom/igexin/sdk/GTIntentService$JobIntentService;->a:Lcom/igexin/sdk/GTIntentService;

    invoke-virtual {v4, v5}, Lcom/igexin/sdk/GTIntentService;->onHandleIntent(Landroid/content/Intent;)V
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_49

    goto :goto_26

    :catchall_49
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartJobIntentService err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GTIntentService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    return-void
.end method
