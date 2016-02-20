.class public final Ldl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)V
    .locals 0

    iput-object p1, p0, Ldl;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Ldl;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->e(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Ldl;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->a(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;Z)Z

    iget-object v1, p0, Ldl;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    iget-object v0, p0, Ldl;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->d(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Ldl;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->f(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->a(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;Ljava/lang/String;I)V

    return-void
.end method
