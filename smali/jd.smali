.class public final Ljd;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljd;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Ljd;->b:Landroid/content/Context;

    iput-object p3, p0, Ljd;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Ljd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, -0x1

    new-instance v1, Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v0, p0, Ljd;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ljd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getGalleryPic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    const v0, 0x7f02006f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method
