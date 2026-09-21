###### Class io.dcloud.common.DHInterface.IMgr (io.dcloud.common.DHInterface.IMgr)
.class public interface abstract Lio/dcloud/common/DHInterface/IMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/DHInterface/IMgr$WindowEvent;,
        Lio/dcloud/common/DHInterface/IMgr$FeatureEvent;,
        Lio/dcloud/common/DHInterface/IMgr$NetEvent;,
        Lio/dcloud/common/DHInterface/IMgr$AppEvent;,
        Lio/dcloud/common/DHInterface/IMgr$MgrEvent;,
        Lio/dcloud/common/DHInterface/IMgr$MgrType;
    }
.end annotation


# virtual methods
.method public abstract processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end method

###### Class io.dcloud.common.DHInterface.IMgr.AppEvent (io.dcloud.common.DHInterface.IMgr$AppEvent)
.class public interface abstract Lio/dcloud/common/DHInterface/IMgr$AppEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/IMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppEvent"
.end annotation


# static fields
.field public static final APP_GET_APP_BY_APPID:I = 0x6

.field public static final APP_GET_LAST_USE:I = 0x13

.field public static final APP_GET_PROPERTY:I = 0x5

.field public static final APP_GET_UNINVIEW_SERVICE_JS:I = 0x18

.field public static final CHECK_AUTHORIZED:I = 0xf

.field public static final CREATE_UNSTRICT_APP:I = 0x8

.field public static final CREATE_WEBAPP:I = 0xe

.field public static final DO_AUTHORIZE:I = 0x10

.field public static final EXECUTE_SYS_EVENT:I = 0x1

.field public static final GET_CUR_RUNNING_APP:I = 0x1c

.field public static final GET_CUR_RUNNING_APPID:I = 0xb

.field public static final GET_STATUS_BY_APPID:I = 0xc

.field public static final INSTALL_APP:I = 0x4

.field public static final MINISERVER_GET_RES_IN_STREAM:I = 0x2

.field public static final OBTAIN_APP_LAUNCH_PAGE:I = 0x9

.field public static final ON_STOP_APP:I = 0xd

.field public static final RE_START_APP:I = 0x3

.field public static final RE_START_APP_FOR_DIRECT:I = 0x1b

.field public static final SOCKET_NATIVE_COMMAND:I = 0x7

.field public static final START_APP:I = 0x0

.field public static final STOP_APP:I = 0xa

.field public static final STREAM_START_APP:I = 0x14

.field public static final TAB_CHANGE_APP:I = 0x15

###### Class io.dcloud.common.DHInterface.IMgr.FeatureEvent (io.dcloud.common.DHInterface.IMgr$FeatureEvent)
.class public interface abstract Lio/dcloud/common/DHInterface/IMgr$FeatureEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/IMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeatureEvent"
.end annotation


# static fields
.field public static final CALL_WAITER_DO_SOMETHING:I = 0xa

.field public static final CHECK_FEATURE_PERMISSION:I = 0x8

.field public static final CLEAR_DATA_BY_APPID:I = 0x3

.field public static final EXECUTE_JAVASCRIPT:I = 0x1

.field public static final HAS_FEATURE_PLUGIN:I = 0x9

.field public static final LOAD_FEATURE_FOR_NAME:I = 0xb

.field public static final LOAD_PROPERTIES:I = 0x0

.field public static final OBTAIN_FEATURE_EXT_HASHMAP:I = 0x4

.field public static final OBTAIN_FEATURE_JS:I = 0x2

.field public static final REGISTER_JS_API:I = 0x5

.field public static final REQUEST_ALL_FEATURE:I = 0x7

.field public static final REQUEST_FEATURE:I = 0x6

###### Class io.dcloud.common.DHInterface.IMgr.MgrEvent (io.dcloud.common.DHInterface.IMgr$MgrEvent)
.class public interface abstract Lio/dcloud/common/DHInterface/IMgr$MgrEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IMgr$AppEvent;
.implements Lio/dcloud/common/DHInterface/IMgr$NetEvent;
.implements Lio/dcloud/common/DHInterface/IMgr$FeatureEvent;
.implements Lio/dcloud/common/DHInterface/IMgr$WindowEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/IMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MgrEvent"
.end annotation

###### Class io.dcloud.common.DHInterface.IMgr.MgrType (io.dcloud.common.DHInterface.IMgr$MgrType)
.class public final enum Lio/dcloud/common/DHInterface/IMgr$MgrType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/IMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MgrType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/common/DHInterface/IMgr$MgrType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/common/DHInterface/IMgr$MgrType;

.field public static final enum AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

.field public static final enum FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

.field public static final enum NetMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

