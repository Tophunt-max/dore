###### Class com.taobao.weex.utils.tools.LogDetail (com.taobao.weex.utils.tools.LogDetail)
.class public Lcom/taobao/weex/utils/tools/LogDetail;
.super Ljava/lang/Object;
.source "LogDetail.java"


# static fields
.field public static final KeyWords_Render:Ljava/lang/String; = "Weex_Render"

.field public static final KeyWrod_Init:Ljava/lang/String; = "Weex_Init"


# instance fields
.field public info:Lcom/taobao/weex/utils/tools/Info;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "Info"
    .end annotation
.end field

.field public keyWords:Ljava/lang/String;

.field public time:Lcom/taobao/weex/utils/tools/Time;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Weex_Render"

    .line 54
    iput-object v0, p0, Lcom/taobao/weex/utils/tools/LogDetail;->keyWords:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/taobao/weex/utils/tools/Time;

    invoke-direct {v0}, Lcom/taobao/weex/utils/tools/Time;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    .line 35
    new-instance v0, Lcom/taobao/weex/utils/tools/Info;

    invoke-direct {v0}, Lcom/taobao/weex/utils/tools/Info;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    return-void
.end method


# virtual methods
.method public keyWorkds(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/taobao/weex/utils/tools/LogDetail;->keyWords:Ljava/lang/String;

    return-void
.end method

.method public name(Ljava/lang/String;)V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/Time;->constructor()V

    .line 63
    iget-object v0, p0, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    iput-object p1, v0, Lcom/taobao/weex/utils/tools/Info;->taskName:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 65
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "module"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "component"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "framework"

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_31

    :cond_2d
    const-string p1, "Weex_Init"

    .line 69
    iput-object p1, p0, Lcom/taobao/weex/utils/tools/LogDetail;->keyWords:Ljava/lang/String;

    :cond_31
    return-void
.end method

.method public println()V
    .registers 3

    .line 57
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isPerf()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " timeline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/utils/tools/LogDetail;->keyWords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " java LogDetail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/utils/tools/LogDetail;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timeline"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public taskEnd()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/Time;->taskEnd()V

    .line 84
    invoke-virtual {p0}, Lcom/taobao/weex/utils/tools/LogDetail;->println()V

    return-void
.end method

.method public taskStart()V
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/Time;->taskStart()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    iget-object v1, v1, Lcom/taobao/weex/utils/tools/Info;->taskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - LogDetail : {time = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", info = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
