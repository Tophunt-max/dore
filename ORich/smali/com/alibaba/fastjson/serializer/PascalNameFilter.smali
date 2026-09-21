###### Class com.alibaba.fastjson.serializer.PascalNameFilter (com.alibaba.fastjson.serializer.PascalNameFilter)
.class public Lcom/alibaba/fastjson/serializer/PascalNameFilter;
.super Ljava/lang/Object;
.source "PascalNameFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/NameFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_1b

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1b

    .line 10
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 p2, 0x0

    .line 11
    aget-char p3, p1, p2

    invoke-static {p3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p3

    aput-char p3, p1, p2

    .line 13
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    :cond_1b
    :goto_1b
    return-object p2
.end method
