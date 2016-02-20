.class public Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private temp:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/apppark/vertify/activity/buy/BuyOrderTemp;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->itemList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->context:Landroid/content/Context;

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->temp:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;)Lcn/apppark/vertify/activity/buy/BuyOrderTemp;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->temp:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    return-object v0
.end method

.method private initProducts(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyProductVo;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    move v6, v7

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v0, 0x7f0a0137

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    const v1, 0x7f0a0138

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0139

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a013a

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a013b

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->isHavaStore()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f02006f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getPicPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->itemList:Ljava/util/ArrayList;

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
    .locals 9

    const v8, 0x7f020050

    const v7, 0x7f02004e

    const/16 v6, 0x8

    const/4 v5, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lgw;

    invoke-direct {v1}, Lgw;-><init>()V

    const v0, 0x7f0a0132

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lgw;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lgw;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0136

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lgw;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0134

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lgw;->c:Landroid/widget/Button;

    const v0, 0x7f0a0135

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lgw;->d:Landroid/widget/Button;

    const v0, 0x7f0a0131

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lgw;->f:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lgw;->c:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;

    if-eqz v0, :cond_0

    iget-object v2, v1, Lgw;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\uffe5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getTotalPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lgw;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u91cf:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getTotalNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lgw;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getOrderItem()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v1, Lgw;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v3}, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->initProducts(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getRemark()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lgw;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const-string v3, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getIsPayInline()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lgw;->c:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    const-string v3, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getIsPayMoney()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lgw;->d:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    const-string v3, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getIsSelPayOnLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lgw;->c:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, v1, Lgw;->d:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, v1, Lgw;->c:Landroid/widget/Button;

    const-string v3, "#50c6f8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, v1, Lgw;->d:Landroid/widget/Button;

    const-string v3, "#666666"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    :goto_4
    iget-object v0, v1, Lgw;->e:Landroid/widget/TextView;

    new-instance v3, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;

    invoke-direct {v3, p0, p1, v2}, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;-><init>(Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lgw;->c:Landroid/widget/Button;

    new-instance v2, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;

    invoke-direct {v2, p0, p1}, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;-><init>(Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lgw;->d:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;

    invoke-direct {v1, p0, p1}, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;-><init>(Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgw;

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v3, v1, Lgw;->e:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lgw;->e:Landroid/widget/TextView;

    const-string v4, "\u8bf7\u544a\u8bc9\u5356\u5bb6\u60a8\u5bf9\u5546\u54c1\u7684\u7279\u6b8a\u9700\u6c42"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    iget-object v3, v1, Lgw;->c:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v3, v1, Lgw;->d:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object v0, v1, Lgw;->c:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, v1, Lgw;->d:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, v1, Lgw;->c:Landroid/widget/Button;

    const-string v3, "#666666"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, v1, Lgw;->d:Landroid/widget/Button;

    const-string v3, "#50c6f8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_4
.end method
