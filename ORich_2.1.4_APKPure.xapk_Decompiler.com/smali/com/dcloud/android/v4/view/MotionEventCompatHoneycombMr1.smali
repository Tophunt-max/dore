###### Class com.dcloud.android.v4.view.MotionEventCompatHoneycombMr1 (com.dcloud.android.v4.view.MotionEventCompatHoneycombMr1)
.class Lcom/dcloud/android/v4/view/MotionEventCompatHoneycombMr1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAxisValue(Landroid/view/MotionEvent;I)F
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    return p0
.end method

.method static getAxisValue(Landroid/view/MotionEvent;II)F
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p0

    return p0
.end method
