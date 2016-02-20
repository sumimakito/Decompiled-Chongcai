.class public Lcn/apppark/vertify/activity/free/dyn/DynSubComment;
.super Lcn/apppark/vertify/activity/BaseAct;


# instance fields
.field private final DEL_WHAT:I

.field private final GET_WHAT:I

.field private final GOOD_WHAT:I

.field private final METHOD:Ljava/lang/String;

.field private final METHOD_CLICKGOOD:Ljava/lang/String;

.field private final METHOD_DELCOMMENT:Ljava/lang/String;

.field private final METHOD_REPLAY:Ljava/lang/String;

.field private final METHOD_SUB:Ljava/lang/String;

.field private final REF_DATA:I

.field private final REP_WHAT:I

.field private final SUB_WHAT:I

.field private adapter:Lcn/apppark/vertify/adapter/DynCommentAdapter;

.field private btn_back:Landroid/widget/Button;

.field private btn_close:Landroid/widget/Button;

.field private btn_subcomment:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentPage:I

.field private delPosition:I

.field private dialog:Landroid/app/Dialog;

.field private et_comment:Landroid/widget/EditText;

.field private fra_keyboard:Landroid/widget/FrameLayout;

.field private handler:Lkl;

.field private id:Ljava/lang/String;

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

.field private ll_commentView:Landroid/widget/LinearLayout;

