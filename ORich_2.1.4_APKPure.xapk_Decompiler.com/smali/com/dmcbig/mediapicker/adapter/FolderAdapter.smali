###### Class com.dmcbig.mediapicker.adapter.FolderAdapter (com.dmcbig.mediapicker.adapter.FolderAdapter)
.class public Lcom/dmcbig/mediapicker/adapter/FolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field folders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Folder;",
            ">;"
        }
    .end annotation
.end field

.field lastSelected:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Folder;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->lastSelected:I

    const-string v0, "layout_inflater"

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 6
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->folders:Ljava/util/ArrayList;

    .line 7
    iput-object p2, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->folders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/dmcbig/mediapicker/entity/Folder;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->folders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dmcbig/mediapicker/entity/Folder;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->getItem(I)Lcom/dmcbig/mediapicker/entity/Folder;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectMedias()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->folders:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->lastSelected:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dmcbig/mediapicker/entity/Folder;

    invoke-virtual {v0}, Lcom/dmcbig/mediapicker/entity/Folder;->getMedias()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_11

    .line 1
    iget-object p2, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_LAYOUT_FOLDERS_VIEW_ITME:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;-><init>(Lcom/dmcbig/mediapicker/adapter/FolderAdapter;Landroid/view/View;)V

    goto :goto_17

    .line 4
    :cond_11
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;

    .line 7
    :goto_17
    invoke-virtual {p0, p1}, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->getItem(I)Lcom/dmcbig/mediapicker/entity/Folder;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/dmcbig/mediapicker/entity/Folder;->getMedias()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_56

    .line 10
    invoke-virtual {v1}, Lcom/dmcbig/mediapicker/entity/Folder;->getMedias()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dmcbig/mediapicker/entity/Media;

    .line 11
    iget-object v3, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_63

    .line 15
    :cond_56
    iget-object v2, p3, Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_DRAWABLE_DEFAULT_IMAGE:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :goto_63
    iget-object v2, p3, Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/dmcbig/mediapicker/entity/Folder;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v2, p3, Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/dmcbig/mediapicker/entity/Folder;->getMedias()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_COUNT_STRING:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p3, p3, Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    iget v1, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->lastSelected:I

    if-ne v1, p1, :cond_9a

    goto :goto_9b

    :cond_9a
    const/4 v0, 0x4

    :goto_9b
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method

.method public setSelectIndex(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->lastSelected:I

    if-ne v0, p1, :cond_5

    return-void

    .line 2
    :cond_5
    iput p1, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->lastSelected:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateAdapter(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Folder;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->folders:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

###### Class com.dmcbig.mediapicker.adapter.FolderAdapter.ViewHolder (com.dmcbig.mediapicker.adapter.FolderAdapter$ViewHolder)
.class Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmcbig/mediapicker/adapter/FolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field cover:Landroid/widget/ImageView;

.field indicator:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field path:Landroid/widget/TextView;

.field size:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dmcbig/mediapicker/adapter/FolderAdapter;


# direct methods
.method constructor <init>(Lcom/dmcbig/mediapicker/adapter/FolderAdapter;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;->this$0:Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget p1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_COVER:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 3
    sget p1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_NAME:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 4
    sget p1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_PATH:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;->path:Landroid/widget/TextView;

    .line 5
    sget p1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_SIZE:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 6
    sget p1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_INDICATOR:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/FolderAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
