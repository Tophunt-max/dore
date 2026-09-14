###### Class io.dcloud.feature.pdr.NStorageFeatureImpl (io.dcloud.feature.pdr.NStorageFeatureImpl)
.class public Lio/dcloud/feature/pdr/NStorageFeatureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lio/dcloud/common/DHInterface/IWebview;I)Ljava/lang/String;
    .registers 5

    .line 13
    :try_start_0
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 15
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/common/util/db/DCStorage;->performGetAllKeys(Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object p1

    .line 16
    iget-object v0, p1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    if-eqz v0, :cond_34

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_34

    iget p1, p1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_34

    .line 17
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_34

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_34

    .line 19
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    return-object p1

    :catch_34
    :cond_34
    const-string p1, ""

    return-object p1
.end method

.method a(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 4

    .line 7
    :try_start_0
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 9
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/dcloud/common/util/db/DCStorage;->performClear(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 10
    :try_start_0
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 12
    new-instance v1, Lio/dcloud/feature/pdr/NStorageFeatureImpl$c;

    invoke-direct {v1, p0, v0, p1, p2}, Lio/dcloud/feature/pdr/NStorageFeatureImpl$c;-><init>(Lio/dcloud/feature/pdr/NStorageFeatureImpl;Lio/dcloud/common/util/db/DCStorage;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/db/DCStorage;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3
    new-instance v7, Lio/dcloud/feature/pdr/NStorageFeatureImpl$a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/pdr/NStorageFeatureImpl$a;-><init>(Lio/dcloud/feature/pdr/NStorageFeatureImpl;Lio/dcloud/common/util/db/DCStorage;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/dcloud/common/util/db/DCStorage;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_18

    :catch_18
    :cond_18
    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 4
    :try_start_0
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 6
    new-instance v8, Lio/dcloud/feature/pdr/NStorageFeatureImpl$b;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/pdr/NStorageFeatureImpl$b;-><init>(Lio/dcloud/feature/pdr/NStorageFeatureImpl;Lio/dcloud/common/util/db/DCStorage;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lio/dcloud/common/util/db/DCStorage;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    return-void
.end method

.method b(Lio/dcloud/common/DHInterface/IWebview;)Ljava/lang/String;
    .registers 8

    const-string v0, "\'"

    .line 9
    :try_start_2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 11
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/dcloud/common/util/db/DCStorage;->performGetAllKeys(Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object p1

    .line 12
    iget v1, p1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_63

    iget-object p1, p1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    if-eqz p1, :cond_63

    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "["

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_63

    const-string v4, "]"

    if-lez v3, :cond_5b

    .line 16
    :try_start_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    .line 17
    :goto_38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5e

    .line 18
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ne v2, v3, :cond_53

    .line 21
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_58

    :cond_53
    const-string v5, ","

    .line 23
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 27
    :cond_5b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    :cond_5e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_62} :catch_63

    return-object p1

    :catch_63
    :cond_63
    const-string p1, ""

    return-object p1
.end method

.method b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 3
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->performGetItem(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 4
    iget p2, p1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_24

    iget-object p1, p1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    if-eqz p1, :cond_24

    .line 5
    check-cast p1, Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-object p1

    :catch_24
    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 6
    :try_start_0
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 8
    new-instance v7, Lio/dcloud/feature/pdr/NStorageFeatureImpl$d;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/pdr/NStorageFeatureImpl$d;-><init>(Lio/dcloud/feature/pdr/NStorageFeatureImpl;Lio/dcloud/common/util/db/DCStorage;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/dcloud/common/util/db/DCStorage;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_18

    :catch_18
    :cond_18
    return-void
.end method

.method c(Lio/dcloud/common/DHInterface/IWebview;)I
    .registers 4

    .line 7
    :try_start_0
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 9
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/common/util/db/DCStorage;->performGetAllKeys(Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object p1

    .line 10
    iget v0, p1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object p1, p1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    if-eqz p1, :cond_26

    .line 11
    check-cast p1, Ljava/util/List;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    return p1

    :catch_26
    :cond_26
    const/4 p1, 0x0

    return p1
.end method

.method c(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 4
    :try_start_0
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 6
    new-instance v1, Lio/dcloud/feature/pdr/NStorageFeatureImpl$e;

    invoke-direct {v1, p0, v0, p1, p2}, Lio/dcloud/feature/pdr/NStorageFeatureImpl$e;-><init>(Lio/dcloud/feature/pdr/NStorageFeatureImpl;Lio/dcloud/common/util/db/DCStorage;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/db/DCStorage;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method

.method c(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/dcloud/common/util/db/DCStorage;->performSetItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    return-void
.end method

.method d(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->performRemoveItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    return-void
.end method

.method public dispose(Ljava/lang/String;)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 3
    invoke-virtual {p1}, Lio/dcloud/common/util/db/DCStorage;->close()V

    :cond_a
    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_11c

    goto/16 :goto_a2

    :sswitch_13
    const-string v0, "getItemAsync"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    goto/16 :goto_a2

    :cond_1d
    const/16 v4, 0xb

    goto/16 :goto_a2

    :sswitch_21
    const-string v0, "setItem"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2b

    goto/16 :goto_a2

    :cond_2b
    const/16 v4, 0xa

    goto/16 :goto_a2

    :sswitch_2f
    const-string v0, "getAllKeysAsync"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_39

    goto/16 :goto_a2

    :cond_39
    const/16 v4, 0x9

    goto/16 :goto_a2

    :sswitch_3d
    const-string v0, "removeItem"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_47

    goto/16 :goto_a2

    :cond_47
    const/16 v4, 0x8

    goto/16 :goto_a2

    :sswitch_4b
    const-string v0, "getLength"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_54

    goto :goto_a2

    :cond_54
    const/4 v4, 0x7

    goto :goto_a2

    :sswitch_56
    const-string v0, "getAllKeys"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5f

    goto :goto_a2

    :cond_5f
    const/4 v4, 0x6

    goto :goto_a2

    :sswitch_61
    const-string v0, "clear"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6a

    goto :goto_a2

    :cond_6a
    const/4 v4, 0x5

    goto :goto_a2

    :sswitch_6c
    const-string v0, "key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_75

    goto :goto_a2

    :cond_75
    const/4 v4, 0x4

    goto :goto_a2

    :sswitch_77
    const-string v0, "removeItemAsync"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_80

    goto :goto_a2

    :cond_80
    const/4 v4, 0x3

    goto :goto_a2

    :sswitch_82
    const-string v0, "getItem"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8b

    goto :goto_a2

    :cond_8b
    const/4 v4, 0x2

    goto :goto_a2

    :sswitch_8d
    const-string v0, "setItemAsync"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_96

    goto :goto_a2

    :cond_96
    const/4 v4, 0x1

    goto :goto_a2

    :sswitch_98
    const-string v0, "clearAsync"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a1

    goto :goto_a2

    :cond_a1
    const/4 v4, 0x0

    :goto_a2
    packed-switch v4, :pswitch_data_14e

    goto/16 :goto_11a

    .line 17
    :pswitch_a7
    aget-object p2, p3, v3

    .line 18
    aget-object p3, p3, v2

    .line 19
    invoke-virtual {p0, p1, p3, p2}, Lio/dcloud/feature/pdr/NStorageFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11a

    .line 23
    :pswitch_b0
    aget-object p2, p3, v3

    .line 24
    aget-object p3, p3, v2

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/feature/pdr/NStorageFeatureImpl;->c(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11a

    .line 65
    :pswitch_b8
    aget-object p2, p3, v3

    .line 66
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/pdr/NStorageFeatureImpl;->c(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto :goto_11a

    .line 67
    :pswitch_be
    aget-object p2, p3, v3

    .line 68
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/pdr/NStorageFeatureImpl;->d(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto :goto_11a

    .line 69
    :pswitch_c4
    invoke-virtual {p0, p1}, Lio/dcloud/feature/pdr/NStorageFeatureImpl;->c(Lio/dcloud/common/DHInterface/IWebview;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(F)Ljava/lang/String;

    move-result-object p1

    goto :goto_11b

    .line 127
    :pswitch_ce
    invoke-virtual {p0, p1}, Lio/dcloud/feature/pdr/NStorageFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;)Ljava/lang/String;

    move-result-object p1

    goto :goto_11b

    .line 128
    :pswitch_d3
    invoke-virtual {p0, p1}, Lio/dcloud/feature/pdr/NStorageFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_11a

    .line 137
    :pswitch_d7
    aget-object p2, p3, v3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 138
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/pdr/NStorageFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_11b

    .line 139
    :pswitch_e6
    aget-object p2, p3, v3

    .line 140
    aget-object p3, p3, v2

    .line 141
    invoke-virtual {p0, p1, p3, p2}, Lio/dcloud/feature/pdr/NStorageFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11a

    .line 142
    :pswitch_ee
    aget-object p2, p3, v3

    .line 143
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/pdr/NStorageFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f9

    const-string p1, "null:"

    return-object p1

    .line 147
    :cond_f9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "string:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_11b

    .line 164
    :pswitch_10b
    aget-object p2, p3, v3

    .line 165
    aget-object v0, p3, v2

    .line 166
    aget-object p3, p3, v1

    .line 167
    invoke-virtual {p0, p1, v0, p3, p2}, Lio/dcloud/feature/pdr/NStorageFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11a

    .line 186
    :pswitch_115
    aget-object p2, p3, v3

    .line 187
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/pdr/NStorageFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :goto_11a
    const/4 p1, 0x0

    :goto_11b
    return-object p1

    :sswitch_data_11c
    .sparse-switch
        -0x2d54bbd1 -> :sswitch_98
        -0x25854319 -> :sswitch_8d
        -0x47f1c77 -> :sswitch_82
        -0x369f8fb -> :sswitch_77
        0x19e5f -> :sswitch_6c
        0x5a5b64d -> :sswitch_61
        0x76a9eff -> :sswitch_56
        0x23255ddc -> :sswitch_4b
        0x417605b7 -> :sswitch_3d
        0x5f75fabd -> :sswitch_2f
        0x764baa95 -> :sswitch_21
        0x7e26fc73 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_115
        :pswitch_10b
        :pswitch_ee
        :pswitch_e6
        :pswitch_d7
        :pswitch_d3
        :pswitch_ce
        :pswitch_c4
        :pswitch_be
        :pswitch_b8
        :pswitch_b0
        :pswitch_a7
    .end packed-switch
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

###### Class io.dcloud.feature.pdr.NStorageFeatureImpl.a (io.dcloud.feature.pdr.NStorageFeatureImpl$a)
.class Lio/dcloud/feature/pdr/NStorageFeatureImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/pdr/NStorageFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/util/db/DCStorage;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/pdr/NStorageFeatureImpl;Lio/dcloud/common/util/db/DCStorage;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$a;->a:Lio/dcloud/common/util/db/DCStorage;

    iput-object p3, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$a;->a:Lio/dcloud/common/util/db/DCStorage;

    iget-object v1, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/db/DCStorage;->performGetItem(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget v2, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_39

    iget-object v4, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    if-eqz v4, :cond_39

    const-string v0, "data"

    .line 5
    :try_start_23
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 9
    :goto_2f
    iget-object v0, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$a;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v0, v2, v1, v4, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_53

    :cond_39
    const-string v4, "code"

    .line 12
    :try_start_3b
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_3e} :catch_46

    const-string v2, "message"

    .line 13
    :try_start_40
    iget-object v0, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception v0

    .line 15
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 17
    :goto_4a
    iget-object v0, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$a;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    invoke-static {v0, v2, v1, v4, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    :goto_53
    return-void
.end method

###### Class io.dcloud.feature.pdr.NStorageFeatureImpl.b (io.dcloud.feature.pdr.NStorageFeatureImpl$b)
.class Lio/dcloud/feature/pdr/NStorageFeatureImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/pdr/NStorageFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/util/db/DCStorage;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/pdr/NStorageFeatureImpl;Lio/dcloud/common/util/db/DCStorage;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$b;->a:Lio/dcloud/common/util/db/DCStorage;

    iput-object p3, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$b;->d:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$b;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$b;->a:Lio/dcloud/common/util/db/DCStorage;

    iget-object v1, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/db/DCStorage;->performSetItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object v0

    .line 2
    sget v1, Lio/dcloud/common/util/JSUtil;->ERROR:I

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget v3, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    .line 5
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    goto :goto_3a

    :cond_29
    const-string v4, "code"

    .line 8
    :try_start_2b
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_2e} :catch_36

    const-string v3, "message"

    .line 9
    :try_start_30
    iget-object v0, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v0

    .line 11
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 14
    :goto_3a
    iget-object v0, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$b;->e:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v1, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method

###### Class io.dcloud.feature.pdr.NStorageFeatureImpl.c (io.dcloud.feature.pdr.NStorageFeatureImpl$c)
.class Lio/dcloud/feature/pdr/NStorageFeatureImpl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/pdr/NStorageFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/util/db/DCStorage;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/pdr/NStorageFeatureImpl;Lio/dcloud/common/util/db/DCStorage;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$c;->a:Lio/dcloud/common/util/db/DCStorage;

    iput-object p3, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$c;->a:Lio/dcloud/common/util/db/DCStorage;

    iget-object v1, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/db/DCStorage;->performClear(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget v2, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2b

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$c;->c:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v0, v2, v1, v4, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_45

    :cond_2b
    const-string v4, "code"

    .line 7
    :try_start_2d
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_30} :catch_38

    const-string v2, "message"

    .line 8
    :try_start_32
    iget-object v0, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception v0

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :goto_3c
    iget-object v0, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$c;->c:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    invoke-static {v0, v2, v1, v4, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    :goto_45
    return-void
.end method

###### Class io.dcloud.feature.pdr.NStorageFeatureImpl.d (io.dcloud.feature.pdr.NStorageFeatureImpl$d)
.class Lio/dcloud/feature/pdr/NStorageFeatureImpl$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/pdr/NStorageFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/util/db/DCStorage;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/pdr/NStorageFeatureImpl;Lio/dcloud/common/util/db/DCStorage;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$d;->a:Lio/dcloud/common/util/db/DCStorage;

    iput-object p3, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$d;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$d;->c:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$d;->a:Lio/dcloud/common/util/db/DCStorage;

    iget-object v1, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$d;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$d;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/common/util/db/DCStorage;->performRemoveItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget v2, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2d

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$d;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$d;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v0, v2, v1, v4, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_47

    :cond_2d
    const-string v4, "code"

    .line 7
    :try_start_2f
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_32} :catch_3a

    const-string v2, "message"

    .line 8
    :try_start_34
    iget-object v0, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception v0

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :goto_3e
    iget-object v0, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$d;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$d;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    invoke-static {v0, v2, v1, v4, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    :goto_47
    return-void
.end method

###### Class io.dcloud.feature.pdr.NStorageFeatureImpl.e (io.dcloud.feature.pdr.NStorageFeatureImpl$e)
.class Lio/dcloud/feature/pdr/NStorageFeatureImpl$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/pdr/NStorageFeatureImpl;->c(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/util/db/DCStorage;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/pdr/NStorageFeatureImpl;Lio/dcloud/common/util/db/DCStorage;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$e;->a:Lio/dcloud/common/util/db/DCStorage;

    iput-object p3, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$e;->a:Lio/dcloud/common/util/db/DCStorage;

    iget-object v3, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/dcloud/common/util/db/DCStorage;->performGetAllKeys(Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object v2

    .line 4
    iget v3, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_54

    iget-object v5, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    if-eqz v5, :cond_54

    .line 5
    check-cast v5, Ljava/util/List;

    .line 6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_40

    .line 7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_30

    :cond_40
    :try_start_40
    const-string v2, "keys"

    .line 12
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception v0

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 16
    :goto_4a
    iget-object v0, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$e;->c:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v0, v2, v1, v3, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_6e

    :cond_54
    const-string v0, "code"

    .line 19
    :try_start_56
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_56 .. :try_end_59} :catch_61

    const-string v0, "message"

    .line 20
    :try_start_5b
    iget-object v2, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_60} :catch_61

    goto :goto_65

    :catch_61
    move-exception v0

    .line 22
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 24
    :goto_65
    iget-object v0, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/pdr/NStorageFeatureImpl$e;->c:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    invoke-static {v0, v2, v1, v3, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    :goto_6e
    return-void
.end method
