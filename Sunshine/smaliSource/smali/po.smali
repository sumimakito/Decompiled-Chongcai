.class public final Lpo;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)V
    .locals 0

    iput-object p1, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->a(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    iget-object v2, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-static {v2}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->b(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Lcn/apppark/mcd/widget/MyEditText2;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->checkPhoneStateResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->c(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    iget-object v2, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-static {v2}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->b(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Lcn/apppark/mcd/widget/MyEditText2;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v3, v2}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->checkSmsCodeResult(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->d(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    const-string v2, "\u63d0\u4ea4\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-static {v1, v0, v2}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->a(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-virtual {v0, v3}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->setResult(I)V

    iget-object v0, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->finish()V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->e(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->checkPicResult(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->f(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    iget v2, v2, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->waitSecond:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79d2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    iget v0, v0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->waitSecond:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->f(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->f(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->f(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->f(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02011d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lpo;->a:Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->f(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4
        0xc -> :sswitch_2
    .end sparse-switch
.end method
