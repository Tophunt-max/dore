###### Class com.taobao.weex.utils.tools.Time (com.taobao.weex.utils.tools.Time)
.class public Lcom/taobao/weex/utils/tools/Time;
.super Ljava/lang/Object;
.source "Time.java"


# instance fields
.field public constructor:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "constructor"
    .end annotation
.end field

.field public destructor:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "destructor"
    .end annotation
.end field

.field public execTime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "execTime"
    .end annotation
.end field

.field public taskEnd:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "taskEnd"
    .end annotation
.end field

.field public taskStart:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "taskStart"
    .end annotation
.end field

.field public waitTime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "waitTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private destructor()V
    .registers 3

    .line 76
    invoke-virtual {p0}, Lcom/taobao/weex/utils/tools/Time;->waitTime()V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/utils/tools/Time;->destructor:J

    return-void
.end method


# virtual methods
.method protected constructor()V
    .registers 3

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/utils/tools/Time;->constructor:J

    return-void
.end method

.method public execTime()V
    .registers 5

    .line 62
    iget-wide v0, p0, Lcom/taobao/weex/utils/tools/Time;->taskEnd:J

    iget-wide v2, p0, Lcom/taobao/weex/utils/tools/Time;->taskStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/weex/utils/tools/Time;->execTime:J

    return-void
.end method

.method public taskEnd()V
    .registers 3

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/utils/tools/Time;->taskEnd:J

    .line 71
    invoke-virtual {p0}, Lcom/taobao/weex/utils/tools/Time;->execTime()V

    .line 72
    invoke-direct {p0}, Lcom/taobao/weex/utils/tools/Time;->destructor()V

    return-void
.end method

.method public taskStart()V
    .registers 3

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/utils/tools/Time;->taskStart:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time : {constructor = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/utils/tools/Time;->constructor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",taskStart = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/taobao/weex/utils/tools/Time;->taskStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",execTime = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/taobao/weex/utils/tools/Time;->execTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",waitTime = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/taobao/weex/utils/tools/Time;->waitTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",destructor = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/taobao/weex/utils/tools/Time;->destructor:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",taskEnd = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/taobao/weex/utils/tools/Time;->taskEnd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitTime()V
    .registers 5

    .line 81
    iget-wide v0, p0, Lcom/taobao/weex/utils/tools/Time;->taskStart:J

    iget-wide v2, p0, Lcom/taobao/weex/utils/tools/Time;->constructor:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/weex/utils/tools/Time;->waitTime:J

    return-void
.end method
