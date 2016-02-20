.class public final Lfs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuySelProvience;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuySelProvience;)V
    .locals 0

    iput-object p1, p0, Lfs;->a:Lcn/apppark/vertify/activity/buy/BuySelProvience;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lfs;->a:Lcn/apppark/vertify/activity/buy/BuySelProvience;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySelProvience;->a(Lcn/apppark/vertify/activity/buy/BuySelProvience;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->getProvience_id()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/apppark/vertify/activity/buy/BuySelProvience;->province_id:Ljava/lang/String;

    iget-object v0, p0, Lfs;->a:Lcn/apppark/vertify/activity/buy/BuySelProvience;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySelProvience;->a(Lcn/apppark/vertify/activity/buy/BuySelProvience;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/apppark/vertify/activity/buy/BuySelProvience;->province_name:Ljava/lang/String;

    const-string v0, "710000"

    sget-object v1, Lcn/apppark/vertify/activity/buy/BuySelProvience;->province_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "810000"

    sget-object v1, Lcn/apppark/vertify/activity/buy/BuySelProvience;->province_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "820000"

    sget-object v1, Lcn/apppark/vertify/activity/buy/BuySelProvience;->province_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "830000"

    sget-object v1, Lcn/apppark/vertify/activity/buy/BuySelProvience;->province_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "name"

    sget-object v2, Lcn/apppark/vertify/activity/buy/BuySelProvience;->province_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "id"

    sget-object v2, Lcn/apppark/vertify/activity/buy/BuySelProvience;->province_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lfs;->a:Lcn/apppark/vertify/activity/buy/BuySelProvience;

    invoke-virtual {v1, v4, v0}, Lcn/apppark/vertify/activity/buy/BuySelProvience;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lfs;->a:Lcn/apppark/vertify/activity/buy/BuySelProvience;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuySelProvience;->finish()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfs;->a:Lcn/apppark/vertify/activity/buy/BuySelProvience;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuySelProvience;->b(Lcn/apppark/vertify/activity/buy/BuySelProvience;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/apppark/vertify/activity/buy/BuySelProvience;->province_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    sget-object v2, Lcn/apppark/vertify/activity/buy/BuySelProvience;->province_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lfs;->a:Lcn/apppark/vertify/activity/buy/BuySelProvience;

    invoke-virtual {v1, v0, v4}, Lcn/apppark/vertify/activity/buy/BuySelProvience;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
