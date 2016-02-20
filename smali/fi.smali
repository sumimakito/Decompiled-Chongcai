.class public final Lfi;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

.field private b:Landroid/content/Context;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfi;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lfi;->b:Landroid/content/Context;

    iput-object p3, p0, Lfi;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lfi;->c:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfi;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    if-nez p2, :cond_1

    new-instance v0, Lfj;

    invoke-direct {v0}, Lfj;-><init>()V

    new-instance v1, Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v2, p0, Lfi;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/apppark/mcd/widget/RemoteImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lfj;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v1, v0, Lfj;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/widget/RemoteImageView;->setAdjustViewBounds(Z)V

    iget-object v1, v0, Lfj;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    const v2, 0x7f02006f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v1, v0, Lfj;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/widget/RemoteImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, v0, Lfj;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, v0, Lfj;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lfi;->c:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, p1, :cond_0

    iget-object v0, v0, Lfj;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v1, p0, Lfi;->c:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfj;

    goto :goto_0
.end method
