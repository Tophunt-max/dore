###### Class com.alibaba.fastjson.serializer.BooleanArraySerializer (com.alibaba.fastjson.serializer.BooleanArraySerializer)
.class public Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;
.super Ljava/lang/Object;
.source "BooleanArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    if-nez p2, :cond_18

    .line 32
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p2

    if-eqz p2, :cond_14

    const-string p2, "[]"

    .line 33
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_17

    .line 35
    :cond_14
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_17
    return-void

    .line 40
    :cond_18
    check-cast p2, [Z

    check-cast p2, [Z

    const/16 p3, 0x5b

    .line 41
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    const/4 p3, 0x0

    .line 42
    :goto_22
    array-length p4, p2

    if-ge p3, p4, :cond_34

    if-eqz p3, :cond_2c

    const/16 p4, 0x2c

    .line 44
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 46
    :cond_2c
    aget-boolean p4, p2, p3

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_22

    :cond_34
    const/16 p2, 0x5d

    .line 48
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    return-void
.end method
