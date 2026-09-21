###### Class io.dcloud.common.util.ArrayUtil (io.dcloud.common.util.ArrayUtil)
.class public Lio/dcloud/common/util/ArrayUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static riseArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_6

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    goto :goto_10

    .line 3
    :cond_6
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 5
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v1

    .line 8
    :goto_10
    array-length v0, p0

    aput-object p1, p0, v0

    return-object p0
.end method
