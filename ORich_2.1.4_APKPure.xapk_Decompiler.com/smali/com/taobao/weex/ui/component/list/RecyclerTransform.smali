###### Class com.taobao.weex.ui.component.list.RecyclerTransform (com.taobao.weex.ui.component.list.RecyclerTransform)
.class public Lcom/taobao/weex/ui/component/list/RecyclerTransform;
.super Ljava/lang/Object;
.source "RecyclerTransform.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecyclerTransform"

.field public static final TRANSFORM:Ljava/lang/String; = "transform"

.field private static final transformPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "([a-z]+)\\(([0-9\\.]+),?([0-9\\.]+)?\\)"

    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/ui/component/list/RecyclerTransform;->transformPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseTransforms(ILjava/lang/String;)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .registers 18

    move-object/from16 v0, p1

    const-string v1, "Invaild transform expression:"

    const-string v2, "RecyclerTransform"

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_a
    sget-object v3, Lcom/taobao/weex/ui/component/list/RecyclerTransform;->transformPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 60
    :goto_17
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_c5

    .line 61
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v13, -0x1

    .line 64
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, 0x3

    const/4 v4, 0x2

    sparse-switch v14, :sswitch_data_d4

    goto :goto_58

    :sswitch_31
    const-string v14, "translate"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v13, 0x1

    goto :goto_58

    :sswitch_3b
    const-string v14, "scale"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v13, 0x0

    goto :goto_58

    :sswitch_45
    const-string v14, "rotate"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v13, 0x3

    goto :goto_58

    :sswitch_4f
    const-string v14, "opacity"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v13, 0x2

    :cond_58
    :goto_58
    if-eqz v13, :cond_99

    if-eq v13, v5, :cond_86

    if-eq v13, v4, :cond_7d

    if-eq v13, v15, :cond_73

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 77
    :cond_73
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v10, v0

    goto :goto_17

    .line 74
    :cond_7d
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    goto :goto_17

    .line 70
    :cond_86
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 71
    invoke-virtual {v3, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v9, v0

    goto/16 :goto_17

    .line 66
    :cond_99
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 67
    invoke-virtual {v3, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12
    :try_end_a9
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_a9} :catch_ab

    goto/16 :goto_17

    :catch_ab
    move-exception v0

    const-string v4, ""

    .line 84
    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 88
    :cond_c5
    new-instance v0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;

    move/from16 v1, p0

    if-ne v1, v5, :cond_cd

    const/4 v6, 0x1

    goto :goto_ce

    :cond_cd
    const/4 v6, 0x0

    :goto_ce
    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;-><init>(ZFIIIFF)V

    return-object v0

    nop

    :sswitch_data_d4
    .sparse-switch
        -0x4b8807f5 -> :sswitch_4f
        -0x372522a5 -> :sswitch_45
        0x683094a -> :sswitch_3b
        0x3ec0f14e -> :sswitch_31
    .end sparse-switch
.end method
