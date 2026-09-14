###### Class io.dcloud.common.DHInterface.IReqListener (io.dcloud.common.DHInterface.IReqListener)
.class public interface abstract Lio/dcloud/common/DHInterface/IReqListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/DHInterface/IReqListener$NetState;
    }
.end annotation


# virtual methods
.method public abstract onNetStateChanged(Lio/dcloud/common/DHInterface/IReqListener$NetState;Z)V
.end method

.method public abstract onReceiving(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onResponsing(Ljava/io/InputStream;)V
.end method

###### Class io.dcloud.common.DHInterface.IReqListener.NetState (io.dcloud.common.DHInterface.IReqListener$NetState)
.class public final enum Lio/dcloud/common/DHInterface/IReqListener$NetState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/IReqListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/common/DHInterface/IReqListener$NetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/common/DHInterface/IReqListener$NetState;

.field public static final enum NET_CONNECTED:Lio/dcloud/common/DHInterface/IReqListener$NetState;

.field public static final enum NET_ERROR:Lio/dcloud/common/DHInterface/IReqListener$NetState;

.field public static final enum NET_HANDLE_BEGIN:Lio/dcloud/common/DHInterface/IReqListener$NetState;

.field public static final enum NET_HANDLE_END:Lio/dcloud/common/DHInterface/IReqListener$NetState;

.field public static final enum NET_HANDLE_ING:Lio/dcloud/common/DHInterface/IReqListener$NetState;

.field public static final enum NET_INIT:Lio/dcloud/common/DHInterface/IReqListener$NetState;

.field public static final enum NET_PAUSE:Lio/dcloud/common/DHInterface/IReqListener$NetState;

.field public static final enum NET_REQUEST_BEGIN:Lio/dcloud/common/DHInterface/IReqListener$NetState;

.field public static final enum NET_TIMEOUT:Lio/dcloud/common/DHInterface/IReqListener$NetState;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const-string v1, "NET_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/DHInterface/IReqListener$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_INIT:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    .line 2
    new-instance v1, Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const-string v3, "NET_REQUEST_BEGIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/common/DHInterface/IReqListener$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_REQUEST_BEGIN:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    .line 3
    new-instance v3, Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const-string v5, "NET_TIMEOUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/common/DHInterface/IReqListener$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_TIMEOUT:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    .line 4
    new-instance v5, Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const-string v7, "NET_CONNECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/common/DHInterface/IReqListener$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_CONNECTED:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    .line 5
    new-instance v7, Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const-string v9, "NET_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/dcloud/common/DHInterface/IReqListener$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_ERROR:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    .line 6
    new-instance v9, Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const-string v11, "NET_HANDLE_BEGIN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/dcloud/common/DHInterface/IReqListener$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_HANDLE_BEGIN:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    .line 7
    new-instance v11, Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const-string v13, "NET_HANDLE_ING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/dcloud/common/DHInterface/IReqListener$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_HANDLE_ING:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    .line 8
    new-instance v13, Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const-string v15, "NET_HANDLE_END"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/dcloud/common/DHInterface/IReqListener$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_HANDLE_END:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    .line 9
    new-instance v15, Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const-string v14, "NET_PAUSE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lio/dcloud/common/DHInterface/IReqListener$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_PAUSE:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const/16 v14, 0x9

    new-array v14, v14, [Lio/dcloud/common/DHInterface/IReqListener$NetState;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 10
    sput-object v14, Lio/dcloud/common/DHInterface/IReqListener$NetState;->$VALUES:[Lio/dcloud/common/DHInterface/IReqListener$NetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/common/DHInterface/IReqListener$NetState;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/common/DHInterface/IReqListener$NetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/DHInterface/IReqListener$NetState;

    return-object p0
.end method

.method public static values()[Lio/dcloud/common/DHInterface/IReqListener$NetState;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/IReqListener$NetState;->$VALUES:[Lio/dcloud/common/DHInterface/IReqListener$NetState;

    invoke-virtual {v0}, [Lio/dcloud/common/DHInterface/IReqListener$NetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/common/DHInterface/IReqListener$NetState;

    return-object v0
.end method
