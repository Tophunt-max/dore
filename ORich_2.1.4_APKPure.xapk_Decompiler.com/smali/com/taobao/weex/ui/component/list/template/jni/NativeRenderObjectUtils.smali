###### Class com.taobao.weex.ui.component.list.template.jni.NativeRenderObjectUtils (com.taobao.weex.ui.component.list.template.jni.NativeRenderObjectUtils)
.class public Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;
.super Ljava/lang/Object;
.source "NativeRenderObjectUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeAddChildRenderObject(JJ)V
.end method

.method public static native nativeCopyRenderObject(J)J
.end method

.method public static native nativeGetRenderObject(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static native nativeLayoutRenderObject(JFF)I
.end method

.method public static native nativeRenderObjectChildCount(J)I
.end method

.method public static native nativeRenderObjectChildWaste(JZ)V
.end method

.method public static native nativeRenderObjectGetChild(JI)J
.end method

.method public static native nativeRenderObjectGetLayoutDirectionFromPathNode(J)I
.end method

.method public static native nativeRenderObjectHasNewLayout(J)Z
.end method

.method public static native nativeRenderObjectUpdateComponent(JLcom/taobao/weex/ui/component/WXComponent;)V
.end method

.method public static native nativeUpdateRenderObjectAttr(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeUpdateRenderObjectStyle(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public static updateComponentSize(Lcom/taobao/weex/ui/component/WXComponent;FFFFFF)V
    .registers 7

    .line 75
    invoke-virtual/range {p0 .. p6}, Lcom/taobao/weex/ui/component/WXComponent;->updateDemission(FFFFFF)V

    .line 76
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutOnly()V

    return-void
.end method
