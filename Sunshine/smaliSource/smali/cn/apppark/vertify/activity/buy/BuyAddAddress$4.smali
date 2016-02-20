.class Lcn/apppark/vertify/activity/buy/BuyAddAddress$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$4;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$4;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$4;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->j(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcn/apppark/vertify/activity/buy/BuySelProvience;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
