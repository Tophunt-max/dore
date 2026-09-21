###### Class kotlin.time.Duration (kotlin.time.Duration)
.class public final Lkotlin/time/Duration;
.super Ljava/lang/Object;
.source "Duration.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/Duration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/time/Duration;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008&\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0087@\u0018\u0000 s2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001sB\u0014\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010%\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u0000H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(J\u001e\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0003H\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008+\u0010,J\u001e\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\tH\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008+\u0010-J\u001b\u0010)\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010,J\u0013\u0010/\u001a\u0002002\u0008\u0010&\u001a\u0004\u0018\u000101H\u00d6\u0003J\t\u00102\u001a\u00020\tH\u00d6\u0001J\r\u00103\u001a\u000200\u00a2\u0006\u0004\u00084\u00105J\r\u00106\u001a\u000200\u00a2\u0006\u0004\u00087\u00105J\r\u00108\u001a\u000200\u00a2\u0006\u0004\u00089\u00105J\r\u0010:\u001a\u000200\u00a2\u0006\u0004\u0008;\u00105J\u001b\u0010<\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010,J\u001b\u0010>\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008?\u0010,J\u0017\u0010@\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008A\u0010(J\u001e\u0010B\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0003H\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008C\u0010,J\u001e\u0010B\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\tH\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008C\u0010-J\u009d\u0001\u0010D\u001a\u0002HE\"\u0004\u0008\u0000\u0010E2u\u0010F\u001aq\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(J\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(K\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(L\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(M\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(N\u0012\u0004\u0012\u0002HE0GH\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u0008O\u0010PJ\u0088\u0001\u0010D\u001a\u0002HE\"\u0004\u0008\u0000\u0010E2`\u0010F\u001a\\\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(K\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(L\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(M\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(N\u0012\u0004\u0012\u0002HE0QH\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u0008O\u0010RJs\u0010D\u001a\u0002HE\"\u0004\u0008\u0000\u0010E2K\u0010F\u001aG\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(L\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(M\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(N\u0012\u0004\u0012\u0002HE0SH\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u0008O\u0010TJ^\u0010D\u001a\u0002HE\"\u0004\u0008\u0000\u0010E26\u0010F\u001a2\u0012\u0013\u0012\u00110V\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(M\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(N\u0012\u0004\u0012\u0002HE0UH\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u0008O\u0010WJ\u0019\u0010X\u001a\u00020\u00032\n\u0010Y\u001a\u00060Zj\u0002`[\u00a2\u0006\u0004\u0008\\\u0010]J\u0019\u0010^\u001a\u00020\t2\n\u0010Y\u001a\u00060Zj\u0002`[\u00a2\u0006\u0004\u0008_\u0010`J\r\u0010a\u001a\u00020b\u00a2\u0006\u0004\u0008c\u0010dJ\u0019\u0010e\u001a\u00020V2\n\u0010Y\u001a\u00060Zj\u0002`[\u00a2\u0006\u0004\u0008f\u0010gJ\r\u0010h\u001a\u00020V\u00a2\u0006\u0004\u0008i\u0010jJ\r\u0010k\u001a\u00020V\u00a2\u0006\u0004\u0008l\u0010jJ\u000f\u0010m\u001a\u00020bH\u0016\u00a2\u0006\u0004\u0008n\u0010dJ#\u0010m\u001a\u00020b2\n\u0010Y\u001a\u00060Zj\u0002`[2\u0008\u0008\u0002\u0010o\u001a\u00020\t\u00a2\u0006\u0004\u0008n\u0010pJ\u0016\u0010q\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008r\u0010\u0005R\u0017\u0010\u0006\u001a\u00020\u00008F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u001a\u0010\u0008\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0005R\u0011\u0010\u0010\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0005R\u0011\u0010\u0012\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0005R\u0011\u0010\u0014\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0005R\u0011\u0010\u0016\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0005R\u0011\u0010\u0018\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0005R\u0011\u0010\u001a\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0005R\u001a\u0010\u001c\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001d\u0010\u000b\u001a\u0004\u0008\u001e\u0010\rR\u001a\u0010\u001f\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008 \u0010\u000b\u001a\u0004\u0008!\u0010\rR\u001a\u0010\"\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008#\u0010\u000b\u001a\u0004\u0008$\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0002\n\u0000\u00f8\u0001\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u009920\u0001\u00a8\u0006t"
    }
    d2 = {
        "Lkotlin/time/Duration;",
        "",
        "value",
        "",
        "constructor-impl",
        "(D)D",
        "absoluteValue",
        "getAbsoluteValue-UwyO8pc",
        "hoursComponent",
        "",
        "getHoursComponent$annotations",
        "()V",
        "getHoursComponent-impl",
        "(D)I",
        "inDays",
        "getInDays-impl",
        "inHours",
        "getInHours-impl",
        "inMicroseconds",
        "getInMicroseconds-impl",
        "inMilliseconds",
        "getInMilliseconds-impl",
        "inMinutes",
        "getInMinutes-impl",
        "inNanoseconds",
        "getInNanoseconds-impl",
        "inSeconds",
        "getInSeconds-impl",
        "minutesComponent",
        "getMinutesComponent$annotations",
        "getMinutesComponent-impl",
        "nanosecondsComponent",
        "getNanosecondsComponent$annotations",
        "getNanosecondsComponent-impl",
        "secondsComponent",
        "getSecondsComponent$annotations",
        "getSecondsComponent-impl",
        "compareTo",
        "other",
        "compareTo-LRDsOJo",
        "(DD)I",
        "div",
        "scale",
        "div-UwyO8pc",
        "(DD)D",
        "(DI)D",
        "div-LRDsOJo",
        "equals",
        "",
        "",
        "hashCode",
        "isFinite",
        "isFinite-impl",
        "(D)Z",
        "isInfinite",
        "isInfinite-impl",
        "isNegative",
        "isNegative-impl",
        "isPositive",
        "isPositive-impl",
        "minus",
        "minus-LRDsOJo",
        "plus",
        "plus-LRDsOJo",
        "precision",
        "precision-impl",
        "times",
        "times-UwyO8pc",
        "toComponents",
        "T",
        "action",
        "Lkotlin/Function5;",
        "Lkotlin/ParameterName;",
        "name",
        "days",
        "hours",
        "minutes",
        "seconds",
        "nanoseconds",
        "toComponents-impl",
        "(DLkotlin/jvm/functions/Function5;)Ljava/lang/Object;",
        "Lkotlin/Function4;",
        "(DLkotlin/jvm/functions/Function4;)Ljava/lang/Object;",
        "Lkotlin/Function3;",
        "(DLkotlin/jvm/functions/Function3;)Ljava/lang/Object;",
        "Lkotlin/Function2;",
        "",
        "(DLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "toDouble",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "Lkotlin/time/DurationUnit;",
        "toDouble-impl",
        "(DLjava/util/concurrent/TimeUnit;)D",
        "toInt",
        "toInt-impl",
        "(DLjava/util/concurrent/TimeUnit;)I",
        "toIsoString",
        "",
        "toIsoString-impl",
        "(D)Ljava/lang/String;",
        "toLong",
        "toLong-impl",
        "(DLjava/util/concurrent/TimeUnit;)J",
        "toLongMilliseconds",
        "toLongMilliseconds-impl",
        "(D)J",
        "toLongNanoseconds",
        "toLongNanoseconds-impl",
        "toString",
        "toString-impl",
        "decimals",
        "(DLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;",
        "unaryMinus",
        "unaryMinus-UwyO8pc",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/Duration$Companion;

.field private static final INFINITE:D

.field private static final ZERO:D


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/time/Duration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/Duration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const-wide/16 v0, 0x0

    .line 40
    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->ZERO:D

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 43
    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->INFINITE:D

    return-void
.end method

.method private synthetic constructor <init>(D)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/Duration;->value:D

    return-void
.end method

.method public static final synthetic access$getINFINITE$cp-UwyO8pc()D
    .registers 2

    .line 31
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:D

    return-wide v0
.end method

.method public static final synthetic access$getZERO$cp-UwyO8pc()D
    .registers 2

    .line 31
    sget-wide v0, Lkotlin/time/Duration;->ZERO:D

    return-wide v0
.end method

.method public static final synthetic box-impl(D)Lkotlin/time/Duration;
    .registers 3

    new-instance v0, Lkotlin/time/Duration;

    invoke-direct {v0, p0, p1}, Lkotlin/time/Duration;-><init>(D)V

    return-object v0
.end method

.method public static compareTo-LRDsOJo(DD)I
    .registers 4

    .line 91
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public static constructor-impl(D)D
    .registers 2

    return-wide p0
.end method

.method public static final div-LRDsOJo(DD)D
    .registers 4

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static final div-UwyO8pc(DD)D
    .registers 4

    div-double/2addr p0, p2

    .line 71
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final div-UwyO8pc(DI)D
    .registers 5

    int-to-double v0, p2

    div-double/2addr p0, v0

    .line 68
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static equals-impl(DLjava/lang/Object;)Z
    .registers 5

    instance-of v0, p2, Lkotlin/time/Duration;

    if-eqz v0, :cond_12

    check-cast p2, Lkotlin/time/Duration;

    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static final equals-impl0(DD)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static final getAbsoluteValue-UwyO8pc(D)D
    .registers 3

    .line 89
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(D)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(D)D

    move-result-wide p0

    :cond_a
    return-wide p0
.end method

.method public static synthetic getHoursComponent$annotations()V
    .registers 0

    return-void
.end method

.method public static final getHoursComponent-impl(D)I
    .registers 4

    .line 159
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInHours-impl(D)D

    move-result-wide p0

    const/16 v0, 0x18

    int-to-double v0, v0

    rem-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static final getInDays-impl(D)D
    .registers 3

    .line 188
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final getInHours-impl(D)D
    .registers 3

    .line 191
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final getInMicroseconds-impl(D)D
    .registers 3

    .line 203
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final getInMilliseconds-impl(D)D
    .registers 3

    .line 200
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final getInMinutes-impl(D)D
    .registers 3

    .line 194
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final getInNanoseconds-impl(D)D
    .registers 3

    .line 206
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final getInSeconds-impl(D)D
    .registers 3

    .line 197
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getMinutesComponent$annotations()V
    .registers 0

    return-void
.end method

.method public static final getMinutesComponent-impl(D)I
    .registers 4

    .line 161
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInMinutes-impl(D)D

    move-result-wide p0

    const/16 v0, 0x3c

    int-to-double v0, v0

    rem-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static synthetic getNanosecondsComponent$annotations()V
    .registers 0

    return-void
.end method

.method public static final getNanosecondsComponent-impl(D)I
    .registers 4

    .line 165
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInNanoseconds-impl(D)D

    move-result-wide p0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    rem-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static synthetic getSecondsComponent$annotations()V
    .registers 0

    return-void
.end method

.method public static final getSecondsComponent-impl(D)I
    .registers 4

    .line 163
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInSeconds-impl(D)D

    move-result-wide p0

    const/16 v0, 0x3c

    int-to-double v0, v0

    rem-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static hashCode-impl(D)I
    .registers 4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static final isFinite-impl(D)Z
    .registers 3

    .line 86
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static final isInfinite-impl(D)Z
    .registers 2

    .line 83
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    return p0
.end method

.method public static final isNegative-impl(D)Z
    .registers 6

    const/4 v0, 0x0

    int-to-double v1, v0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public static final isPositive-impl(D)Z
    .registers 6

    const/4 v0, 0x0

    int-to-double v1, v0

    cmpl-double v3, p0, v1

    if-lez v3, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public static final minus-LRDsOJo(DD)D
    .registers 4

    sub-double/2addr p0, p2

    .line 59
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final plus-LRDsOJo(DD)D
    .registers 4

    add-double/2addr p0, p2

    .line 56
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final precision-impl(DD)I
    .registers 6

    const/4 p0, 0x1

    int-to-double v0, p0

    cmpg-double p1, p2, v0

    if-gez p1, :cond_8

    const/4 p0, 0x3

    goto :goto_1a

    :cond_8
    const/16 p1, 0xa

    int-to-double v0, p1

    cmpg-double p1, p2, v0

    if-gez p1, :cond_11

    const/4 p0, 0x2

    goto :goto_1a

    :cond_11
    const/16 p1, 0x64

    int-to-double v0, p1

    cmpg-double p1, p2, v0

    if-gez p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public static final times-UwyO8pc(DD)D
    .registers 4

    mul-double p0, p0, p2

    .line 65
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final times-UwyO8pc(DI)D
    .registers 5

    int-to-double v0, p2

    mul-double p0, p0, v0

    .line 62
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final toComponents-impl(DLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(D",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInSeconds-impl(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(D)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toComponents-impl(DLkotlin/jvm/functions/Function3;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(D",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInMinutes-impl(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(D)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, v0, v1, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toComponents-impl(DLkotlin/jvm/functions/Function4;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(D",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInHours-impl(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(D)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, v0, v1, v2, p0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toComponents-impl(DLkotlin/jvm/functions/Function5;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(D",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInDays-impl(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getHoursComponent-impl(D)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(D)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(D)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(D)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p2

    invoke-interface/range {v1 .. v6}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toDouble-impl(DLjava/util/concurrent/TimeUnit;)D
    .registers 4

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lkotlin/time/DurationKt;->access$getStorageUnit$p()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lkotlin/time/DurationUnitKt;->convertDurationUnit(DLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final toInt-impl(DLjava/util/concurrent/TimeUnit;)I
    .registers 4

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static final toIsoString-impl(D)Ljava/lang/String;
    .registers 9

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(D)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    const-string v1, "PT"

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getAbsoluteValue-UwyO8pc(D)D

    move-result-wide p0

    .line 491
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInHours-impl(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(D)I

    move-result v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(D)I

    move-result v3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(D)I

    move-result p0

    const/4 p1, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_30

    const/4 v5, 0x1

    goto :goto_31

    :cond_30
    const/4 v5, 0x0

    :goto_31
    if-nez v3, :cond_38

    if-eqz p0, :cond_36

    goto :goto_38

    :cond_36
    const/4 v6, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v6, 0x1

    :goto_39
    if-nez v2, :cond_41

    if-eqz v6, :cond_40

    if-eqz v5, :cond_40

    goto :goto_41

    :cond_40
    const/4 p1, 0x0

    :cond_41
    :goto_41
    if-eqz v5, :cond_4b

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4b
    if-eqz p1, :cond_55

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_55
    if-nez v6, :cond_5b

    if-nez v5, :cond_9a

    if-nez p1, :cond_9a

    .line 329
    :cond_5b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_95

    const/16 p1, 0x2e

    .line 331
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x9

    const/16 v2, 0x30

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    const v1, 0xf4240

    .line 334
    rem-int v1, p0, v1

    const-string v2, "this.append(value, startIndex, endIndex)"

    if-nez v1, :cond_84

    const/4 p0, 0x3

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_95

    .line 335
    :cond_84
    rem-int/lit16 p0, p0, 0x3e8

    if-nez p0, :cond_92

    const/4 p0, 0x6

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_95

    .line 336
    :cond_92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_95
    :goto_95
    const/16 p0, 0x53

    .line 339
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    :cond_9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toLong-impl(DLjava/util/concurrent/TimeUnit;)J
    .registers 4

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static final toLongMilliseconds-impl(D)J
    .registers 3

    .line 226
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final toLongNanoseconds-impl(D)J
    .registers 3

    .line 217
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toString-impl(D)Ljava/lang/String;
    .registers 10

    .line 242
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(D)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_c0

    :cond_c
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-nez v2, :cond_16

    const-string p0, "0s"

    goto/16 :goto_c0

    .line 245
    :cond_16
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getAbsoluteValue-UwyO8pc(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInNanoseconds-impl(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpg-double v6, v0, v2

    if-gez v6, :cond_2e

    .line 249
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_2b
    const/4 v1, 0x0

    const/4 v4, 0x1

    goto :goto_8f

    :cond_2e
    int-to-double v2, v5

    cmpg-double v6, v0, v2

    if-gez v6, :cond_37

    .line 250
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x7

    goto :goto_8f

    :cond_37
    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpg-double v6, v0, v2

    if-gez v6, :cond_44

    .line 251
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_42
    const/4 v1, 0x0

    goto :goto_8f

    :cond_44
    const-wide v2, 0x412e848000000000L    # 1000000.0

    cmpg-double v6, v0, v2

    if-gez v6, :cond_50

    .line 252
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_42

    :cond_50
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double v6, v0, v2

    if-gez v6, :cond_5c

    .line 253
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_42

    :cond_5c
    const-wide v2, 0x426d1a94a2000000L    # 1.0E12

    cmpg-double v6, v0, v2

    if-gez v6, :cond_68

    .line 254
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_42

    :cond_68
    const-wide v2, 0x42cb48eb57e00000L    # 6.0E13

    cmpg-double v6, v0, v2

    if-gez v6, :cond_74

    .line 255
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_42

    :cond_74
    const-wide v2, 0x4329945ca2620000L    # 3.6E15

    cmpg-double v6, v0, v2

    if-gez v6, :cond_80

    .line 256
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_42

    :cond_80
    const-wide v2, 0x44476b344f2a78c0L    # 8.64E20

    cmpg-double v6, v0, v2

    if-gez v6, :cond_8c

    .line 257
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    goto :goto_42

    .line 258
    :cond_8c
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    goto :goto_2b

    .line 260
    :goto_8f
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide v2

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_9f

    .line 262
    invoke-static {v2, v3}, Lkotlin/time/FormatToDecimalsKt;->formatScientific(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_b2

    :cond_9f
    if-lez v1, :cond_a6

    .line 263
    invoke-static {v2, v3, v1}, Lkotlin/time/FormatToDecimalsKt;->formatUpToDecimals(DI)Ljava/lang/String;

    move-result-object p0

    goto :goto_b2

    .line 264
    :cond_a6
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {p0, p1, v6, v7}, Lkotlin/time/Duration;->precision-impl(DD)I

    move-result p0

    invoke-static {v2, v3, p0}, Lkotlin/time/FormatToDecimalsKt;->formatToExactDecimals(DI)Ljava/lang/String;

    move-result-object p0

    .line 261
    :goto_b2
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-static {v0}, Lkotlin/time/DurationUnitKt;->shortName(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_c0
    return-object p0
.end method

.method public static final toString-impl(DLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;
    .registers 10

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p3, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_4b

    .line 291
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(D)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 292
    :cond_17
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x42d6bcc41e900000L    # 1.0E14

    cmpg-double v5, v1, v3

    if-gez v5, :cond_38

    const/16 v1, 0xc

    invoke-static {p3, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p3

    invoke-static {p0, p1, p3}, Lkotlin/time/FormatToDecimalsKt;->formatToExactDecimals(DI)Ljava/lang/String;

    move-result-object p0

    goto :goto_3c

    .line 295
    :cond_38
    invoke-static {p0, p1}, Lkotlin/time/FormatToDecimalsKt;->formatScientific(D)Ljava/lang/String;

    move-result-object p0

    .line 293
    :goto_3c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {p2}, Lkotlin/time/DurationUnitKt;->shortName(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 290
    :cond_4b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "decimals must be not negative, but was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public static synthetic toString-impl$default(DLjava/util/concurrent/TimeUnit;IILjava/lang/Object;)Ljava/lang/String;
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 289
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lkotlin/time/Duration;->toString-impl(DLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unaryMinus-UwyO8pc(D)D
    .registers 2

    neg-double p0, p0

    .line 53
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 4

    .line 31
    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(D)I

    move-result p1

    return p1
.end method

.method public compareTo-LRDsOJo(D)I
    .registers 5

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->value:D

    invoke-static {v0, v1, p1, p2}, Lkotlin/time/Duration;->compareTo-LRDsOJo(DD)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->value:D

    invoke-static {v0, v1, p1}, Lkotlin/time/Duration;->equals-impl(DLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->value:D

    invoke-static {v0, v1}, Lkotlin/time/Duration;->hashCode-impl(D)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->value:D

    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()D
    .registers 3

    iget-wide v0, p0, Lkotlin/time/Duration;->value:D

    return-wide v0
.end method

###### Class kotlin.time.Duration.Companion (kotlin.time.Duration$Companion)
.class public final Lkotlin/time/Duration$Companion;
.super Ljava/lang/Object;
.source "Duration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/Duration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000f2\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000fR\u0019\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\t\u0010\u0006\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlin/time/Duration$Companion;",
        "",
        "()V",
        "INFINITE",
        "Lkotlin/time/Duration;",
        "getINFINITE-UwyO8pc",
        "()D",
        "D",
        "ZERO",
        "getZERO-UwyO8pc",
        "convert",
        "",
        "value",
        "sourceUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "Lkotlin/time/DurationUnit;",
        "targetUnit",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Lkotlin/time/Duration$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(DLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)D
    .registers 6

    const-string v0, "sourceUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetUnit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {p1, p2, p3, p4}, Lkotlin/time/DurationUnitKt;->convertDurationUnit(DLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)D

    move-result-wide p1

    return-wide p1
.end method

.method public final getINFINITE-UwyO8pc()D
    .registers 3

    .line 43
    invoke-static {}, Lkotlin/time/Duration;->access$getINFINITE$cp-UwyO8pc()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getZERO-UwyO8pc()D
    .registers 3

    .line 40
    invoke-static {}, Lkotlin/time/Duration;->access$getZERO$cp-UwyO8pc()D

    move-result-wide v0

    return-wide v0
.end method
