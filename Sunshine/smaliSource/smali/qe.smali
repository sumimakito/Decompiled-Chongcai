.class public final Lqe;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lqe;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lqe;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    const/16 v0, 0x3e8

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
    .locals 6

    const/high16 v5, 0x40a00000    # 5.0f

    if-nez p2, :cond_1

    new-instance v0, Lqf;

    invoke-direct {v0}, Lqf;-><init>()V

    new-instance v1, Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v2, p0, Lqe;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/apppark/mcd/widget/RemoteImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lqf;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object p2, v0, Lqf;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lqe;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lqe;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SoftReturnVo;

    if-eqz v0, :cond_0

    iget-object v2, v1, Lqf;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    sget v2, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    const/high16 v4, 0x42d00000    # 104.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    iget-object v2, v1, Lqf;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v2, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lqf;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-static {v5}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    invoke-static {v5}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v3

    invoke-static {v5}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v4

    invoke-static {v5}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setPadding(IIII)V

    iget-object v0, v1, Lqf;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqf;

    move-object v1, v0

    goto :goto_0
.end method
