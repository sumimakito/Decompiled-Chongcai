.class public final Lex;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)V
    .locals 0

    iput-object p1, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProductCollection;Lev;)V
    .locals 0

    invoke-direct {p0, p1}, Lex;-><init>(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x1

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
    iget-object v1, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->c(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Lcn/apppark/mcd/widget/SwipeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/SwipeListView;->onFootRefreshComplete()V

    iget-object v1, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->d(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2;

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
    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->e(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v4, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->e(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Ley;

    invoke-direct {v1, p0}, Ley;-><init>(Lex;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->e(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Lez;

    invoke-direct {v1, p0}, Lez;-><init>(Lex;)V

    invoke-virtual {v1}, Lez;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->a(Lcn/apppark/vertify/activity/buy/BuyProductCollection;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->f(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->f(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->b(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->b(Lcn/apppark/vertify/activity/buy/BuyProductCollection;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->b(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->f(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->g(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)I

    :cond_4
    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->d(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2;

    iget-object v2, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->h(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->b(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v4}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->c(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Lcn/apppark/mcd/widget/SwipeListView;

    move-result-object v4

    invoke-virtual {v4}, Lcn/apppark/mcd/widget/SwipeListView;->getRightViewWidth()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->a(Lcn/apppark/vertify/activity/buy/BuyProductCollection;Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2;

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->c(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Lcn/apppark/mcd/widget/SwipeListView;

    move-result-object v0

    iget-object v1, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->d(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/SwipeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->d(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2;

    move-result-object v0

    new-instance v1, Lfa;

    invoke-direct {v1, p0}, Lfa;-><init>(Lex;)V

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2;->setOnRightItemClickListener(Lcn/apppark/vertify/adapter/TCollectionAdapter$onRightItemClickListener;)V

    :goto_1
    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->i(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->d(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2;->notifyDataSetChanged()V

    goto :goto_1

    :pswitch_1
    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lfd;

    invoke-direct {v1, p0}, Lfd;-><init>(Lex;)V

    invoke-virtual {v1}, Lfd;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->a(Lcn/apppark/vertify/activity/buy/BuyProductCollection;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->b(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->f(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->f(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->g(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)I

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->b(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->f(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->d(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2;->notifyDataSetChanged()V

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->i(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v1, v3}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->a(Lcn/apppark/vertify/activity/buy/BuyProductCollection;Z)Z

    iget-object v1, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->j(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    const-string v2, "\u5220\u9664\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v3, "\u5220\u9664\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->a(Lcn/apppark/vertify/activity/buy/BuyProductCollection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->b(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->k(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->d(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2;->notifyDataSetChanged()V

    :cond_7
    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->b(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->l(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->l(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
