###### Class com.facebook.drawee.backends.pipeline.info.ImageOriginUtils (com.facebook.drawee.backends.pipeline.info.ImageOriginUtils)
.class public Lcom/facebook/drawee/backends/pipeline/info/ImageOriginUtils;
.super Ljava/lang/Object;
.source "ImageOriginUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapProducerNameToImageOrigin(Ljava/lang/String;)I
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "producerName"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_d6

    goto/16 :goto_cc

    :sswitch_13
    const-string v0, "LocalContentUriFetchProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_cc

    :cond_1d
    const/16 v7, 0xe

    goto/16 :goto_cc

    :sswitch_21
    const-string v0, "PartialDiskCacheProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_cc

    :cond_2b
    const/16 v7, 0xd

    goto/16 :goto_cc

    :sswitch_2f
    const-string v0, "LocalContentUriThumbnailFetchProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto/16 :goto_cc

    :cond_39
    const/16 v7, 0xc

    goto/16 :goto_cc

    :sswitch_3d
    const-string v0, "DataFetchProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    goto/16 :goto_cc

    :cond_47
    const/16 v7, 0xb

    goto/16 :goto_cc

    :sswitch_4b
    const-string v0, "PostprocessedBitmapMemoryCacheProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_55

    goto/16 :goto_cc

    :cond_55
    const/16 v7, 0xa

    goto/16 :goto_cc

    :sswitch_59
    const-string v0, "LocalAssetFetchProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_63

    goto/16 :goto_cc

    :cond_63
    const/16 v7, 0x9

    goto/16 :goto_cc

    :sswitch_67
    const-string v0, "BitmapMemoryCacheProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_71

    goto/16 :goto_cc

    :cond_71
    const/16 v7, 0x8

    goto/16 :goto_cc

    :sswitch_75
    const-string v0, "DiskCacheProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7e

    goto :goto_cc

    :cond_7e
    const/4 v7, 0x7

    goto :goto_cc

    :sswitch_80
    const-string v0, "VideoThumbnailProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_89

    goto :goto_cc

    :cond_89
    const/4 v7, 0x6

    goto :goto_cc

    :sswitch_8b
    const-string v0, "NetworkFetchProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_94

    goto :goto_cc

    :cond_94
    const/4 v7, 0x5

    goto :goto_cc

    :sswitch_96
    const-string v0, "EncodedMemoryCacheProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9f

    goto :goto_cc

    :cond_9f
    const/4 v7, 0x4

    goto :goto_cc

    :sswitch_a1
    const-string v0, "LocalFileFetchProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_aa

    goto :goto_cc

    :cond_aa
    const/4 v7, 0x3

    goto :goto_cc

    :sswitch_ac
    const-string v0, "LocalResourceFetchProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b5

    goto :goto_cc

    :cond_b5
    const/4 v7, 0x2

    goto :goto_cc

    :sswitch_b7
    const-string v0, "BitmapMemoryCacheGetProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c0

    goto :goto_cc

    :cond_c0
    const/4 v7, 0x1

    goto :goto_cc

    :sswitch_c2
    const-string v0, "QualifiedResourceFetchProducer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cb

    goto :goto_cc

    :cond_cb
    const/4 v7, 0x0

    :goto_cc
    packed-switch v7, :pswitch_data_114

    return v6

    :pswitch_d0
    return v4

    :pswitch_d1
    return v5

    :pswitch_d2
    return v3

    :pswitch_d3
    return v2

    :pswitch_d4
    return v1

    nop

    :sswitch_data_d6
    .sparse-switch
        -0x7245881e -> :sswitch_c2
        -0x72166c8a -> :sswitch_b7
        -0x645fbf8d -> :sswitch_ac
        -0x5e2cabbb -> :sswitch_a1
        -0x4df0ea1b -> :sswitch_96
        -0x48fa9b02 -> :sswitch_8b
        0x1c39d583 -> :sswitch_80
        0x271e6a77 -> :sswitch_75
        0x39158fe4 -> :sswitch_67
        0x3cc4fa07 -> :sswitch_59
        0x3cfad516 -> :sswitch_4b
        0x669ea4c2 -> :sswitch_3d
        0x6ae0f45e -> :sswitch_2f
        0x7dbdd736 -> :sswitch_21
        0x7dfbc52e -> :sswitch_13
    .end sparse-switch

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_d4
        :pswitch_d3
        :pswitch_d4
        :pswitch_d4
        :pswitch_d2
        :pswitch_d1
        :pswitch_d4
        :pswitch_d0
        :pswitch_d3
        :pswitch_d4
        :pswitch_d3
        :pswitch_d4
        :pswitch_d4
        :pswitch_d0
        :pswitch_d4
    .end packed-switch
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageOrigin"
        }
    .end annotation

    packed-switch p0, :pswitch_data_18

    const-string p0, "unknown"

    return-object p0

    :pswitch_6
    const-string p0, "local"

    return-object p0

    :pswitch_9
    const-string p0, "memory_bitmap_shortcut"

    return-object p0

    :pswitch_c
    const-string p0, "memory_bitmap"

    return-object p0

    :pswitch_f
    const-string p0, "memory_encoded"

    return-object p0

    :pswitch_12
    const-string p0, "disk"

    return-object p0

    :pswitch_15
    const-string p0, "network"

    return-object p0

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
