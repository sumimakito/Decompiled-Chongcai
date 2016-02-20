.class public final Lbq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyAddressList;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyAddressList;)V
    .locals 0

    iput-object p1, p0, Lbq;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lbq;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->f(Lcn/apppark/vertify/activity/buy/BuyAddressList;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lbq;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->c(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "address"

    iget-object v0, p0, Lbq;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lbq;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-virtual {v0, v3, v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lbq;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lbq;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->a(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "addressvo"

    iget-object v0, p0, Lbq;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lbq;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-virtual {v0, v1, v3}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
