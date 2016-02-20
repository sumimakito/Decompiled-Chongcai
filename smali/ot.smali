.class public final Lot;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/UpdateInfo;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/UpdateInfo;)V
    .locals 0

    iput-object p1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->c(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    const-string v2, "\u5bc6\u7801\u4fee\u6539\u5931\u8d25"

    const-string v3, "\u5bc6\u7801\u4fee\u6539\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a(Lcn/apppark/vertify/activity/persion/UpdateInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->d(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    const-string v2, "\u6635\u79f0\u4fee\u6539\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v3, "\u6635\u79f0\u4fee\u6539\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->b(Lcn/apppark/vertify/activity/persion/UpdateInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    iget-object v0, v0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a:Lcn/apppark/vertify/base/ClientPersionInfo;

    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->e(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserNikeName(Ljava/lang/String;)V

    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->setResult(I)V

    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->finish()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->f(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    const-string v2, "\u90ae\u7bb1\u4fee\u6539\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v3, "\u90ae\u7bb1\u4fee\u6539\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->c(Lcn/apppark/vertify/activity/persion/UpdateInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    iget-object v0, v0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a:Lcn/apppark/vertify/base/ClientPersionInfo;

    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->g(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserEmail(Ljava/lang/String;)V

    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->finish()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->h(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    const-string v2, "\u6027\u522b\u4fee\u6539\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v3, "\u6027\u522b\u4fee\u6539\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->d(Lcn/apppark/vertify/activity/persion/UpdateInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    iget-object v0, v0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a:Lcn/apppark/vertify/base/ClientPersionInfo;

    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->i(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserSex(Ljava/lang/String;)V

    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->finish()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->j(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    const-string v2, "\u4e2a\u6027\u7b7e\u540d\u4fee\u6539\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v3, "\u4e2a\u6027\u7b7e\u540d\u4fee\u6539\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->e(Lcn/apppark/vertify/activity/persion/UpdateInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    iget-object v0, v0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a:Lcn/apppark/vertify/base/ClientPersionInfo;

    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserSign(Ljava/lang/String;)V

    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
