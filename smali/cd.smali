.class public final Lcd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)V
    .locals 0

    iput-object p1, p0, Lcd;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcd;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Z)Z

    iget-object v0, p0, Lcd;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->e(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcd;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    iget-object v0, p0, Lcd;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcd;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->g(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->b(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/lang/String;I)V

    return-void
.end method
