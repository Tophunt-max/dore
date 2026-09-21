###### Class com.taobao.weex.dom.CSSConstants (com.taobao.weex.dom.CSSConstants)
.class public Lcom/taobao/weex/dom/CSSConstants;
.super Ljava/lang/Object;
.source "CSSConstants.java"


# static fields
.field public static final UNDEFINED:F = NaNf


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUndefined(F)Z
    .registers 2

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 26
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
