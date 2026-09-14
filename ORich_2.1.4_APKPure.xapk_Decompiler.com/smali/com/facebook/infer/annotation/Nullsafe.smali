###### Class com.facebook.infer.annotation.Nullsafe (com.facebook.infer.annotation.Nullsafe)
.class public interface abstract annotation Lcom/facebook/infer/annotation/Nullsafe;
.super Ljava/lang/Object;
.source "Nullsafe.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/facebook/infer/annotation/Nullsafe;
        trustOnly = .subannotation Lcom/facebook/infer/annotation/Nullsafe$TrustList;
            trustAll = true
            value = {}
        .end subannotation
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/infer/annotation/Nullsafe$TrustList;,
        Lcom/facebook/infer/annotation/Nullsafe$Mode;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Ljavax/annotation/Nonnull;
.end annotation

.annotation runtime Ljavax/annotation/meta/TypeQualifierDefault;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/annotations/jvm/UnderMigration;
    status = .enum Lkotlin/annotations/jvm/MigrationStatus;->STRICT:Lkotlin/annotations/jvm/MigrationStatus;
.end annotation


# virtual methods
.method public abstract trustOnly()Lcom/facebook/infer/annotation/Nullsafe$TrustList;
.end method

.method public abstract value()Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end method

###### Class com.facebook.infer.annotation.Nullsafe.Mode (com.facebook.infer.annotation.Nullsafe$Mode)
.class public final enum Lcom/facebook/infer/annotation/Nullsafe$Mode;
.super Ljava/lang/Enum;
.source "Nullsafe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/infer/annotation/Nullsafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/infer/annotation/Nullsafe$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/infer/annotation/Nullsafe$Mode;

.field public static final enum LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;

.field public static final enum STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 109
    new-instance v0, Lcom/facebook/infer/annotation/Nullsafe$Mode;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/infer/annotation/Nullsafe$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;

    .line 110
    new-instance v1, Lcom/facebook/infer/annotation/Nullsafe$Mode;

    const-string v3, "STRICT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/infer/annotation/Nullsafe$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/infer/annotation/Nullsafe$Mode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 108
    sput-object v3, Lcom/facebook/infer/annotation/Nullsafe$Mode;->$VALUES:[Lcom/facebook/infer/annotation/Nullsafe$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/infer/annotation/Nullsafe$Mode;
    .registers 2

    .line 108
    const-class v0, Lcom/facebook/infer/annotation/Nullsafe$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/infer/annotation/Nullsafe$Mode;

    return-object p0
.end method

.method public static values()[Lcom/facebook/infer/annotation/Nullsafe$Mode;
    .registers 1

    .line 108
    sget-object v0, Lcom/facebook/infer/annotation/Nullsafe$Mode;->$VALUES:[Lcom/facebook/infer/annotation/Nullsafe$Mode;

    invoke-virtual {v0}, [Lcom/facebook/infer/annotation/Nullsafe$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/infer/annotation/Nullsafe$Mode;

    return-object v0
.end method

###### Class com.facebook.infer.annotation.Nullsafe.TrustList (com.facebook.infer.annotation.Nullsafe$TrustList)
.class public interface abstract annotation Lcom/facebook/infer/annotation/Nullsafe$TrustList;
.super Ljava/lang/Object;
.source "Nullsafe.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/facebook/infer/annotation/Nullsafe$TrustList;
        trustAll = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/infer/annotation/Nullsafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TrustList"
.end annotation


# virtual methods
.method public abstract trustAll()Z
.end method

.method public abstract value()[Ljava/lang/Class;
.end method
