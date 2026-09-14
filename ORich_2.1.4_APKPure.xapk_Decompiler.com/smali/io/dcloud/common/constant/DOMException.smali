###### Class io.dcloud.common.constant.DOMException (io.dcloud.common.constant.DOMException)
.class public Lio/dcloud/common/constant/DOMException;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CODE:Ljava/lang/String; = "code"

.field public static final CODE_AUDIO_ERROR_MALFORMED:I = -0x515

.field public static final CODE_AUDIO_ERROR_TIMED_OUT:I = -0x516

.field public static final CODE_AUTHORIZE_FAILED:I = -0xa

.field public static final CODE_BARCODE_ERROR:I = 0x8

.field public static final CODE_BUSINESS_INTERNAL_ERROR:I = -0x64

.field public static final CODE_BUSINESS_PARAMETER_HAS_NOT:I = -0x7

.field public static final CODE_CAMERA_ERROR:I = 0xb

.field public static final CODE_CLIENT_UNINSTALLED:I = -0x8

.field public static final CODE_DECOMPRESS_ERROR:I = 0x2

.field public static final CODE_FILE_NOT_EXIST:I = -0x4

.field public static final CODE_GALLERY_ERROR:I = 0xc

.field public static final CODE_GEOLOCATION_HASNT_BAIDU_APPKEY:I = 0x10

.field public static final CODE_GEOLOCATION_PERMISSION_ERROR:I = 0x16

.field public static final CODE_GEOLOCATION_PROVIDER_ERROR:I = 0x11

.field public static final CODE_GET_TOKEN_ERROR:I = -0x3ea

.field public static final CODE_INSTALL_WGT_ILLEGALITY_APPID_ERROR:I = 0xa

.field public static final CODE_IO_ERROR:I = -0x5

.field public static final CODE_MESSAGING_ERROR:I = 0xd

.field public static final CODE_NETWORK_ERROR:I = -0x6

.field public static final CODE_NOT_FOUND_3TH:I = 0x1

.field public static final CODE_NOT_FOUND_FILE:I = 0x0

.field public static final CODE_NOT_SUPPORT:I = -0x3

.field public static final CODE_OAUTH_FAIL:I = -0x3e9

.field public static final CODE_OAUTH_GET_SERVICES:I = 0x12

.field public static final CODE_OAUTH_GET_USERINFO:I = 0x15

.field public static final CODE_OAUTH_LOGIN:I = 0x13

.field public static final CODE_OAUTH_LOGOUT:I = 0x14

.field public static final CODE_OPERATE_DIR_ERROR:I = 0x9

.field public static final CODE_PARAMETER_ERRORP:I = -0x1

.field public static final CODE_PICK_DATE_ERROR:I = 0x5

.field public static final CODE_PICK_TIME_ERROR:I = 0x6

.field public static final CODE_PLAYER_ERROR:I = 0x4

.field public static final CODE_RECOGNITION_ERROR:I = 0x7

.field public static final CODE_RECORDER_ERROR:I = 0x3

.field public static final CODE_RUNTIME_5PRUNTIME_LACK_MODULE:I = -0x4cd

.field public static final CODE_RUNTIME_COMPONENTS_MODE_NOT_SUPPORT:I = 0x4e2

.field public static final CODE_RUNTIME_WGTU_UPDATE_APPID_NOT_MATCH:I = -0x4c7

.field public static final CODE_RUNTIME_WGTU_UPDATE_ERROR_MALFORMED:I = -0x4c6

.field public static final CODE_RUNTIME_WGTU_UPDATE_NOT_EXIST:I = -0x4c5

.field public static final CODE_RUNTIME_WGTU_UPDATE_VERSION_NOT_MATCH:I = -0x4c8

.field public static final CODE_RUNTIME_WGTU_WWW_MANIFEST_APPID_NOT_MATCH:I = -0x4cb

.field public static final CODE_RUNTIME_WGTU_WWW_MANIFEST_ERROR_MALFORMED:I = -0x4ca

.field public static final CODE_RUNTIME_WGTU_WWW_MANIFEST_NOT_EXIST:I = -0x4c9

.field public static final CODE_RUNTIME_WGTU_WWW_MANIFEST_VERSION_NOT_MATCH:I = -0x4cc

.field public static final CODE_RUNTIME_WGT_MANIFEST_APPID_NOT_MATCH:I = -0x4b4

