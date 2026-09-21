###### Class io.dcloud.feature.ui.nativeui.c (io.dcloud.feature.ui.nativeui.c)
.class Lio/dcloud/feature/ui/nativeui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lio/dcloud/common/DHInterface/ISysEventListener;
.implements Lio/dcloud/common/util/EventDispatchManager$ActivityEventDispatchListener;


# instance fields
.field private A:I

.field private B:Z

.field private C:J

.field private D:Ljava/lang/String;

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Landroid/graphics/drawable/AnimationDrawable;

.field private H:Landroid/graphics/Bitmap;

.field private I:I

.field private J:I

.field private K:I

.field L:Landroid/widget/LinearLayout;

.field private a:Landroid/app/Activity;

.field private b:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

.field private c:Lio/dcloud/common/DHInterface/IWebview;

.field private d:Lio/dcloud/common/DHInterface/IApp;

.field private e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/PopupWindow;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/ImageView;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/widget/LinearLayout;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:I

.field private w:I

.field private x:Landroid/view/View;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "close"

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->g:Ljava/lang/String;

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/c;->r:Z

    const/high16 v1, -0x4e000000

    .line 21
    iput v1, p0, Lio/dcloud/feature/ui/nativeui/c;->w:I

    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lio/dcloud/feature/ui/nativeui/c;->B:Z

    const/4 v2, -0x1

    .line 29
    iput v2, p0, Lio/dcloud/feature/ui/nativeui/c;->E:I

    const/4 v2, -0x2

    .line 35
    iput v2, p0, Lio/dcloud/feature/ui/nativeui/c;->J:I

    .line 36
    iput v2, p0, Lio/dcloud/feature/ui/nativeui/c;->K:I

    .line 40
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/c;->b:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    .line 41
    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/c;->c:Lio/dcloud/common/DHInterface/IWebview;

    .line 42
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/c;->d:Lio/dcloud/common/DHInterface/IApp;

    .line 43
    iput-object p5, p0, Lio/dcloud/feature/ui/nativeui/c;->e:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lio/dcloud/feature/ui/nativeui/c;->a:Landroid/app/Activity;

    .line 46
    instance-of p1, p6, Lio/dcloud/PandoraEntryActivity;

    if-eqz p1, :cond_38

    .line 47
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 48
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/c;->x:Landroid/view/View;

    goto :goto_47

    :cond_38
    const p1, 0x1020002

    .line 50
    invoke-virtual {p6, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/c;->x:Landroid/view/View;

    .line 52
    :goto_47
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c;->d:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/ui/nativeui/c;->y:I

    .line 53
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c;->d:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/ui/nativeui/c;->z:I

    .line 54
    invoke-direct {p0, p2, p4}, Lio/dcloud/feature/ui/nativeui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V

    .line 55
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/c;->b()V

    .line 56
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c;->o:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lio/dcloud/feature/ui/nativeui/c;->a(Landroid/view/View;)V

    .line 57
    invoke-direct {p0, p3}, Lio/dcloud/feature/ui/nativeui/c;->a(Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/c;->d()V

    return-void
.end method

.method private a(I)I
    .registers 4

    .line 108
    iget v0, p0, Lio/dcloud/feature/ui/nativeui/c;->y:I

    iget v1, p0, Lio/dcloud/feature/ui/nativeui/c;->z:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lio/dcloud/feature/ui/nativeui/c;->u:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_12

    if-le p1, v0, :cond_12

    .line 110
    div-int/2addr p1, v0

    goto :goto_13

    :cond_12
    const/4 p1, 0x1

    :goto_13
    return p1
.end method

.method private a(Landroid/view/View;)V
    .registers 3

    .line 94
    sget v0, Lio/dcloud/feature/ui/nativeui/NativeUIR;->ID_TEXT_LOADING_DCLOUD:I

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->i:Landroid/widget/TextView;

    .line 96
    sget v0, Lio/dcloud/feature/ui/nativeui/NativeUIR;->ID_PROGRESSBAR_LOADING_DCLOUD:I

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->k:Landroid/widget/ProgressBar;

    .line 98
    sget v0, Lio/dcloud/feature/ui/nativeui/NativeUIR;->ID_IMAGE_LOADING_DCLOUD:I

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->l:Landroid/widget/ImageView;

    .line 100
    sget v0, Lio/dcloud/feature/ui/nativeui/NativeUIR;->ID_WAITING_SEPARATOR_DCLOUD:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/c;->j:Landroid/view/View;

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V
    .registers 9

    const-string v0, "background"

    .line 2
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/ui/nativeui/c;->w:I

    :cond_12
    const-string v0, "modal"

    .line 7
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "false"

    .line 10
    invoke-static {v1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/c;->r:Z

    .line 13
    :cond_28
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result p1

    const-string v0, "round"

    .line 15
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    iput v0, p0, Lio/dcloud/feature/ui/nativeui/c;->A:I

    const-string v0, "padlock"

    .line 17
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 20
    iget-boolean v1, p0, Lio/dcloud/feature/ui/nativeui/c;->B:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/c;->B:Z

    :cond_57
    const-string v0, "width"

    .line 24
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lio/dcloud/feature/ui/nativeui/c;->y:I

    iget v2, p0, Lio/dcloud/feature/ui/nativeui/c;->J:I

    .line 25
    invoke-static {v0, v1, v2, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/ui/nativeui/c;->J:I

    const-string v0, "height"

    .line 29
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lio/dcloud/feature/ui/nativeui/c;->z:I

    iget v3, p0, Lio/dcloud/feature/ui/nativeui/c;->K:I

    .line 30
    invoke-static {v1, v2, v3, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    iput v1, p0, Lio/dcloud/feature/ui/nativeui/c;->K:I

    const-string v1, "back"

    .line 34
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 37
    iput-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->g:Ljava/lang/String;

    :cond_85
    const-string v1, "style"

    .line 39
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->s:Ljava/lang/String;

    const-string v1, "color"

    .line 42
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 43
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    iput-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->m:Ljava/lang/String;

    :cond_9b
    const-string v1, "paddin"

    .line 48
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->p:Ljava/lang/String;

    const-string v1, "padding"

    .line 50
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_da

    .line 51
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_cd

    .line 54
    iget v2, p0, Lio/dcloud/feature/ui/nativeui/c;->y:I

    iget v4, p0, Lio/dcloud/feature/ui/nativeui/c;->u:I

    invoke-static {v1, v2, v4, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    iput v2, p0, Lio/dcloud/feature/ui/nativeui/c;->u:I

    .line 56
    iget v2, p0, Lio/dcloud/feature/ui/nativeui/c;->z:I

    iget v4, p0, Lio/dcloud/feature/ui/nativeui/c;->v:I

    invoke-static {v1, v2, v4, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    iput v1, p0, Lio/dcloud/feature/ui/nativeui/c;->v:I

    goto :goto_ee

    .line 59
    :cond_cd
    iget v2, p0, Lio/dcloud/feature/ui/nativeui/c;->y:I

    iget v4, p0, Lio/dcloud/feature/ui/nativeui/c;->v:I

    invoke-static {v1, v2, v4, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    iput v1, p0, Lio/dcloud/feature/ui/nativeui/c;->v:I

    iput v1, p0, Lio/dcloud/feature/ui/nativeui/c;->u:I

    goto :goto_ee

    .line 63
    :cond_da
    iget v1, p0, Lio/dcloud/feature/ui/nativeui/c;->y:I

    const-string v2, "3%"

    invoke-static {v2, v1, v3}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v1

    .line 64
    iget-object v2, p0, Lio/dcloud/feature/ui/nativeui/c;->p:Ljava/lang/String;

    iget v4, p0, Lio/dcloud/feature/ui/nativeui/c;->y:I

    invoke-static {v2, v4, v1}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v1

    .line 65
    iput v1, p0, Lio/dcloud/feature/ui/nativeui/c;->v:I

    iput v1, p0, Lio/dcloud/feature/ui/nativeui/c;->u:I

    :goto_ee
    const-string v1, "textalign"

    .line 68
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_fc

    .line 69
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    iput-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->n:Ljava/lang/String;

    :cond_fc
    const-string v1, "loading"

    .line 75
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_131

    const-string v2, "display"

    .line 79
    invoke-static {v1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/feature/ui/nativeui/c;->q:Ljava/lang/String;

    const-string v2, "interval"

    .line 81
    invoke-static {v1, v2}, Lio/dcloud/common/util/JSONUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lio/dcloud/feature/ui/nativeui/c;->C:J

    const-string v2, "icon"

    .line 82
    invoke-static {v1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/feature/ui/nativeui/c;->D:Ljava/lang/String;

    .line 83
    invoke-static {v1, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lio/dcloud/feature/ui/nativeui/c;->y:I

    const/4 v4, -0x1

    invoke-static {v0, v2, v4, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/ui/nativeui/c;->E:I

    const-string v0, "type"

    .line 84
    invoke-static {v1, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->t:Ljava/lang/String;

    .line 88
    :cond_131
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13d

    .line 89
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->D:Ljava/lang/String;

    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->F:Ljava/lang/String;

    :cond_13d
    const-string v0, "size"

    .line 92
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 93
    iget v0, p0, Lio/dcloud/feature/ui/nativeui/c;->y:I

    invoke-static {p2, v0, v3, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/ui/nativeui/c;->I:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .line 101
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/c;->f()V

    .line 102
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/c;->j()V

    .line 103
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/c;->h()V

    .line 104
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/c;->g()V

    .line 105
    invoke-virtual {p0, p1}, Lio/dcloud/feature/ui/nativeui/c;->b(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/c;->e()V

    .line 107
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/c;->i()V

    return-void
.end method

.method static synthetic a(Lio/dcloud/feature/ui/nativeui/c;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/feature/ui/nativeui/c;->r:Z

    return p0
.end method

.method private a(Ljava/io/InputStream;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 114
    :goto_9
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    .line 115
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 117
    :cond_15
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 118
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 119
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lio/dcloud/feature/ui/nativeui/c;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/ui/nativeui/c;->g:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .registers 5

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->a:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 4
    sget v1, Lio/dcloud/feature/ui/nativeui/NativeUIR;->LAYOUT_DIALOG_LAYOUT_LOADING_DCLOUD:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->L:Landroid/widget/LinearLayout;

    .line 6
    sget v1, Lio/dcloud/feature/ui/nativeui/NativeUIR;->DCLOUD_LOADING_LAYOUT_ROOT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->o:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    iget v1, p0, Lio/dcloud/feature/ui/nativeui/c;->J:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 9
    iget v1, p0, Lio/dcloud/feature/ui/nativeui/c;->K:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 10
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lio/dcloud/feature/ui/nativeui/c;)Landroid/app/Activity;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/ui/nativeui/c;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic d(Lio/dcloud/feature/ui/nativeui/c;)Lio/dcloud/common/DHInterface/IWebview;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/ui/nativeui/c;->c:Lio/dcloud/common/DHInterface/IWebview;

    return-object p0
.end method

.method private d()V
    .registers 8

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/16 v5, 0x17

    if-lt v0, v5, :cond_12

    iget-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/c;->r:Z

    if-ne v0, v2, :cond_12

    .line 3
    iput-boolean v4, p0, Lio/dcloud/feature/ui/nativeui/c;->r:Z

    const/4 v3, -0x1

    goto :goto_13

    :cond_12
    const/4 v1, -0x2

    .line 7
    :goto_13
    iget-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/c;->r:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->g:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->g:Ljava/lang/String;

    const-string v5, "close"

    .line 9
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 10
    :cond_29
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->a:Landroid/app/Activity;

    instance-of v0, v0, Lio/dcloud/PandoraEntryActivity;

    if-eqz v0, :cond_37

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->d:Lio/dcloud/common/DHInterface/IApp;

    sget-object v5, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v0, p0, v5}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    goto :goto_3e

    .line 13
    :cond_37
    invoke-static {}, Lio/dcloud/common/util/EventDispatchManager;->getInstance()Lio/dcloud/common/util/EventDispatchManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/common/util/EventDispatchManager;->addListener(Lio/dcloud/common/util/EventDispatchManager$ActivityEventDispatchListener;)V

    .line 17
    :cond_3e
    :goto_3e
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v5, p0, Lio/dcloud/feature/ui/nativeui/c;->L:Landroid/widget/LinearLayout;

    iget-boolean v6, p0, Lio/dcloud/feature/ui/nativeui/c;->r:Z

    invoke-direct {v0, v5, v1, v3, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->h:Landroid/widget/PopupWindow;

    .line 18
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->x:Landroid/view/View;

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 19
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 20
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->h:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 22
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->h:Landroid/widget/PopupWindow;

    new-instance v1, Lio/dcloud/feature/ui/nativeui/c$a;

    invoke-direct {v1, p0}, Lio/dcloud/feature/ui/nativeui/c$a;-><init>(Lio/dcloud/feature/ui/nativeui/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 30
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->G:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 31
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->G:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_7d
    return-void
.end method

.method private e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->o:Landroid/widget/LinearLayout;

    new-instance v1, Lio/dcloud/feature/ui/nativeui/c$b;

    invoke-direct {v1, p0}, Lio/dcloud/feature/ui/nativeui/c$b;-><init>(Lio/dcloud/feature/ui/nativeui/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->q:Ljava/lang/String;

    const-string v1, "block"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_38

    .line 3
    :cond_11
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->q:Ljava/lang/String;

    const-string v1, "inline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_38

    .line 5
    :cond_22
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->q:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_38
    :goto_38
    return-void
.end method

.method private g()V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 4
    :cond_9
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->d:Lio/dcloud/common/DHInterface/IApp;

    iget-object v2, p0, Lio/dcloud/feature/ui/nativeui/c;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/ui/nativeui/c;->F:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainResInStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 11
    :try_start_22
    invoke-direct {p0, v1}, Lio/dcloud/feature/ui/nativeui/c;->a(Ljava/io/InputStream;)[B

    move-result-object v3
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 16
    :goto_2b
    array-length v1, v3

    invoke-static {v3, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 18
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 19
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v1, :cond_ca

    if-nez v4, :cond_39

    goto/16 :goto_ca

    .line 23
    :cond_39
    invoke-direct {p0, v4}, Lio/dcloud/feature/ui/nativeui/c;->a(I)I

    move-result v5

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 24
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 25
    array-length v5, v3

    invoke-static {v3, v2, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->H:Landroid/graphics/Bitmap;

    .line 26
    rem-int/2addr v1, v4

    const/16 v3, 0x8

    if-eqz v1, :cond_61

    if-eqz v0, :cond_60

    .line 28
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->H:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_60
    return-void

    :cond_61
    if-eqz v0, :cond_ca

    .line 36
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 37
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->H:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 39
    div-int/2addr v0, v1

    .line 41
    iget-wide v4, p0, Lio/dcloud/feature/ui/nativeui/c;->C:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_7a

    const-wide/16 v4, 0x64

    .line 42
    iput-wide v4, p0, Lio/dcloud/feature/ui/nativeui/c;->C:J

    .line 45
    :cond_7a
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    const/4 v5, 0x0

    :goto_80
    if-ge v5, v0, :cond_98

    .line 47
    iget-object v6, p0, Lio/dcloud/feature/ui/nativeui/c;->H:Landroid/graphics/Bitmap;

    mul-int v7, v5, v1

    invoke-static {v6, v7, v2, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 49
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-wide v8, p0, Lio/dcloud/feature/ui/nativeui/c;->C:J

    long-to-int v6, v8

    invoke-virtual {v4, v7, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    .line 52
    :cond_98
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 53
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_b1

    .line 55
    iget v5, p0, Lio/dcloud/feature/ui/nativeui/c;->E:I

    if-lez v5, :cond_a8

    move v1, v5

    .line 58
    :cond_a8
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    :cond_b1
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->G:Landroid/graphics/drawable/AnimationDrawable;

    :cond_ca
    :goto_ca
    return-void
.end method

.method private h()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->t:Ljava/lang/String;

    const-string v1, "snow"

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "black"

    if-eqz v0, :cond_2e

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/dcloud/PdrR;->DRAWBLE_PROGRESSBAR_BLACK_SNOW:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4f

    .line 6
    :cond_21
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/dcloud/PdrR;->DRAWBLE_PROGRESSBAR_WHITE_SNOW:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4f

    .line 10
    :cond_2e
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/dcloud/PdrR;->DRAWBLE_PROGRESSBAR_BLACK_CIRCLE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4f

    .line 14
    :cond_43
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/dcloud/PdrR;->DRAWBLE_PROGRESSBAR_WHITE_CIRCLE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 18
    :goto_4f
    iget v1, p0, Lio/dcloud/feature/ui/nativeui/c;->E:I

    if-lez v1, :cond_60

    .line 19
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->k:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lio/dcloud/feature/ui/nativeui/c;->E:I

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_77

    .line 21
    :cond_60
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fd3333333333333L    # 0.3

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 22
    iget-object v2, p0, Lio/dcloud/feature/ui/nativeui/c;->k:Landroid/widget/ProgressBar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    :goto_77
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private i()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->o:Landroid/widget/LinearLayout;

    iget v1, p0, Lio/dcloud/feature/ui/nativeui/c;->u:I

    iget v2, p0, Lio/dcloud/feature/ui/nativeui/c;->v:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->o:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 4
    iget v1, p0, Lio/dcloud/feature/ui/nativeui/c;->A:I

    if-lez v1, :cond_19

    int-to-float v1, v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 7
    :cond_19
    iget v1, p0, Lio/dcloud/feature/ui/nativeui/c;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 9
    iget-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/c;->B:Z

    if-eqz v0, :cond_2c

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->o:Landroid/widget/LinearLayout;

    new-instance v1, Lio/dcloud/feature/ui/nativeui/c$c;

    invoke-direct {v1, p0}, Lio/dcloud/feature/ui/nativeui/c$c;-><init>(Lio/dcloud/feature/ui/nativeui/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2c
    return-void
.end method

.method private j()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->m:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->m:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    .line 4
    :goto_10
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->n:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x11

    if-nez v0, :cond_47

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->n:Ljava/lang/String;

    const-string v2, "left"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->i:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_4c

    .line 9
    :cond_30
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->n:Ljava/lang/String;

    const-string v2, "right"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->i:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_4c

    .line 12
    :cond_41
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_4c

    .line 15
    :cond_47
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 18
    :goto_4c
    iget v0, p0, Lio/dcloud/feature/ui/nativeui/c;->I:I

    if-lez v0, :cond_57

    .line 19
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->i:Landroid/widget/TextView;

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_57
    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    .line 120
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->h:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 122
    :try_start_a
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_13

    .line 124
    :catch_10
    invoke-virtual {p0}, Lio/dcloud/feature/ui/nativeui/c;->onDismiss()V

    :cond_13
    :goto_13
    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 5

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3d

    .line 14
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 16
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->i:Landroid/widget/TextView;

    .line 17
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lio/dcloud/feature/ui/nativeui/c;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 18
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_48

    .line 21
    :cond_3d
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 24
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    :cond_48
    :goto_48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 28
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c;->j:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_60

    .line 31
    :cond_5b
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_60
    return-void
.end method

.method public c()V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->b:Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/ui/nativeui/NativeUIFeatureImpl;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->d:Lio/dcloud/common/DHInterface/IApp;

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v0, p0, v1}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 4
    invoke-static {}, Lio/dcloud/common/util/EventDispatchManager;->getInstance()Lio/dcloud/common/util/EventDispatchManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/common/util/EventDispatchManager;->removeListener(Lio/dcloud/common/util/EventDispatchManager$ActivityEventDispatchListener;)V

    return-void
.end method

.method public onDismiss()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/c;->e:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->h:Landroid/widget/PopupWindow;

    .line 4
    iget-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/c;->r:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->g:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->g:Ljava/lang/String;

    const-string v1, "close"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 8
    :cond_25
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->d:Lio/dcloud/common/DHInterface/IApp;

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v0, p0, v1}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 9
    invoke-static {}, Lio/dcloud/common/util/EventDispatchManager;->getInstance()Lio/dcloud/common/util/EventDispatchManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/common/util/EventDispatchManager;->removeListener(Lio/dcloud/common/util/EventDispatchManager$ActivityEventDispatchListener;)V

    .line 12
    :cond_33
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->H:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_45

    .line 13
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/c;->H:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 14
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_45
    return-void
.end method

.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_30

    .line 2
    check-cast p2, [Ljava/lang/Object;

    .line 3
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_30

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c;->g:Ljava/lang/String;

    const-string p2, "none"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1e

    return p2

    .line 7
    :cond_1e
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c;->g:Ljava/lang/String;

    const-string v0, "transmit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    return v1

    .line 10
    :cond_29
    invoke-virtual {p0}, Lio/dcloud/feature/ui/nativeui/c;->a()V

    .line 11
    invoke-virtual {p0}, Lio/dcloud/feature/ui/nativeui/c;->c()V

    return p2

    :cond_30
    return v1
.end method

###### Class io.dcloud.feature.ui.nativeui.c.a (io.dcloud.feature.ui.nativeui.c$a)
.class Lio/dcloud/feature/ui/nativeui/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/ui/nativeui/c;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$a;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$a;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-static {p1}, Lio/dcloud/feature/ui/nativeui/c;->a(Lio/dcloud/feature/ui/nativeui/c;)Z

    move-result p1

    return p1
.end method

###### Class io.dcloud.feature.ui.nativeui.c.b (io.dcloud.feature.ui.nativeui.c$b)
.class Lio/dcloud/feature/ui/nativeui/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/ui/nativeui/c;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$b;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_7a

    const/4 p1, 0x4

    if-ne p2, p1, :cond_7a

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$b;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-static {p1}, Lio/dcloud/feature/ui/nativeui/c;->b(Lio/dcloud/feature/ui/nativeui/c;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "close"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_24

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$b;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-virtual {p1}, Lio/dcloud/feature/ui/nativeui/c;->a()V

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$b;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-virtual {p1}, Lio/dcloud/feature/ui/nativeui/c;->c()V

    return p2

    .line 7
    :cond_24
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$b;->a:Lio/dcloud/feature/ui/nativeui/c;

    .line 8
    invoke-static {p1}, Lio/dcloud/feature/ui/nativeui/c;->b(Lio/dcloud/feature/ui/nativeui/c;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "transmit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 9
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$b;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-static {p1}, Lio/dcloud/feature/ui/nativeui/c;->c(Lio/dcloud/feature/ui/nativeui/c;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lio/dcloud/PandoraEntryActivity;

    if-eqz p1, :cond_61

    .line 10
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$b;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-static {p1}, Lio/dcloud/feature/ui/nativeui/c;->d(Lio/dcloud/feature/ui/nativeui/c;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 11
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$b;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-static {p1}, Lio/dcloud/feature/ui/nativeui/c;->d(Lio/dcloud/feature/ui/nativeui/c;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IWebview;->goBackOrForward(I)V

    goto :goto_6a

    .line 13
    :cond_53
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$b;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-static {p1}, Lio/dcloud/feature/ui/nativeui/c;->d(Lio/dcloud/feature/ui/nativeui/c;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_6a

    .line 16
    :cond_61
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$b;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-static {p1}, Lio/dcloud/feature/ui/nativeui/c;->c(Lio/dcloud/feature/ui/nativeui/c;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :goto_6a
    return p3

    .line 19
    :cond_6b
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$b;->a:Lio/dcloud/feature/ui/nativeui/c;

    .line 20
    invoke-static {p1}, Lio/dcloud/feature/ui/nativeui/c;->b(Lio/dcloud/feature/ui/nativeui/c;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7a

    return p2

    :cond_7a
    return p3
.end method

###### Class io.dcloud.feature.ui.nativeui.c.ViewOnClickListenerC0054c (io.dcloud.feature.ui.nativeui.c$c)
.class Lio/dcloud/feature/ui/nativeui/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/c;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/ui/nativeui/c;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$c;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$c;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-virtual {p1}, Lio/dcloud/feature/ui/nativeui/c;->a()V

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$c;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-virtual {p1}, Lio/dcloud/feature/ui/nativeui/c;->c()V

    return-void
.end method
