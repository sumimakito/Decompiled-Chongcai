.class public Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyOrderVo;",
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
            "Lcn/apppark/mcd/vo/buy/BuyOrderVo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;->itemList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private initProductImg(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyProductVo;",
            ">;)V"
        }
    .end annotation

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v1, v2

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x4

    if-ge v1, v0, :cond_0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v5}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    invoke-static {v5}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v4

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v4, Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;->context:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcn/apppark/mcd/widget/RemoteImageView;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v0, 0x7f02006f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getPicPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;->itemList:Ljava/util/ArrayList;

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

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lgr;

    invoke-direct {v1}, Lgr;-><init>()V

    const v0, 0x7f0a0081

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lgr;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0084

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lgr;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0085

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lgr;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0086

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Lgr;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a0087

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lgr;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0089

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lgr;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0088

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lgr;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0083

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lgr;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0082

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lgr;->g:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getOrderItem()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getOrderItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v3, v2, Lgr;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getOrderItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getPicPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v3, v2, Lgr;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getOrderItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lgr;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v2, Lgr;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, v2, Lgr;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_1
    iget-object v1, v2, Lgr;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8ba2\u5355\u53f7: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getOrderNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lgr;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\uffe5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getTotalPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lgr;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5171 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getTotalNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4ef6\u5546\u54c1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lgr;->c:Landroid/widget/TextView;

    const v3, -0x777778

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_2
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgr;

    move-object v2, v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getOrderItem()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getOrderItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    iget-object v1, v2, Lgr;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v2, Lgr;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v2, Lgr;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getOrderItem()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;->initProductImg(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, v2, Lgr;->c:Landroid/widget/TextView;

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :pswitch_1
    iget-object v0, v2, Lgr;->c:Landroid/widget/TextView;

    const v1, 0x7f02014d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getType()I

    move-result v0

    sget v1, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->PAYTYPE_ONLINE:I

    if-ne v0, v1, :cond_4

    iget-object v0, v2, Lgr;->c:Landroid/widget/TextView;

    const v1, 0x7f02014e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_4
    iget-object v0, v2, Lgr;->c:Landroid/widget/TextView;

    const v1, 0x7f020150

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :pswitch_3
    iget-object v0, v2, Lgr;->c:Landroid/widget/TextView;

    const v1, 0x7f02014f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :pswitch_4
    iget-object v0, v2, Lgr;->c:Landroid/widget/TextView;

    const v1, 0x7f02014b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :pswitch_5
    iget-object v0, v2, Lgr;->c:Landroid/widget/TextView;

    const v1, 0x7f02014c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
