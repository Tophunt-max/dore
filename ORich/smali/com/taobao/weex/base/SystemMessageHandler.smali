###### Class com.taobao.weex.base.SystemMessageHandler (com.taobao.weex.base.SystemMessageHandler)
.class public Lcom/taobao/weex/base/SystemMessageHandler;
.super Landroid/os/Handler;
.source "SystemMessageHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final SCHEDULED_WORK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SystemMessageHandler"


# instance fields
.field private mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

.field private mMessagePumpDelegateNative:J


# direct methods
.method private constructor <init>(JZ)V
    .registers 7

    const-string v0, "SystemMessageHandler"

    if-eqz p3, :cond_9

    .line 43
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    goto :goto_d

    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    :goto_d
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v1, 0x0

    .line 36
    iput-wide v1, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessagePumpDelegateNative:J

    .line 44
    iput-wide p1, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessagePumpDelegateNative:J

    :try_start_16
    const-string p1, "android.os.Message"

    .line 46
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p2, "setAsynchronous"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 47
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_2c} :catch_59
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_2c} :catch_43
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_2c} :catch_2d

    goto :goto_6e

    :catch_2d
    move-exception p1

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception while loading Message.setAsynchronous method: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :catch_43
    move-exception p1

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to load Message.setAsynchronous method:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :catch_59
    move-exception p1

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to find android.os.Message class:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6e
    return-void
.end method

.method public static create(JZ)Lcom/taobao/weex/base/SystemMessageHandler;
    .registers 4

    .line 60
    new-instance v0, Lcom/taobao/weex/base/SystemMessageHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/base/SystemMessageHandler;-><init>(JZ)V

    return-object v0
.end method

.method private native nativeRunWork(J)V
.end method

.method private obtainAsyncMessage(I)Landroid/os/Message;
    .registers 3

    .line 79
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 80
    iput p1, v0, Landroid/os/Message;->what:I

    return-object v0
.end method

.method private scheduleDelayedWork(J)V
    .registers 4

    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, v0}, Lcom/taobao/weex/base/SystemMessageHandler;->obtainAsyncMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/taobao/weex/base/SystemMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private scheduleWork()V
    .registers 2

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, v0}, Lcom/taobao/weex/base/SystemMessageHandler;->obtainAsyncMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/base/SystemMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private stop()V
    .registers 2

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Lcom/taobao/weex/base/SystemMessageHandler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 104
    iget-wide v0, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessagePumpDelegateNative:J

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/base/SystemMessageHandler;->nativeRunWork(J)V

    return-void
.end method
