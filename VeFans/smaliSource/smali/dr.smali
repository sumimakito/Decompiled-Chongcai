.class public final Ldr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)V
    .locals 0

    iput-object p1, p0, Ldr;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ldr;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/buy/BuySelectRemark;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "operatetype"

    sget v2, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->OPERATE_GET_REASON:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Ldr;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
