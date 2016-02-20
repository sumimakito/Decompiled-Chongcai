.class Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field final synthetic c:Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;->c:Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;->a:I

    return-void
.end method

.method public constructor <init>(Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;->c:Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;->a:I

    iput-object p3, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;->c:Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->a(Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/buy/BuySelectRemark;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0142

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;->c:Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->b(Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;)Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    move-result-object v0

    iget v1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;->a:I

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->setPayType(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0143

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;->c:Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->b(Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;)Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    move-result-object v0

    iget v1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;->a:I

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->setPayType(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "operatetype"

    sget v2, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->OPERATE_GET_REMARK:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "position"

    iget v2, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "remark"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick;->c:Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->b(Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;)Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    move-result-object v1

    sget v2, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->REQUEST_CODE_GET_REMARK:I

    invoke-virtual {v1, v0, v2}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
