###### Class io.dcloud.common.util.hostpicker.HostPicker (io.dcloud.common.util.hostpicker.HostPicker)
.class public Lio/dcloud/common/util/hostpicker/HostPicker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/hostpicker/HostPicker$Host;,
        Lio/dcloud/common/util/hostpicker/HostPicker$HostPickCallback;
    }
.end annotation


# static fields
.field private static instance:Lio/dcloud/common/util/hostpicker/HostPicker;


# instance fields
.field private final SP_FILE_NAME:Ljava/lang/String;

.field private final SP_LAST_SUIT_HOST_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/common/util/hostpicker/HostPicker;

    invoke-direct {v0}, Lio/dcloud/common/util/hostpicker/HostPicker;-><init>()V

    sput-object v0, Lio/dcloud/common/util/hostpicker/HostPicker;->instance:Lio/dcloud/common/util/hostpicker/HostPicker;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UNIAPP_HostPicker_0817"

    .line 2
    iput-object v0, p0, Lio/dcloud/common/util/hostpicker/HostPicker;->SP_FILE_NAME:Ljava/lang/String;

    const-string v0, "SP_LAST_SUIT_HOST_NAME_0817"

    .line 6
    iput-object v0, p0, Lio/dcloud/common/util/hostpicker/HostPicker;->SP_LAST_SUIT_HOST_NAME:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lio/dcloud/common/util/hostpicker/HostPicker;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/util/hostpicker/HostPicker;->instance:Lio/dcloud/common/util/hostpicker/HostPicker;

    return-object v0
.end method

.method private initHostsForRequest(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lio/dcloud/common/util/hostpicker/HostPicker$Host;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SP_LAST_SUIT_HOST_NAME_0817"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "UNIAPP_HostPicker_0817"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, ""

    .line 3
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_22
    :goto_22
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    .line 7
    invoke-virtual {v1}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->isFormatRightful()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 13
    iget-object v2, v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->priority:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    sget-object v3, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->BACKUP:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    if-eq v2, v3, :cond_22

    .line 15
    iget-object v2, v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->hostUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 17
    sget-object v2, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->FIRST:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    iput-object v2, v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->priority:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    goto :goto_22

    .line 20
    :cond_4d
    sget-object v2, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->NORMAL:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    iput-object v2, v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->priority:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    goto :goto_22

    .line 21
    :cond_52
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "error format host"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_5a
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 40
    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 41
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public pickSuitHost(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$HostPickCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lio/dcloud/common/util/hostpicker/HostPicker$Host;",
            ">;",
            "Ljava/lang/String;",
            "Lio/dcloud/common/util/hostpicker/HostPicker$HostPickCallback;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_57

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/common/util/hostpicker/HostPicker;->initHostsForRequest(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 12
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    .line 15
    invoke-interface {p4, v0}, Lio/dcloud/common/util/hostpicker/HostPicker$HostPickCallback;->doRequest(Lio/dcloud/common/util/hostpicker/HostPicker$Host;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 18
    iget-object p2, v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->priority:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    sget-object v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->BACKUP:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    if-eq p2, v1, :cond_4f

    const/4 p2, 0x0

    const-string v1, "UNIAPP_HostPicker_0817"

    .line 20
    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SP_LAST_SUIT_HOST_NAME_0817"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p3, v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->hostUrl:Ljava/lang/String;

    .line 24
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 25
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    :cond_4f
    invoke-interface {p4, v0}, Lio/dcloud/common/util/hostpicker/HostPicker$HostPickCallback;->onOneSelected(Lio/dcloud/common/util/hostpicker/HostPicker$Host;)V

    return-void

    .line 35
    :cond_53
    invoke-interface {p4}, Lio/dcloud/common/util/hostpicker/HostPicker$HostPickCallback;->onNoOnePicked()V

    return-void

    .line 36
    :cond_57
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "call initHosts first"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.dcloud.common.util.hostpicker.HostPicker.Host (io.dcloud.common.util.hostpicker.HostPicker$Host)
.class public Lio/dcloud/common/util/hostpicker/HostPicker$Host;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/hostpicker/HostPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Host"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/dcloud/common/util/hostpicker/HostPicker$Host;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field hostUrl:Ljava/lang/String;

.field priority:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->NORMAL:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    iput-object v0, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->priority:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    .line 47
    iput-object p1, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->hostUrl:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->priority:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    return-void
.end method


# virtual methods
.method protected clone()Lio/dcloud/common/util/hostpicker/HostPicker$Host;
    .registers 4

    .line 2
    new-instance v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    iget-object v1, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->hostUrl:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->priority:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;-><init>(Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;)V

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->clone()Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lio/dcloud/common/util/hostpicker/HostPicker$Host;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_4
    iget-object p1, p1, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->priority:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    .line 3
    iget-object v0, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->priority:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    .line 4
    iget p1, p1, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->val:I

    iget v0, v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->val:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    invoke-virtual {p0, p1}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->compareTo(Lio/dcloud/common/util/hostpicker/HostPicker$Host;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 4
    :cond_6
    check-cast p1, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    .line 5
    iget-object v0, p1, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->hostUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 8
    :cond_11
    iget-object p1, p1, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->hostUrl:Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->hostUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getHostUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->hostUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->priority:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    return-object v0
.end method

.method public getRealHost()Ljava/lang/String;
    .registers 6

    const-string v0, "UTF-8"

    .line 1
    iget-object v1, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->hostUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_d

    return-object v2

    .line 6
    :cond_d
    :try_start_d
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->hostUrl:Ljava/lang/String;

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_1d} :catch_1f

    move-object v2, v1

    goto :goto_23

    :catch_1f
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 12
    :goto_23
    invoke-static {v2}, Lio/dcloud/h/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->hostUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFormatRightful()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->hostUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Host{hostUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->hostUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->priority:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.common.util.hostpicker.HostPicker.Host.PriorityEnum (io.dcloud.common.util.hostpicker.HostPicker$Host$PriorityEnum)
.class public final enum Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/hostpicker/HostPicker$Host;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PriorityEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

.field public static final enum BACKUP:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

.field public static final enum FIRST:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

.field public static final enum NORMAL:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;


# instance fields
.field val:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->NORMAL:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    .line 5
    new-instance v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const-string v3, "FIRST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->FIRST:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    .line 9
    new-instance v3, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const-string v5, "BACKUP"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->BACKUP:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 10
    sput-object v5, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->$VALUES:[Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->val:I

    .line 5
    iput p3, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->val:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    return-object p0
.end method

.method public static values()[Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->$VALUES:[Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    invoke-virtual {v0}, [Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    return-object v0
.end method

###### Class io.dcloud.common.util.hostpicker.HostPicker.HostPickCallback (io.dcloud.common.util.hostpicker.HostPicker$HostPickCallback)
.class public interface abstract Lio/dcloud/common/util/hostpicker/HostPicker$HostPickCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/hostpicker/HostPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HostPickCallback"
.end annotation


# virtual methods
.method public abstract doRequest(Lio/dcloud/common/util/hostpicker/HostPicker$Host;)Z
.end method

.method public abstract onNoOnePicked()V
.end method

.method public abstract onOneSelected(Lio/dcloud/common/util/hostpicker/HostPicker$Host;)V
.end method
