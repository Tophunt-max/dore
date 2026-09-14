###### Class com.taobao.weex.utils.Trace (com.taobao.weex.utils.Trace)
.class public Lcom/taobao/weex/utils/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/Trace$TraceDummy;,
        Lcom/taobao/weex/utils/Trace$TraceJBMR2;,
        Lcom/taobao/weex/utils/Trace$AbstractTrace;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Weex_Trace"

.field private static final sEnabled:Z = false

.field private static final sTrace:Lcom/taobao/weex/utils/Trace$AbstractTrace;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 55
    invoke-static {}, Lcom/taobao/weex/utils/OsVersion;->isAtLeastJB_MR2()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 56
    new-instance v1, Lcom/taobao/weex/utils/Trace$TraceJBMR2;

    invoke-direct {v1, v0}, Lcom/taobao/weex/utils/Trace$TraceJBMR2;-><init>(Lcom/taobao/weex/utils/Trace$1;)V

    sput-object v1, Lcom/taobao/weex/utils/Trace;->sTrace:Lcom/taobao/weex/utils/Trace$AbstractTrace;

    goto :goto_1a

    .line 58
    :cond_13
    new-instance v1, Lcom/taobao/weex/utils/Trace$TraceDummy;

    invoke-direct {v1, v0}, Lcom/taobao/weex/utils/Trace$TraceDummy;-><init>(Lcom/taobao/weex/utils/Trace$1;)V

    sput-object v1, Lcom/taobao/weex/utils/Trace;->sTrace:Lcom/taobao/weex/utils/Trace$AbstractTrace;

    :goto_1a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginSection() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Weex_Trace"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/taobao/weex/utils/Trace;->sTrace:Lcom/taobao/weex/utils/Trace$AbstractTrace;

    invoke-virtual {v0, p0}, Lcom/taobao/weex/utils/Trace$AbstractTrace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static endSection()V
    .registers 2

    .line 87
    sget-object v0, Lcom/taobao/weex/utils/Trace;->sTrace:Lcom/taobao/weex/utils/Trace$AbstractTrace;

    invoke-virtual {v0}, Lcom/taobao/weex/utils/Trace$AbstractTrace;->endSection()V

    const-string v0, "Weex_Trace"

    const-string v1, "endSection()"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final getTraceEnabled()Z
    .registers 1

    .line 63
    sget-boolean v0, Lcom/taobao/weex/utils/Trace;->sEnabled:Z

    return v0
.end method

###### Class com.taobao.weex.utils.Trace.AnonymousClass1 (com.taobao.weex.utils.Trace$1)
.class synthetic Lcom/taobao/weex/utils/Trace$1;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.taobao.weex.utils.Trace.AbstractTrace (com.taobao.weex.utils.Trace$AbstractTrace)
.class abstract Lcom/taobao/weex/utils/Trace$AbstractTrace;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractTrace"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/utils/Trace$1;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/taobao/weex/utils/Trace$AbstractTrace;-><init>()V

    return-void
.end method


# virtual methods
.method abstract beginSection(Ljava/lang/String;)V
.end method

.method abstract endSection()V
.end method

###### Class com.taobao.weex.utils.Trace.TraceDummy (com.taobao.weex.utils.Trace$TraceDummy)
.class final Lcom/taobao/weex/utils/Trace$TraceDummy;
.super Lcom/taobao/weex/utils/Trace$AbstractTrace;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TraceDummy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0}, Lcom/taobao/weex/utils/Trace$AbstractTrace;-><init>(Lcom/taobao/weex/utils/Trace$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/utils/Trace$1;)V
    .registers 2

    .line 104
    invoke-direct {p0}, Lcom/taobao/weex/utils/Trace$TraceDummy;-><init>()V

    return-void
.end method


# virtual methods
.method beginSection(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method endSection()V
    .registers 1

    return-void
.end method

###### Class com.taobao.weex.utils.Trace.TraceJBMR2 (com.taobao.weex.utils.Trace$TraceJBMR2)
.class final Lcom/taobao/weex/utils/Trace$TraceJBMR2;
.super Lcom/taobao/weex/utils/Trace$AbstractTrace;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TraceJBMR2"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lcom/taobao/weex/utils/Trace$AbstractTrace;-><init>(Lcom/taobao/weex/utils/Trace$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/utils/Trace$1;)V
    .registers 2

    .line 92
    invoke-direct {p0}, Lcom/taobao/weex/utils/Trace$TraceJBMR2;-><init>()V

    return-void
.end method


# virtual methods
.method beginSection(Ljava/lang/String;)V
    .registers 2

    .line 95
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method endSection()V
    .registers 1

    .line 100
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
