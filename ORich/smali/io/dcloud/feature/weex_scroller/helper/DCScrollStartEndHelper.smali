###### Class io.dcloud.feature.weex_scroller.helper.DCScrollStartEndHelper (io.dcloud.feature.weex_scroller.helper.DCScrollStartEndHelper)
.class public Lio/dcloud/feature/weex_scroller/helper/DCScrollStartEndHelper;
.super Ljava/lang/Object;
.source "DCScrollStartEndHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isScrollEvent(Ljava/lang/String;)Z
    .registers 5

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_4a

    goto :goto_44

    :sswitch_e
    const-string v0, "scrollstart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_44

    :cond_17
    const/4 v3, 0x4

    goto :goto_44

    :sswitch_19
    const-string v0, "scrolltoupper"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_44

    :cond_22
    const/4 v3, 0x3

    goto :goto_44

    :sswitch_24
    const-string v0, "scrolltolower"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_44

    :cond_2d
    const/4 v3, 0x2

    goto :goto_44

    :sswitch_2f
    const-string v0, "scrollend"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_44

    :cond_38
    const/4 v3, 0x1

    goto :goto_44

    :sswitch_3a
    const-string v0, "scroll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto :goto_44

    :cond_43
    const/4 v3, 0x0

    :goto_44
    packed-switch v3, :pswitch_data_60

    return v1

    :pswitch_48
    return v2

    nop

    :sswitch_data_4a
    .sparse-switch
        -0x361a1933 -> :sswitch_3a
        0x18e712ee -> :sswitch_2f
        0x73ff39f9 -> :sswitch_24
        0x747e679a -> :sswitch_19
        0x7c3615b5 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
    .end packed-switch
.end method
