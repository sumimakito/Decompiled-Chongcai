.class public final Ldd;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)V
    .locals 0

    iput-object p1, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ldd;-><init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "soresult"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->i(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView3;->onFootRefreshComplete()V

    iget-object v1, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->j(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;

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
    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->k(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v4, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->k(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lde;

    invoke-direct {v1, p0}, Lde;-><init>(Ldd;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->k(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Ldf;

    invoke-direct {v1, p0}, Ldf;-><init>(Ldd;)V

    invoke-virtual {v1}, Ldf;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->l(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->l(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->l(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->m(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)I

    :cond_4
    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->j(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;

    iget-object v2, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->g(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->i(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v0

    iget-object v1, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->j(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView3;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_1
    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    iget-object v1, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->i(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v1

    iget-object v2, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Lcn/apppark/mcd/widget/PullDownListView3;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->j(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->i(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView3;->onHeadRefreshComplete()V

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ldg;

    invoke-direct {v1, p0}, Ldg;-><init>(Ldd;)V

    invoke-virtual {v1}, Ldg;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->l(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->l(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->m(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)I

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->l(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->j(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    iget-object v1, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->i(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v1

    iget-object v2, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Lcn/apppark/mcd/widget/PullDownListView3;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->f(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :try_start_0
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v2, "retFlag"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->i(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView3;->autoHeadRefresh()V

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0, v3}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;I)I

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    iget-object v1, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->d(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "replyDetail"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;IILjava/lang/String;)V

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u8bc4\u8bba\u63d0\u4ea4\u6210\u529f"

    invoke-virtual {v0, v1, v4}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->i(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/apppark/mcd/widget/PullDownListView3;->setSelection(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_7
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u8bc4\u8bba\u63d0\u4ea4\u5931\u8d25"

    invoke-virtual {v0, v1, v4}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->f(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :try_start_1
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v2, "retFlag"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_3
    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->n(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Ldd;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->j(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;->notifyDataSetChanged()V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u5220\u9664\u6210\u529f"

    invoke-virtual {v0, v1, v4}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u5220\u9664\u5931\u8d25"

    invoke-virtual {v0, v1, v4}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
