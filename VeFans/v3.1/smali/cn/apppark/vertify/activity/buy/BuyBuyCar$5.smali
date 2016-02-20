.class Lcn/apppark/vertify/activity/buy/BuyBuyCar$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$5;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, ""

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$5;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$5;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$5;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$5;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u5546\u54c1\u6570\u91cf\u5df2\u4fee\u6539,\u8bf7\u4fdd\u5b58"

    invoke-virtual {v0, v1, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v2, v3

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$5;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$5;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->isSel()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$5;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u8bf7\u9009\u62e9\u81f3\u5c11\u4e00\u4ef6\u5546\u54c1"

    invoke-virtual {v0, v1, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$5;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->d(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$5;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0, v3}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Z)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$5;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->e(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar$5;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
