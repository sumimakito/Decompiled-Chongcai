.class Lcn/apppark/vertify/activity/buy/BuyAddressList$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyAddressList;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/buy/BuyAddressList;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList$3;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList$3;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList$3;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList$3;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->c(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->a(Lcn/apppark/vertify/activity/buy/BuyAddressList;Z)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList$3;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->c(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList$3;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->d(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Landroid/widget/Button;

    move-result-object v0

    const-string v2, "\u5b8c\u6210"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList$3;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList$3;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList$3;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->c(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->setEdit(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList$3;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->e(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->notifyDataSetChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList$3;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->d(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Landroid/widget/Button;

    move-result-object v0

    const-string v2, "\u7f16\u8f91"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    return-void
.end method
