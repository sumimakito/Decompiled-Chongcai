.class public final Lqc;
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

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lqc;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lqc;->b:Landroid/content/Context;

    const/4 v0, 0x2

    iput v0, p0, Lqc;->c:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lqc;->a:Ljava/util/ArrayList;

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

    iget v0, p0, Lqc;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-nez p2, :cond_1

    new-instance v0, Lqd;

    invoke-direct {v0}, Lqd;-><init>()V

    new-instance v1, Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v2, p0, Lqc;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/apppark/mcd/widget/RemoteImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lqd;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object p2, v0, Lqd;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lqc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lqc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lqd;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v0, p0, Lqc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SoftReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    iget-object v2, v1, Lqd;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v2, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lqd;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqd;

    move-object v1, v0

    goto :goto_0

    :cond_2
    new-instance p2, Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v0, p0, Lqc;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcn/apppark/mcd/widget/RemoteImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f020071

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v0, p0, Lqc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SoftReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method
