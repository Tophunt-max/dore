###### Class com.dcloud.zxing2.client.result.ExpandedProductResultParser (com.dcloud.zxing2.client.result.ExpandedProductResultParser)
.class public final Lcom/dcloud/zxing2/client/result/ExpandedProductResultParser;
.super Lcom/dcloud/zxing2/client/result/ResultParser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_a

    return-object v1

    :cond_a
    add-int/lit8 p0, p0, 0x1

    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 10
    :goto_16
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 11
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_29

    .line 13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_29
    const/16 v3, 0x30

    if-lt v2, v3, :cond_37

    const/16 v3, 0x39

    if-gt v2, v3, :cond_37

    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_37
    return-object v1

    .line 20
    :cond_38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_28

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_22

    .line 9
    invoke-static {p1, p0}, Lcom/dcloud/zxing2/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 15
    :cond_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_25
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 18
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/ExpandedProductParsedResult;
    .registers 26

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/zxing2/Result;->getBarcodeFormat()Lcom/dcloud/zxing2/BarcodeFormat;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_EXPANDED:Lcom/dcloud/zxing2/BarcodeFormat;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return-object v2

    .line 7
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/dcloud/zxing2/client/result/ResultParser;->getMassagedText(Lcom/dcloud/zxing2/Result;)Ljava/lang/String;

    move-result-object v4

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    const/4 v3, 0x0

    .line 26
    :goto_23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_2b6

    .line 27
    invoke-static {v3, v4}, Lcom/dcloud/zxing2/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    return-object v2

    .line 33
    :cond_30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    add-int v3, v3, v18

    .line 34
    invoke-static {v3, v4}, Lcom/dcloud/zxing2/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v20

    add-int v3, v3, v20

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/16 v20, -0x1

    move/from16 v21, v3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    move-object/from16 v22, v15

    const/16 v15, 0x600

    move-object/from16 v23, v14

    const/4 v14, 0x3

    if-eq v3, v15, :cond_249

    const/16 v15, 0x601

    if-eq v3, v15, :cond_23d

    const/16 v15, 0x61f

    if-eq v3, v15, :cond_234

    const/16 v15, 0x620

    if-eq v3, v15, :cond_228

    const/16 v15, 0x622

    if-eq v3, v15, :cond_21c

    const/16 v15, 0x624

    if-eq v3, v15, :cond_210

    const/16 v15, 0x626

    if-eq v3, v15, :cond_204

    packed-switch v3, :pswitch_data_2c4

    packed-switch v3, :pswitch_data_2dc

    packed-switch v3, :pswitch_data_2f4

    packed-switch v3, :pswitch_data_300

    goto/16 :goto_256

    :pswitch_7e
    const-string v3, "3933"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    goto/16 :goto_256

    :cond_88
    const/16 v19, 0x22

    goto/16 :goto_254

    :pswitch_8c
    const-string v3, "3932"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    goto/16 :goto_256

    :cond_96
    const/16 v19, 0x21

    goto/16 :goto_254

    :pswitch_9a
    const-string v3, "3931"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a4

    goto/16 :goto_256

    :cond_a4
    const/16 v19, 0x20

    goto/16 :goto_254

    :pswitch_a8
    const-string v3, "3930"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b2

    goto/16 :goto_256

    :cond_b2
    const/16 v19, 0x1f

    goto/16 :goto_254

    :pswitch_b6
    const-string v3, "3923"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c0

    goto/16 :goto_256

    :cond_c0
    const/16 v19, 0x1e

    goto/16 :goto_254

    :pswitch_c4
    const-string v3, "3922"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ce

    goto/16 :goto_256

    :cond_ce
    const/16 v19, 0x1d

    goto/16 :goto_254

    :pswitch_d2
    const-string v3, "3921"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dc

    goto/16 :goto_256

    :cond_dc
    const/16 v19, 0x1c

    goto/16 :goto_254

    :pswitch_e0
    const-string v3, "3920"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ea

    goto/16 :goto_256

    :cond_ea
    const/16 v19, 0x1b

    goto/16 :goto_254

    :pswitch_ee
    const-string v3, "3209"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f8

    goto/16 :goto_256

    :cond_f8
    const/16 v19, 0x1a

    goto/16 :goto_254

    :pswitch_fc
    const-string v3, "3208"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_106

    goto/16 :goto_256

    :cond_106
    const/16 v19, 0x19

    goto/16 :goto_254

    :pswitch_10a
    const-string v3, "3207"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_114

    goto/16 :goto_256

    :cond_114
    const/16 v19, 0x18

    goto/16 :goto_254

    :pswitch_118
    const-string v3, "3206"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_122

    goto/16 :goto_256

    :cond_122
    const/16 v19, 0x17

    goto/16 :goto_254

    :pswitch_126
    const-string v3, "3205"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_130

    goto/16 :goto_256

    :cond_130
    const/16 v19, 0x16

    goto/16 :goto_254

    :pswitch_134
    const-string v3, "3204"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13e

    goto/16 :goto_256

    :cond_13e
    const/16 v19, 0x15

    goto/16 :goto_254

    :pswitch_142
    const-string v3, "3203"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14c

    goto/16 :goto_256

    :cond_14c
    const/16 v19, 0x14

    goto/16 :goto_254

    :pswitch_150
    const-string v3, "3202"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15a

    goto/16 :goto_256

    :cond_15a
    const/16 v19, 0x13

    goto/16 :goto_254

    :pswitch_15e
    const-string v3, "3201"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_168

    goto/16 :goto_256

    :cond_168
    const/16 v19, 0x12

    goto/16 :goto_254

    :pswitch_16c
    const-string v3, "3200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_176

    goto/16 :goto_256

    :cond_176
    const/16 v19, 0x11

    goto/16 :goto_254

    :pswitch_17a
    const-string v3, "3109"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_184

    goto/16 :goto_256

    :cond_184
    const/16 v19, 0x10

    goto/16 :goto_254

    :pswitch_188
    const-string v3, "3108"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_192

    goto/16 :goto_256

    :cond_192
    const/16 v19, 0xf

    goto/16 :goto_254

    :pswitch_196
    const-string v3, "3107"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a0

    goto/16 :goto_256

    :cond_1a0
    const/16 v19, 0xe

    goto/16 :goto_254

    :pswitch_1a4
    const-string v3, "3106"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ae

    goto/16 :goto_256

    :cond_1ae
    const/16 v19, 0xd

    goto/16 :goto_254

    :pswitch_1b2
    const-string v3, "3105"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1bc

    goto/16 :goto_256

    :cond_1bc
    const/16 v19, 0xc

    goto/16 :goto_254

    :pswitch_1c0
    const-string v3, "3104"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ca

    goto/16 :goto_256

    :cond_1ca
    const/16 v19, 0xb

    goto/16 :goto_254

    :pswitch_1ce
    const-string v3, "3103"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d8

    goto/16 :goto_256

    :cond_1d8
    const/16 v19, 0xa

    goto/16 :goto_254

    :pswitch_1dc
    const-string v3, "3102"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e6

    goto/16 :goto_256

    :cond_1e6
    const/16 v19, 0x9

    goto/16 :goto_254

    :pswitch_1ea
    const-string v3, "3101"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f4

    goto/16 :goto_256

    :cond_1f4
    const/16 v19, 0x8

    goto/16 :goto_254

    :pswitch_1f8
    const-string v3, "3100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_201

    goto :goto_256

    :cond_201
    const/16 v19, 0x7

    goto :goto_254

    :cond_204
    const-string v3, "17"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20d

    goto :goto_256

    :cond_20d
    const/16 v19, 0x6

    goto :goto_254

    :cond_210
    const-string v3, "15"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_219

    goto :goto_256

    :cond_219
    const/16 v19, 0x5

    goto :goto_254

    :cond_21c
    const-string v3, "13"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_225

    goto :goto_256

    :cond_225
    const/16 v19, 0x4

    goto :goto_254

    :cond_228
    const-string v3, "11"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_231

    goto :goto_256

    :cond_231
    const/16 v19, 0x3

    goto :goto_254

    :cond_234
    const-string v3, "10"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_254

    goto :goto_256

    :cond_23d
    const-string v3, "01"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_246

    goto :goto_256

    :cond_246
    const/16 v19, 0x1

    goto :goto_254

    :cond_249
    const-string v3, "00"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_252

    goto :goto_256

    :cond_252
    const/16 v19, 0x0

    :cond_254
    :goto_254
    move/from16 v20, v19

    :goto_256
    packed-switch v20, :pswitch_data_30c

    const/4 v3, 0x0

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a9

    .line 111
    :pswitch_25e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v15, 0x4

    if-ge v3, v15, :cond_267

    const/4 v3, 0x0

    return-object v3

    :cond_267
    const/4 v3, 0x0

    .line 117
    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const/4 v3, 0x0

    .line 118
    invoke-virtual {v2, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_2ab

    :pswitch_27a
    const/4 v3, 0x0

    .line 120
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    move-object v15, v2

    goto :goto_2ab

    :pswitch_283
    const/4 v3, 0x0

    .line 121
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v12, "LB"

    goto :goto_292

    :pswitch_28b
    const/4 v3, 0x0

    .line 122
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v12, "KG"

    :goto_292
    move-object v14, v1

    move-object v13, v12

    move-object/from16 v15, v22

    move-object v12, v2

    goto :goto_2b1

    :pswitch_298
    const/4 v3, 0x0

    move-object v11, v2

    goto :goto_2a9

    :pswitch_29b
    const/4 v3, 0x0

    move-object v10, v2

    goto :goto_2a9

    :pswitch_29e
    const/4 v3, 0x0

    move-object v9, v2

    goto :goto_2a9

    :pswitch_2a1
    const/4 v3, 0x0

    move-object v8, v2

    goto :goto_2a9

    :pswitch_2a4
    const/4 v3, 0x0

    move-object v7, v2

    goto :goto_2a9

    :pswitch_2a7
    const/4 v3, 0x0

    move-object v5, v2

    :goto_2a9
    move-object/from16 v15, v22

    :goto_2ab
    move-object/from16 v14, v23

    goto :goto_2b1

    :pswitch_2ae
    const/4 v3, 0x0

    move-object v6, v2

    goto :goto_2a9

    :goto_2b1
    move/from16 v3, v21

    const/4 v2, 0x0

    goto/16 :goto_23

    :cond_2b6
    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 166
    new-instance v1, Lcom/dcloud/zxing2/client/result/ExpandedProductParsedResult;

    move-object v3, v1

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Lcom/dcloud/zxing2/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    nop

    :pswitch_data_2c4
    .packed-switch 0x17ecde
        :pswitch_1f8
        :pswitch_1ea
        :pswitch_1dc
        :pswitch_1ce
        :pswitch_1c0
        :pswitch_1b2
        :pswitch_1a4
        :pswitch_196
        :pswitch_188
        :pswitch_17a
    .end packed-switch

    :pswitch_data_2dc
    .packed-switch 0x17f09f
        :pswitch_16c
        :pswitch_15e
        :pswitch_150
        :pswitch_142
        :pswitch_134
        :pswitch_126
        :pswitch_118
        :pswitch_10a
        :pswitch_fc
        :pswitch_ee
    .end packed-switch

    :pswitch_data_2f4
    .packed-switch 0x180b24
        :pswitch_e0
        :pswitch_d2
        :pswitch_c4
        :pswitch_b6
    .end packed-switch

    :pswitch_data_300
    .packed-switch 0x180b43
        :pswitch_a8
        :pswitch_9a
        :pswitch_8c
        :pswitch_7e
    .end packed-switch

    :pswitch_data_30c
    .packed-switch 0x0
        :pswitch_2ae
        :pswitch_2a7
        :pswitch_2a4
        :pswitch_2a1
        :pswitch_29e
        :pswitch_29b
        :pswitch_298
        :pswitch_28b
        :pswitch_28b
        :pswitch_28b
        :pswitch_28b
        :pswitch_28b
        :pswitch_28b
        :pswitch_28b
        :pswitch_28b
        :pswitch_28b
        :pswitch_28b
        :pswitch_283
        :pswitch_283
        :pswitch_283
        :pswitch_283
        :pswitch_283
        :pswitch_283
        :pswitch_283
        :pswitch_283
        :pswitch_283
        :pswitch_283
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
        :pswitch_25e
        :pswitch_25e
        :pswitch_25e
        :pswitch_25e
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/ParsedResult;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/client/result/ExpandedProductResultParser;->parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/ExpandedProductParsedResult;

    move-result-object p1

    return-object p1
.end method
