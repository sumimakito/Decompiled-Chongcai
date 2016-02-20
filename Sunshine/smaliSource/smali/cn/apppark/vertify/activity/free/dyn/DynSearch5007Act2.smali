.class public Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;
.super Landroid/app/Activity;


# static fields
.field private static final GET_WHAT:I = 0x1

.field private static final METHOD:Ljava/lang/String; = "search"


# instance fields
.field public a:I

.field private adapter:Lcn/apppark/vertify/adapter/DynSearch5007Adapter2;

.field b:Ljava/lang/String;

.field private btn_cancel:Landroid/widget/Button;

.field c:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currentPage:I

.field private et_keyWord:Landroid/widget/EditText;

.field private handler:Lke;

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

.field private itemListTemp:Ljava/util/ArrayList;
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

.field private tv_tip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->currentPage:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->keyLisTag:I

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->currentPage:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->keyLisTag:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->getData(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->initData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->keyLisTag:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->keyLisTag:I

    return v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->keyLisTag:I

    return v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->searchData()V

    return-void
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)Lcn/apppark/mcd/widget/PullDownListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)Lcn/apppark/vertify/adapter/DynSearch5007Adapter2;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->adapter:Lcn/apppark/vertify/adapter/DynSearch5007Adapter2;

    return-object v0
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "{ \"searchType\": \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  \"keyWord\": \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  \"item\": "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  \"currPage\": "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  \"pageSize\": 20 } "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->handler:Lke;

    const-string v3, "json"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/cms.ws"

    const-string v7, "search"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method private initData(Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Lkd;

    invoke-direct {v0, p0}, Lkd;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)V

    invoke-virtual {v0}, Lkd;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->a:I

    if-ne v1, v3, :cond_2

    const-string v1, "productItems"

    const-string v2, "productCount"

    invoke-static {p1, v0, v1, v2}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemListTemp:Ljava/util/ArrayList;

    :goto_0
    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->currentPage:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->adapter:Lcn/apppark/vertify/adapter/DynSearch5007Adapter2;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemListTemp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcn/apppark/vertify/adapter/DynSearch5007Adapter2;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemList:Ljava/util/ArrayList;

    iget v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->a:I

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/adapter/DynSearch5007Adapter2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->adapter:Lcn/apppark/vertify/adapter/DynSearch5007Adapter2;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->adapter:Lcn/apppark/vertify/adapter/DynSearch5007Adapter2;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    :cond_1
    :goto_1
    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->currentPage:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->getCount()I

    move-result v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/PullDownListView;->onFootNodata(II)V

    :goto_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->tv_tip:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->tv_tip:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6ca1\u6709\u627e\u5230\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->et_keyWord:Landroid/widget/EditText;

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

    :cond_2
    const-string v1, "infoItems"

    const-string v2, "infoCount"

    invoke-static {p1, v0, v1, v2}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemListTemp:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemListTemp:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->itemListTemp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->adapter:Lcn/apppark/vertify/adapter/DynSearch5007Adapter2;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/DynSearch5007Adapter2;->notifyDataSetChanged()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0, v4, v4}, Lcn/apppark/mcd/widget/PullDownListView;->onFootNodata(II)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->tv_tip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private initWidget()V
    .locals 3

    const v0, 0x7f0a0247

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->btn_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->btn_cancel:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2$1;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0248

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/PullDownListView;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnRefreshListener;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lka;

    invoke-direct {v1, p0}, Lka;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnFootRefreshListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lkb;

    invoke-direct {v1, p0}, Lkb;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a0246

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->et_keyWord:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->et_keyWord:Landroid/widget/EditText;

    new-instance v1, Lkc;

    invoke-direct {v1, p0}, Lkc;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private searchData()V
    .locals 4

    const/4 v3, 0x1

    iput v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->currentPage:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->et_keyWord:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->b:Ljava/lang/String;

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->currentPage:I

    invoke-direct {p0, v0, v3}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->getData(II)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "searchtype"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->a:I

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "param"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->c:Ljava/lang/String;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v0, 0x7f0a0245

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->tv_tip:Landroid/widget/TextView;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->initWidget()V

    new-instance v0, Lke;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lke;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2$1;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->handler:Lke;

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->currentPage:I

    invoke-direct {p0, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->getData(II)V

    return-void
.end method
