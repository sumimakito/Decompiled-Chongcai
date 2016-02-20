.class public Lcn/apppark/vertify/adapter/SelfGalleryViewAdapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private itemArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    iput-object p1, p0, Lcn/apppark/vertify/adapter/SelfGalleryViewAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/SelfGalleryViewAdapter;->itemArr:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfGalleryViewAdapter;->itemArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfGalleryViewAdapter;->itemArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    new-instance v1, Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfGalleryViewAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfGalleryViewAdapter;->itemArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;->getData_pic()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1

    :cond_0
    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method