.field public static final CODE_RUNTIME_WGT_MANIFEST_ERROR_MALFORMED:I = -0x4b3

.field public static final CODE_RUNTIME_WGT_MANIFEST_NOT_EXIST:I = -0x4b2

.field public static final CODE_RUNTIME_WGT_MANIFEST_VERSION_NOT_MATCH:I = -0x4b5

.field public static final CODE_RUNTIME_WGT_OR_WGTU_ERROR_MALFORMED:I = -0x4b1

.field public static final CODE_SHARE_AUTHORIZE_ERROR:I = 0xe

.field public static final CODE_SHARE_SEND_ERROR:I = 0xf

.field public static final CODE_SHORT_CUT_ALREADY_EXSIT:I = -0x9

.field public static final CODE_UNKNOWN_ERROR:I = -0x63

.field public static final CODE_UNOAUTH_ERROR:I = -0x3eb

.field public static final CODE_USER_CANCEL:I = -0x2

.field public static final ERROR_LINK:Ljava/lang/String; = "http://ask.dcloud.net.cn/article/282"

.field public static final INNERCODE:Ljava/lang/String; = "innerCode"

.field public static final JSON_ERROR_INFO:Ljava/lang/String; = "{code:%d,message:\'%s\'}"

.field public static final JSON_ERROR_INFO2:Ljava/lang/String; = "{code:%s,message:\'%s\'}"

.field public static final JSON_ERROR_INNE_INFO:Ljava/lang/String; = "{code:%d,message:\'%s\',innerCode:%d}"

.field public static final JSON_SHORTCUT_RESULT_INFO:Ljava/lang/String; = "{result:%s}"

.field public static final JSON_SHORTCUT_SUCCESS_INFO:Ljava/lang/String; = "{sure:%s}"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final MSG_AUDIO_ERROR_MALFORMED:Ljava/lang/String;

.field public static final MSG_AUDIO_ERROR_TIMED_OUT:Ljava/lang/String;

.field public static final MSG_AUTHORIZE_FAILED:Ljava/lang/String;

.field public static final MSG_BARCODE:Ljava/lang/String; = ""

.field public static final MSG_BUSINESS_INTERNAL_ERROR:Ljava/lang/String;

.field public static final MSG_BUSINESS_PARAMETER_HAS_NOT:Ljava/lang/String;

.field public static final MSG_CLIENT_UNINSTALLED:Ljava/lang/String;

.field public static final MSG_DECOMPRESS_ERROR:Ljava/lang/String; = ""

.field public static final MSG_FILE_NOT_EXIST:Ljava/lang/String;

.field public static final MSG_GEOLOCATION_HASNT_AMAP_KEY:Ljava/lang/String; = "has not amap  appkey"

.field public static final MSG_GEOLOCATION_HASNT_BAIDU_APKEY:Ljava/lang/String; = "has not baidu appkey"

.field public static final MSG_GEOLOCATION_PERMISSION_ERROR:Ljava/lang/String;

.field public static final MSG_GEOLOCATION_PROVIDER_ERROR:Ljava/lang/String;

.field public static final MSG_GET_TOKEN_ERROR:Ljava/lang/String;

.field public static final MSG_IO_ERROR:Ljava/lang/String; = "IO Error"

.field public static final MSG_NETWORK_ERROR:Ljava/lang/String; = "network error"

.field public static final MSG_NOT_FOUND_3TH:Ljava/lang/String; = "not found 3th activity"

.field public static final MSG_NOT_FOUND_FILE:Ljava/lang/String; = "not found file"

.field public static final MSG_NOT_SUPPORT:Ljava/lang/String;

.field public static final MSG_NO_PERMISSION:Ljava/lang/String; = "No Permission"

.field public static final MSG_OAUTH_FAIL:Ljava/lang/String;

.field public static final MSG_OAUTH_GET_SERVICES_ERROR:Ljava/lang/String;

.field public static final MSG_OAUTH_GET_USERINFO:Ljava/lang/String;

.field public static final MSG_OAUTH_LOGIN:Ljava/lang/String;

.field public static final MSG_OAUTH_LOGOUT:Ljava/lang/String;

.field public static final MSG_OPERATE_DIR_ERROR:Ljava/lang/String; = "operate_dir_error"

.field public static final MSG_PARAMETER_ERROR:Ljava/lang/String;

.field public static final MSG_PATH_NOT_PRIVATE_ERROR:Ljava/lang/String;

