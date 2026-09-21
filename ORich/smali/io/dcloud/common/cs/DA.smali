###### Class io.dcloud.common.cs.DA (io.dcloud.common.cs.DA)
.class public Lio/dcloud/common/cs/DA;
.super Ljava/lang/Object;
.source "DA.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/DAI;


# static fields
.field private static mInstance:Lio/dcloud/common/DHInterface/DAI;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native arn(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method private native atcn(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public static getInstance()Lio/dcloud/common/DHInterface/DAI;
    .registers 1

    .line 37
    sget-object v0, Lio/dcloud/common/cs/DA;->mInstance:Lio/dcloud/common/DHInterface/DAI;

    if-nez v0, :cond_b

    .line 38
    new-instance v0, Lio/dcloud/common/cs/DA;

    invoke-direct {v0}, Lio/dcloud/common/cs/DA;-><init>()V

    sput-object v0, Lio/dcloud/common/cs/DA;->mInstance:Lio/dcloud/common/DHInterface/DAI;

    .line 40
    :cond_b
    sget-object v0, Lio/dcloud/common/cs/DA;->mInstance:Lio/dcloud/common/DHInterface/DAI;

    return-object v0
.end method

.method private native scn()V
.end method


# virtual methods
.method public act(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/cs/DA;->atcn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public ar(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/cs/DA;->arn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public sc()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lio/dcloud/common/cs/DA;->scn()V

    return-void
.end method
