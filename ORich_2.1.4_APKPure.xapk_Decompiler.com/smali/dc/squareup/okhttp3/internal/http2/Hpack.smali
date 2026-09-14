###### Class dc.squareup.okhttp3.internal.http2.Hpack (dc.squareup.okhttp3.internal.http2.Hpack)
.class final Ldc/squareup/okhttp3/internal/http2/Hpack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;,
        Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;
    }
.end annotation


# static fields
.field static final NAME_TO_FIRST_INDEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ldc/squareup/okio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFIX_4_BITS:I = 0xf

.field private static final PREFIX_5_BITS:I = 0x1f

.field private static final PREFIX_6_BITS:I = 0x3f

.field private static final PREFIX_7_BITS:I = 0x7f

.field static final STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x3d

    new-array v0, v0, [Ldc/squareup/okhttp3/internal/http2/Header;

    .line 1
    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    sget-object v2, Ldc/squareup/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Ldc/squareup/okio/ByteString;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    sget-object v2, Ldc/squareup/okhttp3/internal/http2/Header;->TARGET_METHOD:Ldc/squareup/okio/ByteString;

    const-string v4, "GET"

    invoke-direct {v1, v2, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v4, "POST"

    invoke-direct {v1, v2, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    sget-object v2, Ldc/squareup/okhttp3/internal/http2/Header;->TARGET_PATH:Ldc/squareup/okio/ByteString;

    const-string v4, "/"

    invoke-direct {v1, v2, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v4, "/index.html"

    invoke-direct {v1, v2, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    sget-object v2, Ldc/squareup/okhttp3/internal/http2/Header;->TARGET_SCHEME:Ldc/squareup/okio/ByteString;

    const-string v4, "http"

    invoke-direct {v1, v2, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v4, "https"

    invoke-direct {v1, v2, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    sget-object v2, Ldc/squareup/okhttp3/internal/http2/Header;->RESPONSE_STATUS:Ldc/squareup/okio/ByteString;

    const-string v4, "200"

    invoke-direct {v1, v2, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    const/4 v4, 0x7

    aput-object v1, v0, v4

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v4, "204"

    invoke-direct {v1, v2, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    const/16 v4, 0x8

    aput-object v1, v0, v4

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v4, "206"

    invoke-direct {v1, v2, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    const/16 v4, 0x9

    aput-object v1, v0, v4

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v4, "304"

    invoke-direct {v1, v2, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    const/16 v4, 0xa

    aput-object v1, v0, v4

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v4, "400"

    invoke-direct {v1, v2, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    const/16 v4, 0xb

    aput-object v1, v0, v4

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v4, "404"

    invoke-direct {v1, v2, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    const/16 v4, 0xc

    aput-object v1, v0, v4

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v4, "500"

    invoke-direct {v1, v2, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "accept-charset"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "accept-encoding"

    const-string v4, "gzip, deflate"

    invoke-direct {v1, v2, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "accept-language"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "accept-ranges"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "accept"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "access-control-allow-origin"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "age"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "allow"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "authorization"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "cache-control"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "content-disposition"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "content-encoding"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "content-language"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "content-length"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "content-location"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "content-range"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "content-type"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "cookie"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "date"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "etag"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "expect"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "expires"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "from"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "host"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "if-match"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "if-modified-since"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "if-none-match"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "if-range"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "if-unmodified-since"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "last-modified"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "link"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "location"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "max-forwards"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "proxy-authenticate"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "proxy-authorization"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "range"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "referer"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "refresh"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "retry-after"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "server"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "set-cookie"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "strict-transport-security"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "transfer-encoding"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "user-agent"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "vary"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "via"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    const-string v2, "www-authenticate"

    invoke-direct {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    sput-object v0, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    .line 308
    invoke-static {}, Ldc/squareup/okhttp3/internal/http2/Hpack;->nameToFirstIndex()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkLowercase(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/ByteString;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_32

    .line 2
    invoke-virtual {p0, v1}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_2f

    const/16 v3, 0x5a

    if-le v2, v3, :cond_14

    goto :goto_2f

    .line 4
    :cond_14
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldc/squareup/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_32
    return-object p0
.end method

.method private static nameToFirstIndex()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ldc/squareup/okio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    sget-object v1, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_9
    sget-object v2, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v3, v2

    if-ge v1, v3, :cond_26

    .line 3
    aget-object v3, v2, v1

    iget-object v3, v3, Ldc/squareup/okhttp3/internal/http2/Header;->name:Ldc/squareup/okio/ByteString;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 4
    aget-object v2, v2, v1

    iget-object v2, v2, Ldc/squareup/okhttp3/internal/http2/Header;->name:Ldc/squareup/okio/ByteString;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 7
    :cond_26
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class dc.squareup.okhttp3.internal.http2.Hpack.Reader (dc.squareup.okhttp3.internal.http2.Hpack$Reader)
.class final Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

.field dynamicTableByteCount:I

.field headerCount:I

.field private final headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final headerTableSizeSetting:I

.field private maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final source:Ldc/squareup/okio/BufferedSource;


# direct methods
.method constructor <init>(IILdc/squareup/okio/Source;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Ldc/squareup/okhttp3/internal/http2/Header;

    .line 10
    iput-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    const/4 v0, 0x7

    .line 12
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 14
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 21
    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I

    .line 22
    iput p2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 23
    invoke-static {p3}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->source:Ldc/squareup/okio/BufferedSource;

    return-void
.end method

.method constructor <init>(ILdc/squareup/okio/Source;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p1, p2}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;-><init>(IILdc/squareup/okio/Source;)V

    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .registers 3

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_10

    if-nez v0, :cond_c

    .line 3
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V

    goto :goto_10

    :cond_c
    sub-int/2addr v1, v0

    .line 5
    invoke-direct {p0, v1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    :cond_10
    :goto_10
    return-void
.end method

.method private clearDynamicTable()V
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 4
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    return-void
.end method

.method private dynamicTableIndex(I)I
    .registers 3

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private evictToRecoverBytes(I)I
    .registers 6

    const/4 v0, 0x0

    if-lez p1, :cond_39

    .line 1
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    if-lt v1, v2, :cond_29

    if-lez p1, :cond_29

    .line 2
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    aget-object v3, v2, v1

    iget v3, v3, Ldc/squareup/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr p1, v3

    .line 3
    iget v3, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    aget-object v2, v2, v1

    iget v2, v2, Ldc/squareup/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v3, v2

    iput v3, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 4
    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 7
    :cond_29
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    add-int/lit8 v2, v2, 0x1

    add-int v1, v2, v0

    iget v3, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    :cond_39
    return v0
.end method

.method private getName(I)Ldc/squareup/okio/ByteString;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    aget-object p1, v0, p1

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http2/Header;->name:Ldc/squareup/okio/ByteString;

    return-object p1

    .line 4
    :cond_d
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    if-ltz v0, :cond_22

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 9
    aget-object p1, v1, v0

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http2/Header;->name:Ldc/squareup/okio/ByteString;

    return-object p1

    .line 10
    :cond_22
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insertIntoDynamicTable(ILdc/squareup/okhttp3/internal/http2/Header;)V
    .registers 8

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget v0, p2, Ldc/squareup/okhttp3/internal/http2/Header;->hpackSize:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_15

    .line 5
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Ldc/squareup/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v0, v2

    .line 9
    :cond_15
    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-le v0, v2, :cond_1d

    .line 10
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V

    return-void

    .line 15
    :cond_1d
    iget v3, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 16
    invoke-direct {p0, v3}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    move-result v2

    if-ne p1, v1, :cond_55

    .line 19
    iget p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v2, v1

    if-le p1, v2, :cond_44

    .line 20
    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Ldc/squareup/okhttp3/internal/http2/Header;

    .line 21
    array-length v2, v1

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 23
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    .line 25
    :cond_44
    iget p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 26
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    aput-object p2, v1, p1

    .line 27
    iget p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    goto :goto_5f

    .line 29
    :cond_55
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 30
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    aput-object p2, v1, p1

    .line 32
    :goto_5f
    iget p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr p1, v0

    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    return-void
.end method

.method private isStaticHeader(I)Z
    .registers 4

    const/4 v0, 0x1

    if-ltz p1, :cond_a

    .line 1
    sget-object v1, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private readByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    aget-object p1, v0, p1

    .line 3
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 5
    :cond_10
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    if-ltz v0, :cond_28

    .line 6
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v2, v1

    if-ge v0, v2, :cond_28

    .line 9
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    aget-object v0, v1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_27
    return-void

    .line 10
    :cond_28
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->getName(I)Ldc/squareup/okio/ByteString;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v0

    .line 3
    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    invoke-direct {v1, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ldc/squareup/okio/ByteString;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1, v1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILdc/squareup/okhttp3/internal/http2/Header;)V

    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/http2/Hpack;->checkLowercase(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/ByteString;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v1

    .line 3
    new-instance v2, Ldc/squareup/okhttp3/internal/http2/Header;

    invoke-direct {v2, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ldc/squareup/okio/ByteString;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILdc/squareup/okhttp3/internal/http2/Header;)V

    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->getName(I)Ldc/squareup/okio/ByteString;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v2, Ldc/squareup/okhttp3/internal/http2/Header;

    invoke-direct {v2, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ldc/squareup/okio/ByteString;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/http2/Hpack;->checkLowercase(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/ByteString;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v1

    .line 3
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Ldc/squareup/okhttp3/internal/http2/Header;

    invoke-direct {v3, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ldc/squareup/okio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getAndResetHeaderList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method maxDynamicTableByteCount()I
    .registers 2

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    return v0
.end method

.method readByteString()Ldc/squareup/okio/ByteString;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByte()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const/16 v2, 0x7f

    .line 3
    invoke-virtual {p0, v0, v2}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v0

    if-eqz v1, :cond_29

    .line 6
    invoke-static {}, Ldc/squareup/okhttp3/internal/http2/Huffman;->get()Ldc/squareup/okhttp3/internal/http2/Huffman;

    move-result-object v1

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->source:Ldc/squareup/okio/BufferedSource;

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Ldc/squareup/okio/BufferedSource;->readByteArray(J)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ldc/squareup/okhttp3/internal/http2/Huffman;->decode([B)[B

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okio/ByteString;->of([B)Ldc/squareup/okio/ByteString;

    move-result-object v0

    return-object v0

    .line 8
    :cond_29
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->source:Ldc/squareup/okio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Ldc/squareup/okio/BufferedSource;->readByteString(J)Ldc/squareup/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method readHeaders()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_85

    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_24

    const/16 v1, 0x7f

    .line 6
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 7
    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readIndexedHeader(I)V

    goto :goto_0

    :cond_24
    const/16 v1, 0x40

    if-ne v0, v1, :cond_2c

    .line 9
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_0

    :cond_2c
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_3c

    const/16 v1, 0x3f

    .line 11
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 12
    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    goto :goto_0

    :cond_3c
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6d

    const/16 v1, 0x1f

    .line 14
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v0

    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-ltz v0, :cond_54

    .line 15
    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I

    if-gt v0, v1, :cond_54

    .line 19
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->adjustDynamicTableByteCount()V

    goto :goto_0

    .line 20
    :cond_54
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dynamic table size update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    const/16 v1, 0x10

    if-eq v0, v1, :cond_80

    if-nez v0, :cond_74

    goto :goto_80

    :cond_74
    const/16 v1, 0xf

    .line 26
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 27
    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto :goto_0

    .line 28
    :cond_80
    :goto_80
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    goto/16 :goto_0

    .line 29
    :cond_85
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    return-void
.end method

.method readInt(II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_4

    return p1

    :cond_4
    const/4 p1, 0x0

    .line 1
    :goto_5
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByte()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_14

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_5

    :cond_14
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    return p2
.end method

###### Class dc.squareup.okhttp3.internal.http2.Hpack.Writer (dc.squareup.okhttp3.internal.http2.Hpack$Writer)
.class final Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# static fields
.field private static final SETTINGS_HEADER_TABLE_SIZE:I = 0x1000

.field private static final SETTINGS_HEADER_TABLE_SIZE_LIMIT:I = 0x4000


# instance fields
.field dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

.field dynamicTableByteCount:I

.field private emitDynamicTableSizeUpdate:Z

.field headerCount:I

.field headerTableSizeSetting:I

.field maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final out:Ldc/squareup/okio/Buffer;

.field private smallestHeaderTableSizeSetting:I

.field private final useCompression:Z


# direct methods
.method constructor <init>(IZLdc/squareup/okio/Buffer;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    const/16 v0, 0x8

    new-array v0, v0, [Ldc/squareup/okhttp3/internal/http2/Header;

    .line 10
    iput-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    const/4 v0, 0x7

    .line 12
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 14
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 21
    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    .line 22
    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 23
    iput-boolean p2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->useCompression:Z

    .line 24
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->out:Ldc/squareup/okio/Buffer;

    return-void
.end method

.method constructor <init>(Ldc/squareup/okio/Buffer;)V
    .registers 4

    const/16 v0, 0x1000

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;-><init>(IZLdc/squareup/okio/Buffer;)V

    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .registers 3

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_10

    if-nez v0, :cond_c

    .line 3
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V

    goto :goto_10

    :cond_c
    sub-int/2addr v1, v0

    .line 5
    invoke-direct {p0, v1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    :cond_10
    :goto_10
    return-void
.end method

.method private clearDynamicTable()V
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 4
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    return-void
.end method

.method private evictToRecoverBytes(I)I
    .registers 6

    const/4 v0, 0x0

    if-lez p1, :cond_45

    .line 1
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    if-lt v1, v2, :cond_29

    if-lez p1, :cond_29

    .line 2
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    aget-object v3, v2, v1

    iget v3, v3, Ldc/squareup/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr p1, v3

    .line 3
    iget v3, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    aget-object v2, v2, v1

    iget v2, v2, Ldc/squareup/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v3, v2

    iput v3, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 4
    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 7
    :cond_29
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    add-int/lit8 v2, v2, 0x1

    add-int v1, v2, v0

    iget v3, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v2, v1, v0

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 10
    iget p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    :cond_45
    return v0
.end method

.method private insertIntoDynamicTable(Ldc/squareup/okhttp3/internal/http2/Header;)V
    .registers 8

    .line 1
    iget v0, p1, Ldc/squareup/okhttp3/internal/http2/Header;->hpackSize:I

    .line 4
    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-le v0, v1, :cond_a

    .line 5
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V

    return-void

    .line 10
    :cond_a
    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 11
    invoke-direct {p0, v2}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    .line 13
    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v3, v2

    if-le v1, v3, :cond_2e

    .line 14
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ldc/squareup/okhttp3/internal/http2/Header;

    .line 15
    array-length v3, v2

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 17
    iput-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    .line 19
    :cond_2e
    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 20
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    aput-object p1, v2, v1

    .line 21
    iget p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 22
    iget p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr p1, v0

    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    return-void
.end method


# virtual methods
.method setHeaderTableSizeSetting(I)V
    .registers 3

    .line 1
    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    const/16 v0, 0x4000

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ne v0, p1, :cond_d

    return-void

    :cond_d
    if-ge p1, v0, :cond_17

    .line 8
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    :cond_17
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 12
    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 13
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->adjustDynamicTableByteCount()V

    return-void
.end method

.method writeByteString(Ldc/squareup/okio/ByteString;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->useCompression:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_33

    invoke-static {}, Ldc/squareup/okhttp3/internal/http2/Huffman;->get()Ldc/squareup/okhttp3/internal/http2/Huffman;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/internal/http2/Huffman;->encodedLength(Ldc/squareup/okio/ByteString;)I

    move-result v0

    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 2
    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    .line 3
    invoke-static {}, Ldc/squareup/okhttp3/internal/http2/Huffman;->get()Ldc/squareup/okhttp3/internal/http2/Huffman;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Huffman;->encode(Ldc/squareup/okio/ByteString;Ldc/squareup/okio/BufferedSink;)V

    .line 4
    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->size()I

    move-result v0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 6
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->out:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/Buffer;

    goto :goto_40

    .line 8
    :cond_33
    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->size()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 9
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->out:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/Buffer;

    :goto_40
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 2
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_12

    .line 4
    invoke-virtual {p0, v0, v4, v3}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 6
    :cond_12
    iput-boolean v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 8
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-virtual {p0, v0, v4, v3}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 11
    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v0, :cond_eb

    .line 12
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldc/squareup/okhttp3/internal/http2/Header;

    .line 13
    iget-object v4, v3, Ldc/squareup/okhttp3/internal/http2/Header;->name:Ldc/squareup/okio/ByteString;

    invoke-virtual {v4}, Ldc/squareup/okio/ByteString;->toAsciiLowercase()Ldc/squareup/okio/ByteString;

    move-result-object v4

    .line 14
    iget-object v5, v3, Ldc/squareup/okhttp3/internal/http2/Header;->value:Ldc/squareup/okio/ByteString;

    .line 18
    sget-object v6, Ldc/squareup/okhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v6, :cond_6d

    .line 20
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v8

    if-le v6, v8, :cond_6a

    const/16 v9, 0x8

    if-ge v6, v9, :cond_6a

    .line 26
    sget-object v9, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    add-int/lit8 v10, v6, -0x1

    aget-object v10, v9, v10

    iget-object v10, v10, Ldc/squareup/okhttp3/internal/http2/Header;->value:Ldc/squareup/okio/ByteString;

    invoke-static {v10, v5}, Ldc/squareup/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5a

    move v9, v6

    goto :goto_6f

    .line 28
    :cond_5a
    aget-object v9, v9, v6

    iget-object v9, v9, Ldc/squareup/okhttp3/internal/http2/Header;->value:Ldc/squareup/okio/ByteString;

    invoke-static {v9, v5}, Ldc/squareup/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6a

    add-int/lit8 v9, v6, 0x1

    move v12, v9

    move v9, v6

    move v6, v12

    goto :goto_6f

    :cond_6a
    move v9, v6

    const/4 v6, -0x1

    goto :goto_6f

    :cond_6d
    const/4 v6, -0x1

    const/4 v9, -0x1

    :goto_6f
    if-ne v6, v7, :cond_a6

    .line 35
    iget v10, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr v10, v8

    iget-object v8, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v8, v8

    :goto_77
    if-ge v10, v8, :cond_a6

    .line 36
    iget-object v11, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    aget-object v11, v11, v10

    iget-object v11, v11, Ldc/squareup/okhttp3/internal/http2/Header;->name:Ldc/squareup/okio/ByteString;

    invoke-static {v11, v4}, Ldc/squareup/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a3

    .line 37
    iget-object v11, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    aget-object v11, v11, v10

    iget-object v11, v11, Ldc/squareup/okhttp3/internal/http2/Header;->value:Ldc/squareup/okio/ByteString;

    invoke-static {v11, v5}, Ldc/squareup/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_99

    .line 38
    iget v6, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int/2addr v10, v6

    sget-object v6, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v6, v6

    add-int/2addr v6, v10

    goto :goto_a6

    :cond_99
    if-ne v9, v7, :cond_a3

    .line 41
    iget v9, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int v9, v10, v9

    sget-object v11, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v11, v11

    add-int/2addr v9, v11

    :cond_a3
    add-int/lit8 v10, v10, 0x1

    goto :goto_77

    :cond_a6
    :goto_a6
    if-eq v6, v7, :cond_b0

    const/16 v3, 0x7f

    const/16 v4, 0x80

    .line 49
    invoke-virtual {p0, v6, v3, v4}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    goto :goto_e7

    :cond_b0
    const/16 v6, 0x40

    if-ne v9, v7, :cond_c3

    .line 52
    iget-object v7, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->out:Ldc/squareup/okio/Buffer;

    invoke-virtual {v7, v6}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    .line 53
    invoke-virtual {p0, v4}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->writeByteString(Ldc/squareup/okio/ByteString;)V

    .line 54
    invoke-virtual {p0, v5}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->writeByteString(Ldc/squareup/okio/ByteString;)V

    .line 55
    invoke-direct {p0, v3}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Ldc/squareup/okhttp3/internal/http2/Header;)V

    goto :goto_e7

    .line 56
    :cond_c3
    sget-object v7, Ldc/squareup/okhttp3/internal/http2/Header;->PSEUDO_PREFIX:Ldc/squareup/okio/ByteString;

    invoke-virtual {v4, v7}, Ldc/squareup/okio/ByteString;->startsWith(Ldc/squareup/okio/ByteString;)Z

    move-result v7

    if-eqz v7, :cond_dc

    sget-object v7, Ldc/squareup/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Ldc/squareup/okio/ByteString;

    invoke-virtual {v7, v4}, Ldc/squareup/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_dc

    const/16 v3, 0xf

    .line 59
    invoke-virtual {p0, v9, v3, v1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 60
    invoke-virtual {p0, v5}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->writeByteString(Ldc/squareup/okio/ByteString;)V

    goto :goto_e7

    :cond_dc
    const/16 v4, 0x3f

    .line 63
    invoke-virtual {p0, v9, v4, v6}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 64
    invoke-virtual {p0, v5}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->writeByteString(Ldc/squareup/okio/ByteString;)V

    .line 65
    invoke-direct {p0, v3}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Ldc/squareup/okhttp3/internal/http2/Header;)V

    :goto_e7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_23

    :cond_eb
    return-void
.end method

.method writeInt(III)V
    .registers 5

    if-ge p1, p2, :cond_9

    .line 1
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->out:Ldc/squareup/okio/Buffer;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    return-void

    .line 6
    :cond_9
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->out:Ldc/squareup/okio/Buffer;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    sub-int/2addr p1, p2

    :goto_10
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1f

    and-int/lit8 p3, p1, 0x7f

    .line 12
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->out:Ldc/squareup/okio/Buffer;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_10

    .line 15
    :cond_1f
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->out:Ldc/squareup/okio/Buffer;

    invoke-virtual {p2, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    return-void
.end method
