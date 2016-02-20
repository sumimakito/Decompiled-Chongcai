.class public final Lfp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuySelCity;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuySelCity;)V
    .locals 0

    iput-object p1, p0, Lfp;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v0, p0, Lfp;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->a(Lcn/apppark/vertify/activity/buy/BuySelCity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->isNext()Z

    move-result v0

    if-ne v0, v5, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lfp;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->b(Lcn/apppark/vertify/activity/buy/BuySelCity;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcn/apppark/vertify/activity/buy/BuySelArea;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "cityid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lfp;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->a(Lcn/apppark/vertify/activity/buy/BuySelCity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->getCity_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "name"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lfp;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuySelCity;->c(Lcn/apppark/vertify/activity/buy/BuySelCity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lfp;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->a(Lcn/apppark/vertify/activity/buy/BuySelCity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lfp;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-virtual {v0, v1, v5}, Lcn/apppark/vertify/activity/buy/BuySelCity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lfp;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->a(Lcn/apppark/vertify/activity/buy/BuySelCity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lfp;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-static {v4}, Lcn/apppark/vertify/activity/buy/BuySelCity;->c(Lcn/apppark/vertify/activity/buy/BuySelCity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "id"

    iget-object v0, p0, Lfp;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->a(Lcn/apppark/vertify/activity/buy/BuySelCity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->getCity_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lfp;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-virtual {v0, v5, v1}, Lcn/apppark/vertify/activity/buy/BuySelCity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lfp;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->finish()V

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method
