###### Class io.dcloud.feature.uniapp.ui.action.AbsComponentData (io.dcloud.feature.uniapp.ui.action.AbsComponentData)
.class public abstract Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;
.super Ljava/lang/Object;
.source "AbsComponentData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

.field private mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

.field public mComponentType:Ljava/lang/String;

.field protected mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

.field private mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

.field private mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

.field public mParentRef:Ljava/lang/String;

.field public mRef:Ljava/lang/String;

.field protected mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

.field protected renderObjectPr:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    .line 53
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mRef:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mComponentType:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mParentRef:Ljava/lang/String;

    return-void
.end method

.method private addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .registers 4

    .line 197
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_b

    .line 198
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 200
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->set(Ljava/lang/Enum;F)V

    return-void
.end method

.method private addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .registers 4

    .line 183
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_b

    .line 184
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 186
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->set(Ljava/lang/Enum;F)V

    return-void
.end method

.method private addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .registers 4

    .line 190
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_b

    .line 191
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 193
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->set(Ljava/lang/Enum;F)V

    return-void
.end method


# virtual methods
.method public final addAttr(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_19

    .line 74
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_19

    .line 77
    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    if-nez v0, :cond_16

    .line 78
    new-instance v0, Lcom/taobao/weex/dom/WXAttr;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/dom/WXAttr;-><init>(Ljava/util/Map;I)V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    goto :goto_19

    .line 80
    :cond_16
    invoke-virtual {v0, p1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->putAll(Ljava/util/Map;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public final addEvent(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_19

    .line 85
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_19

    .line 88
    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    if-nez v0, :cond_14

    .line 89
    new-instance v0, Lcom/taobao/weex/dom/WXEvent;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXEvent;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    .line 91
    :cond_14
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->addAll(Ljava/util/Collection;)Z

    :cond_19
    :goto_19
    return-void
.end method

.method public final addShorthand(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1ec

    .line 128
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ec

    .line 129
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1ec

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1ee

    goto/16 :goto_e8

    :sswitch_2f
    const-string v3, "marginLeft"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto/16 :goto_e8

    :cond_39
    const/16 v2, 0xe

    goto/16 :goto_e8

    :sswitch_3d
    const-string v3, "marginRight"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    goto/16 :goto_e8

    :cond_47
    const/16 v2, 0xd

    goto/16 :goto_e8

    :sswitch_4b
    const-string v3, "borderWidth"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    goto/16 :goto_e8

    :cond_55
    const/16 v2, 0xc

    goto/16 :goto_e8

    :sswitch_59
    const-string v3, "paddingRight"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    goto/16 :goto_e8

    :cond_63
    const/16 v2, 0xb

    goto/16 :goto_e8

    :sswitch_67
    const-string v3, "paddingBottom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    goto/16 :goto_e8

    :cond_71
    const/16 v2, 0xa

    goto/16 :goto_e8

    :sswitch_75
    const-string v3, "paddingTop"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    goto/16 :goto_e8

    :cond_7f
    const/16 v2, 0x9

    goto/16 :goto_e8

    :sswitch_83
    const-string v3, "borderLeftWidth"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    goto/16 :goto_e8

    :cond_8d
    const/16 v2, 0x8

    goto/16 :goto_e8

    :sswitch_91
    const-string v3, "marginBottom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    goto :goto_e8

    :cond_9a
    const/4 v2, 0x7

    goto :goto_e8

    :sswitch_9c
    const-string v3, "padding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    goto :goto_e8

    :cond_a5
    const/4 v2, 0x6

    goto :goto_e8

    :sswitch_a7
    const-string v3, "marginTop"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b0

    goto :goto_e8

    :cond_b0
    const/4 v2, 0x5

    goto :goto_e8

    :sswitch_b2
    const-string v3, "margin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    goto :goto_e8

    :cond_bb
    const/4 v2, 0x4

    goto :goto_e8

    :sswitch_bd
    const-string v3, "borderBottomWidth"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c6

    goto :goto_e8

    :cond_c6
    const/4 v2, 0x3

    goto :goto_e8

    :sswitch_c8
    const-string v3, "borderTopWidth"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d1

    goto :goto_e8

    :cond_d1
    const/4 v2, 0x2

    goto :goto_e8

    :sswitch_d3
    const-string v3, "paddingLeft"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dc

    goto :goto_e8

    :cond_dc
    const/4 v2, 0x1

    goto :goto_e8

    :sswitch_de
    const-string v3, "borderRightWidth"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e7

    goto :goto_e8

    :cond_e7
    const/4 v2, 0x0

    :goto_e8
    packed-switch v2, :pswitch_data_22c

    goto/16 :goto_10

    .line 136
    :pswitch_ed
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 142
    :pswitch_fe
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 148
    :pswitch_10f
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 172
    :pswitch_120
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 175
    :pswitch_131
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 169
    :pswitch_142
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 160
    :pswitch_153
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 145
    :pswitch_164
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 163
    :pswitch_175
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 139
    :pswitch_186
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 133
    :pswitch_197
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 157
    :pswitch_1a8
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 151
    :pswitch_1b9
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 166
    :pswitch_1ca
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 154
    :pswitch_1db
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    :cond_1ec
    return-void

    nop

    :sswitch_data_1ee
    .sparse-switch
        -0x757f89aa -> :sswitch_de
        -0x597a2048 -> :sswitch_d3
        -0x56940a43 -> :sswitch_c8
        -0x4cec9971 -> :sswitch_bd
        -0x40737a52 -> :sswitch_b2
        -0x3e464339 -> :sswitch_a7
        -0x300fc3ef -> :sswitch_9c
        -0x113c6e87 -> :sswitch_91
        -0xd59d8cd -> :sswitch_83
        0x55f4784 -> :sswitch_75
        0xc0fb19c -> :sswitch_67
        0x2a8c788b -> :sswitch_59
        0x2c2c84fa -> :sswitch_4b
        0x3a1ea90e -> :sswitch_3d
        0x757a12d5 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_22c
    .packed-switch 0x0
        :pswitch_1db
        :pswitch_1ca
        :pswitch_1b9
        :pswitch_1a8
        :pswitch_197
        :pswitch_186
        :pswitch_175
        :pswitch_164
        :pswitch_153
        :pswitch_142
        :pswitch_131
        :pswitch_120
        :pswitch_10f
        :pswitch_fe
        :pswitch_ed
    .end packed-switch
.end method

.method public final addShorthand([FLio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;)V
    .registers 5

    const/4 v0, 0x4

    if-nez p1, :cond_8

    new-array p1, v0, [F

    .line 96
    fill-array-data p1, :array_4e

    .line 98
    :cond_8
    array-length v1, p1

    if-ne v1, v0, :cond_4c

    .line 99
    sget-object v0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData$1;->$SwitchMap$io$dcloud$feature$uniapp$dom$AbsCSSShorthand$TYPE:[I

    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3d

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1d

    goto :goto_4c

    .line 115
    :cond_1d
    iget-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez p2, :cond_29

    .line 116
    new-instance p2, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {p2, p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>([F)V

    iput-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    goto :goto_4c

    .line 118
    :cond_29
    invoke-virtual {p2, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->replace([F)V

    goto :goto_4c

    .line 108
    :cond_2d
    iget-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez p2, :cond_39

    .line 109
    new-instance p2, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {p2, p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>([F)V

    iput-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    goto :goto_4c

    .line 111
    :cond_39
    invoke-virtual {p2, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->replace([F)V

    goto :goto_4c

    .line 101
    :cond_3d
    iget-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez p2, :cond_49

    .line 102
    new-instance p2, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {p2, p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>([F)V

    iput-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    goto :goto_4c

    .line 104
    :cond_49
    invoke-virtual {p2, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->replace([F)V

    :cond_4c
    :goto_4c
    return-void

    nop

    :array_4e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public addStyle(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, v0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addStyle(Ljava/util/Map;Z)V

    return-void
.end method

.method public final addStyle(Ljava/util/Map;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_18

    .line 63
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_18

    .line 66
    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    if-nez v0, :cond_15

    .line 67
    new-instance p2, Lcom/taobao/weex/dom/WXStyle;

    invoke-direct {p2, p1}, Lcom/taobao/weex/dom/WXStyle;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    goto :goto_18

    .line 69
    :cond_15
    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->putAll(Ljava/util/Map;Z)V

    :cond_18
    :goto_18
    return-void
.end method

.method public abstract clone()Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/feature/uniapp/ui/action/AbsComponentData<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->clone()Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    move-result-object v0

    return-object v0
.end method

.method public getAttrs()Lio/dcloud/feature/uniapp/dom/AbsAttr;
    .registers 2

    .line 211
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    if-nez v0, :cond_b

    .line 212
    new-instance v0, Lcom/taobao/weex/dom/WXAttr;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXAttr;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    .line 214
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    return-object v0
.end method

.method public getBorder()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 248
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_b

    .line 249
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 251
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-object v0
.end method

.method public getEvents()Lio/dcloud/feature/uniapp/dom/AbsEvent;
    .registers 2

    .line 218
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    if-nez v0, :cond_b

    .line 219
    new-instance v0, Lcom/taobao/weex/dom/WXEvent;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXEvent;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    .line 221
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    return-object v0
.end method

.method public getMargin()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 228
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_b

    .line 229
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 231
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-object v0
.end method

.method public getPadding()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 238
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_b

    .line 239
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 241
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-object v0
.end method

.method public getRenderObjectPr()J
    .registers 3

    .line 271
    iget-wide v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    return-wide v0
.end method

.method public getStyles()Lio/dcloud/feature/uniapp/dom/AbsStyle;
    .registers 2

    .line 204
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    if-nez v0, :cond_b

    .line 205
    new-instance v0, Lcom/taobao/weex/dom/WXStyle;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXStyle;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    .line 207
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    return-object v0
.end method

.method public isRenderPtrEmpty()Z
    .registers 6

    .line 275
    iget-wide v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-void
.end method

.method public final setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-void
.end method

.method public final setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V
    .registers 2

    .line 259
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-void
.end method

.method public declared-synchronized setRenderObjectPr(J)V
    .registers 8

    monitor-enter p0

    .line 279
    :try_start_1
    iget-wide v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_31

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    .line 283
    iput-wide p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    goto :goto_31

    .line 281
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RenderObjectPr has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " old renderObjectPtr "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 285
    :cond_31
    :goto_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class io.dcloud.feature.uniapp.ui.action.AbsComponentData.AnonymousClass1 (io.dcloud.feature.uniapp.ui.action.AbsComponentData$1)
.class synthetic Lio/dcloud/feature/uniapp/ui/action/AbsComponentData$1;
.super Ljava/lang/Object;
.source "AbsComponentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$dcloud$feature$uniapp$dom$AbsCSSShorthand$TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 99
    invoke-static {}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData$1;->$SwitchMap$io$dcloud$feature$uniapp$dom$AbsCSSShorthand$TYPE:[I

    :try_start_9
    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->MARGIN:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData$1;->$SwitchMap$io$dcloud$feature$uniapp$dom$AbsCSSShorthand$TYPE:[I

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->PADDING:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData$1;->$SwitchMap$io$dcloud$feature$uniapp$dom$AbsCSSShorthand$TYPE:[I

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->BORDER:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
