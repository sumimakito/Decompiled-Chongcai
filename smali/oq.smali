.class public final Loq;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/SmsRegNew;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/SmsRegNew;)V
    .locals 0

    iput-object p1, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->a(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    iget-object v2, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v2}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->b(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/mcd/widget/MyEditText2;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->checkPhoneStateResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->c(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    iget-object v2, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v2}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->b(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/mcd/widget/MyEditText2;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->checkSmsCodeResult(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->d(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v2, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    const-class v0, Lcn/apppark/mcd/vo/buy/BuyRegVo;

    invoke-static {v1, v0}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyRegVo;

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->a(Lcn/apppark/vertify/activity/persion/SmsRegNew;Lcn/apppark/mcd/vo/buy/BuyRegVo;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    iget-object v2, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    const v3, 0x7f08003e

    invoke-virtual {v2, v3}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    const v4, 0x7f08003f

    invoke-virtual {v3, v4}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->a(Lcn/apppark/vertify/activity/persion/SmsRegNew;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->e(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->f(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    iget-object v1, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->e(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyRegVo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserId(Ljava/lang/String;)V

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->g(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    iget-object v1, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->b(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/mcd/widget/MyEditText2;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updatePhone(Ljava/lang/String;)V

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->i(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    iget-object v1, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->h(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/mcd/widget/MyEditText2;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserNikeName(Ljava/lang/String;)V

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->j(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    iget-object v1, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->e(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyRegVo;->getSex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserSex(Ljava/lang/String;)V

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->k(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    iget-object v1, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->e(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyRegVo;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserEmail(Ljava/lang/String;)V

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->l(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserHeadFace(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-virtual {v0, v5}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->setResult(I)V

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->finish()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->e(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "2"

    iget-object v1, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->e(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/mcd/vo/buy/BuyRegVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyRegVo;->getRetFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->setResult(I)V

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->finish()V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->m(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->checkPicResult(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->n(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    iget v2, v2, Lcn/apppark/vertify/activity/persion/SmsRegNew;->waitSecond:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79d2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    iget v0, v0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->waitSecond:I

    if-gtz v0, :cond_3

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->n(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->n(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->n(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->n(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Loq;->a:Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->n(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4
        0xc -> :sswitch_2
    .end sparse-switch
.end method
