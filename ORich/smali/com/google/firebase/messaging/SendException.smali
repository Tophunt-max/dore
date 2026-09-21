###### Class com.google.firebase.messaging.SendException (com.google.firebase.messaging.SendException)
.class public final Lcom/google/firebase/messaging/SendException;
.super Ljava/lang/Exception;


# static fields
.field public static final ERROR_INVALID_PARAMETERS:I = 0x1

.field public static final ERROR_SIZE:I = 0x2

.field public static final ERROR_TOO_MANY_MESSAGES:I = 0x4

.field public static final ERROR_TTL_EXCEEDED:I = 0x3

.field public static final ERROR_UNKNOWN:I


# instance fields
.field private final errorCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_5c

    .line 4
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_60

    goto :goto_52

    :sswitch_1c
    const-string v6, "missing_to"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_52

    :cond_25
    const/4 v5, 0x4

    goto :goto_52

    :sswitch_27
    const-string v6, "messagetoobig"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_52

    :cond_30
    const/4 v5, 0x3

    goto :goto_52

    :sswitch_32
    const-string v6, "invalid_parameters"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_52

    :cond_3b
    const/4 v5, 0x2

    goto :goto_52

    :sswitch_3d
    const-string v6, "toomanymessages"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_52

    :cond_46
    const/4 v5, 0x1

    goto :goto_52

    :sswitch_48
    const-string v6, "service_not_available"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_52

    :cond_51
    const/4 v5, 0x0

    :goto_52
    packed-switch v5, :pswitch_data_76

    goto :goto_5c

    :pswitch_56
    const/4 v0, 0x2

    goto :goto_5d

    :pswitch_58
    const/4 v0, 0x1

    goto :goto_5d

    :pswitch_5a
    const/4 v0, 0x3

    goto :goto_5d

    :cond_5c
    :goto_5c
    const/4 v0, 0x0

    .line 10
    :goto_5d
    :pswitch_5d
    iput v0, p0, Lcom/google/firebase/messaging/SendException;->errorCode:I

    return-void

    :sswitch_data_60
    .sparse-switch
        -0x67e7c3ad -> :sswitch_48
        -0x4cf26401 -> :sswitch_3d
        -0x36e3eace -> :sswitch_32
        -0x24c7160d -> :sswitch_27
        -0x5aa500c -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_5d
        :pswitch_58
        :pswitch_56
        :pswitch_58
    .end packed-switch
.end method


# virtual methods
.method public final getErrorCode()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/google/firebase/messaging/SendException;->errorCode:I

    return v0
.end method
