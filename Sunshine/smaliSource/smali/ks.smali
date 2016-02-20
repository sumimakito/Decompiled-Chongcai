.class public final Lks;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/PicGallery;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/PicGallery;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lks;->a:Lcn/apppark/vertify/activity/free/dyn/PicGallery;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lks;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lks;->a:Lcn/apppark/vertify/activity/free/dyn/PicGallery;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->c(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    if-nez p2, :cond_1

    new-instance v0, Lkt;

    invoke-direct {v0}, Lkt;-><init>()V

    new-instance v1, Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v2, p0, Lks;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/apppark/mcd/widget/RemoteImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lkt;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v1, v0, Lkt;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/widget/RemoteImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p2, v0, Lkt;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lks;->a:Lcn/apppark/vertify/activity/free/dyn/PicGallery;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->c(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lks;->a:Lcn/apppark/vertify/activity/free/dyn/PicGallery;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->c(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lkt;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v0, p0, Lks;->a:Lcn/apppark/vertify/activity/free/dyn/PicGallery;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->c(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v0, v1, Lkt;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    const v2, 0x7f020071

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    iget-object v2, v1, Lkt;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v2, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lkt;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkt;

    move-object v1, v0

    goto :goto_0
.end method