.field public static final MSG_PICK_DATE:Ljava/lang/String; = ""

.field public static final MSG_PICK_TIME:Ljava/lang/String; = ""

.field public static final MSG_RECOGNITION:Ljava/lang/String; = ""

.field public static final MSG_RUNTIME_5PRUNTIME_LACK_MODULE:Ljava/lang/String;

.field public static final MSG_RUNTIME_COMPONENTS_MODE_NOT_SUPPORT:Ljava/lang/String;

.field public static final MSG_RUNTIME_WGTU_UPDATE_APPID_NOT_MATCH:Ljava/lang/String;

.field public static final MSG_RUNTIME_WGTU_UPDATE_ERROR_MALFORMED:Ljava/lang/String;

.field public static final MSG_RUNTIME_WGTU_UPDATE_NOT_EXIST:Ljava/lang/String;

.field public static final MSG_RUNTIME_WGTU_UPDATE_VERSION_NOT_MATCH:Ljava/lang/String;

.field public static final MSG_RUNTIME_WGTU_WWW_MANIFEST_APPID_NOT_MATCH:Ljava/lang/String;

.field public static final MSG_RUNTIME_WGTU_WWW_MANIFEST_ERROR_MALFORMED:Ljava/lang/String;

.field public static final MSG_RUNTIME_WGTU_WWW_MANIFEST_NOT_EXIST:Ljava/lang/String;

.field public static final MSG_RUNTIME_WGTU_WWW_MANIFEST_VERSION_NOT_MATCH:Ljava/lang/String;

.field public static final MSG_RUNTIME_WGT_MANIFEST_APPID_NOT_MATCH:Ljava/lang/String;

.field public static final MSG_RUNTIME_WGT_MANIFEST_ERROR_MALFORMED:Ljava/lang/String;

.field public static final MSG_RUNTIME_WGT_MANIFEST_NOT_EXIST:Ljava/lang/String;

.field public static final MSG_RUNTIME_WGT_MANIFEST_VERSION_NOT_MATCH:Ljava/lang/String;

.field public static final MSG_RUNTIME_WGT_OR_WGTU_ERROR_MALFORMED:Ljava/lang/String;

.field public static final MSG_SHARE_AUTHORIZE_ERROR:Ljava/lang/String; = "authorize"

.field public static final MSG_SHARE_SEND_CONTENT_EMPTY_ERROR:Ljava/lang/String;

.field public static final MSG_SHARE_SEND_ERROR:Ljava/lang/String; = "send"

.field public static final MSG_SHARE_SEND_PIC_ROUTE_ERROR:Ljava/lang/String;

.field public static final MSG_SHORT_CUT_ALREADY_EXSIT:Ljava/lang/String;

.field public static final MSG_UNKNOWN_ERROR:Ljava/lang/String;

.field public static final MSG_UNOAUTH_ERROR:Ljava/lang/String;

.field public static final MSG_USER_CANCEL:Ljava/lang/String;

.field public static final STRING_ERROR_INFO:Ljava/lang/String; = "[%s:%d]%s, %s"

.field public static final STRING_ERROR_INFO_THIRDSDK:Ljava/lang/String; = "[%s%s:%d]%s"

.field public static final STRING_ERROR_INFO_THIRDSDK_NOCODE:Ljava/lang/String; = "[%s%s]%s"

