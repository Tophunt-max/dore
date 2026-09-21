###### Class io.dcloud.common.util.emulator.CommandUtil (io.dcloud.common.util.emulator.CommandUtil)
.class public Lio/dcloud/common/util/emulator/CommandUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/emulator/CommandUtil$SingletonHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/common/util/emulator/CommandUtil$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/util/emulator/CommandUtil;-><init>()V

    return-void
.end method

.method public static final getSingleInstance()Lio/dcloud/common/util/emulator/CommandUtil;
    .registers 1

    .line 1
    invoke-static {}, Lio/dcloud/common/util/emulator/CommandUtil$SingletonHolder;->access$100()Lio/dcloud/common/util/emulator/CommandUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.SystemProperties"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_22
    .catchall {:try_start_1 .. :try_end_7} :catchall_22

    const-string v2, "get"

    const/4 v3, 0x1

    :try_start_a
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 2
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 3
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 4
    check-cast p1, Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_22
    .catchall {:try_start_a .. :try_end_21} :catchall_22

    move-object v0, p1

    :catch_22
    :catchall_22
    :cond_22
    return-object v0
.end method

###### Class io.dcloud.common.util.emulator.CommandUtil.AnonymousClass1 (io.dcloud.common.util.emulator.CommandUtil$1)
.class synthetic Lio/dcloud/common/util/emulator/CommandUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/emulator/CommandUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.dcloud.common.util.emulator.CommandUtil.SingletonHolder (io.dcloud.common.util.emulator.CommandUtil$SingletonHolder)
.class Lio/dcloud/common/util/emulator/CommandUtil$SingletonHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/emulator/CommandUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lio/dcloud/common/util/emulator/CommandUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/common/util/emulator/CommandUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/common/util/emulator/CommandUtil;-><init>(Lio/dcloud/common/util/emulator/CommandUtil$1;)V

    sput-object v0, Lio/dcloud/common/util/emulator/CommandUtil$SingletonHolder;->INSTANCE:Lio/dcloud/common/util/emulator/CommandUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lio/dcloud/common/util/emulator/CommandUtil;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/util/emulator/CommandUtil$SingletonHolder;->INSTANCE:Lio/dcloud/common/util/emulator/CommandUtil;

    return-object v0
.end method
