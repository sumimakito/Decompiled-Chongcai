.class Lcn/apppark/vertify/activity/buy/BuyBuyCar$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$4;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$4;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$4;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$4;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->isShowEdit()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$4;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->b(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/Button;

    move-result-object v0

    const-string v3, "\u5b8c\u6210"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$4;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$4;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->setShowEdit(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$4;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->c(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->notifyDataSetChanged()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$4;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->b(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/Button;

    move-result-object v0

    const-string v3, "\u7f16\u8f91"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    return-void
.end method
