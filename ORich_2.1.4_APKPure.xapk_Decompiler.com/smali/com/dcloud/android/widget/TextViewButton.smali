###### Class com.dcloud.android.widget.TextViewButton (com.dcloud.android.widget.TextViewButton)
.class public Lcom/dcloud/android/widget/TextViewButton;
.super Landroid/widget/TextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    const v0, -0x333334

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_19

    :cond_d
    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    :cond_13
    const v0, -0x111112

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 7
    :cond_19
    :goto_19
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
