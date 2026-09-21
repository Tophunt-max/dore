###### Class com.huawei.android.hms.pps.AdvertisingIdClient (com.huawei.android.hms.pps.AdvertisingIdClient)
.class public Lcom/huawei/android/hms/pps/AdvertisingIdClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hms/pps/AdvertisingIdClient$Info;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getAdvertisingIdInfo(Landroid/content/Context;)Lcom/huawei/android/hms/pps/AdvertisingIdClient$Info;
.end method

.method private static native getTag()Ljava/lang/String;
.end method

###### Class com.huawei.android.hms.pps.AdvertisingIdClient.Info (com.huawei.android.hms.pps.AdvertisingIdClient$Info)
.class public final Lcom/huawei/android/hms/pps/AdvertisingIdClient$Info;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hms/pps/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# instance fields
.field private final advertisingId:Ljava/lang/String;

.field private final limitAdTrackingEnabled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/android/hms/pps/AdvertisingIdClient$Info;->advertisingId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/huawei/android/hms/pps/AdvertisingIdClient$Info;->limitAdTrackingEnabled:Z

    return-void
.end method


# virtual methods
.method public final native getId()Ljava/lang/String;
.end method

.method public final native isLimitAdTrackingEnabled()Z
.end method
