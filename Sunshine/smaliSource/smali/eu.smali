.class public final Leu;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyProCommentSub;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProCommentSub;)V
    .locals 0

    iput-object p1, p0, Leu;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentSub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProCommentSub;Let;)V
    .locals 0

    invoke-direct {p0, p1}, Leu;-><init>(Lcn/apppark/vertify/activity/buy/BuyProCommentSub;)V

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
    iget-object v1, p0, Leu;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentSub;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentSub;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Leu;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentSub;

    const-string v2, "\u63d0\u4ea4\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v3, "\u63d0\u4ea4\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentSub;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentSub;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->setResult(I)V

    iget-object v0, p0, Leu;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentSub;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