.field public static final STRING_ERROR_NOTLINK_INFO:Ljava/lang/String; = "[%s:%d]%s"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lio/dcloud/base/R$string;->dcloud_share_local_path:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_SHARE_SEND_PIC_ROUTE_ERROR:Ljava/lang/String;

    .line 2
    sget v0, Lio/dcloud/base/R$string;->dcloud_share_content_not_empty:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_SHARE_SEND_CONTENT_EMPTY_ERROR:Ljava/lang/String;

    .line 8
    sget v0, Lio/dcloud/base/R$string;->dcloud_geo_provider_invalid:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_GEOLOCATION_PROVIDER_ERROR:Ljava/lang/String;

    .line 11
    sget v0, Lio/dcloud/base/R$string;->dcloud_geo_permission_failed:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_GEOLOCATION_PERMISSION_ERROR:Ljava/lang/String;

    .line 14
    sget v0, Lio/dcloud/base/R$string;->dcloud_oauth_authentication_failed:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_OAUTH_GET_SERVICES_ERROR:Ljava/lang/String;

    .line 17
    sget v0, Lio/dcloud/base/R$string;->dcloud_oauth_empower_failed:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_OAUTH_LOGIN:Ljava/lang/String;

    .line 19
    sget v0, Lio/dcloud/base/R$string;->dcloud_oauth_empower_failed:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_OAUTH_LOGOUT:Ljava/lang/String;

    .line 21
    sget v0, Lio/dcloud/base/R$string;->dcloud_oauth_empower_failed:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_OAUTH_GET_USERINFO:Ljava/lang/String;

    .line 24
    sget v0, Lio/dcloud/base/R$string;->dcloud_common_parameter_error:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_PARAMETER_ERROR:Ljava/lang/String;

    .line 26
    sget v0, Lio/dcloud/base/R$string;->dcloud_common_user_cancel:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_USER_CANCEL:Ljava/lang/String;

    .line 28
    sget v0, Lio/dcloud/base/R$string;->dcloud_common_not_supported:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_NOT_SUPPORT:Ljava/lang/String;

    .line 30
    sget v0, Lio/dcloud/base/R$string;->dcloud_common_file_not_exist:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_FILE_NOT_EXIST:Ljava/lang/String;

    .line 36
    sget v0, Lio/dcloud/base/R$string;->dcloud_common_missing_parameter:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_BUSINESS_PARAMETER_HAS_NOT:Ljava/lang/String;

    .line 38
    sget v0, Lio/dcloud/base/R$string;->dcloud_common_app_not_installed:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_CLIENT_UNINSTALLED:Ljava/lang/String;

    .line 40
    sget v0, Lio/dcloud/base/R$string;->dcloud_short_cut_exists:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_SHORT_CUT_ALREADY_EXSIT:Ljava/lang/String;

    .line 42
    sget v0, Lio/dcloud/base/R$string;->dcloud_common_user_refuse_api:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_AUTHORIZE_FAILED:Ljava/lang/String;

    .line 45
    sget v0, Lio/dcloud/base/R$string;->dcloud_common_unknown_error:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_UNKNOWN_ERROR:Ljava/lang/String;

    .line 47
    sget v0, Lio/dcloud/base/R$string;->dcloud_common_inside_error:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_BUSINESS_INTERNAL_ERROR:Ljava/lang/String;

    .line 48
    sget v0, Lio/dcloud/base/R$string;->dcloud_common_app_target_tips:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_PATH_NOT_PRIVATE_ERROR:Ljava/lang/String;

    .line 52
    sget v0, Lio/dcloud/base/R$string;->dcloud_oauth_logout_tips:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_OAUTH_FAIL:Ljava/lang/String;

    .line 54
    sget v0, Lio/dcloud/base/R$string;->dcloud_oauth_token_failed:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_GET_TOKEN_ERROR:Ljava/lang/String;

    .line 56
    sget v0, Lio/dcloud/base/R$string;->dcloud_oauth_oauth_not_empower:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_UNOAUTH_ERROR:Ljava/lang/String;

    .line 60
    sget v0, Lio/dcloud/base/R$string;->dcloud_wgt_format_error:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_OR_WGTU_ERROR_MALFORMED:Ljava/lang/String;

    .line 62
    sget v0, Lio/dcloud/base/R$string;->dcloud_wgt_not_manifest:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_MANIFEST_NOT_EXIST:Ljava/lang/String;

    .line 64
    sget v0, Lio/dcloud/base/R$string;->dcloud_wgt_manifest_format_error:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_MANIFEST_ERROR_MALFORMED:Ljava/lang/String;

    .line 66
    sget v0, Lio/dcloud/base/R$string;->dcloud_wgt_appid_legal:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_MANIFEST_APPID_NOT_MATCH:Ljava/lang/String;

    .line 68
    sget v0, Lio/dcloud/base/R$string;->dcloud_wgt_version_error:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_MANIFEST_VERSION_NOT_MATCH:Ljava/lang/String;

    .line 72
    sget v0, Lio/dcloud/base/R$string;->dcloud_wgt_not_update_file:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_UPDATE_NOT_EXIST:Ljava/lang/String;

    .line 74
    sget v0, Lio/dcloud/base/R$string;->dcloud_wgt_update_format_error:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_UPDATE_ERROR_MALFORMED:Ljava/lang/String;

    .line 76
    sget v0, Lio/dcloud/base/R$string;->dcloud_wgt_update_appid_error:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_UPDATE_APPID_NOT_MATCH:Ljava/lang/String;

    .line 78
    sget v0, Lio/dcloud/base/R$string;->dcloud_wgt_update_version_error:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_UPDATE_VERSION_NOT_MATCH:Ljava/lang/String;

    .line 80
    sget v0, Lio/dcloud/base/R$string;->dcloud_wgtu_not_manifest:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_WWW_MANIFEST_NOT_EXIST:Ljava/lang/String;

    .line 82
    sget v0, Lio/dcloud/base/R$string;->dcloud_wgtu_manifest_format_error:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_WWW_MANIFEST_ERROR_MALFORMED:Ljava/lang/String;

    .line 84
    sget v0, Lio/dcloud/base/R$string;->dcloud_wgtu_appid_legal:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_WWW_MANIFEST_APPID_NOT_MATCH:Ljava/lang/String;

    .line 86
    sget v0, Lio/dcloud/base/R$string;->dcloud_wgtu_version_error:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_WWW_MANIFEST_VERSION_NOT_MATCH:Ljava/lang/String;

    .line 88
    sget v0, Lio/dcloud/base/R$string;->dcloud_runtime_not_manifest:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_5PRUNTIME_LACK_MODULE:Ljava/lang/String;

    .line 92
    sget v0, Lio/dcloud/base/R$string;->dcloud_audio_play_error:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_AUDIO_ERROR_MALFORMED:Ljava/lang/String;

    .line 94
    sget v0, Lio/dcloud/base/R$string;->dcloud_audio_timeout:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_AUDIO_ERROR_TIMED_OUT:Ljava/lang/String;

    .line 98
    sget v0, Lio/dcloud/base/R$string;->dcloud_runtime_not_update_tips:I

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_COMPONENTS_MODE_NOT_SUPPORT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getString(I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJSON(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "{code:%d,message:\'%s\'}"

    const/4 v1, 0x2

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Ljava/util/IllegalFormatException; {:try_start_3 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    const-string p0, "DOMException is format error!!!"

    .line 3
    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_1a
    return-object p0
.end method

.method public static toJSON(ILjava/lang/String;I)Ljava/lang/String;
    .registers 6

    const-string v0, "{code:%d,message:\'%s\',innerCode:%d}"

    const/4 v1, 0x3

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/util/IllegalFormatException; {:try_start_3 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    const-string p0, "DOMException is format error!!!"

    .line 9
    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_21
    return-object p0
.end method

.method public static toJSON(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "{code:%s,message:\'%s\'}"

    const/4 v1, 0x2

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 4
    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/util/IllegalFormatException; {:try_start_3 .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    const-string p0, "DOMException is format error!!!"

    .line 6
    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public static toString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_4} :catch_33

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-nez v0, :cond_20

    const-string v0, "[%s:%d]%s, %s"

    const/4 v5, 0x4

    :try_start_d
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    aput-object p2, v5, v1

    aput-object p3, v5, v4

    invoke-static {v0, v5}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catch Ljava/util/IllegalFormatException; {:try_start_d .. :try_end_1f} :catch_33

    goto :goto_39

    :cond_20
    const-string p3, "[%s:%d]%s"

    :try_start_22
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    aput-object p2, v0, v1

    invoke-static {p3, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_32
    .catch Ljava/util/IllegalFormatException; {:try_start_22 .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    const-string p0, "DOMException is format error!!!"

    .line 7
    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_39
    return-object p0
.end method

.method public static toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "http://ask.dcloud.net.cn/article/282"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 8
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_4} :catch_4c

    const-string v1, "] "

    const-string v2, ":"

    const-string v3, "["

    if-nez v0, :cond_30

    .line 9
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",  "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_52

    .line 11
    :cond_30
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4b
    .catch Ljava/util/IllegalFormatException; {:try_start_c .. :try_end_4b} :catch_4c

    goto :goto_52

    :catch_4c
    const-string p0, "DOMException is format error!!!"

    .line 14
    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_52
    return-object p0
.end method

.method public static toStringForThirdSDK(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "[%s%s:%d]%s"

    const/4 v1, 0x4

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/util/IllegalFormatException; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    const-string p0, "DOMException is format error!!!"

    .line 3
    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_20
    return-object p0
.end method

.method public static toStringForThirdSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "[%s%s]%s"

    const/4 v1, 0x3

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    .line 4
    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/util/IllegalFormatException; {:try_start_3 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    const-string p0, "DOMException is format error!!!"

    .line 6
    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method
