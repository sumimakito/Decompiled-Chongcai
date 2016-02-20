.class public final Lfl;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyProductStandard;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProductStandard;)V
    .locals 0

    iput-object p1, p0, Lfl;->a:Lcn/apppark/vertify/activity/buy/BuyProductStandard;

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

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lfl;->a:Lcn/apppark/vertify/activity/buy/BuyProductStandard;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->d(Lcn/apppark/vertify/activity/buy/BuyProductStandard;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lfl;->a:Lcn/apppark/vertify/activity/buy/BuyProductStandard;

    const-string v2, "\u52a0\u5165\u8d2d\u7269\u8f66\u5931\u8d25"

    const-string v3, "\u52a0\u5165\u8d2d\u7269\u8f66\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->a(Lcn/apppark/vertify/activity/buy/BuyProductStandard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfl;->a:Lcn/apppark/vertify/activity/buy/BuyProductStandard;

    iget-object v1, p0, Lfl;->a:Lcn/apppark/vertify/activity/buy/BuyProductStandard;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->e(Lcn/apppark/vertify/activity/buy/BuyProductStandard;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->setResult(I)V

    iget-object v0, p0, Lfl;->a:Lcn/apppark/vertify/activity/buy/BuyProductStandard;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
