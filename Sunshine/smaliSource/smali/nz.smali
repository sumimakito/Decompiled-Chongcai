.class public final Lnz;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/Login;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/Login;)V
    .locals 0

    iput-object p1, p0, Lnz;->a:Lcn/apppark/vertify/activity/persion/Login;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

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
    iget-object v1, p0, Lnz;->a:Lcn/apppark/vertify/activity/persion/Login;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/apppark/vertify/activity/persion/Login;->a(Lcn/apppark/vertify/activity/persion/Login;Z)Z

    iget-object v1, p0, Lnz;->a:Lcn/apppark/vertify/activity/persion/Login;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/Login;->a(Lcn/apppark/vertify/activity/persion/Login;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lnz;->a:Lcn/apppark/vertify/activity/persion/Login;

    const-string v2, "\u767b\u9646\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-static {v1, v0, v2}, Lcn/apppark/vertify/activity/persion/Login;->a(Lcn/apppark/vertify/activity/persion/Login;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz;->a:Lcn/apppark/vertify/activity/persion/Login;

    const-class v2, Lcn/apppark/mcd/vo/buy/BuyLoginVo;

    invoke-static {v0, v2}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyLoginVo;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/persion/Login;->a(Lcn/apppark/vertify/activity/persion/Login;Lcn/apppark/mcd/vo/buy/BuyLoginVo;)Lcn/apppark/mcd/vo/buy/BuyLoginVo;

    iget-object v0, p0, Lnz;->a:Lcn/apppark/vertify/activity/persion/Login;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/Login;->b(Lcn/apppark/vertify/activity/persion/Login;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
