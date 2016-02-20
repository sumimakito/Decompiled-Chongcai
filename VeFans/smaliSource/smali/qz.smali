.class public final Lqz;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TCommentList;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/tieba/TCommentList;)V
    .locals 0

    iput-object p1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/tieba/TCommentList;Lqt;)V
    .locals 0

    invoke-direct {p0, p1}, Lqz;-><init>(Lcn/apppark/vertify/activity/tieba/TCommentList;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const v2, 0x7f080025

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
    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->h(Lcn/apppark/vertify/activity/tieba/TCommentList;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    const-string v2, "\u5220\u9664\u5931\u8d25"

    const-string v3, "\u5220\u9664\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/tieba/TCommentList;->a(Lcn/apppark/vertify/activity/tieba/TCommentList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->b(Lcn/apppark/vertify/activity/tieba/TCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->i(Lcn/apppark/vertify/activity/tieba/TCommentList;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->j(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/vertify/adapter/TReplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TReplayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->k(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootRefreshComplete()V

    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->j(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/vertify/adapter/TReplayAdapter;

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
    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->l(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const-string v1, "255"

    invoke-virtual {v0, v2, v3, v4, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->l(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lra;

    invoke-direct {v1, p0}, Lra;-><init>(Lqz;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->l(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Lrb;

    invoke-direct {v1, p0}, Lrb;-><init>(Lqz;)V

    invoke-virtual {v1}, Lrb;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->a(Lcn/apppark/vertify/activity/tieba/TCommentList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->m(Lcn/apppark/vertify/activity/tieba/TCommentList;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->n(Lcn/apppark/vertify/activity/tieba/TCommentList;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    const-string v2, "\u56de\u590d\u5931\u8d25"

    const-string v3, "\u56de\u590d\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/tieba/TCommentList;->b(Lcn/apppark/vertify/activity/tieba/TCommentList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-direct {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/tieba/TCommentList;->o(Lcn/apppark/vertify/activity/tieba/TCommentList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/tieba/TCommentList;->c(Lcn/apppark/vertify/activity/tieba/TCommentList;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->setContent(Ljava/lang/String;)V

    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->p(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserNikeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->setUserName(Ljava/lang/String;)V

    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->q(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->setUserId(Ljava/lang/String;)V

    const-string v1, "\u521a\u521a"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->setSubTime(Ljava/lang/String;)V

    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->b(Lcn/apppark/vertify/activity/tieba/TCommentList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->j(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/vertify/adapter/TReplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TReplayAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->c(Lcn/apppark/vertify/activity/tieba/TCommentList;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->r(Lcn/apppark/vertify/activity/tieba/TCommentList;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0, v4}, Lcn/apppark/vertify/activity/tieba/TCommentList;->a(Lcn/apppark/vertify/activity/tieba/TCommentList;Z)Z

    goto/16 :goto_0

    :pswitch_3
    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->l(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const-string v1, "255"

    invoke-virtual {v0, v2, v3, v4, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->l(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lrc;

    invoke-direct {v1, p0}, Lrc;-><init>(Lqz;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1, v0, v5, v5}, Lcn/apppark/vertify/activity/tieba/TCommentList;->c(Lcn/apppark/vertify/activity/tieba/TCommentList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    const-class v2, Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-static {v0, v2}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->a(Lcn/apppark/vertify/activity/tieba/TCommentList;Lcn/apppark/mcd/vo/tieba/TCommentVo;)Lcn/apppark/mcd/vo/tieba/TCommentVo;

    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->s(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/mcd/vo/tieba/TCommentVo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->s(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/mcd/vo/tieba/TCommentVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getHostUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->c(Lcn/apppark/vertify/activity/tieba/TCommentList;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->t(Lcn/apppark/vertify/activity/tieba/TCommentList;)V

    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    iget-object v1, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->a(Lcn/apppark/vertify/activity/tieba/TCommentList;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lcn/apppark/vertify/activity/tieba/TCommentList;->b(Lcn/apppark/vertify/activity/tieba/TCommentList;II)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lqz;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
