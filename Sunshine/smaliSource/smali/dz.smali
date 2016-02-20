.class public final Ldz;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)V
    .locals 0

    iput-object p1, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Ldx;)V
    .locals 0

    invoke-direct {p0, p1}, Ldz;-><init>(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

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
    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const/4 v2, 0x1

    const-string v3, "255"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lea;

    invoke-direct {v1, p0}, Lea;-><init>(Ldz;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Leb;

    invoke-direct {v1, p0}, Leb;-><init>(Ldz;)V

    invoke-virtual {v1}, Leb;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    const-class v2, Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    const-string v3, "contact"

    invoke-static {v0, v2, v3}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2VoByNode(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Lcn/apppark/mcd/vo/buy/BuyAddressVo;)Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    iget-object v1, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->b(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->b(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Lcn/apppark/mcd/vo/buy/BuyAddressVo;)V

    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->c(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    const-string v1, "\u786e\u8ba4\u8ba2\u5355\u5931\u8d25"

    invoke-static {v0, v1, v4}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Ljava/lang/String;I)V

    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->d(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->b(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->e(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->c(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    iget-object v2, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    iget-object v3, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->f(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v4}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->e(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;-><init>(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->g(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->d(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    iget-object v1, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->e(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->setTotalPrice(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->e(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->c(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->d(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->h(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    const-string v2, "\u8ba2\u5355\u63d0\u4ea4\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v3, "\u8ba2\u5355\u63d0\u4ea4\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->f(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ids"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Ldz;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
