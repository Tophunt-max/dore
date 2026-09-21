###### Class com.dcloud.android.v4.accessibilityservice.AccessibilityServiceInfoCompatJellyBeanMr2 (com.dcloud.android.v4.accessibilityservice.AccessibilityServiceInfoCompatJellyBeanMr2)
.class Lcom/dcloud/android/v4/accessibilityservice/AccessibilityServiceInfoCompatJellyBeanMr2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result p0

    return p0
.end method
