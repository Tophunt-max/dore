###### Class io.dcloud.invocation.b (io.dcloud.invocation.b)
.class public Lio/dcloud/invocation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Class;

.field d:Lio/dcloud/common/DHInterface/IWebview;

.field e:Ljava/lang/String;

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/invocation/b;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lio/dcloud/invocation/b;->b:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lio/dcloud/invocation/b;->c:Ljava/lang/Class;

    .line 5
    iput-object v0, p0, Lio/dcloud/invocation/b;->d:Lio/dcloud/common/DHInterface/IWebview;

    .line 6
    iput-object v0, p0, Lio/dcloud/invocation/b;->e:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lio/dcloud/invocation/b;->f:Ljava/util/ArrayList;

    .line 10
    :try_start_10
    iput-object p1, p0, Lio/dcloud/invocation/b;->d:Lio/dcloud/common/DHInterface/IWebview;

    .line 11
    iput-object p4, p0, Lio/dcloud/invocation/b;->e:Ljava/lang/String;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/dcloud/invocation/b;->f:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 13
    :goto_1c
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-ge p1, p4, :cond_2e

    .line 14
    iget-object p4, p0, Lio/dcloud/invocation/b;->f:Ljava/util/ArrayList;

    invoke-static {p3, p1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 16
    :cond_2e
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/invocation/b;->c:Ljava/lang/Class;
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_34} :catch_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_34} :catch_35

    goto :goto_3e

    :catch_35
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3e

    :catch_3a
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_3e
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/invocation/b;->c:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    iget-object v1, p0, Lio/dcloud/invocation/b;->c:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/invocation/b;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "["

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/dcloud/invocation/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_63

    if-eqz p3, :cond_3e

    .line 5
    array-length v0, p3

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_3e

    .line 7
    aget-object v6, p3, v1

    if-nez v6, :cond_27

    const-string v6, "undefined"

    .line 8
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_32

    .line 10
    :cond_27
    iget-object v6, p0, Lio/dcloud/invocation/b;->d:Lio/dcloud/common/DHInterface/IWebview;

    aget-object v7, p3, v1

    invoke-static {v6, v7}, Lio/dcloud/invocation/a;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_32
    add-int/lit8 v6, v0, -0x1

    if-eq v1, v6, :cond_3b

    const-string v6, ","

    .line 13
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_3e
    const-string p3, "]"

    .line 17
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-array p3, v3, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v5

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v4

    const-string p1, "{method:\'%s\',arguments:%s}"

    invoke-static {p1, p3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 19
    iget-object v3, p0, Lio/dcloud/invocation/b;->d:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/invocation/b;->e:Ljava/lang/String;

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object v2

    :cond_63
    const-string p1, "hashCode"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_74
    const-string p1, "equals"

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 24
    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_85
    const-string p1, "getClass"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 26
    iget-object p1, p0, Lio/dcloud/invocation/b;->c:Ljava/lang/Class;

    return-object p1

    :cond_90
    const-string p1, "finalize"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->finalize()V

    goto/16 :goto_11c

    :cond_9d
    const-string p1, "notify"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto/16 :goto_11c

    :cond_aa
    const-string p1, "notifyAll"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_11c

    :cond_b6
    const-string p1, "toString"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d6

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lio/dcloud/invocation/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/dcloud/invocation/b;->c:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d6
    const-string p1, "wait"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    .line 36
    array-length p1, p3

    if-nez p1, :cond_e5

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_11c

    .line 38
    :cond_e5
    array-length p1, p3

    if-ne p1, v4, :cond_f6

    .line 39
    aget-object p1, p3, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    goto :goto_11c

    .line 40
    :cond_f6
    array-length p1, p3

    if-ne p1, v3, :cond_11c

    .line 41
    aget-object p1, p3, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    aget-object p3, p3, v5

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/Object;->wait(JI)V

    goto :goto_11c

    .line 45
    :cond_111
    :try_start_111
    iget-object p1, p0, Lio/dcloud/invocation/b;->b:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_117} :catch_118

    return-object p1

    :catch_118
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11c
    :goto_11c
    return-object v2
.end method
