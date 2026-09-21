###### Class com.alibaba.fastjson.serializer.DateSerializer (com.alibaba.fastjson.serializer.DateSerializer)
.class public Lcom/alibaba/fastjson/serializer/DateSerializer;
.super Ljava/lang/Object;
.source "DateSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/DateSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/alibaba/fastjson/serializer/DateSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/DateSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/DateSerializer;->instance:Lcom/alibaba/fastjson/serializer/DateSerializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    if-nez p2, :cond_c

    .line 39
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 43
    :cond_c
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 44
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v3, p4

    if-eq v2, v3, :cond_61

    .line 45
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/Date;

    if-ne v2, v3, :cond_37

    const-string v0, "new Date("

    .line 46
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 47
    move-object/from16 v0, p2

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const/16 v0, 0x29

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLongAndChar(JC)V

    goto :goto_60

    :cond_37
    const/16 v2, 0x7b

    .line 49
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 50
    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    const/16 v0, 0x2c

    .line 52
    move-object/from16 v2, p2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-string v4, "val"

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;J)V

    const/16 v0, 0x7d

    .line 53
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    :goto_60
    return-void

    .line 59
    :cond_61
    move-object/from16 v2, p2

    check-cast v2, Ljava/util/Date;

    .line 61
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    if-nez v0, :cond_7a

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    :cond_7a
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 71
    :cond_82
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 72
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_151

    .line 73
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    const/16 v5, 0x27

    const/16 v6, 0x22

    if-eqz v4, :cond_9e

    .line 74
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_a1

    .line 76
    :cond_9e
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 79
    :goto_a1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 80
    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    .line 82
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v7, 0x2

    .line 83
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v2

    const/4 v2, 0x5

    .line 84
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v8, 0xb

    .line 85
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xc

    .line 86
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0xd

    .line 87
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v12, 0xe

    .line 88
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v12, 0x10

    const/16 v13, 0x13

    const/16 v6, 0xa

    if-eqz v4, :cond_ff

    const-string v16, "0000-00-00T00:00:00.000"

    .line 92
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    int-to-long v14, v4

    const/16 v4, 0x17

    .line 93
    invoke-static {v14, v15, v4, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    int-to-long v14, v11

    .line 94
    invoke-static {v14, v15, v13, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    int-to-long v13, v9

    .line 95
    invoke-static {v13, v14, v12, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    int-to-long v8, v8

    .line 96
    invoke-static {v8, v9, v10, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    int-to-long v8, v2

    .line 97
    invoke-static {v8, v9, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    int-to-long v6, v7

    const/4 v2, 0x7

    .line 98
    invoke-static {v6, v7, v2, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    int-to-long v2, v3

    const/4 v4, 0x4

    .line 99
    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    goto :goto_13a

    :cond_ff
    if-nez v11, :cond_11a

    if-nez v9, :cond_11a

    if-nez v8, :cond_11a

    const-string v4, "0000-00-00"

    .line 103
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    int-to-long v8, v2

    .line 104
    invoke-static {v8, v9, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    int-to-long v6, v7

    const/4 v2, 0x7

    .line 105
    invoke-static {v6, v7, v2, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    int-to-long v2, v3

    const/4 v4, 0x4

    .line 106
    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    goto :goto_13a

    :cond_11a
    const-string v4, "0000-00-00T00:00:00"

    .line 108
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    int-to-long v14, v11

    .line 109
    invoke-static {v14, v15, v13, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    int-to-long v13, v9

    .line 110
    invoke-static {v13, v14, v12, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    int-to-long v8, v8

    .line 111
    invoke-static {v8, v9, v10, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    int-to-long v8, v2

    .line 112
    invoke-static {v8, v9, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    int-to-long v6, v7

    const/4 v2, 0x7

    .line 113
    invoke-static {v6, v7, v2, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    int-to-long v2, v3

    const/4 v4, 0x4

    .line 114
    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 118
    :goto_13a
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([C)V

    .line 120
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_14b

    const/16 v0, 0x27

    .line 121
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_154

    :cond_14b
    const/16 v0, 0x22

    .line 123
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_154

    .line 126
    :cond_151
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    :goto_154
    return-void
.end method
