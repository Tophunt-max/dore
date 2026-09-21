###### Class io.dcloud.common.DHInterface.ICore (io.dcloud.common.DHInterface.ICore)
.class public interface abstract Lio/dcloud/common/DHInterface/ICore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/DHInterface/ICore$ICoreEvent;,
        Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;
    }
.end annotation


# virtual methods
.method public abstract dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract obtainContext()Landroid/content/Context;
.end method

.method public abstract onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
.end method

.method public abstract setmCoreListener(Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;)V
.end method

###### Class io.dcloud.common.DHInterface.ICore.ICoreEvent (io.dcloud.common.DHInterface.ICore$ICoreEvent)
.class public interface abstract Lio/dcloud/common/DHInterface/ICore$ICoreEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/ICore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICoreEvent"
.end annotation


# static fields
.field public static final CHECK_IS_IBOOT_SERVICES:I = 0x1

.field public static final GET_SDK_MODE:I = -0x1

.field public static final WEBAPP_QUIT:I = 0x0

.field public static final WEBAPP_START:I = 0x2

###### Class io.dcloud.common.DHInterface.ICore.ICoreStatusListener (io.dcloud.common.DHInterface.ICore$ICoreStatusListener)
.class public interface abstract Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/ICore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICoreStatusListener"
.end annotation


# virtual methods
.method public abstract onCoreInitEnd(Lio/dcloud/common/DHInterface/ICore;)V
.end method

.method public abstract onCoreReady(Lio/dcloud/common/DHInterface/ICore;)V
.end method

.method public abstract onCoreStop()Z
.end method
