.class public final Lkz;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)V
    .locals 0

    iput-object p1, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;Lkv;)V
    .locals 0

    invoke-direct {p0, p1}, Lkz;-><init>(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

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

    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-virtual {v0, v5}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->loadFail(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Lla;

    invoke-direct {v1, p0}, Lla;-><init>(Lkz;)V

    invoke-virtual {v1}, Lla;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    const-string v3, "sortInfo"

    invoke-static {v0, v1, v3}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseItem2Vo(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v2, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    iget-object v0, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->a(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->g(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)V

    iget-object v0, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v0, v6}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->a(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;I)I

    iget-object v0, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    iget-object v1, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->b(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)I

    move-result v1

    invoke-static {v0, v1, v6}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->a(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-virtual {v0, v5}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->loadFail(I)V

    const-string v0, "\u5206\u7ec4\u4e3a\u7a7a"

    invoke-static {v0, v4}, Lcn/apppark/mcd/util/PublicUtil;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->h(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootRefreshComplete()V

    iget-object v1, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->i(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->i(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v0, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-virtual {v0, v5}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->loadFail(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->b(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)I

    move-result v1

    if-ne v1, v6, :cond_6

    iget-object v1, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-virtual {v1, v5}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->loadSuccess(I)V

    :cond_6
    iget-object v1, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->b(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-object v0, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-virtual {v0, v2}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->loadFail(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-virtual {v1, v2}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->loadSuccess(I)V

    iget-object v1, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->b(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->j(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_9

    iget-object v1, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->k(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->l(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    if-lt v0, v1, :cond_a

    iget-object v0, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->m(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->k(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lkz;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->m(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

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
