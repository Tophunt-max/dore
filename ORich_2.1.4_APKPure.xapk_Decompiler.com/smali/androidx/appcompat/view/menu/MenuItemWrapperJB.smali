###### Class androidx.appcompat.view.menu.MenuItemWrapperJB (androidx.appcompat.view.menu.MenuItemWrapperJB)
.class Landroidx/appcompat/view/menu/MenuItemWrapperJB;
.super Landroidx/appcompat/view/menu/MenuItemWrapperICS;
.source "MenuItemWrapperJB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    return-void
.end method


# virtual methods
.method createActionProviderWrapper(Landroid/view/ActionProvider;)Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    .registers 4

    .line 44
    new-instance v0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;

    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;-><init>(Landroidx/appcompat/view/menu/MenuItemWrapperJB;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method

###### Class androidx.appcompat.view.menu.MenuItemWrapperJB.ActionProviderWrapperJB (androidx.appcompat.view.menu.MenuItemWrapperJB$ActionProviderWrapperJB)
.class Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
.super Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
.source "MenuItemWrapperJB.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/MenuItemWrapperJB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionProviderWrapperJB"
.end annotation


# instance fields
.field mListener:Landroidx/core/view/ActionProvider$VisibilityListener;

.field final synthetic this$0:Landroidx/appcompat/view/menu/MenuItemWrapperJB;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/MenuItemWrapperJB;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .registers 4

    .line 51
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->this$0:Landroidx/appcompat/view/menu/MenuItemWrapperJB;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;-><init>(Landroidx/appcompat/view/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 2

    .line 67
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .registers 3

    .line 83
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_7

    .line 84
    invoke-interface {v0, p1}, Landroidx/core/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    :cond_7
    return-void
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 3

    .line 57
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public overridesItemVisibility()Z
    .registers 2

    .line 62
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public refreshVisibility()V
    .registers 2

    .line 72
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->refreshVisibility()V

    return-void
.end method

.method public setVisibilityListener(Landroidx/core/view/ActionProvider$VisibilityListener;)V
    .registers 3

    .line 77
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    .line 78
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    if-eqz p1, :cond_8

    move-object p1, p0

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method
