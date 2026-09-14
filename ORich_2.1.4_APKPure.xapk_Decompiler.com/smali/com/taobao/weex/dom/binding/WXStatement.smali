###### Class com.taobao.weex.dom.binding.WXStatement (com.taobao.weex.dom.binding.WXStatement)
.class public Lcom/taobao/weex/dom/binding/WXStatement;
.super Landroidx/collection/ArrayMap;
.source "WXStatement.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/ArrayMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final WX_FOR:Ljava/lang/String; = "[[repeat]]"

.field public static final WX_FOR_INDEX:Ljava/lang/String; = "@index"

.field public static final WX_FOR_ITEM:Ljava/lang/String; = "@alias"

.field public static final WX_FOR_LIST:Ljava/lang/String; = "@expression"

.field public static final WX_IF:Ljava/lang/String; = "[[match]]"

.field public static final WX_ONCE:Ljava/lang/String; = "[[once]]"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Landroidx/collection/ArrayMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/collection/SimpleArrayMap;)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    return-void
.end method


# virtual methods
.method protected clone()Lcom/taobao/weex/dom/binding/WXStatement;
    .registers 2

    .line 81
    new-instance v0, Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-direct {v0, p0}, Lcom/taobao/weex/dom/binding/WXStatement;-><init>(Landroidx/collection/SimpleArrayMap;)V

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/taobao/weex/dom/binding/WXStatement;->clone()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v0

    return-object v0
.end method
