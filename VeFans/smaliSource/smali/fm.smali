.class public final Lfm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuySelArea;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuySelArea;)V
    .locals 0

    iput-object p1, p0, Lfm;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lfm;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySelArea;->a(Lcn/apppark/vertify/activity/buy/BuySelArea;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lfm;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    invoke-static {v6}, Lcn/apppark/vertify/activity/buy/BuySelArea;->b(Lcn/apppark/vertify/activity/buy/BuySelArea;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5168\u5e02"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lfm;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySelArea;->a(Lcn/apppark/vertify/activity/buy/BuySelArea;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lfm;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcn/apppark/vertify/activity/buy/BuySelArea;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lfm;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuySelArea;->finish()V

    return-void
.end method
