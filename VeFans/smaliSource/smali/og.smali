.class public final Log;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/RegNewStep2;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/RegNewStep2;)V
    .locals 0

    iput-object p1, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

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
    iget-object v0, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->a(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v2, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    const-class v0, Lcn/apppark/mcd/vo/buy/BuyRegVo;

    invoke-static {v1, v0}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyRegVo;

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->a(Lcn/apppark/vertify/activity/persion/RegNewStep2;Lcn/apppark/mcd/vo/buy/BuyRegVo;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    iget-object v0, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    iget-object v2, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    const v3, 0x7f08003e

    invoke-virtual {v2, v3}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    const v4, 0x7f08003f

    invoke-virtual {v3, v4}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->a(Lcn/apppark/vertify/activity/persion/RegNewStep2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->b(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    iget-object v1, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->c(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->b(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyRegVo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserId(Ljava/lang/String;)V

    iget-object v1, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->b(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyRegVo;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updatePhone(Ljava/lang/String;)V

    iget-object v1, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->b(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyRegVo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserNikeName(Ljava/lang/String;)V

    iget-object v1, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->b(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyRegVo;->getSex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserSex(Ljava/lang/String;)V

    iget-object v1, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->b(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyRegVo;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserEmail(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserHeadFace(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->setResult(I)V

    iget-object v0, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->finish()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "2"

    iget-object v1, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->b(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyRegVo;->getRetFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->setResult(I)V

    iget-object v0, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->finish()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->d(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    const-string v2, "\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v2, v5}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->b(Lcn/apppark/vertify/activity/persion/RegNewStep2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    const-class v0, Lcn/apppark/mcd/vo/buy/BuyRegVo;

    invoke-static {v1, v0}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyRegVo;

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->a(Lcn/apppark/vertify/activity/persion/RegNewStep2;Lcn/apppark/mcd/vo/buy/BuyRegVo;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    iget-object v0, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->b(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->e(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Lcn/apppark/mcd/widget/RemoteImageView;

    move-result-object v0

    iget-object v1, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->b(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyRegVo;->getCodePngUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Log;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->e(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Lcn/apppark/mcd/widget/RemoteImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