.field public static final enum WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const-string v1, "AppMgr"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/DHInterface/IMgr$MgrType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    .line 2
    new-instance v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const-string v3, "NetMgr"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/common/DHInterface/IMgr$MgrType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->NetMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    .line 3
    new-instance v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const-string v5, "FeatureMgr"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/common/DHInterface/IMgr$MgrType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    .line 4
    new-instance v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const-string v7, "WindowMgr"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/common/DHInterface/IMgr$MgrType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/dcloud/common/DHInterface/IMgr$MgrType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lio/dcloud/common/DHInterface/IMgr$MgrType;->$VALUES:[Lio/dcloud/common/DHInterface/IMgr$MgrType;

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

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/common/DHInterface/IMgr$MgrType;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/DHInterface/IMgr$MgrType;

    return-object p0
.end method

.method public static values()[Lio/dcloud/common/DHInterface/IMgr$MgrType;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->$VALUES:[Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {v0}, [Lio/dcloud/common/DHInterface/IMgr$MgrType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/common/DHInterface/IMgr$MgrType;

    return-object v0
.end method

###### Class io.dcloud.common.DHInterface.IMgr.NetEvent (io.dcloud.common.DHInterface.IMgr$NetEvent)
.class public interface abstract Lio/dcloud/common/DHInterface/IMgr$NetEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/IMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetEvent"
.end annotation

###### Class io.dcloud.common.DHInterface.IMgr.WindowEvent (io.dcloud.common.DHInterface.IMgr$WindowEvent)
.class public interface abstract Lio/dcloud/common/DHInterface/IMgr$WindowEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/IMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowEvent"
.end annotation


# static fields
.field public static final ACTIVE_APP_ROOT_VIEW:I = 0x5

.field public static final ACTIVE_APP_ROOT_VIEW_BY_WAP_PAGE:I = 0x29

.field public static final ADD_ANIMATION_CALLBACK:I = 0x47

.field public static final ATTACH_WEBVIEW:I = 0x10

.field public static final AUTO_POP:I = 0x1b

.field public static final AUTO_PUSH:I = 0x1c

.field public static final CHECK_DIRECT_PAGE_PRELOAD_JS:I = 0x32

.field public static final CHECK_RESTART_TOP_WEBVIEW:I = 0x4c

.field public static final CLEAR_DATA_FINISH_ACTIVITY:I = 0x13

.field public static final CLOSE_APP_WAP_PAGE:I = 0x2a

.field public static final CLOSE_SPLASH_SCREEN:I = 0xb

.field public static final CLOSE_WINDOW:I = 0x2

.field public static final CREATE_APP_ROOT_VIEW:I = 0x4

.field public static final CREATE_HD_WINDOW:I = 0x34

.field public static final CREATE_WIDNOW:I = 0x3

.field public static final DEBUG:I = -0x1

.field public static final DESTROY_APP_ROOT_VIEW:I = 0x19

.field public static final GET_APP_FIRST_VIEW:I = 0x9

.field public static final GET_APP_FRAMEVIEW_STACK:I = 0x6

.field public static final GET_CUR_FRAMEVIEW:I = 0x12

.field public static final GET_LAUNCH_WEBVIEW:I = 0x2e

.field public static final GET_SECOND_WEBVIEW:I = 0x2f

.field public static final HAS_OTHER_ACTIVE_APP:I = 0x20

.field public static final HIDE_MASK_VIEW:I = 0x1e

.field public static final HIDE_SHOW_WINDOW:I = 0x18

.field public static final HIDE_WINDOW:I = 0x17

.field public static final INJECT_SITEMAP_JSON:I = 0x31

.field public static final OBTAIN_APP_TOP_PAGE:I = 0x2c

.field public static final OBTAIN_APP_WAP_PAGE:I = 0x2b

.field public static final OBTAIN_LAUNCH_PAGE:I = 0x11

.field public static final OBTAIN_MP_TOP_PAGE_URL:I = 0x4e

.field public static final POP_FRAME_VIEW:I = 0x15

.field public static final RELOAD_ALL:I = 0xd

.field public static final RELOAD_CURRENT:I = 0xc

.field public static final RELOAD_DIRECT_FRAME_VIEW:I = 0xe

.field public static final RESTART_APP_ROOT_VIEW:I = 0xa

.field public static final SET_PARENT:I = 0x8

.field public static final SET_PRELOAD_PARENT:I = 0x1f

.field public static final SET_UN_PARENT:I = 0x16

.field public static final SHOW_BEHIND:I = 0x2d

.field public static final SHOW_LOADING:I = 0x0

.field public static final SHOW_MASK_VIEW:I = 0x1d

.field public static final SHOW_WIDNOW:I = 0x1

.field public static final SORT_FRAMEVIEW_BY_ZINDEX:I = 0x1a

.field public static final TITLE_BAR_CAPSULE_BUTTON_CLICK:I = 0x50

.field public static final TITLE_BAR_MENU_ITEM_CLICK:I = 0x4d

.field public static final UNI_EVENT_TO_SERVICE:I = 0x4f

.field public static final UPDATE_DIRECT_PAGE:I = 0x30

.field public static final WEBAPP_QUIT:I = 0x14

.field public static final WINDOW_ANIMATION_END:I = 0x46

.field public static final WINDOW_APPEND_TITLENVIEW:I = 0x49

.field public static final WINDOW_BACKGROUND_SET_WEBPARENT:I = 0x4a

.field public static final WINDOW_CRATE_TITLENVIEW:I = 0x48

.field public static final WINDOW_UPDATE_BACKGROUND:I = 0x4b

.field public static final WIN_SET_OPTION:I = 0x7
