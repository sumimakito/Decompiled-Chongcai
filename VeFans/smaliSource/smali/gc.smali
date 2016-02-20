.class public final Lgc;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)V
    .locals 0

    iput-object p1, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/buy/BuyViewHistory;Lga;)V
    .locals 0

    invoke-direct {p0, p1}, Lgc;-><init>(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)V

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

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->c(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Lgd;

    invoke-direct {v1, p0}, Lgd;-><init>(Lgc;)V

    invoke-virtual {v1}, Lgd;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2ListNoItem(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->a(Lcn/apppark/vertify/activity/buy/BuyViewHistory;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->d(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->d(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->b(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->b(Lcn/apppark/vertify/activity/buy/BuyViewHistory;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->b(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->d(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->e(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->b(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->b(Lcn/apppark/vertify/activity/buy/BuyViewHistory;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;

    iget-object v2, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->f(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->b(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->a(Lcn/apppark/vertify/activity/buy/BuyViewHistory;Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;

    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->g(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    iget-object v1, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->e(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_1
    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->b(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u6d4f\u89c8\u8bb0\u5f55"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->h(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->e(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->g(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView;->onHeadRefreshComplete()V

    new-instance v1, Lge;

    invoke-direct {v1, p0}, Lge;-><init>(Lgc;)V

    invoke-virtual {v1}, Lge;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2ListNoItem(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->a(Lcn/apppark/vertify/activity/buy/BuyViewHistory;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->b(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->d(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->d(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->b(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->d(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->e(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lgc;->a:Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->h(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
