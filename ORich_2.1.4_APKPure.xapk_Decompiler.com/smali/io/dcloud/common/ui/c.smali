###### Class io.dcloud.common.ui.c (io.dcloud.common.ui.c)
.class public Lio/dcloud/common/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lio/dcloud/common/ui/c;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/ui/c;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lio/dcloud/common/ui/c;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/ui/c;->b:Lio/dcloud/common/ui/c;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/common/ui/c;

    invoke-direct {v0, p0}, Lio/dcloud/common/ui/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/dcloud/common/ui/c;->b:Lio/dcloud/common/ui/c;

    .line 4
    :cond_b
    sget-object p0, Lio/dcloud/common/ui/c;->b:Lio/dcloud/common/ui/c;

    return-object p0
.end method

.method private a(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
    .registers 7

    .line 10
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 11
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 12
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 13
    new-instance v3, Lio/dcloud/common/ui/c$a;

    invoke-direct {v3, p0, p2}, Lio/dcloud/common/ui/c$a;-><init>(Lio/dcloud/common/ui/c;Landroid/text/style/URLSpan;)V

    .line 30
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 51
    new-instance p2, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lio/dcloud/common/ui/c;->a:Landroid/content/Context;

    sget v3, Lio/dcloud/base/R$style;->textAppearance:I

    invoke-direct {p2, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/16 v2, 0x21

    .line 52
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6

    .line 5
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result p1

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 8
    array-length v1, p1

    :goto_17
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    .line 9
    invoke-direct {p0, v0, v3}, Lio/dcloud/common/ui/c;->a(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_21
    return-object v0
.end method

###### Class io.dcloud.common.ui.c.a (io.dcloud.common.ui.c$a)
.class Lio/dcloud/common/ui/c$a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/c;->a(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/style/URLSpan;

.field final synthetic b:Lio/dcloud/common/ui/c;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/c;Landroid/text/style/URLSpan;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/c$a;->b:Lio/dcloud/common/ui/c;

    iput-object p2, p0, Lio/dcloud/common/ui/c$a;->a:Landroid/text/style/URLSpan;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object p1, p0, Lio/dcloud/common/ui/c$a;->a:Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v1, p0, Lio/dcloud/common/ui/c$a;->b:Lio/dcloud/common/ui/c;

    iget-object v1, v1, Lio/dcloud/common/ui/c;->a:Landroid/content/Context;

    const-class v2, Lio/dcloud/WebviewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "url"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "android.intent.action.VIEW"

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "ANIM"

    const-string v1, "POP"

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object p1, p0, Lio/dcloud/common/ui/c$a;->b:Lio/dcloud/common/ui/c;

    iget-object p1, p1, Lio/dcloud/common/ui/c;->a:Landroid/content/Context;

    sget v1, Lio/dcloud/base/R$anim;->dcloud_pop_in:I

    sget v2, Lio/dcloud/base/R$anim;->dcloud_pop_in_out:I

    invoke-static {p1, v1, v2}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    .line 10
    iget-object v1, p0, Lio/dcloud/common/ui/c$a;->b:Lio/dcloud/common/ui/c;

    iget-object v1, v1, Lio/dcloud/common/ui/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_48

    :catch_48
    return-void
.end method
