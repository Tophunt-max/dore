###### Class io.dcloud.feature.nativeObj.richtext.RichTextParser (io.dcloud.feature.nativeObj.richtext.RichTextParser)
.class public Lio/dcloud/feature/nativeObj/richtext/RichTextParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static handleEndTag(Lio/dcloud/feature/nativeObj/richtext/IAssets;Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;)V
    .registers 4

    .line 1
    invoke-virtual {p3, p0, p1, p2}, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;->makeSpan(Lio/dcloud/feature/nativeObj/richtext/IAssets;Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V

    return-void
.end method

.method private static handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;
    .registers 3

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "script"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7f

    const-string v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7f

    const-string v1, "iframe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7f

    const-string v1, "style"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7f

    const-string v1, "meta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_7f

    :cond_2d
    const-string v1, "img"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 8
    new-instance v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;

    invoke-direct {v0}, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;-><init>()V

    goto :goto_7b

    :cond_3b
    const-string v1, "hr"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 10
    new-instance v0, Lio/dcloud/feature/nativeObj/richtext/dom/HrDomElement;

    invoke-direct {v0}, Lio/dcloud/feature/nativeObj/richtext/dom/HrDomElement;-><init>()V

    goto :goto_7b

    :cond_49
    const-string v1, "br"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 12
    new-instance v0, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;

    invoke-direct {v0}, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;-><init>()V

    goto :goto_7b

    :cond_57
    const-string v1, "a"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, "font"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    goto :goto_76

    .line 16
    :cond_70
    new-instance v0, Lio/dcloud/feature/nativeObj/richtext/dom/TextDomElement;

    invoke-direct {v0}, Lio/dcloud/feature/nativeObj/richtext/dom/TextDomElement;-><init>()V

    goto :goto_7b

    .line 17
    :cond_76
    :goto_76
    new-instance v0, Lio/dcloud/feature/nativeObj/richtext/dom/TextDomElement;

    invoke-direct {v0}, Lio/dcloud/feature/nativeObj/richtext/dom/TextDomElement;-><init>()V

    .line 21
    :goto_7b
    invoke-virtual {v0, p0}, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;->parseDomElement(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0

    :cond_7f
    :goto_7f
    const/4 p0, 0x0

    return-object p0
.end method

.method static makeSpannableStringBuilder(Lio/dcloud/feature/nativeObj/richtext/IAssets;Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 12

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3
    :try_start_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 5
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 7
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 8
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_1d} :catch_e8

    const/4 v3, 0x0

    move-object v4, v3

    :goto_1f
    if-eq p2, v2, :cond_ec

    if-nez p2, :cond_32

    .line 14
    :try_start_23
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Start document"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_2a} :catch_2f
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2a} :catch_2c

    goto/16 :goto_d8

    :catch_2c
    move-exception v5

    goto/16 :goto_de

    :catch_2f
    move-exception v5

    goto/16 :goto_e3

    :cond_32
    const/4 v5, 0x2

    const-string v6, ">"

    if-ne p2, v5, :cond_5d

    .line 16
    :try_start_37
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start-tag=<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    invoke-static {v1}, Lio/dcloud/feature/nativeObj/richtext/RichTextParser;->handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;

    move-result-object v3

    if-eqz v3, :cond_d8

    .line 19
    iput-object v4, v3, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;->parentDomElement:Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;

    goto :goto_97

    :cond_5d
    const/4 v5, 0x3

    if-ne p2, v5, :cond_99

    .line 23
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "end-tag=</"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v3, :cond_d8

    .line 25
    instance-of v5, v3, Lio/dcloud/feature/nativeObj/richtext/dom/TextDomElement;

    if-eqz v5, :cond_92

    instance-of v5, v3, Lio/dcloud/feature/nativeObj/richtext/dom/TextDomElement;

    if-eqz v5, :cond_95

    move-object v5, v3

    check-cast v5, Lio/dcloud/feature/nativeObj/richtext/dom/TextDomElement;

    iget-object v5, v5, Lio/dcloud/feature/nativeObj/richtext/dom/TextDomElement;->text:Ljava/lang/String;

    .line 26
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 28
    :cond_92
    invoke-static {p0, p1, v0, v3}, Lio/dcloud/feature/nativeObj/richtext/RichTextParser;->handleEndTag(Lio/dcloud/feature/nativeObj/richtext/IAssets;Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;)V

    .line 30
    :cond_95
    iget-object v3, v3, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;->parentDomElement:Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;

    :goto_97
    move-object v4, v3

    goto :goto_d8

    :cond_99
    const/4 v5, 0x4

    if-ne p2, v5, :cond_d8

    .line 34
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Text:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v3, :cond_d8

    .line 35
    instance-of v5, v3, Lio/dcloud/feature/nativeObj/richtext/dom/TextDomElement;

    if-eqz v5, :cond_d8

    .line 36
    move-object v5, v3

    check-cast v5, Lio/dcloud/feature/nativeObj/richtext/dom/TextDomElement;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lio/dcloud/feature/nativeObj/richtext/dom/TextDomElement;->text:Ljava/lang/String;

    .line 37
    move-object v5, v3

    check-cast v5, Lio/dcloud/feature/nativeObj/richtext/dom/TextDomElement;

    iget-object v5, v5, Lio/dcloud/feature/nativeObj/richtext/dom/TextDomElement;->text:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d8

    .line 38
    invoke-static {p0, p1, v0, v3}, Lio/dcloud/feature/nativeObj/richtext/RichTextParser;->handleEndTag(Lio/dcloud/feature/nativeObj/richtext/IAssets;Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;)V

    .line 42
    :cond_d8
    :goto_d8
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2
    :try_end_dc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_dc} :catch_2f
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_dc} :catch_2c

    goto/16 :goto_1f

    .line 46
    :goto_de
    :try_start_de
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1f

    .line 47
    :goto_e3
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_de .. :try_end_e6} :catch_e8

    goto/16 :goto_1f

    :catch_e8
    move-exception p0

    .line 53
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_ec
    return-object v0