.field private ll_showCommentView:Landroid/widget/LinearLayout;

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


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/BaseAct;-><init>()V

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->GET_WHAT:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->SUB_WHAT:I

    iput v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->REP_WHAT:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->REF_DATA:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->DEL_WHAT:I

    iput v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->GOOD_WHAT:I

    const-string v0, "commentList"

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->METHOD:Ljava/lang/String;

    const-string v0, "saveNewComment"

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->METHOD_SUB:Ljava/lang/String;

    const-string v0, "replyInfoComment"

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->METHOD_REPLAY:Ljava/lang/String;

    const-string v0, "deleteComment"

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->METHOD_DELCOMMENT:Ljava/lang/String;

    const-string v0, "praise"

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->METHOD_CLICKGOOD:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->itemList:Ljava/util/ArrayList;

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->currentPage:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->repLayHead:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;I)I
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->currentPage:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Lcn/apppark/vertify/adapter/DynCommentAdapter;)Lcn/apppark/vertify/adapter/DynCommentAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->adapter:Lcn/apppark/vertify/adapter/DynCommentAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->repLayHead:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->tempItemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->getData(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2, p3}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->delComment(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Lcn/apppark/mcd/widget/PullDownListView3;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->checkResult(Lcn/apppark/mcd/widget/PullDownListView3;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Landroid/widget/EditText;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->hiddenKeyboard(Landroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->delPosition:I

    return p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->et_comment:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->pid:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->itemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Landroid/widget/EditText;)V
    .locals 2

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->ll_commentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->replyUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
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

.method private clickGood(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cId"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->handler:Lkl;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/praise.ws"

    const-string v7, "praise"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcn/apppark/vertify/network/request/WebServicePool;->setPosition(Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method static synthetic d(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->ll_showCommentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->replyUserName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->subClickGood(Ljava/lang/String;I)V

    return-void
.end method

.method private delComment(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "interfaces"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pid"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->handler:Lkl;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/info.ws"

    const-string v7, "deleteComment"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->currentPage:I

    return v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private getData(IILjava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "interfaces"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->id:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pageSize"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->handler:Lkl;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/info.ws"

    const-string v7, "commentList"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->context:Landroid/content/Context;

    return-object v0
.end method

.method private hiddenKeyboard(Landroid/widget/EditText;)Z
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->saveComment()V

    return-void
.end method

.method private initWidget()V
    .locals 3

    const v0, 0x7f0a0185

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->btn_subcomment:Landroid/widget/Button;

    const v0, 0x7f0a0184

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->btn_close:Landroid/widget/Button;

    const v0, 0x7f0a0180

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->fra_keyboard:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0186

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->et_comment:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->btn_subcomment:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    const v0, 0x7f0a017e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a017f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->btn_back:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$1;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->btn_close:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$2;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$2;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0182

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->ll_showCommentView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0183

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->ll_commentView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->ll_showCommentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$3;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$3;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->ll_commentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$4;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$4;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0181

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView3;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->listView:Lcn/apppark/mcd/widget/PullDownListView3;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->listView:Lcn/apppark/mcd/widget/PullDownListView3;

    new-instance v1, Lkg;

    invoke-direct {v1, p0}, Lkg;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/PullDownListView3;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView3$OnRefreshListener3;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->listView:Lcn/apppark/mcd/widget/PullDownListView3;

    new-instance v1, Lkh;

    invoke-direct {v1, p0}, Lkh;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView3;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView3$OnFootRefreshListener3;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->listView:Lcn/apppark/mcd/widget/PullDownListView3;

    new-instance v1, Lki;

    invoke-direct {v1, p0}, Lki;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView3;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->fra_keyboard:Landroid/widget/FrameLayout;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$8;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$8;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->btn_subcomment:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$9;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$9;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/mcd/widget/PullDownListView3;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->listView:Lcn/apppark/mcd/widget/PullDownListView3;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/vertify/adapter/DynCommentAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->adapter:Lcn/apppark/vertify/adapter/DynCommentAdapter;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->tempItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->currentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->currentPage:I

    return v0
.end method

.method public static synthetic o(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->delPosition:I

    return v0
.end method

.method private replayData(I)V
    .locals 8

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->et_comment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserNikeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserNikeName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->repLayHead:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->repLayHead:Ljava/lang/String;

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

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->id:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userId"

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v3}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userName"

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userPicUrl"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserHeadFace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pid"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->pid:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "replyUserId"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->replyUserId:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "replyUserName"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->replyUserName:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->handler:Lkl;

    const-string v3, "json"

    invoke-static {v4}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/info.ws"

    const-string v7, "replyInfoComment"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getPhone()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private saveComment()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->et_comment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->context:Landroid/content/Context;

    const v1, 0x7f080024

    invoke-static {v0, v1}, Lcn/apppark/ckj10185912/HQCHApplication;->createLoadingDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->dialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->repLayHead:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->replayData(I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->subData(I)V

    goto :goto_0

    :cond_2
    const-string v0, "\u8bf7\u8f93\u5165\u60a8\u7684\u8bc4\u8bba"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->initToast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private showKeyboard(Landroid/widget/EditText;)V
    .locals 2

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private subClickGood(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->context:Landroid/content/Context;

    const v1, 0x7f080024

    invoke-static {v0, v1}, Lcn/apppark/ckj10185912/HQCHApplication;->createLoadingDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->dialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->clickGood(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "\u8bf7\u767b\u5f55\u540e\u70b9\u8d5e"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->initToast(Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private subData(I)V
    .locals 8

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->et_comment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserNikeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserNikeName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->repLayHead:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->repLayHead:Ljava/lang/String;

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

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->id:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userId"

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v3}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userName"

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userPicUrl"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserHeadFace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->handler:Lkl;

    const-string v3, "json"

    invoke-static {v4}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/info.ws"

    const-string v7, "saveNewComment"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getPhone()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/BaseAct;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p1, v0, :cond_1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->context:Landroid/content/Context;

    const v1, 0x7f080024

    invoke-static {v0, v1}, Lcn/apppark/ckj10185912/HQCHApplication;->createLoadingDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->dialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->subData(I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/BaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->setContentView(I)V

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->id:Ljava/lang/String;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->initWidget()V

    new-instance v0, Lkl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkl;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Lcn/apppark/vertify/activity/free/dyn/DynSubComment$1;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->handler:Lkl;

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->currentPage:I

    const/4 v1, 0x1

    const-string v2, "commentList"

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->getData(IILjava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->setResult(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->finish()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/apppark/vertify/activity/BaseAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
