.class Lcn/apppark/vertify/activity/buy/BuyAddAddress$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$1;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "0"

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$1;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->a(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$1;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->a(Lcn/apppark/vertify/activity/buy/BuyAddAddress;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$1;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->b(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$1;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->a(Lcn/apppark/vertify/activity/buy/BuyAddAddress;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$1;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->b(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
