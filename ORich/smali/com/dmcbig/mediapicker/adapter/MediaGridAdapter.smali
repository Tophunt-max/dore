###### Class com.dmcbig.mediapicker.adapter.MediaGridAdapter (com.dmcbig.mediapicker.adapter.MediaGridAdapter)
.class public Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;,
        Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;,
        Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field fileUtils:Lcom/dmcbig/mediapicker/utils/FileUtils;

.field isSingle:Z

.field private mOnItemClickListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;

.field private mOnMaxListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;

.field maxSelect:J

.field maxSize:J

.field medias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;"
        }
    .end annotation
.end field

.field selectMedias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/ArrayList;IJZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;IJZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Lcom/dmcbig/mediapicker/utils/FileUtils;

    invoke-direct {v0}, Lcom/dmcbig/mediapicker/utils/FileUtils;-><init>()V

    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->fileUtils:Lcom/dmcbig/mediapicker/utils/FileUtils;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->isSingle:Z

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->mOnItemClickListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;

    .line 166
    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->mOnMaxListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;

    if-eqz p3, :cond_1d

    .line 167
    iput-object p3, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    :cond_1d
    int-to-long p3, p4

    .line 169
    iput-wide p3, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->maxSelect:J

    .line 170
    iput-wide p5, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->maxSize:J

    .line 171
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->medias:Ljava/util/ArrayList;

    .line 172
    iput-object p2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    .line 173
    iput-boolean p7, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->isSingle:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->mOnItemClickListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->mOnMaxListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->medias:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemIndex(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->medias:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method getItemWidth()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/dmcbig/mediapicker/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/dmcbig/mediapicker/PickerConfig;->GridSpanCount:I

    div-int/2addr v0, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMedias()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->medias:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectMedias()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSelect(Lcom/dmcbig/mediapicker/entity/Media;)I
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-gtz v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    .line 4
    :goto_b
    iget-object v2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2e

    .line 5
    iget-object v2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dmcbig/mediapicker/entity/Media;

    .line 6
    iget-object v3, v2, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    iget-object v4, p1, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 7
    iget p1, p1, Lcom/dmcbig/mediapicker/entity/Media;->id:I

    iput p1, v2, Lcom/dmcbig/mediapicker/entity/Media;->id:I

    move v1, v0

    goto :goto_2e

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2e
    :goto_2e
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->onBindViewHolder(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;I)V
    .registers 9

    .line 2
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->medias:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dmcbig/mediapicker/entity/Media;

    .line 5
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 6
    iget v1, p2, Lcom/dmcbig/mediapicker/entity/Media;->mediaType:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_15

    if-eq v1, v2, :cond_13

    goto :goto_15

    .line 11
    :cond_13
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 14
    :cond_15
    :goto_15
    iget v1, p2, Lcom/dmcbig/mediapicker/entity/Media;->id:I

    int-to-long v3, v1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->media_image:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 20
    iget v0, p2, Lcom/dmcbig/mediapicker/entity/Media;->mediaType:I

    const/4 v1, 0x0

    const/4 v3, 0x4

    if-ne v0, v2, :cond_4a

    .line 21
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->gif_info:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 22
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->video_info:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 23
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->textView_size:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->fileUtils:Lcom/dmcbig/mediapicker/utils/FileUtils;

    iget-wide v4, p2, Lcom/dmcbig/mediapicker/entity/Media;->size:J

    long-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/dmcbig/mediapicker/utils/FileUtils;->getSizeByUnit(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_61

    .line 25
    :cond_4a
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->video_info:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 26
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->gif_info:Landroid/widget/RelativeLayout;

    iget-object v2, p2, Lcom/dmcbig/mediapicker/entity/Media;->extension:Ljava/lang/String;

    const-string v4, ".gif"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const/4 v2, 0x0

    goto :goto_5e

    :cond_5d
    const/4 v2, 0x4

    :goto_5e
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 28
    :goto_61
    invoke-virtual {p0, p2}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->isSelect(Lcom/dmcbig/mediapicker/entity/Media;)I

    move-result v0

    .line 29
    iget-boolean v2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->isSingle:Z

    if-nez v2, :cond_87

    .line 30
    iget-object v2, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->mask_view:Landroid/view/View;

    if-ltz v0, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v1, 0x4

    :goto_6f
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object v1, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->check_image:Landroid/widget/ImageView;

    if-ltz v0, :cond_7b

    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_DRAWABLE_BNT_SELECTED:I

    goto :goto_7f

    :cond_7b
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_DRAWABLE_BNT_UNSELECTED:I

    :goto_7f
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_93

    .line 33
    :cond_87
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->check_image:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->mask_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :goto_93
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->media_image:Landroid/widget/ImageView;

    new-instance v1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;-><init>(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;Lcom/dmcbig/mediapicker/entity/Media;Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;
    .registers 5

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_LAYOUT_MEDIA_VIEW_ITEM:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;-><init>(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->mOnItemClickListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;

    return-void
.end method

.method public setOnMaxListener(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->mOnMaxListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;

    return-void
.end method

.method public setSelectMedias(Lcom/dmcbig/mediapicker/entity/Media;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->isSelect(Lcom/dmcbig/mediapicker/entity/Media;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 3
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 5
    :cond_d
    iget-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_12
    return-void
.end method

.method public updateAdapter(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->medias:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateSelectAdapter(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    .line 3
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

###### Class com.dmcbig.mediapicker.adapter.MediaGridAdapter.AnonymousClass1 (com.dmcbig.mediapicker.adapter.MediaGridAdapter$1)
.class Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->onBindViewHolder(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

.field final synthetic val$holder:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

.field final synthetic val$media:Lcom/dmcbig/mediapicker/entity/Media;


# direct methods
.method constructor <init>(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;Lcom/dmcbig/mediapicker/entity/Media;Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iput-object p2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$media:Lcom/dmcbig/mediapicker/entity/Media;

    iput-object p3, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$holder:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-boolean v1, v0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->isSingle:Z

    if-eqz v1, :cond_11

    .line 2
    invoke-static {v0}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->access$000(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$media:Lcom/dmcbig/mediapicker/entity/Media;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;->onItemClick(Landroid/view/View;Lcom/dmcbig/mediapicker/entity/Media;Ljava/util/ArrayList;)V

    return-void

    .line 5
    :cond_11
    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$media:Lcom/dmcbig/mediapicker/entity/Media;

    invoke-virtual {v0, v1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->isSelect(Lcom/dmcbig/mediapicker/entity/Media;)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-object v1, v1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-wide v4, v3, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->maxSelect:J

    cmp-long v6, v1, v4

    if-ltz v6, :cond_3a

    if-gez v0, :cond_3a

    .line 7
    invoke-static {v3}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->access$100(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;

    move-result-object p1

    if-eqz p1, :cond_ac

    .line 8
    iget-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-static {p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->access$100(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;->onMaxed()V

    goto :goto_ac

    .line 12
    :cond_3a
    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$media:Lcom/dmcbig/mediapicker/entity/Media;

    iget-wide v1, v1, Lcom/dmcbig/mediapicker/entity/Media;->size:J

    iget-wide v4, v3, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->maxSize:J

    cmp-long v6, v1, v4

    if-lez v6, :cond_70

    .line 13
    iget-object p1, v3, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-object v1, v1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_MSG_SIZE_LIMIT:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-wide v1, v1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->maxSize:J

    invoke-static {v1, v2}, Lcom/dmcbig/mediapicker/utils/FileUtils;->fileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    goto :goto_ac

    .line 15
    :cond_70
    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$holder:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->mask_view:Landroid/view/View;

    if-ltz v0, :cond_78

    const/4 v2, 0x4

    goto :goto_79

    :cond_78
    const/4 v2, 0x0

    :goto_79
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$holder:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->check_image:Landroid/widget/ImageView;

    if-ltz v0, :cond_89

    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-object v0, v0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_DRAWABLE_BNT_UNSELECTED:I

    goto :goto_8f

    :cond_89
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-object v0, v0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_DRAWABLE_BNT_SELECTED:I

    :goto_8f
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$media:Lcom/dmcbig/mediapicker/entity/Media;

    invoke-virtual {v0, v1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->setSelectMedias(Lcom/dmcbig/mediapicker/entity/Media;)V

    .line 18
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-static {v0}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->access$000(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$media:Lcom/dmcbig/mediapicker/entity/Media;

    iget-object v2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-object v2, v2, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    invoke-interface {v0, p1, v1, v2}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;->onItemClick(Landroid/view/View;Lcom/dmcbig/mediapicker/entity/Media;Ljava/util/ArrayList;)V

    :cond_ac
    :goto_ac
    return-void
.end method

###### Class com.dmcbig.mediapicker.adapter.MediaGridAdapter.MyViewHolder (com.dmcbig.mediapicker.adapter.MediaGridAdapter$MyViewHolder)
.class public Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public check_image:Landroid/widget/ImageView;

.field public gif_info:Landroid/widget/RelativeLayout;

.field public mask_view:Landroid/view/View;

.field public media_image:Landroid/widget/ImageView;

.field public textView_size:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

.field public video_info:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;Landroid/view/View;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_MEDIA_IMAGE:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->media_image:Landroid/widget/ImageView;

    .line 4
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_CHECK_IMAGE:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->check_image:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_MASK_VIEW:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->mask_view:Landroid/view/View;

    .line 6
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_VIDEO_INFO:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->video_info:Landroid/widget/RelativeLayout;

    .line 7
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_GIF_INFO:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->gif_info:Landroid/widget/RelativeLayout;

    .line 8
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_TEXTVIEW_SIZE:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->textView_size:Landroid/widget/TextView;

    .line 9
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getItemWidth()I

    move-result p1

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

###### Class com.dmcbig.mediapicker.adapter.MediaGridAdapter.OnPickerSelectMaxListener (com.dmcbig.mediapicker.adapter.MediaGridAdapter$OnPickerSelectMaxListener)
.class public interface abstract Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPickerSelectMaxListener"
.end annotation


# virtual methods
.method public abstract onMaxed()V
.end method

###### Class com.dmcbig.mediapicker.adapter.MediaGridAdapter.OnRecyclerViewItemClickListener (com.dmcbig.mediapicker.adapter.MediaGridAdapter$OnRecyclerViewItemClickListener)
.class public interface abstract Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRecyclerViewItemClickListener"
.end annotation


# virtual methods
.method public abstract onItemClick(Landroid/view/View;Lcom/dmcbig/mediapicker/entity/Media;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;)V"
        }
    .end annotation
.end method
