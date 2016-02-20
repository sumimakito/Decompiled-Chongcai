.class public final Leq;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)V
    .locals 0

    iput-object p1, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;Lep;)V
    .locals 0

    invoke-direct {p0, p1}, Leq;-><init>(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x0

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
    iget-object v1, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView;->onHeadRefreshComplete()V

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->b(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const/4 v3, 0x1

    const-string v4, "255"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->b(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Ler;

    invoke-direct {v1, p0}, Ler;-><init>(Leq;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->b(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Leq;)V

    invoke-virtual {v1}, Les;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v3, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    const-string v4, "item"

    invoke-static {v0, v1, v4}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseToListByNode(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u8bc4\u4ef7"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->g(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u5168\u90e8("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->h(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u597d\u8bc4("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->d(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->i(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u4e2d\u8bc4("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->e(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->j(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u5dee\u8bc4("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->f(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    iget-object v3, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->k(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v4}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    iget-object v1, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->l(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcn/apppark/mcd/widget/PullDownListView;->onFootNodata(II)V

    goto/16 :goto_0

    :cond_5
    move v1, v2

    :goto_1
    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProCommentVo;->getScore()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->d(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->e(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->f(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
