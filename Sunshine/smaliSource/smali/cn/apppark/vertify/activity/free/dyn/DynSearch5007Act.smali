.class public Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;
.super Landroid/app/Activity;


# static fields
.field private static final GET_WHAT:I = 0x1

.field private static final METHOD:Ljava/lang/String; = "search"

.field private static final SEARCH_WHAT:I = 0x3


# instance fields
.field private adapter:Lcn/apppark/vertify/adapter/DynSearch5007Adapter;

.field private btn_cancel:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private et_keyWord:Landroid/widget/EditText;

.field private handler:Ljx;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private keyLisTag:I

.field private listView:Lcn/apppark/mcd/widget/PullDownListView;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private param:Ljava/lang/String;

.field private temp_msgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private temp_productlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private tv_tip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->itemList:Ljava/util/ArrayList;

    iput-object p0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->keyLisTag:I

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->keyLisTag:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->et_keyWord:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_productlist:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->getData(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_msgList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->param:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->keyLisTag:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->keyLisTag:I

    return v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->keyLisTag:I

    return v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "search"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->et_keyWord:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->getData(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Lcn/apppark/mcd/widget/PullDownListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    return-object v0
.end method

.method private getData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ \"pageSize\":\"5\",  \"currPage\":\"1\", \"searchType\":\"0\", \"keyWord\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"item\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->param:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->handler:Ljx;

    const-string v3, "json"

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/cms.ws"

    const-string v7, "search"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Lcn/apppark/vertify/adapter/DynSearch5007Adapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->adapter:Lcn/apppark/vertify/adapter/DynSearch5007Adapter;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method private initData()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x5

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_productlist:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_productlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-direct {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;-><init>()V

    invoke-virtual {v0, v5}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setShowType(I)V

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setNextShowType(I)V

    const-string v1, "\u4ea7\u54c1"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_productlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-ge v1, v4, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_productlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-virtual {v0, v7}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setShowType(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_productlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-virtual {v0, v5}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setNextShowType(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->itemList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_productlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_productlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->getCount()I

    move-result v0

    if-le v0, v4, :cond_1

    new-instance v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-direct {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;-><init>()V

    invoke-virtual {v0, v6}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setShowType(I)V

    invoke-virtual {v0, v7}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setNextShowType(I)V

    const-string v1, "\u66f4\u591a\u76f8\u5173\u4ea7\u54c1"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-direct {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;-><init>()V

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setShowType(I)V

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setNextShowType(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_msgList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_msgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-direct {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;-><init>()V

    invoke-virtual {v0, v5}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setShowType(I)V

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setNextShowType(I)V

    const-string v1, "\u6587\u7ae0"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_msgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    if-ge v1, v4, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_msgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setShowType(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_msgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-virtual {v0, v6}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setNextShowType(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->itemList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_msgList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->temp_msgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->getCount()I

    move-result v0

    if-le v0, v4, :cond_4

    new-instance v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-direct {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;-><init>()V

    invoke-virtual {v0, v6}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setShowType(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setNextShowType(I)V

    const-string v1, "\u66f4\u591a\u76f8\u5173\u6587\u7ae0"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->adapter:Lcn/apppark/vertify/adapter/DynSearch5007Adapter;

    if-nez v0, :cond_5

    new-instance v0, Lcn/apppark/vertify/adapter/DynSearch5007Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->context:Landroid/content/Context;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v3}, Lcn/apppark/vertify/adapter/DynSearch5007Adapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->adapter:Lcn/apppark/vertify/adapter/DynSearch5007Adapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->adapter:Lcn/apppark/vertify/adapter/DynSearch5007Adapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->tv_tip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->tv_tip:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6ca1\u6709\u627e\u5230\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->et_keyWord:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\u76f8\u5173\u7ed3\u679c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    :cond_5
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->adapter:Lcn/apppark/vertify/adapter/DynSearch5007Adapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/DynSearch5007Adapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->tv_tip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private initWidget()V
    .locals 4

    const/4 v2, 0x0

    const v0, 0x7f0a0243

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->btn_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->btn_cancel:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act$1;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0244

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0, v2, v2}, Lcn/apppark/mcd/widget/PullDownListView;->onFootNodata(II)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Ljt;

    invoke-direct {v1, p0}, Ljt;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/PullDownListView;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnRefreshListener;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lju;

    invoke-direct {v1, p0}, Lju;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a0242

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->et_keyWord:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->et_keyWord:Landroid/widget/EditText;

    new-instance v1, Ljv;

    invoke-direct {v1, p0}, Ljv;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->et_keyWord:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Ljw;

    invoke-direct {v1, p0}, Ljw;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->initData()V

    return-void
.end method

.method private searchData()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "search"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->et_keyWord:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->getData(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "param"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->param:Ljava/lang/String;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v0, 0x7f0a0245

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->tv_tip:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->initWidget()V

    new-instance v0, Ljx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljx;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act$1;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->handler:Ljx;

    return-void
.end method
