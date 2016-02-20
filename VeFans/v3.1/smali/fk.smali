.class public final Lfk;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)V
    .locals 0

    iput-object p1, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->b(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v4, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->b(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lfl;

    invoke-direct {v1, p0}, Lfl;-><init>(Lfk;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->b(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    iget-object v2, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    const-class v0, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-static {v1, v0}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->a(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Lcn/apppark/mcd/vo/buy/BuyProductVo;)Lcn/apppark/mcd/vo/buy/BuyProductVo;

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    const-string v2, "\u6570\u636e\u83b7\u53d6\u5931\u8d25"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->a(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->c(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Lcn/apppark/mcd/vo/buy/BuyProductVo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->d(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0, v3}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->a(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Z)Z

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->e(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    const-string v2, "\u52a0\u5165\u8d2d\u7269\u8f66\u5931\u8d25"

    const-string v3, "\u52a0\u5165\u8d2d\u7269\u8f66\u6210\u529f"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->b(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->c(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Lcn/apppark/mcd/vo/buy/BuyProductVo;

    move-result-object v0

    iget-object v1, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->c(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Lcn/apppark/mcd/vo/buy/BuyProductVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getProductSum()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->setProductSum(I)V

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->f(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)V

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->g(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->g(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->g(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0, v3}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->a(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Z)Z

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->e(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    const-string v2, "\u6536\u85cf\u5931\u8d25"

    const-string v3, "\u6536\u85cf\u6210\u529f"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->c(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->a(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->h(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0, v3}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->a(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Z)Z

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->e(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    const-string v2, "\u53d6\u6d88\u6536\u85cf\u5931\u8d25"

    const-string v3, "\u53d6\u6d88\u6536\u85cf\u6210\u529f"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->d(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->a(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->h(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    :pswitch_4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "totalNumber"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->g(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->g(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v1, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->g(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lfk;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->g(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
