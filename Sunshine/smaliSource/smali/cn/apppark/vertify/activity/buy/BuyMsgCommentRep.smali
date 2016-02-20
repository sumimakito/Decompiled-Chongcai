.class public Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;


# static fields
.field private static final DEL_WHAT:I = 0x4

.field private static final GET_WHAT:I = 0x1

.field private static final METHOD:Ljava/lang/String; = "replyDetail"

.field private static final METHOD_DELCOMMENT:Ljava/lang/String; = "deleteComment"

.field private static final METHOD_REPLAY:Ljava/lang/String; = "replyInfoComment"

.field private static final METHOD_SUB:Ljava/lang/String; = "saveNewComment"

.field private static final REF_DATA:I = 0x3

.field private static final REP_WHAT:I = 0x2

.field private static final SUB_WHAT:I = 0x2


# instance fields
.field private adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;

.field private btn_back:Landroid/widget/Button;

.field private btn_close:Landroid/widget/Button;

.field private btn_subcomment:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentPage:I

.field private delPosition:I

.field private dialog:Landroid/app/Dialog;

.field private et_comment:Landroid/widget/EditText;

.field private fra_keyboard:Landroid/widget/FrameLayout;

.field private handler:Ldb;

.field private info:Lcn/apppark/vertify/base/ClientPersionInfo;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lcn/apppark/mcd/widget/PullDownListView3;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private pid:Ljava/lang/String;

.field private repLayHead:Ljava/lang/String;

.field private replyUserId:Ljava/lang/String;

.field private replyUserName:Ljava/lang/String;

.field private tempItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private tempNewsId:Ljava/lang/String;

.field private tempPid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->itemList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->currentPage:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->repLayHead:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;I)I
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->currentPage:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->repLayHead:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->tempItemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->getData(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->delComment(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Lcn/apppark/mcd/widget/PullDownListView3;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->checkResult(Lcn/apppark/mcd/widget/PullDownListView3;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Landroid/widget/EditText;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->hiddenKeyboard(Landroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->delPosition:I

    return p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->et_comment:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->tempPid:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->itemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Landroid/widget/EditText;)V
    .locals 2

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->btn_close:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->tempNewsId:Ljava/lang/String;

    return-object p1
.end method

.method private checkResult(Lcn/apppark/mcd/widget/PullDownListView3;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/apppark/mcd/widget/PullDownListView3;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->getCount()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/apppark/mcd/widget/PullDownListView3;->onFootNodata(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v1, v1}, Lcn/apppark/mcd/widget/PullDownListView3;->onFootNodata(II)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->currentPage:I

    return v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->replyUserId:Ljava/lang/String;

    return-object p1
.end method

.method private delComment(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pid"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->handler:Ldb;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/info.ws"

    const-string v7, "deleteComment"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->replyUserName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getData(IILjava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pid"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->pid:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->handler:Ldb;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/info.ws"

    const-string v7, "replyDetail"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method static synthetic h(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->saveComment()V

    return-void
.end method

.method private hiddenKeyboard(Landroid/widget/EditText;)Z
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/mcd/widget/PullDownListView3;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->listView:Lcn/apppark/mcd/widget/PullDownListView3;

    return-object v0
.end method

.method private initWidget()V
    .locals 3

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0055

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->btn_subcomment:Landroid/widget/Button;

    const v0, 0x7f0a0054

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->btn_close:Landroid/widget/Button;

    const v0, 0x7f0a0051

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->fra_keyboard:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->et_comment:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->btn_subcomment:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->btn_back:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$1;-><init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->btn_close:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->btn_close:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->btn_close:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$2;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$2;-><init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0052

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView3;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->listView:Lcn/apppark/mcd/widget/PullDownListView3;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->listView:Lcn/apppark/mcd/widget/PullDownListView3;

    new-instance v1, Lcw;

    invoke-direct {v1, p0}, Lcw;-><init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/PullDownListView3;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView3$OnRefreshListener3;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->listView:Lcn/apppark/mcd/widget/PullDownListView3;

    new-instance v1, Lcx;

    invoke-direct {v1, p0}, Lcx;-><init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView3;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView3$OnFootRefreshListener3;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->listView:Lcn/apppark/mcd/widget/PullDownListView3;

    new-instance v1, Lcy;

    invoke-direct {v1, p0}, Lcy;-><init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView3;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->fra_keyboard:Landroid/widget/FrameLayout;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$6;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$6;-><init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->btn_subcomment:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$7;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$7;-><init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->tempItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->currentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->currentPage:I

    return v0
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->delPosition:I

    return v0
.end method

.method private replayData(I)V
    .locals 8

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->et_comment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserNikeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserNikeName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->repLayHead:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->repLayHead:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v2, "interfaces"

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->tempNewsId:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userId"

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userName"

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userPicUrl"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserHeadFace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pid"

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->tempPid:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "replyUserId"

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->replyUserId:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "replyUserName"

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->replyUserName:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->handler:Ldb;

    const-string v3, "json"

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/info.ws"

    const-string v7, "replyInfoComment"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getPhone()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private saveComment()V
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->et_comment:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->context:Landroid/content/Context;

    const v1, 0x7f080024

    invoke-static {v0, v1}, Lcn/apppark/ckj10185912/HQCHApplication;->createLoadingDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->dialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->repLayHead:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->replayData(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u8bf7\u8f93\u5165\u60a8\u7684\u8bc4\u8bba"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private showKeyboard(Landroid/widget/EditText;)V
    .locals 2

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->setContentView(I)V

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->pid:Ljava/lang/String;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->initWidget()V

    new-instance v0, Ldb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldb;-><init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$1;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->handler:Ldb;

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->currentPage:I

    const/4 v1, 0x1

    const-string v2, "replyDetail"

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->getData(IILjava/lang/String;)V

    return-void
.end method
