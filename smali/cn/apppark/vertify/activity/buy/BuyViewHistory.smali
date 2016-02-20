.class public Lcn/apppark/vertify/activity/buy/BuyViewHistory;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final INIT_DATA:I = 0x1

.field public static final METHOD:Ljava/lang/String; = "contacts"

.field private static final REF_DATA:I = 0x2


# instance fields
.field private adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;

.field private btn_back:Landroid/widget/Button;

.field private btn_clean:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private handler:Lgc;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyProductVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemListTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyProductVo;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lcn/apppark/mcd/widget/PullDownListView;

.field private ll_null:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->itemList:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyViewHistory;Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyViewHistory;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->itemListTemp:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->getData(I)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyViewHistory;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->itemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method private changeTipState()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->ll_null:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->btn_clean:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->ll_null:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->btn_clean:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->itemListTemp:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)Lcn/apppark/mcd/widget/PullDownListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    return-object v0
.end method

.method private getData(I)V
    .locals 4

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->getHistoryName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/file/PrivateFileReadSave;->read(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "soresult"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->handler:Lgc;

    invoke-virtual {v0, v1}, Lgc;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private getHistoryName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "history"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->changeTipState()V

    return-void
.end method

.method private initWidget()V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->ll_null:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->ll_null:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a0155

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0156

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->btn_clean:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->btn_clean:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->btn_clean:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0157

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lga;

    invoke-direct {v1, p0}, Lga;-><init>(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/PullDownListView;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnRefreshListener;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnFootRefreshListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0, v3, v3}, Lcn/apppark/mcd/widget/PullDownListView;->onFootNodata(II)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lgb;

    invoke-direct {v1, p0}, Lgb;-><init>(Lcn/apppark/vertify/activity/buy/BuyViewHistory;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private refData()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->getData(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->getHistoryName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/file/PrivateFileReadSave;->deleteFile(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter;->notifyDataSetChanged()V

    const-string v0, "\u6d4f\u89c8\u8bb0\u5f55\u6e05\u7406\u5b8c\u6210"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->initToast(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->changeTipState()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0155
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->setContentView(I)V

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Lgc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgc;-><init>(Lcn/apppark/vertify/activity/buy/BuyViewHistory;Lga;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->handler:Lgc;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->initWidget()V

    invoke-direct {p0, v3}, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->getData(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyViewHistory;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    return-void
.end method
