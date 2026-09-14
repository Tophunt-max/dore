###### Class io.dcloud.feature.barcode2.decoding.Intents (io.dcloud.feature.barcode2.decoding.Intents)
.class public final Lio/dcloud/feature/barcode2/decoding/Intents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/barcode2/decoding/Intents$Share;,
        Lio/dcloud/feature/barcode2/decoding/Intents$WifiConnect;,
        Lio/dcloud/feature/barcode2/decoding/Intents$SearchBookContents;,
        Lio/dcloud/feature/barcode2/decoding/Intents$Encode;,
        Lio/dcloud/feature/barcode2/decoding/Intents$Scan;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.feature.barcode2.decoding.Intents.Encode (io.dcloud.feature.barcode2.decoding.Intents$Encode)
.class public final Lio/dcloud/feature/barcode2/decoding/Intents$Encode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/barcode2/decoding/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Encode"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.dcloud.zxing.client.android.ENCODE"

.field public static final DATA:Ljava/lang/String; = "ENCODE_DATA"

.field public static final FORMAT:Ljava/lang/String; = "ENCODE_FORMAT"

.field public static final TYPE:Ljava/lang/String; = "ENCODE_TYPE"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.feature.barcode2.decoding.Intents.Scan (io.dcloud.feature.barcode2.decoding.Intents$Scan)
.class public final Lio/dcloud/feature/barcode2/decoding/Intents$Scan;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/barcode2/decoding/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scan"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.dcloud.zxing.client.android.SCAN"

.field public static final CHARACTER_SET:Ljava/lang/String; = "CHARACTER_SET"

.field public static final DATA_MATRIX_MODE:Ljava/lang/String; = "DATA_MATRIX_MODE"

.field public static final MODE:Ljava/lang/String; = "SCAN_MODE"

.field public static final ONE_D_MODE:Ljava/lang/String; = "ONE_D_MODE"

.field public static final PRODUCT_MODE:Ljava/lang/String; = "PRODUCT_MODE"

.field public static final QR_CODE_MODE:Ljava/lang/String; = "QR_CODE_MODE"

.field public static final RESULT:Ljava/lang/String; = "SCAN_RESULT"

.field public static final RESULT_FORMAT:Ljava/lang/String; = "SCAN_RESULT_FORMAT"

.field public static final SAVE_HISTORY:Ljava/lang/String; = "SAVE_HISTORY"

.field public static final SCAN_FORMATS:Ljava/lang/String; = "SCAN_FORMATS"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.feature.barcode2.decoding.Intents.SearchBookContents (io.dcloud.feature.barcode2.decoding.Intents$SearchBookContents)
.class public final Lio/dcloud/feature/barcode2/decoding/Intents$SearchBookContents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/barcode2/decoding/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchBookContents"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.dcloud.zxing.client.android.SEARCH_BOOK_CONTENTS"

.field public static final ISBN:Ljava/lang/String; = "ISBN"

.field public static final QUERY:Ljava/lang/String; = "QUERY"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.feature.barcode2.decoding.Intents.Share (io.dcloud.feature.barcode2.decoding.Intents$Share)
.class public final Lio/dcloud/feature/barcode2/decoding/Intents$Share;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/barcode2/decoding/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Share"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.dcloud.zxing.client.android.SHARE"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.feature.barcode2.decoding.Intents.WifiConnect (io.dcloud.feature.barcode2.decoding.Intents$WifiConnect)
.class public final Lio/dcloud/feature/barcode2/decoding/Intents$WifiConnect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/barcode2/decoding/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiConnect"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.dcloud.zxing.client.android.WIFI_CONNECT"

.field public static final PASSWORD:Ljava/lang/String; = "PASSWORD"

.field public static final SSID:Ljava/lang/String; = "SSID"

.field public static final TYPE:Ljava/lang/String; = "TYPE"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
