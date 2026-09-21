###### Class com.google.android.gms.internal.firebase_messaging.zzi (com.google.android.gms.internal.firebase_messaging.zzi)
.class final Lcom/google/android/gms/internal/firebase_messaging/zzi;
.super Ljava/io/OutputStream;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ByteStreams.nullOutputStream()"

    return-object v0
.end method

.method public final write(I)V
    .registers 2

    return-void
.end method

.method public final write([B)V
    .registers 2

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzg;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final write([BII)V
    .registers 4

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzg;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
