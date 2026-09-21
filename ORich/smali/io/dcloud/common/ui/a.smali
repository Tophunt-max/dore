###### Class io.dcloud.common.ui.a (io.dcloud.common.ui.a)
.class public Lio/dcloud/common/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/ui/a$c;,
        Lio/dcloud/common/ui/a$d;,
        Lio/dcloud/common/ui/a$e;,
        Lio/dcloud/common/ui/a$f;,
        Lio/dcloud/common/ui/a$b;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lio/dcloud/common/ui/a$c;

.field private c:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

.field private d:Lio/dcloud/common/ui/b$b;

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Lio/dcloud/common/ui/a$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/common/ui/a;->c:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    .line 144
    sget v0, Lio/dcloud/PdrR;->UNI_CUSTOM_PRIVACY_DIALOG_LAYOUT:I

    iput v0, p0, Lio/dcloud/common/ui/a;->f:I

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lio/dcloud/common/ui/a;->g:Z

    .line 180
    iput-object p1, p0, Lio/dcloud/common/ui/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;F)I
    .registers 3

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method static synthetic a(Lio/dcloud/common/ui/a;Landroid/content/Context;F)I
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/ui/a;->a(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lio/dcloud/common/ui/a;Ljava/lang/String;)I
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/common/ui/a;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)I
    .registers 4

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_44

    goto :goto_35

    :sswitch_15
    const-string v1, "right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_35

    :cond_1e
    const/4 v0, 0x2

    goto :goto_35

    :sswitch_20
    const-string v1, "left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_35

    :cond_29
    const/4 v0, 0x1

    goto :goto_35

    :sswitch_2b
    const-string v1, "bottom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    packed-switch v0, :pswitch_data_52

    goto :goto_40

    :pswitch_39
    const/4 p1, 0x5

    goto :goto_42

    :pswitch_3b
    const/4 p1, 0x3

    goto :goto_42

    :pswitch_3d
    const/16 p1, 0x50

    goto :goto_42

    :cond_40
    :goto_40
    const/16 p1, 0x11

    :goto_42
    return p1

    nop

    :sswitch_data_44
    .sparse-switch
        -0x527265d5 -> :sswitch_2b
        0x32a007 -> :sswitch_20
        0x677c21c -> :sswitch_15
    .end sparse-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3b
        :pswitch_39
    .end packed-switch
.end method

.method static synthetic a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/ui/a;->c:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    return-object p0
.end method

