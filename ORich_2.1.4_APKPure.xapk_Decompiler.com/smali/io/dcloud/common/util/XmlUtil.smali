###### Class io.dcloud.common.util.XmlUtil (io.dcloud.common.util.XmlUtil)
.class public Lio/dcloud/common/util/XmlUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/XmlUtil$DHNode;
    }
.end annotation


# static fields
.field public static final CDATA:I = 0x4

.field public static final ELEMENT:I = 0x1

.field public static final TEXT:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static XML_Parser(Ljava/io/InputStream;)Lio/dcloud/common/util/XmlUtil$DHNode;
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {p0}, Lio/dcloud/common/util/XmlUtil;->XML_ParserDocument(Ljava/io/InputStream;)Lio/dcloud/common/util/XmlUtil$DHNode;

    move-result-object p0

    .line 2
    new-instance v1, Lio/dcloud/common/util/XmlUtil$DHNode;

    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Document;

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lio/dcloud/common/util/XmlUtil$DHNode;-><init>(Lorg/w3c/dom/Node;Lio/dcloud/common/util/XmlUtil$1;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    return-object v1

    :catch_13
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static XML_ParserDocument(Ljava/io/InputStream;)Lio/dcloud/common/util/XmlUtil$DHNode;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    .line 4
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 7
    new-instance v1, Lio/dcloud/common/util/XmlUtil$DHNode;

    invoke-direct {v1, p0, v0}, Lio/dcloud/common/util/XmlUtil$DHNode;-><init>(Lorg/w3c/dom/Node;Lio/dcloud/common/util/XmlUtil$1;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    return-object v1

    :catchall_17
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static addChild(Lio/dcloud/common/util/XmlUtil$DHNode;Lio/dcloud/common/util/XmlUtil$DHNode;I)V
    .registers 3

    .line 1
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    iget-object p1, p1, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public static attrFill2HashMap(Ljava/util/HashMap;Lio/dcloud/common/util/XmlUtil$DHNode;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/dcloud/common/util/XmlUtil$DHNode;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_33

    if-eqz p0, :cond_33

    .line 1
    iget-object p1, p1, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    instance-of v0, p1, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_33

    .line 2
    check-cast p1, Lorg/w3c/dom/Element;

    .line 3
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 4
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-lez v0, :cond_33

    const/4 v0, 0x0

    .line 5
    :goto_19
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 6
    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Attr;

    .line 7
    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_33
    return-void
.end method

.method public static elementToString(Lio/dcloud/common/util/XmlUtil$DHNode;)Ljava/lang/String;
    .registers 1

    .line 1
    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 11
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;I)I
    .registers 4

    .line 2
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_11
    return p2
.end method

.method public static getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 5
    :cond_4
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    instance-of v1, p0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_11

    .line 6
    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    return-object v0
.end method

.method public static getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p0

    :goto_8
    return-object p2
.end method

.method public static getAttributes(Lio/dcloud/common/util/XmlUtil$DHNode;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/common/util/XmlUtil$DHNode;",
            ")",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    instance-of v1, p0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_48

    .line 3
    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 4
    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-lez v1, :cond_48

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    :goto_1f
    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 7
    invoke-interface {p0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Attr;

    .line 8
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v4, v6, v1

    const/4 v4, 0x1

    aput-object v5, v6, v4

    const/4 v4, 0x2

    aput-object v3, v6, v4

    .line 11
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_48
    return-object v0
.end method

.method public static getChild(Lio/dcloud/common/util/XmlUtil$DHNode;I)Lio/dcloud/common/util/XmlUtil$DHNode;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 2
    new-instance v1, Lio/dcloud/common/util/XmlUtil$DHNode;

    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lio/dcloud/common/util/XmlUtil$DHNode;-><init>(Lorg/w3c/dom/Node;Lio/dcloud/common/util/XmlUtil$1;)V

    move-object v0, v1

    :cond_16
    return-object v0
.end method

.method public static getElement(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Lio/dcloud/common/util/XmlUtil$DHNode;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    instance-of v1, p0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_1d

    .line 2
    check-cast p0, Lorg/w3c/dom/Element;

    .line 3
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 6
    new-instance p1, Lio/dcloud/common/util/XmlUtil$DHNode;

    invoke-direct {p1, p0, v0}, Lio/dcloud/common/util/XmlUtil$DHNode;-><init>(Lorg/w3c/dom/Node;Lio/dcloud/common/util/XmlUtil$1;)V

    return-object p1

    :cond_1d
    return-object v0
.end method

.method public static getElementDocument(Lio/dcloud/common/util/XmlUtil$DHNode;)Lio/dcloud/common/util/XmlUtil$DHNode;
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/common/util/XmlUtil$DHNode;

    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/dcloud/common/util/XmlUtil$DHNode;-><init>(Lorg/w3c/dom/Node;Lio/dcloud/common/util/XmlUtil$1;)V

    return-object v0
.end method

.method public static getElementName(Lio/dcloud/common/util/XmlUtil$DHNode;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getElements(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/common/util/XmlUtil$DHNode;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/util/XmlUtil$DHNode;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    instance-of v1, p0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_2f

    .line 2
    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_2e

    .line 8
    new-instance v3, Lio/dcloud/common/util/XmlUtil$DHNode;

    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lio/dcloud/common/util/XmlUtil$DHNode;-><init>(Lorg/w3c/dom/Node;Lio/dcloud/common/util/XmlUtil$1;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2e
    move-object v0, p1

    :cond_2f
    return-object v0
.end method

.method public static getNodeType(Lio/dcloud/common/util/XmlUtil$DHNode;I)I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, -0x1

    return p0

    .line 1
    :cond_4
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    return p0
.end method

.method public static getRootElement(Lio/dcloud/common/util/XmlUtil$DHNode;)Lio/dcloud/common/util/XmlUtil$DHNode;
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    instance-of v1, p0, Lorg/w3c/dom/Document;

    if-eqz v1, :cond_17

    .line 2
    new-instance v1, Lio/dcloud/common/util/XmlUtil$DHNode;

    check-cast p0, Lorg/w3c/dom/Document;

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lio/dcloud/common/util/XmlUtil$DHNode;-><init>(Lorg/w3c/dom/Node;Lio/dcloud/common/util/XmlUtil$1;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    return-object v1

    :catch_13
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_17
    return-object v0
.end method

.method public static getText(Lio/dcloud/common/util/XmlUtil$DHNode;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-nez p0, :cond_c

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_c
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    instance-of v1, p0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_2d

    .line 6
    check-cast p0, Lorg/w3c/dom/Element;

    .line 7
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_2d

    .line 10
    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 11
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 14
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTextValue(Lio/dcloud/common/util/XmlUtil$DHNode;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Text;

    invoke-interface {p0}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isElement(Ljava/lang/Object;)Z
    .registers 1

    .line 1
    instance-of p0, p0, Lorg/w3c/dom/Element;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static isText(Lio/dcloud/common/util/XmlUtil$DHNode;)Z
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    instance-of p0, p0, Lorg/w3c/dom/Text;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static newDocument()Lio/dcloud/common/util/XmlUtil$DHNode;
    .registers 3

    .line 1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    const/4 v1, 0x0

    .line 6
    :try_start_9
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 7
    new-instance v2, Lio/dcloud/common/util/XmlUtil$DHNode;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lio/dcloud/common/util/XmlUtil$DHNode;-><init>(Lorg/w3c/dom/Node;Lio/dcloud/common/util/XmlUtil$1;)V
    :try_end_16
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_16} :catch_18

    move-object v1, v2

    goto :goto_1c

    :catch_18
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    :goto_1c
    return-object v1
.end method

.method public static newElement(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Lio/dcloud/common/util/XmlUtil$DHNode;
    .registers 3

    .line 1
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 2
    new-instance p1, Lio/dcloud/common/util/XmlUtil$DHNode;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lio/dcloud/common/util/XmlUtil$DHNode;-><init>(Lorg/w3c/dom/Node;Lio/dcloud/common/util/XmlUtil$1;)V

    return-object p1
.end method

.method public static removeAttribute(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    if-nez p0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public static removeChild(Lio/dcloud/common/util/XmlUtil$DHNode;I)V
    .registers 3

    .line 1
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public static removeChild(Lio/dcloud/common/util/XmlUtil$DHNode;Lio/dcloud/common/util/XmlUtil$DHNode;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 2
    :cond_3
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    iget-object p1, p1, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public static setAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    instance-of v0, p0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setText(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.util.XmlUtil.AnonymousClass1 (io.dcloud.common.util.XmlUtil$1)
.class synthetic Lio/dcloud/common/util/XmlUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/XmlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.dcloud.common.util.XmlUtil.DHNode (io.dcloud.common.util.XmlUtil$DHNode)
.class public Lio/dcloud/common/util/XmlUtil$DHNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/XmlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DHNode"
.end annotation


# instance fields
.field mNode:Lorg/w3c/dom/Node;


# direct methods
.method private constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method synthetic constructor <init>(Lorg/w3c/dom/Node;Lio/dcloud/common/util/XmlUtil$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/util/XmlUtil$DHNode;-><init>(Lorg/w3c/dom/Node;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lio/dcloud/common/util/XmlUtil$DHNode;

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    check-cast p1, Lio/dcloud/common/util/XmlUtil$DHNode;

    iget-object p1, p1, Lio/dcloud/common/util/XmlUtil$DHNode;->mNode:Lorg/w3c/dom/Node;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
