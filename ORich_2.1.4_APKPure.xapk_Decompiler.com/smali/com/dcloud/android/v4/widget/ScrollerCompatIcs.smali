###### Class com.dcloud.android.v4.widget.ScrollerCompatIcs (com.dcloud.android.v4.widget.ScrollerCompatIcs)
.class Lcom/dcloud/android/v4/widget/ScrollerCompatIcs;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrVelocity(Ljava/lang/Object;)F
    .registers 1

    .line 1
    check-cast p0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result p0

    return p0
.end method
