.class public final Lsu;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V
    .locals 0

    iput-object p1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Lsm;)V
    .locals 0

    invoke-direct {p0, p1}, Lsu;-><init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x4

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->d(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/vertify/adapter/TCommnetAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->e(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const-string v2, "255"

    invoke-virtual {v0, v1, v5, v4, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->e(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lsv;

    invoke-direct {v1, p0}, Lsv;-><init>(Lsu;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    const-string v2, "\u6570\u636e\u83b7\u53d6\u6210\u529f"

    invoke-static {v0, v1, v3, v2}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v2, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    const-class v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-static {v1, v0}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Lcn/apppark/mcd/vo/tieba/TMainVo;)Lcn/apppark/mcd/vo/tieba/TMainVo;

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/vo/tieba/TMainVo;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    const v2, 0x7f080047

    invoke-static {v0, v2, v4}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->b(Lcn/apppark/vertify/activity/tieba/TTopicDetail;II)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->finish()V

    :cond_3
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->g(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)I

    move-result v0

    if-eq v0, v5, :cond_4

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->g(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    :cond_4
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    const-string v2, "\u5e16\u5b50\u83b7\u53d6\u5931\u8d25"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->b(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->h(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->g(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)I

    move-result v0

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)I

    move-result v1

    invoke-static {v0, v1, v7}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->c(Lcn/apppark/vertify/activity/tieba/TTopicDetail;II)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)I

    move-result v1

    invoke-static {v0, v1, v7}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;II)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->finish()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->h(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)I

    move-result v1

    invoke-static {v0, v1, v7}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;II)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->finish()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->i(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootRefreshComplete()V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->d(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/vertify/adapter/TCommnetAdapter;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->e(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const-string v2, "255"

    invoke-virtual {v0, v1, v5, v4, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->e(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lsw;

    invoke-direct {v1, p0}, Lsw;-><init>(Lsu;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->e(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->parseToList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->j(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->k(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    const-string v2, "\u53d1\u8868\u8bc4\u8bba\u5931\u8d25"

    const-string v3, "\u53d1\u8868\u8bc4\u8bba\u6210\u529f"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->c(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->l(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->m(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/widget/TCellLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->removeAllCell()V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->n(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->o(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0, v4}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Z)Z

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0, v4}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->b(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Z)Z

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/vo/tieba/TMainVo;

    move-result-object v0

    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/vo/tieba/TMainVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getCommentNum()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->setCommentNum(I)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->p(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v2}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/vo/tieba/TMainVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getCommentNum()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0, v5}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->c(Lcn/apppark/vertify/activity/tieba/TTopicDetail;I)I

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)I

    move-result v1

    invoke-static {v0, v1, v7}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;II)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->q(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    const-string v2, "\u70b9\u8d5e\u5931\u8d25"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->d(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/vo/tieba/TMainVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getIsGood()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->r(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v2}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/vo/tieba/TMainVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getGoodNum()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->s(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020168

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/vo/tieba/TMainVo;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->setIsGood(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->r(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v2}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/vo/tieba/TMainVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getGoodNum()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->s(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/vo/tieba/TMainVo;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->setIsGood(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->t(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    const-string v2, "\u6536\u85cf\u5931\u8d25"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->e(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/vo/tieba/TMainVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getIsCollect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/vo/tieba/TMainVo;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->setIsCollect(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/vo/tieba/TMainVo;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->setIsCollect(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->u(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    const-string v2, "\u5220\u9664\u5931\u8d25"

    const-string v3, "\u5220\u9664\u6210\u529f"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->w(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->v(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->d(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/vertify/adapter/TCommnetAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->x(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    const-string v2, "\u5220\u9664\u5931\u8d25"

    const-string v3, "\u5220\u9664\u6210\u529f"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->g(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->w(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->v(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->y(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->d(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/vertify/adapter/TCommnetAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_f

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->z(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->o(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->A(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->n(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->o(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->n(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->n(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->o(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->B(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    const-string v2, "\u5220\u9664\u5e16\u5b50\u5931\u8d25"

    const-string v3, "\u5220\u9664\u5e16\u5b50\u6210\u529f"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->h(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-virtual {v0, v5}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->setResult(I)V

    iget-object v0, p0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method
