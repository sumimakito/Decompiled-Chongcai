.class public Lcn/apppark/vertify/adapter/SoftAdapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
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

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/SoftAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/SoftAdapter;->itemList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/apppark/vertify/adapter/SoftAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/adapter/SoftAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SoftAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SoftAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SoftAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SoftAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03008e

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Ltu;

    invoke-direct {v1}, Ltu;-><init>()V

    const v0, 0x7f0a0370

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, v1, Ltu;->a:Landroid/widget/RatingBar;

    const v0, 0x7f0a036d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Ltu;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a036e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Ltu;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a036f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltu;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0371

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltu;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0372

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Ltu;->f:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/adapter/SoftAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SoftReturnVo;

    if-eqz v0, :cond_0

    iget-object v2, v1, Ltu;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v2, v1, Ltu;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const v3, 0x7f02006f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    const-string v2, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getFeature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Ltu;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Ltu;->c:Landroid/widget/ImageView;

    const v3, 0x7f02013d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v2, v1, Ltu;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Ltu;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Ltu;->a:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getScore()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v1, v1, Ltu;->f:Landroid/widget/Button;

    new-instance v2, Lcn/apppark/vertify/adapter/SoftAdapter$MyonClickListener;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getDownUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0, v5}, Lcn/apppark/vertify/adapter/SoftAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/SoftAdapter;Ljava/lang/String;Ltt;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltu;

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "2"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getFeature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Ltu;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Ltu;->c:Landroid/widget/ImageView;

    const v3, 0x7f020132

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    const-string v2, "3"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getFeature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Ltu;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Ltu;->c:Landroid/widget/ImageView;

    const v3, 0x7f02013b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    iget-object v2, v1, Ltu;->c:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
