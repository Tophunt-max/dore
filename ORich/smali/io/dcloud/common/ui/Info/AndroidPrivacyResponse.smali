###### Class io.dcloud.common.ui.Info.AndroidPrivacyResponse (io.dcloud.common.ui.Info.AndroidPrivacyResponse)
.class public Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;,
        Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;
    }
.end annotation


# instance fields
.field public buttonAccept:Ljava/lang/String;

.field public buttonRefuse:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public prompt:Ljava/lang/String;

.field public second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

.field public styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

.field public title:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    invoke-direct {v0}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    .line 3
    new-instance v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    invoke-direct {v0}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    return-void
.end method

###### Class io.dcloud.common.ui.Info.AndroidPrivacyResponse.SecondDTO (io.dcloud.common.ui.Info.AndroidPrivacyResponse$SecondDTO)
.class public Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecondDTO"
.end annotation


# instance fields
.field public buttonAccept:Ljava/lang/String;

.field public buttonRefuse:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.common.ui.Info.AndroidPrivacyResponse.StylesDTO (io.dcloud.common.ui.Info.AndroidPrivacyResponse$StylesDTO)
.class public Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StylesDTO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;,
        Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;,
        Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;
    }
.end annotation


# instance fields
.field public backgroundColor:Ljava/lang/String;

.field public borderRadius:Ljava/lang/String;

.field public buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

.field public buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

.field public title:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.common.ui.Info.AndroidPrivacyResponse.StylesDTO.ButtonAcceptDTO (io.dcloud.common.ui.Info.AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO)
.class public Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonAcceptDTO"
.end annotation


# instance fields
.field public color:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.common.ui.Info.AndroidPrivacyResponse.StylesDTO.ButtonRefuseDTO (io.dcloud.common.ui.Info.AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO)
.class public Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonRefuseDTO"
.end annotation


# instance fields
.field public color:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.common.ui.Info.AndroidPrivacyResponse.StylesDTO.TitleDTO (io.dcloud.common.ui.Info.AndroidPrivacyResponse$StylesDTO$TitleDTO)
.class public Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleDTO"
.end annotation


# instance fields
.field public color:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
