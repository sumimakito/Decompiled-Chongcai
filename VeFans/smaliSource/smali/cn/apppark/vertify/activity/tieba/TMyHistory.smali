.class public Lcn/apppark/vertify/activity/tieba/TMyHistory;
.super Lcn/apppark/vertify/activity/tieba/TBBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GET_WHAT:I

.field a:Landroid/widget/Button;

.field private adapter:Lcn/apppark/vertify/adapter/TMyHistoryAdapter;

.field private btn_back:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private handler:Lsc;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lcn/apppark/mcd/widget/SwipeListView;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private rel_menu:Landroid/widget/RelativeLayout;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->GET_WHAT:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMyHistory;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TMyHistory;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TMyHistory;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method private checkResult()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u5185\u5bb9"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    invoke-virtual {v0, v2, v2}, Lcn/apppark/mcd/widget/SwipeListView;->onFootNodata(II)V

    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/tieba/TMyHistory;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->setData()V

    return-void
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/tieba/TMyHistory;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u5185\u5bb9"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    invoke-virtual {v0, v2, v2}, Lcn/apppark/mcd/widget/SwipeListView;->onFootNodata(II)V

    return-void
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/tieba/TMyHistory;)Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/tieba/TMyHistory;)Lcn/apppark/vertify/adapter/TMyHistoryAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->adapter:Lcn/apppark/vertify/adapter/TMyHistoryAdapter;

    return-object v0
.end method

.method private getData(I)V
    .locals 4

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/file/TbHistoryObject2File;->readFile2Object(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->itemList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->itemList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->itemList:Ljava/util/ArrayList;

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "soresult"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->handler:Lsc;

    invoke-virtual {v1, v0}, Lsc;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private initTopMenu()V
    .locals 2

    const v0, 0x7f0a02cb

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TOPMENU_BGCOLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a03ac

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a03ab

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->tv_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u6d4f\u89c8\u5386\u53f2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a03a4

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/SwipeListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    const v0, 0x7f0a03a5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    new-instance v1, Lsa;

    invoke-direct {v1, p0}, Lsa;-><init>(Lcn/apppark/vertify/activity/tieba/TMyHistory;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/SwipeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setData()V
    .locals 4

    new-instance v0, Lcn/apppark/vertify/adapter/TMyHistoryAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->itemList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    invoke-virtual {v3}, Lcn/apppark/mcd/widget/SwipeListView;->getRightViewWidth()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/adapter/TMyHistoryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->adapter:Lcn/apppark/vertify/adapter/TMyHistoryAdapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->adapter:Lcn/apppark/vertify/adapter/TMyHistoryAdapter;

    new-instance v1, Lsb;

    invoke-direct {v1, p0}, Lsb;-><init>(Lcn/apppark/vertify/activity/tieba/TMyHistory;)V

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/adapter/TMyHistoryAdapter;->setOnRightItemClickListener(Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->adapter:Lcn/apppark/vertify/adapter/TMyHistoryAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/SwipeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/file/TbHistoryObject2File;->clearHistory(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->adapter:Lcn/apppark/vertify/adapter/TMyHistoryAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TMyHistoryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a03a5 -> :sswitch_1
        0x7f0a03ac -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03009c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->setContentView(I)V

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Lsc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsc;-><init>(Lcn/apppark/vertify/activity/tieba/TMyHistory;Lsa;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyHistory;->handler:Lsc;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->initTopMenu()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->initWidget()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->getData(I)V

    return-void
.end method