.method private a(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;Lio/dcloud/common/ui/a$e;)V
    .registers 8

    .line 15
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 16
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 17
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 19
    new-instance v3, Lio/dcloud/common/ui/a$a;

    invoke-direct {v3, p0, p3, p2}, Lio/dcloud/common/ui/a$a;-><init>(Lio/dcloud/common/ui/a;Lio/dcloud/common/ui/a$e;Landroid/text/style/URLSpan;)V

    .line 73
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method static synthetic b(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/a$d;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/ui/a;->h:Lio/dcloud/common/ui/a$d;

    return-object p0
.end method

.method static synthetic c(Lio/dcloud/common/ui/a;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/common/ui/a;->g:Z

    return p0
.end method

.method static synthetic d(Lio/dcloud/common/ui/a;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/ui/a;->f:I

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lio/dcloud/common/ui/a$e;)Ljava/lang/CharSequence;
    .registers 7

    .line 10
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 11
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result p1

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 13
    array-length v1, p1

    :goto_17
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    .line 14
    invoke-direct {p0, v0, v3, p2}, Lio/dcloud/common/ui/a;->a(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;Lio/dcloud/common/ui/a$e;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_21
    return-object v0
.end method

.method public a()V
    .registers 2

    .line 74
    iget-object v0, p0, Lio/dcloud/common/ui/a;->b:Lio/dcloud/common/ui/a$c;

    if-eqz v0, :cond_a

    .line 75
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lio/dcloud/common/ui/a;->b:Lio/dcloud/common/ui/a$c;

    :cond_a
    return-void
.end method

.method public a(I)V
    .registers 2

    if-eqz p1, :cond_4

    .line 6
    iput p1, p0, Lio/dcloud/common/ui/a;->f:I

    :cond_4
    return-void
.end method

.method public a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;ZLio/dcloud/common/ui/a$d;)V
    .registers 4

    .line 7
    iput-object p1, p0, Lio/dcloud/common/ui/a;->c:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    .line 8
    iput-boolean p2, p0, Lio/dcloud/common/ui/a;->g:Z

    .line 9
    iput-object p3, p0, Lio/dcloud/common/ui/a;->h:Lio/dcloud/common/ui/a$d;

    return-void
.end method

.method public a(Lio/dcloud/common/ui/b$b;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lio/dcloud/common/ui/a;->d:Lio/dcloud/common/ui/b$b;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 5
    iput-boolean p1, p0, Lio/dcloud/common/ui/a;->e:Z

    return-void
.end method

.method public b()Lio/dcloud/common/ui/b$b;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/dcloud/common/ui/a;->d:Lio/dcloud/common/ui/b$b;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 2
    iget-boolean v0, p0, Lio/dcloud/common/ui/a;->e:Z

    return v0
.end method

.method public d()V
    .registers 3

    .line 2
    new-instance v0, Lio/dcloud/common/ui/a$c;

    iget-object v1, p0, Lio/dcloud/common/ui/a;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lio/dcloud/common/ui/a$c;-><init>(Lio/dcloud/common/ui/a;Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/common/ui/a;->b:Lio/dcloud/common/ui/a$c;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    iget-object v0, p0, Lio/dcloud/common/ui/a;->b:Lio/dcloud/common/ui/a$c;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    iget-object v0, p0, Lio/dcloud/common/ui/a;->b:Lio/dcloud/common/ui/a$c;

    invoke-static {v0}, Lio/dcloud/common/ui/a$c;->a(Lio/dcloud/common/ui/a$c;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/ui/a;->b:Lio/dcloud/common/ui/a$c;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

###### Class io.dcloud.common.ui.a.C0033a (io.dcloud.common.ui.a$a)
.class Lio/dcloud/common/ui/a$a;
.super Lio/dcloud/common/ui/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/a;->a(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;Lio/dcloud/common/ui/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/text/style/URLSpan;

.field final synthetic c:Lio/dcloud/common/ui/a;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a;Lio/dcloud/common/ui/a$e;Landroid/text/style/URLSpan;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$a;->c:Lio/dcloud/common/ui/a;

    iput-object p3, p0, Lio/dcloud/common/ui/a$a;->b:Landroid/text/style/URLSpan;

    invoke-direct {p0, p1, p2}, Lio/dcloud/common/ui/a$b;-><init>(Lio/dcloud/common/ui/a;Lio/dcloud/common/ui/a$e;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/ui/a$a;->c:Lio/dcloud/common/ui/a;

    iget-object v0, v0, Lio/dcloud/common/ui/a;->a:Landroid/content/Context;

    const-class v1, Lio/dcloud/WebviewActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lio/dcloud/common/ui/a$a;->b:Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_af

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_af

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_af

    const-string v1, "HTTP://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_af

    const-string v1, "HTTPS://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_af

    const-string v1, "./"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/www/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {}, Lio/dcloud/common/ui/b;->a()Lio/dcloud/common/ui/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/ui/b;->b()Z

    move-result v1

    if-nez v1, :cond_93

    .line 22
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a4

    .line 30
    :cond_93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a4
    const-string v1, "isLocalHtml"

    const/4 v2, 0x1

    .line 34
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "isNoPermissionAllowParam"

    .line 36
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_af
    const-string v1, "url"

    .line 40
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "ANIM"

    const-string v1, "POP"

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v0, p0, Lio/dcloud/common/ui/a$a;->c:Lio/dcloud/common/ui/a;

    iget-object v0, v0, Lio/dcloud/common/ui/a;->a:Landroid/content/Context;

    sget v1, Lio/dcloud/base/R$anim;->dcloud_pop_in:I

    sget v2, Lio/dcloud/base/R$anim;->dcloud_pop_in_out:I

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lio/dcloud/common/ui/a$a;->c:Lio/dcloud/common/ui/a;

    iget-object v1, v1, Lio/dcloud/common/ui/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e3} :catch_e3

    :catch_e3
    return-void
.end method

###### Class io.dcloud.common.ui.a.b (io.dcloud.common.ui.a$b)
.class public abstract Lio/dcloud/common/ui/a$b;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field a:Lio/dcloud/common/ui/a$e;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a;Lio/dcloud/common/ui/a$e;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    iput-object p2, p0, Lio/dcloud/common/ui/a$b;->a:Lio/dcloud/common/ui/a$e;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/ui/a$b;->a:Lio/dcloud/common/ui/a$e;

    if-eqz v0, :cond_14

    .line 4
    iget-boolean v0, v0, Lio/dcloud/common/ui/a$e;->b:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/ui/a$b;->a:Lio/dcloud/common/ui/a$e;

    iget v0, v0, Lio/dcloud/common/ui/a$e;->a:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1e

    :cond_14
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    const v0, -0xffff01

    .line 10
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_1e
    return-void
.end method

###### Class io.dcloud.common.ui.a.c (io.dcloud.common.ui.a$c)
.class Lio/dcloud/common/ui/a$c;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/LinearLayout;

.field final synthetic g:Lio/dcloud/common/ui/a;


# direct methods
.method public constructor <init>(Lio/dcloud/common/ui/a;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    .line 2
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 4
    iput-object p2, p0, Lio/dcloud/common/ui/a$c;->a:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Lio/dcloud/common/ui/a$c;->c()V

    .line 7
    invoke-direct {p0}, Lio/dcloud/common/ui/a$c;->a()V

    .line 9
    iget-object p1, p0, Lio/dcloud/common/ui/a$c;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 10
    iget-object p1, p0, Lio/dcloud/common/ui/a$c;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    :cond_24
    const-string p1, ""

    .line 12
    :goto_26
    invoke-static {p1}, Lio/dcloud/common/ui/a$f;->a(Ljava/lang/String;)Lio/dcloud/common/ui/a$f;

    move-result-object p1

    .line 13
    iget-boolean p1, p1, Lio/dcloud/common/ui/a$f;->a:Z

    if-eqz p1, :cond_36

    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    :cond_36
    return-void
.end method

.method private a()V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    new-instance v1, Lio/dcloud/common/ui/a$c$d;

    invoke-direct {v1, p0}, Lio/dcloud/common/ui/a$c$d;-><init>(Lio/dcloud/common/ui/a$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    new-instance v1, Lio/dcloud/common/ui/a$c$e;

    invoke-direct {v1, p0}, Lio/dcloud/common/ui/a$c$e;-><init>(Lio/dcloud/common/ui/a$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/common/ui/a$c;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/ui/a$c;->b()V

    return-void
.end method

.method private b()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    new-instance v1, Lio/dcloud/common/ui/a$c$a;

    invoke-direct {v1, p0}, Lio/dcloud/common/ui/a$c$a;-><init>(Lio/dcloud/common/ui/a$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->c(Lio/dcloud/common/ui/a;)Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "left"

    const/16 v3, 0xf

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v0, :cond_e7

    .line 12
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 13
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v6}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v6

    iget-object v6, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v6, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->title:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_3a
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 19
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 20
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 23
    :cond_5c
    invoke-static {v4}, Lio/dcloud/common/ui/a$e;->a(Ljava/lang/String;)Lio/dcloud/common/ui/a$e;

    move-result-object v0

    .line 26
    iget-object v4, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 27
    iget-object v4, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 28
    iget-object v3, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v4}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v6

    iget-object v6, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v6, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->message:Ljava/lang/String;

    invoke-virtual {v4, v6, v0}, Lio/dcloud/common/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/ui/a$e;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v3, v2}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 33
    :cond_8c
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonAccept:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 34
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    iget-object v2, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v2}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonAccept:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_b0
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonRefuse:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 40
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    iget-object v1, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v1}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonRefuse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    new-instance v1, Lio/dcloud/common/ui/a$c$b;

    invoke-direct {v1, p0}, Lio/dcloud/common/ui/a$c$b;-><init>(Lio/dcloud/common/ui/a$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1a0

    .line 51
    :cond_e0
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1a0

    .line 56
    :cond_e7
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_102

    .line 57
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v6}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v6

    iget-object v6, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->title:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_102
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_150

    .line 63
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_122

    .line 64
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    :cond_122
    invoke-static {v4}, Lio/dcloud/common/ui/a$e;->a(Ljava/lang/String;)Lio/dcloud/common/ui/a$e;

    move-result-object v0

    .line 70
    iget-object v4, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 71
    iget-object v4, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 72
    iget-object v3, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v4}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v6

    iget-object v6, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->message:Ljava/lang/String;

    invoke-virtual {v4, v6, v0}, Lio/dcloud/common/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/ui/a$e;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v3, v2}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    :cond_150
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonAccept:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_170

    .line 79
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    iget-object v2, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v2}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonAccept:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_170
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonRefuse:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19b

    .line 85
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    iget-object v1, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v1}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonRefuse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    new-instance v1, Lio/dcloud/common/ui/a$c$c;

    invoke-direct {v1, p0}, Lio/dcloud/common/ui/a$c$c;-><init>(Lio/dcloud/common/ui/a$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1a0

    .line 96
    :cond_19b
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    :goto_1a0
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    if-eqz v0, :cond_296

    .line 104
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->backgroundColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_207

    .line 107
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->borderRadius:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d5

    .line 108
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->borderRadius:Ljava/lang/String;

    goto :goto_1d7

    :cond_1d5
    const-string v0, "10px"

    :goto_1d7
    const/4 v1, -0x1

    .line 113
    :try_start_1d8
    iget-object v2, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v2}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->backgroundColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1e6} :catch_1e6

    .line 118
    :catch_1e6
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 119
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x1

    const/16 v3, 0xa

    .line 120
    invoke-static {v0, v1, v3}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v0

    .line 121
    iget-object v1, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    iget-object v3, p0, Lio/dcloud/common/ui/a$c;->a:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v1, v3, v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 123
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_207
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->title:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_22d

    .line 131
    :try_start_215
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->title:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_215 .. :try_end_225} :catch_226

    goto :goto_228

    :catch_226
    const/high16 v0, -0x1000000

    .line 135
    :goto_228
    iget-object v2, p0, Lio/dcloud/common/ui/a$c;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    :cond_22d
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    if-eqz v0, :cond_263

    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_263

    .line 141
    :try_start_24b
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_25b
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_25b} :catch_25c

    goto :goto_25e

    :catch_25c
    const/high16 v0, -0x1000000

    .line 146
    :goto_25e
    iget-object v2, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 149
    :cond_263
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    if-eqz v0, :cond_296

    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_296

    .line 152
    :try_start_281
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_291
    .catch Ljava/lang/Exception; {:try_start_281 .. :try_end_291} :catch_291

    .line 156
    :catch_291
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_296
    return-void