.end method

.method static updateFromHTML(Lio/dcloud/feature/nativeObj/richtext/IAssets;Lio/dcloud/common/DHInterface/IWebview;Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lio/dcloud/feature/nativeObj/richtext/RichTextParser;->updateFromHTML(Lio/dcloud/feature/nativeObj/richtext/IAssets;Lio/dcloud/common/DHInterface/IWebview;Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method static updateFromHTML(Lio/dcloud/feature/nativeObj/richtext/IAssets;Lio/dcloud/common/DHInterface/IWebview;Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 11

    if-eqz p4, :cond_b9

    const-string v0, "family"

    .line 2
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 4
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_18
    const-string v0, "__onClickCallBackId__"

    .line 7
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_35

    .line 8
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 9
    invoke-interface {p0, v2}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->setClick(Z)V

    .line 10
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->setOnClickCallBackId(Ljava/lang/String;)V

    :cond_35
    const-string v0, "fontSrc"

    .line 14
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_90

    .line 15
    invoke-virtual {p4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__wap2app.ttf"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "wap2app__template/__wap2app.ttf"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6a

    goto :goto_83

    .line 23
    :cond_6a
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_83

    .line 26
    :cond_77
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    :goto_83
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-static {v0, v1}, Lio/dcloud/feature/nativeObj/NativeTypefaceFactory;->getTypeface(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 29
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_90
    const-string v0, "align"

    .line 31
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 32
    invoke-virtual {p4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "center"

    .line 33
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 34
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_b9

    :cond_a8
    const-string v0, "right"

    .line 35
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_b5

    const/4 p4, 0x5

    .line 36
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_b9

    :cond_b5
    const/4 p4, 0x3

    .line 38
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setGravity(I)V

    :cond_b9
    :goto_b9
    const-string p4, "&nbsp"

    const-string v0, " "

    .line 42
    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 43
    invoke-static {p0, p2, p3}, Lio/dcloud/feature/nativeObj/richtext/RichTextParser;->makeSpannableStringBuilder(Lio/dcloud/feature/nativeObj/richtext/IAssets;Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    .line 44
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance p3, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;

    invoke-direct {p3, p1, p5, p0}, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;-><init>(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/feature/nativeObj/richtext/IAssets;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.richtext.RichTextParser.LinkMovementMethodExt (io.dcloud.feature.nativeObj.richtext.RichTextParser$LinkMovementMethodExt)
.class public Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;
.super Landroid/text/method/LinkMovementMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/richtext/RichTextParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkMovementMethodExt"
.end annotation


# instance fields
.field downLinks:[Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

.field downTime:J

.field downX:F

.field downY:F

.field mAssets:Lio/dcloud/feature/nativeObj/richtext/IAssets;

.field mObserver:Lio/dcloud/common/DHInterface/ICallBack;

.field mWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/feature/nativeObj/richtext/IAssets;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downLinks:[Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    .line 4
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 5
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mObserver:Lio/dcloud/common/DHInterface/ICallBack;

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mAssets:Lio/dcloud/feature/nativeObj/richtext/IAssets;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downTime:J

    .line 9
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 10
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mObserver:Lio/dcloud/common/DHInterface/ICallBack;

    .line 11
    iput-object p3, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mAssets:Lio/dcloud/feature/nativeObj/richtext/IAssets;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 2
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 3
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v6

    sub-int/2addr v4, v6

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    add-int/2addr v4, v6

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    .line 10
    invoke-virtual {v6, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    int-to-float v8, v4

    .line 11
    invoke-virtual {v6, v7, v8}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v8

    .line 12
    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    .line 13
    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    int-to-float v10, v10

    .line 14
    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    .line 15
    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    int-to-float v6, v6

    .line 16
    new-instance v7, Landroid/graphics/Rect;

    float-to-int v9, v9

    float-to-int v10, v10

    float-to-int v11, v11

    float-to-int v6, v6

    invoke-direct {v7, v9, v10, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v6, "false"

    .line 17
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    const-string v5, "true"

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_125

    .line 20
    const-class v4, Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    invoke-interface {v2, v8, v8, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    if-eqz v4, :cond_123

    .line 21
    array-length v10, v4

    if-eqz v10, :cond_123

    if-ne v3, v9, :cond_d7

    .line 23
    iget-object v10, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downLinks:[Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    if-eqz v10, :cond_d3

    array-length v10, v10

    array-length v11, v4

    if-lt v10, v11, :cond_d3

    iget-object v10, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mAssets:Lio/dcloud/feature/nativeObj/richtext/IAssets;

    invoke-interface {v10}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->isClick()Z

    move-result v10

    if-nez v10, :cond_d3

    const/4 v10, 0x0

    .line 24
    :goto_7f
    array-length v11, v4

    if-ge v10, v11, :cond_d3

    .line 25
    aget-object v11, v4, v10

    .line 26
    iget-object v12, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downLinks:[Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    aget-object v12, v12, v10

    if-ne v11, v12, :cond_d0

    .line 27
    invoke-interface {v2, v11}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v12

    .line 28
    invoke-interface {v2, v11}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 29
    invoke-interface {v2, v11}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    const/16 v15, 0x12

    if-eqz v13, :cond_a3

    .line 30
    invoke-interface/range {p2 .. p2}, Landroid/text/Spannable;->length()I

    move-result v6

    if-eq v14, v6, :cond_a3

    array-length v6, v4

    if-ne v6, v9, :cond_a5

    :cond_a3
    const/16 v12, 0x12

    :cond_a5
    const/16 v6, 0x11

    if-ne v12, v6, :cond_ad

    if-lt v8, v13, :cond_ad

    if-lt v8, v14, :cond_c3

    :cond_ad
    if-ne v12, v15, :cond_b3

    if-lt v8, v13, :cond_b3

    if-le v8, v14, :cond_c3

    :cond_b3
    const/16 v6, 0x21

    if-ne v12, v6, :cond_bb

    if-le v8, v13, :cond_bb

    if-lt v8, v14, :cond_c3

    :cond_bb
    const/16 v6, 0x22

    if-ne v12, v6, :cond_d0

    if-le v8, v13, :cond_d0

    if-gt v8, v14, :cond_d0

    .line 39
    :cond_c3
    iget-object v6, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v11, v1, v6}, Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;->onClick(Landroid/view/View;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 40
    iget-object v6, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mObserver:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v6, :cond_d3

    invoke-interface {v6, v7, v11}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_d3

    :cond_d0
    add-int/lit8 v10, v10, 0x1

    goto :goto_7f

    :cond_d3
    :goto_d3
    const/4 v6, 0x0

    .line 46
    iput-object v6, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downLinks:[Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    goto :goto_10e

    :cond_d7
    if-nez v3, :cond_e8

    .line 48
    iput-object v4, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downLinks:[Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    .line 49
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downX:F

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downY:F

    goto :goto_10e

    :cond_e8
    const/4 v6, 0x2

    if-ne v3, v6, :cond_10e

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v8, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downX:F

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v8, 0x41a00000    # 20.0f

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_10b

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v10, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downY:F

    sub-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v8

    if-lez v6, :cond_10e

    :cond_10b
    const/4 v6, 0x0

    .line 53
    iput-object v6, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downLinks:[Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    :cond_10e
    :goto_10e
    const/4 v6, 0x0

    .line 56
    :goto_10f
    array-length v8, v4

    if-ge v6, v8, :cond_123

    .line 57
    aget-object v8, v4, v6

    .line 58
    invoke-interface {v8}, Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;->hasClickEvent()Z

    move-result v8

    if-eqz v8, :cond_120

    .line 59
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object v6, v4

    const/4 v4, 0x1

    goto :goto_127

    :cond_120
    add-int/lit8 v6, v6, 0x1

    goto :goto_10f

    :cond_123
    move-object v6, v4

    goto :goto_126

    :cond_125
    const/4 v6, 0x0

    :goto_126
    const/4 v4, 0x0

    .line 67
    :goto_127
    iget-object v8, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mAssets:Lio/dcloud/feature/nativeObj/richtext/IAssets;

    invoke-interface {v8}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->isClick()Z

    move-result v8

    if-eqz v8, :cond_1ce

    .line 68
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz v3, :cond_1c7

    if-eq v3, v9, :cond_13b

    const/4 v4, 0x3

    if-eq v3, v4, :cond_13b

    goto/16 :goto_1cf

    .line 76
    :cond_13b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v10, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downTime:J

    sub-long/2addr v3, v10

    const-wide/16 v10, 0x320

    cmp-long v5, v3, v10

    if-gez v5, :cond_1cf

    const-string v3, ""

    if-eqz v6, :cond_172

    .line 81
    array-length v4, v6

    if-lez v4, :cond_172

    .line 82
    aget-object v4, v6, v7

    if-eqz v4, :cond_172

    .line 84
    invoke-interface {v4}, Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;->getHref()Ljava/lang/String;

    move-result-object v5

    .line 85
    instance-of v6, v4, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;

    if-eqz v6, :cond_169

    .line 86
    check-cast v4, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;

    invoke-virtual {v4}, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;->getSrc()Ljava/lang/String;

    move-result-object v3

    const-string v4, "img"

    :goto_163
    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    goto :goto_174

    .line 88
    :cond_169
    instance-of v4, v4, Lio/dcloud/feature/nativeObj/richtext/span/AHrefSpan;

    if-eqz v4, :cond_170

    const-string v4, "a"

    goto :goto_163

    :cond_170
    move-object v4, v3

    goto :goto_174

    :cond_172
    move-object v4, v3

    move-object v5, v4

    .line 93
    :goto_174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\"tagName\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"href\":\""

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"src\":\""

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    iget-object v10, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mAssets:Lio/dcloud/feature/nativeObj/richtext/IAssets;

    invoke-interface {v4}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->getOnClickCallBackId()Ljava/lang/String;

    move-result-object v11

    sget v13, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v12, v3

    invoke-static/range {v10 .. v15}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 95
    iget-object v4, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getOpener()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    if-eqz v4, :cond_1cf

    .line 96
    iget-object v4, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getOpener()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v10

    iget-object v4, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mAssets:Lio/dcloud/feature/nativeObj/richtext/IAssets;

    invoke-interface {v4}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->getOnClickCallBackId()Ljava/lang/String;

    move-result-object v11

    sget v13, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v12, v3

    invoke-static/range {v10 .. v15}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_1cf

    .line 97
    :cond_1c7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downTime:J

    goto :goto_1cf

    :cond_1ce
    move v9, v4

    :cond_1cf
    :goto_1cf
    if-eqz v9, :cond_1d2

    goto :goto_1d6

    .line 127
    :cond_1d2
    invoke-super/range {p0 .. p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_1d6
    return v9
.end method
