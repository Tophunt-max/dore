###### Class io.dcloud.g.b.a (io.dcloud.g.b.a)
.class public Lio/dcloud/g/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lio/dcloud/g/b/a;


# instance fields
.field private volatile a:Landroid/content/Context;

.field private b:Z

.field private c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/g/b/a;->b:Z

    .line 19
    new-instance v0, Lio/dcloud/g/b/a$a;

    invoke-direct {v0, p0}, Lio/dcloud/g/b/a$a;-><init>(Lio/dcloud/g/b/a;)V

    iput-object v0, p0, Lio/dcloud/g/b/a;->c:Landroid/os/Handler;

    .line 20
    sget-object v0, Lio/dcloud/g/b/a;->d:Lio/dcloud/g/b/a;

    if-nez v0, :cond_12

    return-void

    .line 21
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x3

    .line 106
    invoke-static {v0}, Lio/dcloud/g/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, ""

    if-nez v0, :cond_12

    .line 108
    invoke-direct {p0, v1}, Lio/dcloud/g/b/a;->a(I)V

    return-object v2

    .line 111
    :cond_12
    invoke-static {}, Lio/dcloud/h/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/dcloud/h/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    .line 113
    invoke-direct {p0, v1}, Lio/dcloud/g/b/a;->a(I)V

    return-object v2

    .line 117
    :cond_24
    :try_start_24
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_28} :catch_49

    const-string v1, "da"

    const/4 v3, 0x2

    :try_start_2b
    new-array v4, v3, [Ljava/lang/Class;

    .line 118
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    .line 119
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_48} :catch_49

    return-object p1

    :catch_49
    return-object v2
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 9

    const/4 v0, 0x3

    .line 120
    invoke-static {v0}, Lio/dcloud/g/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 122
    invoke-direct {p0, v1}, Lio/dcloud/g/b/a;->a(I)V

    return-object v2

    .line 125
    :cond_11
    invoke-static {}, Lio/dcloud/h/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/dcloud/h/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    .line 127
    invoke-direct {p0, v1}, Lio/dcloud/g/b/a;->a(I)V

    return-object v2

    .line 131
    :cond_23
    :try_start_23
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_40

    const-string v1, "dah"

    const/4 v3, 0x1

    :try_start_2a
    new-array v4, v3, [Ljava/lang/Class;

    .line 132
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v6

    .line 133
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3f} :catch_40

    return-object p1

    :catch_40
    return-object v2
.end method

