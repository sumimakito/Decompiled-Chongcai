.class public final Lsu;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TMyCollection;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/tieba/TMyCollection;)V
    .locals 0

    iput-object p1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/tieba/TMyCollection;Lsr;)V
    .locals 0

    invoke-direct {p0, p1}, Lsu;-><init>(Lcn/apppark/vertify/activity/tieba/TMyCollection;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

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
    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->d(Lcn/apppark/vertify/activity/tieba/TMyCollection;)Lcn/apppark/vertify/adapter/TCollectionAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->e(Lcn/apppark/vertify/activity/tieba/TMyCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "255"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->e(Lcn/apppark/vertify/activity/tieba/TMyCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lsv;

    invoke-direct {v1, p0}, Lsv;-><init>(Lsu;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->e(Lcn/apppark/vertify/activity/tieba/TMyCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Lsw;

    invoke-direct {v1, p0}, Lsw;-><init>(Lsu;)V

    invoke-virtual {v1}, Lsw;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->a(Lcn/apppark/vertify/activity/tieba/TMyCollection;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->f(Lcn/apppark/vertify/activity/tieba/TMyCollection;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->g(Lcn/apppark/vertify/activity/tieba/TMyCollection;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    const-string v2, "\u5220\u9664\u5931\u8d25"

    const-string v3, "\u5220\u9664\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->a(Lcn/apppark/vertify/activity/tieba/TMyCollection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->c(Lcn/apppark/vertify/activity/tieba/TMyCollection;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->h(Lcn/apppark/vertify/activity/tieba/TMyCollection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->d(Lcn/apppark/vertify/activity/tieba/TMyCollection;)Lcn/apppark/vertify/adapter/TCollectionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TCollectionAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