.end method

.method private c()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v1}, Lio/dcloud/common/ui/a;->d(Lio/dcloud/common/ui/a;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 5
    sget v1, Lio/dcloud/base/R$id;->btn_custom_privacy_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    .line 6
    sget v1, Lio/dcloud/base/R$id;->btn_custom_privacy_sure:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    .line 7
    sget v1, Lio/dcloud/base/R$id;->tv_privacy_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    .line 8
    sget v1, Lio/dcloud/base/R$id;->tv_custom_privacy_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/dcloud/common/ui/a$c;->b:Landroid/widget/TextView;

    .line 9
    sget v1, Lio/dcloud/base/R$id;->ll_content_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/dcloud/common/ui/a$c;->f:Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {p0}, Lio/dcloud/common/ui/a$c;->d()V

    return-void
.end method


# virtual methods
.method public d()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/dcloud/common/ui/a$c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2e

    .line 5
    iget-object v1, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double v2, v2, v4

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto :goto_3d

    .line 7
    :cond_2e
    iget-object v1, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v4

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    :goto_3d
    return-void
.end method

###### Class io.dcloud.common.ui.a.c.ViewOnClickListenerC0034a (io.dcloud.common.ui.a$c$a)
.class Lio/dcloud/common/ui/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/a$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/a$c;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$c$a;->a:Lio/dcloud/common/ui/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$a;->a:Lio/dcloud/common/ui/a$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$a;->a:Lio/dcloud/common/ui/a$c;

    iget-object p1, p1, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {p1}, Lio/dcloud/common/ui/a;->b(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/a$d;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/common/ui/a$c$a;->a:Lio/dcloud/common/ui/a$c;

    iget-object v0, v0, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->version:Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/dcloud/common/ui/a$d;->a(Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.ui.a.c.b (io.dcloud.common.ui.a$c$b)
.class Lio/dcloud/common/ui/a$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/a$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/a$c;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$c$b;->a:Lio/dcloud/common/ui/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$b;->a:Lio/dcloud/common/ui/a$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$b;->a:Lio/dcloud/common/ui/a$c;

    iget-object p1, p1, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {p1}, Lio/dcloud/common/ui/a;->b(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/a$d;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/ui/a$d;->onCancel()V

    return-void
.end method

###### Class io.dcloud.common.ui.a.c.ViewOnClickListenerC0035c (io.dcloud.common.ui.a$c$c)
.class Lio/dcloud/common/ui/a$c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/a$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/a$c;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$c$c;->a:Lio/dcloud/common/ui/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$c;->a:Lio/dcloud/common/ui/a$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$c;->a:Lio/dcloud/common/ui/a$c;

    iget-object p1, p1, Lio/dcloud/common/ui/a$c;->g:Lio/dcloud/common/ui/a;

    invoke-static {p1}, Lio/dcloud/common/ui/a;->b(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/a$d;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/ui/a$d;->onCancel()V

    return-void
.end method

###### Class io.dcloud.common.ui.a.c.d (io.dcloud.common.ui.a$c$d)
.class Lio/dcloud/common/ui/a$c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/a$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/a$c;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$c$d;->a:Lio/dcloud/common/ui/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$d;->a:Lio/dcloud/common/ui/a$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

###### Class io.dcloud.common.ui.a.c.e (io.dcloud.common.ui.a$c$e)
.class Lio/dcloud/common/ui/a$c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/a$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/a$c;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$c$e;->a:Lio/dcloud/common/ui/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$e;->a:Lio/dcloud/common/ui/a$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

###### Class io.dcloud.common.ui.a.d (io.dcloud.common.ui.a$d)
.class public interface abstract Lio/dcloud/common/ui/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract onCancel()V
.end method

###### Class io.dcloud.common.ui.a.e (io.dcloud.common.ui.a$e)
.class public Lio/dcloud/common/ui/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:I

.field public b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lio/dcloud/common/ui/a$e;
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/common/ui/a$e;

    invoke-direct {v0}, Lio/dcloud/common/ui/a$e;-><init>()V

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    .line 6
    :cond_c
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    const-string v1, "linkLine"

    .line 8
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lio/dcloud/common/ui/a$e;->b:Z

    const-string v1, "linkColor"

    .line 9
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lio/dcloud/common/ui/a$e;->a:I

    return-object v0
.end method

###### Class io.dcloud.common.ui.a.f (io.dcloud.common.ui.a$f)
.class public Lio/dcloud/common/ui/a$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/ui/a$f;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lio/dcloud/common/ui/a$f;
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/common/ui/a$f;

    invoke-direct {v0}, Lio/dcloud/common/ui/a$f;-><init>()V

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    .line 6
    :cond_c
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    const-string v1, "fullscreen"

    .line 7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 8
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lio/dcloud/common/ui/a$f;->a:Z

    :cond_22
    return-object v0
.end method