.method private a()V
    .registers 17

    move-object/from16 v0, p0

    .line 33
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/g/b/a;->e()Ljava/util/List;

    move-result-object v1

    .line 34
    invoke-static {}, Lio/dcloud/g/c/b;->a()Ljava/util/List;

    move-result-object v2

    .line 37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "csj"

    const/4 v6, 0x1

    if-eqz v3, :cond_38

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/h/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/h/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_38

    :cond_35
    const/4 v3, 0x0

    const/4 v7, 0x0

    goto :goto_42

    .line 38
    :cond_38
    :goto_38
    invoke-direct/range {p0 .. p0}, Lio/dcloud/g/b/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v7, "UNIAD_CSJ_APPID"

    .line 39
    invoke-direct {v0, v7, v4}, Lio/dcloud/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 41
    :goto_42
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, "gdt"

    const/4 v10, 0x0

    if-eqz v8, :cond_5f

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lio/dcloud/h/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    goto :goto_5f

    :cond_5c
    const/4 v8, 0x0

    const/4 v11, 0x0

    goto :goto_69

    .line 42
    :cond_5f
    :goto_5f
    invoke-direct/range {p0 .. p0}, Lio/dcloud/g/b/a;->c()Ljava/lang/String;

    move-result-object v8

    const-string v11, "UNIAD_GDT_APPID"

    .line 43
    invoke-direct {v0, v11, v9}, Lio/dcloud/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 45
    :goto_69
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    const-string v14, "ks"

    if-eqz v12, :cond_86

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/h/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    goto :goto_86

    :cond_83
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_90

    .line 46
    :cond_86
    :goto_86
    invoke-direct/range {p0 .. p0}, Lio/dcloud/g/b/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UNIAD_KS_APPID"

    .line 47
    invoke-direct {v0, v2, v14}, Lio/dcloud/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    :goto_90
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v15, 0x6

    if-nez v12, :cond_ac

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ac

    .line 53
    invoke-direct {v0, v4}, Lio/dcloud/g/b/a;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-direct {v0, v3, v7}, Lio/dcloud/g/b/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 54
    invoke-direct {v0, v15}, Lio/dcloud/g/b/a;->a(I)V

    const/4 v3, 0x0

    goto :goto_ad

    :cond_ac
    const/4 v3, 0x1

    .line 58
    :goto_ad
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c8

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c8

    .line 59
    invoke-direct {v0, v9}, Lio/dcloud/g/b/a;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-direct {v0, v8, v7}, Lio/dcloud/g/b/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v7

    if-nez v7, :cond_c8

    .line 60
    invoke-direct {v0, v15}, Lio/dcloud/g/b/a;->a(I)V

    const/4 v7, 0x0

    goto :goto_c9

    :cond_c8
    const/4 v7, 0x1

    .line 65
    :goto_c9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e4

    .line 66
    invoke-direct {v0, v14}, Lio/dcloud/g/b/a;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/dcloud/g/b/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v1

    if-nez v1, :cond_e4

    .line 67
    invoke-direct {v0, v15}, Lio/dcloud/g/b/a;->a(I)V

    const/4 v1, 0x0

    goto :goto_e5

    :cond_e4
    const/4 v1, 0x1

    :goto_e5
    if-eqz v3, :cond_eb

    if-eqz v7, :cond_eb

    if-nez v1, :cond_16b

    .line 72
    :cond_eb
    iget-boolean v2, v0, Lio/dcloud/g/b/a;->b:Z

    if-nez v2, :cond_16b

    .line 74
    :try_start_ef
    invoke-static {}, Lio/dcloud/h/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lio/dcloud/h/a;->a()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x7

    invoke-static {v11}, Lio/dcloud/g/c/b;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v2, v8, v11}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 77
    array-length v8, v2

    const/4 v11, 0x0

    :goto_10e
    if-ge v11, v8, :cond_122

    aget-object v12, v2, v11

    .line 78
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v5, "pr"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11f

    goto :goto_123

    :cond_11f
    add-int/lit8 v11, v11, 0x1

    goto :goto_10e

    :cond_122
    const/4 v12, 0x0

    .line 83
    :goto_123
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_128} :catch_16b

    const-string v5, "t"

    .line 84
    :try_start_12a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_136} :catch_16b

    .line 87
    :try_start_136
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "r"

    const-string v15, "1"

    .line 88
    invoke-virtual {v8, v11, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v3, :cond_147

    .line 90
    invoke-virtual {v5, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_147
    if-nez v7, :cond_14c

    .line 93
    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14c
    if-nez v1, :cond_151

    .line 96
    invoke-virtual {v5, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_151} :catch_151

    :catch_151
    :cond_151
    const-string v1, "rad"

    .line 99
    :try_start_153
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v12, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v13, [Ljava/lang/Object;

    .line 101
    iget-object v3, v0, Lio/dcloud/g/b/a;->a:Landroid/content/Context;

    aput-object v3, v1, v10

    aput-object v2, v1, v6

    const/4 v2, 0x0

    invoke-virtual {v12, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iput-boolean v6, v0, Lio/dcloud/g/b/a;->b:Z
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_16b} :catch_16b

    :catch_16b
    :cond_16b
    return-void
.end method

.method private a(I)V
    .registers 8

    .line 134
    iget-object v0, p0, Lio/dcloud/g/b/a;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 136
    :cond_5
    new-instance v0, Lio/dcloud/feature/ui/nativeui/b;

    iget-object v1, p0, Lio/dcloud/g/b/a;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/nativeui/b;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 137
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lio/dcloud/g/b/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 139
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 140
    iget-object v3, p0, Lio/dcloud/g/b/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lio/dcloud/common/ui/c;->a(Landroid/content/Context;)Lio/dcloud/common/ui/c;

    move-result-object v3

    invoke-static {}, Lio/dcloud/h/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lio/dcloud/h/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lio/dcloud/g/c/b;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v4, v5, p1}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lio/dcloud/common/ui/c;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lio/dcloud/g/b/a;->a:Landroid/content/Context;

    invoke-direct {p1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    invoke-virtual {v0, p1, v1}, Lio/dcloud/feature/ui/nativeui/b;->a(Landroid/view/View;Landroid/widget/TextView;)V

    .line 144
    invoke-virtual {v0, v2}, Lio/dcloud/feature/ui/nativeui/b;->setDuration(I)V

    .line 145
    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Toast;->getYOffset()I

    move-result v3

    const/16 v4, 0x50

    invoke-virtual {v0, v4, v2, v3}, Lio/dcloud/feature/ui/nativeui/b;->setGravity(III)V

    .line 146
    iget-object v2, p0, Lio/dcloud/g/b/a;->a:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lio/dcloud/common/adapter/util/CanvasHelper;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 147
    iget-object v3, p0, Lio/dcloud/g/b/a;->a:Landroid/content/Context;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v3, v4}, Lio/dcloud/common/adapter/util/CanvasHelper;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 148
    invoke-virtual {p1, v2, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 149
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    int-to-float v3, v3

    .line 150
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, 0x0

    .line 151
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v3, -0x4e000000

    .line 152
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 153
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x11

    .line 154
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const-string p1, "#ffffffff"

    .line 155
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    invoke-virtual {v0}, Lio/dcloud/feature/ui/nativeui/b;->show()V

    return-void
.end method

.method static synthetic a(Lio/dcloud/g/b/a;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/g/b/a;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONArray;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_1f

    .line 103
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1f

    const/4 v1, 0x0

    .line 104
    :goto_a
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 105
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1f
    return v0
.end method

.method private b()Ljava/lang/String;
    .registers 7

    const-string v0, ""

    const/4 v1, 0x1

    .line 1
    :try_start_3
    invoke-static {v1}, Lio/dcloud/g/c/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x4

    if-nez v1, :cond_12

    .line 3
    invoke-direct {p0, v2}, Lio/dcloud/g/b/a;->a(I)V

    return-object v0

    .line 6
    :cond_12
    invoke-static {}, Lio/dcloud/h/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/dcloud/h/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    .line 8
    invoke-direct {p0, v2}, Lio/dcloud/g/b/a;->a(I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_84

    return-object v0

    .line 12
    :cond_24
    :try_start_24
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_28} :catch_46

    .line 25
    :try_start_28
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_84

    const-string v3, "NM_getCustomInfo"

    const/4 v4, 0x0

    :try_start_2f
    new-array v5, v4, [Ljava/lang/Class;

    .line 26
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "app_id"

    .line 28
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_45} :catch_84

    return-object v1

    :catch_46
    const/4 v1, 0x0

    .line 29
    :try_start_47
    invoke-static {}, Lio/dcloud/h/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lio/dcloud/h/a;->a()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v4}, Lio/dcloud/g/c/b;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_61} :catch_61

    .line 32
    :catch_61
    :try_start_61
    invoke-static {}, Lio/dcloud/h/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lio/dcloud/h/a;->a()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v4}, Lio/dcloud/g/c/b;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    if-nez v1, :cond_84

    .line 34
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_84} :catch_84

    :catch_84
    :cond_84
    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lio/dcloud/g/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, ""

    if-nez v0, :cond_12

    .line 3
    invoke-direct {p0, v1}, Lio/dcloud/g/b/a;->a(I)V

    return-object v2

    .line 6
    :cond_12
    invoke-static {}, Lio/dcloud/h/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/dcloud/h/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    .line 8
    invoke-direct {p0, v1}, Lio/dcloud/g/b/a;->a(I)V

    return-object v2

    .line 12
    :cond_24
    :try_start_24
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_28} :catch_5d

    const-string v1, "getInstance"

    const/4 v3, 0x0

    :try_start_2b
    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_38} :catch_5d

    const-string v4, "getAppStatus"

    :try_start_3a
    new-array v5, v3, [Ljava/lang/Class;

    .line 15
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4c} :catch_5d

    const-string v4, "getAPPID"

    :try_start_4e
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5c} :catch_5d

    return-object v0

    :catch_5d
    :cond_5d
    return-object v2
