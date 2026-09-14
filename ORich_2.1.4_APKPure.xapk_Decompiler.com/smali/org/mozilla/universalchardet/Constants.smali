###### Class org.mozilla.universalchardet.Constants (org.mozilla.universalchardet.Constants)
.class public final Lorg/mozilla/universalchardet/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHARSET_BIG5:Ljava/lang/String;

.field public static final CHARSET_EUC_JP:Ljava/lang/String;

.field public static final CHARSET_EUC_KR:Ljava/lang/String;

.field public static final CHARSET_EUC_TW:Ljava/lang/String;

.field public static final CHARSET_HZ_GB_2312:Ljava/lang/String;

.field public static final CHARSET_IBM855:Ljava/lang/String;

.field public static final CHARSET_IBM866:Ljava/lang/String;

.field public static final CHARSET_ISO_2022_CN:Ljava/lang/String;

.field public static final CHARSET_ISO_2022_JP:Ljava/lang/String;

.field public static final CHARSET_ISO_2022_KR:Ljava/lang/String;

.field public static final CHARSET_ISO_8859_5:Ljava/lang/String;

.field public static final CHARSET_ISO_8859_7:Ljava/lang/String;

.field public static final CHARSET_ISO_8859_8:Ljava/lang/String;

.field public static final CHARSET_KOI8_R:Ljava/lang/String;

.field public static final CHARSET_MACCYRILLIC:Ljava/lang/String;

.field public static final CHARSET_SHIFT_JIS:Ljava/lang/String;

.field public static final CHARSET_TIS620:Ljava/lang/String;

.field public static final CHARSET_UTF_16BE:Ljava/lang/String;

.field public static final CHARSET_UTF_16LE:Ljava/lang/String;

.field public static final CHARSET_UTF_32BE:Ljava/lang/String;

.field public static final CHARSET_UTF_32LE:Ljava/lang/String;

.field public static final CHARSET_UTF_8:Ljava/lang/String;

.field public static final CHARSET_WINDOWS_1251:Ljava/lang/String;

.field public static final CHARSET_WINDOWS_1252:Ljava/lang/String;

.field public static final CHARSET_WINDOWS_1253:Ljava/lang/String;

.field public static final CHARSET_WINDOWS_1255:Ljava/lang/String;

.field public static final CHARSET_X_ISO_10646_UCS_4_2143:Ljava/lang/String;

.field public static final CHARSET_X_ISO_10646_UCS_4_3412:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ISO-2022-JP"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_2022_JP:Ljava/lang/String;

    const-string v0, "ISO-2022-CN"

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_2022_CN:Ljava/lang/String;

    const-string v0, "ISO-2022-KR"

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_2022_KR:Ljava/lang/String;

    const-string v0, "ISO-8859-5"

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_5:Ljava/lang/String;

    const-string v0, "ISO-8859-7"

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_7:Ljava/lang/String;

    const-string v0, "ISO-8859-8"

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    const-string v0, "BIG5"

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_BIG5:Ljava/lang/String;

    const-string v0, "EUC-JP"

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_EUC_JP:Ljava/lang/String;

    const-string v0, "EUC-KR"

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_EUC_KR:Ljava/lang/String;

    const-string v0, "EUC-TW"

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_EUC_TW:Ljava/lang/String;

    const-string v0, "SHIFT_JIS"

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_SHIFT_JIS:Ljava/lang/String;

    const-string v0, "IBM855"

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_IBM855:Ljava/lang/String;

    const-string v0, "IBM866"

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_IBM866:Ljava/lang/String;

    const-string v0, "KOI8-R"

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_KOI8_R:Ljava/lang/String;

    const-string v0, "MACCYRILLIC"

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_MACCYRILLIC:Ljava/lang/String;

    const-string v0, "WINDOWS-1251"

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1251:Ljava/lang/String;

    const-string v0, "WINDOWS-1252"

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1252:Ljava/lang/String;

    const-string v0, "WINDOWS-1253"

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1253:Ljava/lang/String;

    const-string v0, "WINDOWS-1255"

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    const-string v0, "UTF-8"

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    const-string v0, "UTF-16BE"

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16BE:Ljava/lang/String;

    const-string v0, "UTF-16LE"

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16LE:Ljava/lang/String;

    const-string v0, "UTF-32BE"

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32BE:Ljava/lang/String;

    const-string v0, "UTF-32LE"

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32LE:Ljava/lang/String;

    const-string v0, "TIS620"

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_TIS620:Ljava/lang/String;

    const-string v0, "HZ-GB-2312"

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_HZ_GB_2312:Ljava/lang/String;

    const-string v0, "X-ISO-10646-UCS-4-3412"

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_3412:Ljava/lang/String;

    const-string v0, "X-ISO-10646-UCS-4-2143"

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_2143:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
