.class public final Lbr;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)V
    .locals 0

    iput-object p1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v1, v5}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->a(Lcn/apppark/vertify/activity/buy/BuyAddAddress;Z)Z

    iget-object v1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->h(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->i(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    const-string v2, "\u5730\u5740\u6dfb\u52a0\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v3, "\u5730\u5740\u6dfb\u52a0\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->a(Lcn/apppark/vertify/activity/buy/BuyAddAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u5730\u5740\u6dfb\u52a0\u6210\u529f"

    invoke-virtual {v0, v1, v4}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-virtual {v0, v5}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->setResult(I)V

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
