###### Class io.dcloud.common.DHInterface.message.action.BadgeSyncAction (io.dcloud.common.DHInterface.message.action.BadgeSyncAction)
.class public Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/message/action/IAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;
    }
.end annotation


# instance fields
.field private mActionType:Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;

.field public syncNumVal:I


# direct methods
.method private constructor <init>(Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;->mActionType:Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;

    return-void
.end method

.method public static obtain(Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;)Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;

    invoke-direct {v0, p0}, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;-><init>(Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;)V

    return-object v0
.end method


# virtual methods
.method public getActionType()Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;->mActionType:Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;

    return-object v0
.end method

.method public getSyncNumVal()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;->syncNumVal:I

    return v0
.end method

.method public setSyncNum(I)Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;->syncNumVal:I

    return-object p0
.end method

###### Class io.dcloud.common.DHInterface.message.action.BadgeSyncAction.ENUM_ACTION_TYPE (io.dcloud.common.DHInterface.message.action.BadgeSyncAction$ENUM_ACTION_TYPE)
.class public final enum Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENUM_ACTION_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;

.field public static final enum SYNC_NUM:Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;

    const-string v1, "SYNC_NUM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;->SYNC_NUM:Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;->$VALUES:[Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;

    return-object p0
.end method

.method public static values()[Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;->$VALUES:[Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;

    invoke-virtual {v0}, [Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;

    return-object v0
.end method
