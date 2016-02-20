.class public final Lkl;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)V
    .locals 0

    iput-object p1, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Lcn/apppark/vertify/activity/free/dyn/DynSubComment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lkl;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->j(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView3;->onFootRefreshComplete()V

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->k(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/vertify/adapter/DynCommentAdapter;

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
    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->l(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const-string v2, "255"

    invoke-virtual {v0, v1, v6, v4, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->l(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lkm;

    invoke-direct {v1, p0}, Lkm;-><init>(Lkl;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->l(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v0, Lkn;

    invoke-direct {v0, p0}, Lkn;-><init>(Lkl;)V

    invoke-virtual {v0}, Lkn;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v2, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->m(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->m(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->m(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->n(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)I

    :cond_4
    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->k(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/vertify/adapter/DynCommentAdapter;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    new-instance v1, Lcn/apppark/vertify/adapter/DynCommentAdapter;

    iget-object v2, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->h(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v3}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/vertify/adapter/DynCommentAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Lcn/apppark/vertify/adapter/DynCommentAdapter;)Lcn/apppark/vertify/adapter/DynCommentAdapter;

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->j(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v0

    iget-object v1, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->k(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/vertify/adapter/DynCommentAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView3;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->k(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/vertify/adapter/DynCommentAdapter;

    move-result-object v0

    new-instance v1, Lko;

    invoke-direct {v1, p0}, Lko;-><init>(Lkl;)V

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/adapter/DynCommentAdapter;->setMyClickGood(Lcn/apppark/vertify/adapter/DynCommentAdapter$MyClickGood;)V

    :goto_1
    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    iget-object v1, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->j(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v1

    iget-object v2, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Lcn/apppark/mcd/widget/PullDownListView3;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->k(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/vertify/adapter/DynCommentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/DynCommentAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->j(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView3;->onHeadRefreshComplete()V

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lkp;

    invoke-direct {v0, p0}, Lkp;-><init>(Lkl;)V

    invoke-virtual {v0}, Lkp;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v2, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->m(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->m(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->n(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)I

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->m(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->k(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/vertify/adapter/DynCommentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/DynCommentAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    iget-object v1, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->j(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v1

    iget-object v2, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Lcn/apppark/mcd/widget/PullDownListView3;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->g(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    const-string v2, "\u8bc4\u8bba\u63d0\u4ea4\u5931\u8d25"

    const-string v3, "\u8bc4\u8bba\u63d0\u4ea4\u6210\u529f"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0, v5}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->j(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView3;->autoHeadRefresh()V

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0, v6}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;I)I

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    iget-object v1, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->e(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "commentList"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;IILjava/lang/String;)V

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    const-string v1, "\u8bc4\u8bba\u63d0\u4ea4\u6210\u529f"

    invoke-static {v0, v1, v4}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->e(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;I)V

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->j(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/apppark/mcd/widget/PullDownListView3;->setSelection(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->g(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    const-string v2, "\u5220\u9664\u5931\u8d25"

    const-string v3, "\u5220\u9664\u6210\u529f"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->o(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->k(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/vertify/adapter/DynCommentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/DynCommentAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->g(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    iget-object v2, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v2, v1, v5, v5}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->c(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->getPraiseCount()I

    move-result v2

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->setPraiseCount(I)V

    iget-object v0, p0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->k(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/vertify/adapter/DynCommentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/DynCommentAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
