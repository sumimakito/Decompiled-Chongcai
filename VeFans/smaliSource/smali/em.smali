.class public final Lem;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)V
    .locals 0

    iput-object p1, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProCommentList;Lei;)V
    .locals 0

    invoke-direct {p0, p1}, Lem;-><init>(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x8

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
    iget-object v1, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->d(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView;->onHeadRefreshComplete()V

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->e(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const-string v2, "255"

    invoke-virtual {v0, v1, v6, v4, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->e(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Len;

    invoke-direct {v1, p0}, Len;-><init>(Lem;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->e(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Leo;

    invoke-direct {v1, p0}, Leo;-><init>(Lem;)V

    invoke-virtual {v1}, Leo;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    const-string v3, "item"

    invoke-static {v0, v1, v3}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseToListByNode(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_4
    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->f(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u53ef\u8bc4\u4ef7\u5546\u54c1"

    invoke-virtual {v0, v1, v4}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->g(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->g(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f85\u8bc4\u4ef7("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;

    iget-object v2, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentList;Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;

    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->d(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    iget-object v1, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->h(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->d(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcn/apppark/mcd/widget/PullDownListView;->onFootNodata(II)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->g(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->i(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView;->onHeadRefreshComplete()V

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lep;

    invoke-direct {v1, p0}, Lep;-><init>(Lem;)V

    invoke-virtual {v1}, Lep;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    const-string v3, "item"

    invoke-static {v0, v1, v3}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseToListByNode(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->b(Lcn/apppark/vertify/activity/buy/BuyProCommentList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->b(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->b(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->b(Lcn/apppark/vertify/activity/buy/BuyProCommentList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_7
    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->g(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->b(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u5df2\u8bc4\u4ef7\u5546\u54c1"

    invoke-virtual {v0, v1, v4}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->f(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;

    iget-object v2, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->b(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3, v6}, Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->b(Lcn/apppark/vertify/activity/buy/BuyProCommentList;Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;

    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->i(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    iget-object v1, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->j(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->i(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcn/apppark/mcd/widget/PullDownListView;->onFootNodata(II)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lem;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->f(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
