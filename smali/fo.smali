.class public final Lfo;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuySelArea;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuySelArea;)V
    .locals 0

    iput-object p1, p0, Lfo;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lfo;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySelArea;->a(Lcn/apppark/vertify/activity/buy/BuySelArea;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfo;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuySelAreaListAdapter;

    iget-object v2, p0, Lfo;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuySelArea;->d(Lcn/apppark/vertify/activity/buy/BuySelArea;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lfo;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuySelArea;->a(Lcn/apppark/vertify/activity/buy/BuySelArea;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/vertify/activity/buy/adapter/BuySelAreaListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuySelArea;->a(Lcn/apppark/vertify/activity/buy/BuySelArea;Lcn/apppark/vertify/activity/buy/adapter/BuySelAreaListAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuySelAreaListAdapter;

    iget-object v0, p0, Lfo;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySelArea;->f(Lcn/apppark/vertify/activity/buy/BuySelArea;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lfo;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuySelArea;->e(Lcn/apppark/vertify/activity/buy/BuySelArea;)Lcn/apppark/vertify/activity/buy/adapter/BuySelAreaListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v0

    const-string v1, "\u5730\u533a\u52a0\u8f7d\u5931\u8d25"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
