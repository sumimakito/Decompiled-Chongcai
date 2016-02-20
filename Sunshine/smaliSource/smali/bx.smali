.class final Lbx;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItem2ClickListener;


# instance fields
.field final synthetic a:Lbr;


# direct methods
.method constructor <init>(Lbr;)V
    .locals 0

    iput-object p1, p0, Lbx;->a:Lbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRightItem2Click(Landroid/view/View;I)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lbx;->a:Lbr;

    iget-object v0, v0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->a(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "addressvo"

    iget-object v0, p0, Lbx;->a:Lbr;

    iget-object v0, v0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lbx;->a:Lbr;

    iget-object v0, v0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