.end method

.method private d()Ljava/lang/String;
    .registers 6

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Lio/dcloud/g/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, ""

    if-nez v0, :cond_13

    .line 3
    invoke-direct {p0, v1}, Lio/dcloud/g/b/a;->a(I)V

    return-object v2

    .line 6
    :cond_13
    invoke-static {}, Lio/dcloud/h/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/dcloud/h/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    .line 8
    invoke-direct {p0, v1}, Lio/dcloud/g/b/a;->a(I)V

    return-object v2

    .line 12
    :cond_25
    :try_start_25
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_29} :catch_3c

    const-string v1, "getAppId"

    const/4 v3, 0x0

    :try_start_2c
    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3b} :catch_3c

    return-object v0

    :catch_3c
    return-object v2
.end method

.method public static f()Lio/dcloud/g/b/a;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/g/b/a;->d:Lio/dcloud/g/b/a;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lio/dcloud/g/b/a;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lio/dcloud/g/b/a;->d:Lio/dcloud/g/b/a;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lio/dcloud/g/b/a;

    invoke-direct {v1}, Lio/dcloud/g/b/a;-><init>()V

    sput-object v1, Lio/dcloud/g/b/a;->d:Lio/dcloud/g/b/a;

    .line 6
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 8
    :cond_17
    :goto_17
    sget-object v0, Lio/dcloud/g/b/a;->d:Lio/dcloud/g/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 7

    .line 2
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefLocalLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r`%kf"

    invoke-static {v1}, Lio/dcloud/h/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    .line 6
    :cond_17
    iput-object p1, p0, Lio/dcloud/g/b/a;->a:Landroid/content/Context;

    .line 8
    :try_start_19
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result p1

    if-nez p1, :cond_57

    .line 9
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const/4 p1, 0x1

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3a

    iget-object v0, p0, Lio/dcloud/g/b/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_3a

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lio/dcloud/g/b/a;->c:Landroid/os/Handler;

    .line 13
    :cond_3a
    iget-object v0, p0, Lio/dcloud/g/b/a;->c:Landroid/os/Handler;

    if-nez v0, :cond_45

    .line 14
    new-instance v0, Lio/dcloud/g/b/a$b;

    invoke-direct {v0, p0}, Lio/dcloud/g/b/a$b;-><init>(Lio/dcloud/g/b/a;)V

    iput-object v0, p0, Lio/dcloud/g/b/a;->c:Landroid/os/Handler;

    .line 27
    :cond_45
    iget-object v0, p0, Lio/dcloud/g/b/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_57

    .line 28
    iget-object v0, p0, Lio/dcloud/g/b/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_57
    :goto_57
    return-void
.end method

.method public e()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_5
    iget-object v1, p0, Lio/dcloud/g/b/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/g/b/a;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 7
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_28

    .line 8
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    .line 9
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_28

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :catch_28
    :cond_28
    return-object v0
.end method

.method public g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/g/b/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lio/dcloud/g/b/a;->b:Z

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/dcloud/g/b/a;->c:Landroid/os/Handler;

    :cond_e
    return-void
.end method

###### Class io.dcloud.g.b.a.HandlerC0063a (io.dcloud.g.b.a$a)
.class Lio/dcloud/g/b/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/g/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/g/b/a;


# direct methods
.method constructor <init>(Lio/dcloud/g/b/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/g/b/a$a;->a:Lio/dcloud/g/b/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object p1, p0, Lio/dcloud/g/b/a$a;->a:Lio/dcloud/g/b/a;

    invoke-static {p1}, Lio/dcloud/g/b/a;->a(Lio/dcloud/g/b/a;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    .line 3
    :catch_5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

###### Class io.dcloud.g.b.a.b (io.dcloud.g.b.a$b)
.class Lio/dcloud/g/b/a$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/b/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/g/b/a;


# direct methods
.method constructor <init>(Lio/dcloud/g/b/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/g/b/a$b;->a:Lio/dcloud/g/b/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object p1, p0, Lio/dcloud/g/b/a$b;->a:Lio/dcloud/g/b/a;

    invoke-static {p1}, Lio/dcloud/g/b/a;->a(Lio/dcloud/g/b/a;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
