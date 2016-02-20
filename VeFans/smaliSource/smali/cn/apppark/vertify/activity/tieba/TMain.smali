.class public Lcn/apppark/vertify/activity/tieba/TMain;
.super Lcn/apppark/vertify/activity/tieba/TBBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final CLICKGOOD_WHAT:I

.field private final GET_WHAT:I

.field private final MSG_MAIN_WHAT:I

.field private final MSG_WHAT:I

.field private adapter:Lcn/apppark/vertify/adapter/TMainAdapter;

.field private btn_back:Landroid/widget/Button;

.field private btn_edit:Landroid/widget/Button;

.field private btn_more:Landroid/widget/Button;

.field private btn_ref:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentMsgTime:Ljava/lang/String;

.field private currentPage:I

.field private handler:Lrn;

.field private img_icon:Landroid/widget/ImageView;

.field private img_topbg:Landroid/widget/ImageView;

.field private isGetMsg:Z

.field private isMsgFinish:Z

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMainVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemList_top:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMainVo;",
            ">;"
        }
    .end annotation
.end field

.field private json:Ljava/lang/String;

.field private listView:Lcn/apppark/mcd/widget/PullDownListView4;

.field private ll_msg:Landroid/widget/LinearLayout;

.field private ll_rightMenu:Landroid/widget/LinearLayout;

.field private ll_toparticle:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private menu:Lcn/apppark/mcd/widget/RightSlidMenu;

.field private operatingAnim:Landroid/view/animation/Animation;

.field private rel_menu:Landroid/widget/RelativeLayout;

.field private rel_ref:Landroid/widget/RelativeLayout;

.field private tbInfo:Lcn/apppark/mcd/vo/free/FunctionTiebaVo;

.field private tv_myCollection:Landroid/widget/TextView;

.field private tv_myHistory:Landroid/widget/TextView;

.field private tv_myMsg:Landroid/widget/TextView;

.field private tv_myTopic:Landroid/widget/TextView;

.field private tv_name:Landroid/widget/TextView;

.field private tv_num:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field private tv_topicNum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;-><init>()V

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->GET_WHAT:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->CLICKGOOD_WHAT:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->MSG_WHAT:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->MSG_MAIN_WHAT:I

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->isMsgFinish:Z

    iput-object p0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->context:Landroid/content/Context;

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList_top:Ljava/util/ArrayList;

    const-string v0, "2015-11-28 11:37:001"

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentMsgTime:Ljava/lang/String;

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->isGetMsg:Z

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMain;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList_top:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMain;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/tieba/TMain;->getMsg(I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMain;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->getData(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMain;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/tieba/TMain;->setMsgCount(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMain;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->isGetMsg:Z

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMain;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->isMsgFinish:Z

    return p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TMain;)V
    .locals 2

    const/4 v1, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentPage:I

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/tieba/TMain;->getData(II)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TMain;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/tieba/TMain;->setMainMsgCount(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TMain;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/tieba/TMain;->initTopMsg(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TMain;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentPage:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TMain;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/tieba/TMain;->setData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private checkLogin(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/apppark/vertify/activity/tieba/TBBaseAct;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v1

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v1, v0}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v1, v0}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkResult()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->btn_ref:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u5e16\u5b50"

    invoke-virtual {v0, v1, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getCount()I

    move-result v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList_top:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootNodata(II)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_topicNum:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v3, v3}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootNodata(II)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/tieba/TMain;)Lcn/apppark/mcd/widget/RightSlidMenu;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->menu:Lcn/apppark/mcd/widget/RightSlidMenu;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/tieba/TMain;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/tieba/TMain;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/tieba/TMain;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->isMsgFinish:Z

    return v0
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v2, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMain;->handler:Lrn;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TMain;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "main"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private getMsg(I)V
    .locals 8

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getLastMsgTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getLastMsgTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentMsgTime:Ljava/lang/String;

    :cond_0
    const-string v0, "lastReadTime"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentMsgTime:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMain;->handler:Lrn;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TMain;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "getNewMessageCount"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    :cond_1
    return-void
.end method

.method private getMsgThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lrh;

    invoke-direct {v1, p0}, Lrh;-><init>(Lcn/apppark/vertify/activity/tieba/TMain;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/tieba/TMain;)Lcn/apppark/mcd/widget/PullDownListView4;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/tieba/TMain;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->btn_ref:Landroid/widget/Button;

    return-object v0
.end method

.method private initTBInfo()V
    .locals 2

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "json"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->json:Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->json:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->json:Ljava/lang/String;

    const-class v1, Lcn/apppark/mcd/vo/free/FunctionTiebaVo;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/FunctionTiebaVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tbInfo:Lcn/apppark/mcd/vo/free/FunctionTiebaVo;

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tbInfo:Lcn/apppark/mcd/vo/free/FunctionTiebaVo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tbInfo:Lcn/apppark/mcd/vo/free/FunctionTiebaVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/FunctionTiebaVo;->getTiebaId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tbInfo:Lcn/apppark/mcd/vo/free/FunctionTiebaVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/FunctionTiebaVo;->getStyle_navBgColor()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TOPMENU_BGCOLOR:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->finish()V

    goto :goto_0
.end method

.method private initTopMenu()V
    .locals 2

    const v0, 0x7f0a03aa

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->rel_menu:Landroid/widget/RelativeLayout;

    sget-object v0, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TOPMENU_BGCOLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->rel_menu:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a03ac

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a03ad

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->btn_edit:Landroid/widget/Button;

    const v0, 0x7f0a03af

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->btn_more:Landroid/widget/Button;

    const v0, 0x7f0a03b0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_num:Landroid/widget/TextView;

    const v0, 0x7f0a03ab

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u8d34\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->btn_edit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->btn_more:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTopMsg(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMainVo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->ll_toparticle:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    const v1, 0x7f03009e

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMain;->ll_toparticle:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f0a03a8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v4, v2, :cond_0

    const v2, 0x7f0a03a9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    new-instance v2, Lcn/apppark/vertify/activity/tieba/TMain$6;

    invoke-direct {v2, p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain$6;-><init>(Lcn/apppark/vertify/activity/tieba/TMain;Lcn/apppark/mcd/vo/tieba/TMainVo;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initWidget()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Lrn;

    invoke-direct {v0, p0, v2}, Lrn;-><init>(Lcn/apppark/vertify/activity/tieba/TMain;Lrh;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->handler:Lrn;

    const v0, 0x7f0a03b1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView4;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/PullDownListView4;->setDividerHeight(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lri;

    invoke-direct {v1, p0}, Lri;-><init>(Lcn/apppark/vertify/activity/tieba/TMain;)V

    invoke-virtual {v0, v1, v3}, Lcn/apppark/mcd/widget/PullDownListView4;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnRefreshListener4;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lrj;

    invoke-direct {v1, p0}, Lrj;-><init>(Lcn/apppark/vertify/activity/tieba/TMain;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lrk;

    invoke-direct {v1, p0}, Lrk;-><init>(Lcn/apppark/vertify/activity/tieba/TMain;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a03ba

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->img_icon:Landroid/widget/ImageView;

    const v1, 0x7f0a03b6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->img_topbg:Landroid/widget/ImageView;

    const v1, 0x7f0a03b8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_name:Landroid/widget/TextView;

    const v1, 0x7f0a03b9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_topicNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tbInfo:Lcn/apppark/mcd/vo/free/FunctionTiebaVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/FunctionTiebaVo;->getData_text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_title:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tbInfo:Lcn/apppark/mcd/vo/free/FunctionTiebaVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/FunctionTiebaVo;->getData_text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tbInfo:Lcn/apppark/mcd/vo/free/FunctionTiebaVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/FunctionTiebaVo;->getData_pic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMain;->img_icon:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Ljava/lang/String;Landroid/view/View;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tbInfo:Lcn/apppark/mcd/vo/free/FunctionTiebaVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/FunctionTiebaVo;->getStyle_pic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMain;->img_topbg:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Ljava/lang/String;Landroid/view/View;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/PullDownListView4;->addHeaderView(Landroid/view/View;)V

    const v1, 0x7f0a03bb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->ll_toparticle:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03b3

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->btn_ref:Landroid/widget/Button;

    const v0, 0x7f0a03b2

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->rel_ref:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->btn_ref:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    const v0, 0x7f0a03a6

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RightSlidMenu;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->menu:Lcn/apppark/mcd/widget/RightSlidMenu;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->menu:Lcn/apppark/mcd/widget/RightSlidMenu;

    new-instance v1, Lrl;

    invoke-direct {v1, p0}, Lrl;-><init>(Lcn/apppark/vertify/activity/tieba/TMain;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RightSlidMenu;->setChangeListener(Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;)V

    const v0, 0x7f0a03cb

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_myTopic:Landroid/widget/TextView;

    const v0, 0x7f0a03cc

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_myCollection:Landroid/widget/TextView;

    const v0, 0x7f0a03ca

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->ll_rightMenu:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->ll_rightMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03cf

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_myMsg:Landroid/widget/TextView;

    const v0, 0x7f0a03ce

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->ll_msg:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03cd

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_myHistory:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->btn_ref:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_myTopic:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_myCollection:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->ll_msg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_myHistory:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/tieba/TMain;)V
    .locals 5

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080025

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "255"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v1, Lrm;

    invoke-direct {v1, p0}, Lrm;-><init>(Lcn/apppark/vertify/activity/tieba/TMain;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    return-void
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/tieba/TMain;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/tieba/TMain;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->rel_ref:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/tieba/TMain;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList_top:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/tieba/TMain;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->checkResult()V

    return-void
.end method

.method private refData()V
    .locals 2

    const/4 v1, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentPage:I

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/tieba/TMain;->getData(II)V

    return-void
.end method

.method private sendClickGood(ILjava/lang/String;II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "topicId"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v2, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMain;->handler:Lrn;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TMain;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "clickGood"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private setData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMainVo;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentPage:I

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->adapter:Lcn/apppark/vertify/adapter/TMainAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lcn/apppark/vertify/adapter/TMainAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcn/apppark/vertify/adapter/TMainAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcn/apppark/vertify/activity/tieba/TMain;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->adapter:Lcn/apppark/vertify/adapter/TMainAdapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->adapter:Lcn/apppark/vertify/adapter/TMainAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->adapter:Lcn/apppark/vertify/adapter/TMainAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TMainAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private setMainMsgCount(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "retFlag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_myMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_num:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_num:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_num:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private setMsgCount(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "retFlag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentMsgTime:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateLastMsgTime(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_myMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_num:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_num:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_num:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private showError()V
    .locals 5

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080025

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "255"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v1, Lrm;

    invoke-direct {v1, p0}, Lrm;-><init>(Lcn/apppark/vertify/activity/tieba/TMain;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    return-void
.end method


# virtual methods
.method public clickGood(ILjava/lang/String;I)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    const-string v1, "1"

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getIsGood()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getGoodNum()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->setGoodNum(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->setIsGood(Ljava/lang/String;)V

    move v0, v2

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->sendClickGood(ILjava/lang/String;II)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->adapter:Lcn/apppark/vertify/adapter/TMainAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TMainAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getGoodNum()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/vo/tieba/TMainVo;->setGoodNum(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getGoodNum()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->setGoodNum(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->setIsGood(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->operatingAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->btn_ref:Landroid/widget/Button;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->operatingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iput v2, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentPage:I

    invoke-direct {p0, v0, v2}, Lcn/apppark/vertify/activity/tieba/TMain;->getData(II)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getIsLoginInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/tieba/TMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->menu:Lcn/apppark/mcd/widget/RightSlidMenu;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/RightSlidMenu;->closeOpenMenu()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->operatingAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->btn_ref:Landroid/widget/Button;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->operatingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->refData()V

    goto :goto_0

    :sswitch_4
    const-class v0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->checkLogin(Ljava/lang/Class;)Z

    :goto_1
    :sswitch_5
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->menu:Lcn/apppark/mcd/widget/RightSlidMenu;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/RightSlidMenu;->closeOpenMenu()V

    goto :goto_0

    :sswitch_6
    const-class v0, Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->checkLogin(Ljava/lang/Class;)Z

    goto :goto_1

    :sswitch_7
    const-class v0, Lcn/apppark/vertify/activity/tieba/TMsg;

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->checkLogin(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/apppark/mcd/util/PublicUtil;->getFormatTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentMsgTime:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentMsgTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateLastMsgTime(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->tv_num:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->menu:Lcn/apppark/mcd/widget/RightSlidMenu;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/RightSlidMenu;->closeOpenMenu()V

    goto :goto_0

    :sswitch_8
    const-class v0, Lcn/apppark/vertify/activity/tieba/TMyHistory;

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->checkLogin(Ljava/lang/Class;)Z

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f0a03ac -> :sswitch_0
        0x7f0a03ad -> :sswitch_1
        0x7f0a03af -> :sswitch_2
        0x7f0a03b3 -> :sswitch_3
        0x7f0a03ca -> :sswitch_5
        0x7f0a03cb -> :sswitch_4
        0x7f0a03cc -> :sswitch_6
        0x7f0a03cd -> :sswitch_8
        0x7f0a03ce -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03009d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->setContentView(I)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->initTBInfo()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->initTopMenu()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMain;->initWidget()V

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->currentPage:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/tieba/TMain;->getData(II)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->getMsg(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lrh;

    invoke-direct {v1, p0}, Lrh;-><init>(Lcn/apppark/vertify/activity/tieba/TMain;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const v0, 0x7f04000b

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->operatingAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->operatingAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->isGetMsg:Z

    invoke-super {p0}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->menu:Lcn/apppark/mcd/widget/RightSlidMenu;

    iget-boolean v1, v1, Lcn/apppark/mcd/widget/RightSlidMenu;->isMenuShow:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain;->menu:Lcn/apppark/mcd/widget/RightSlidMenu;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/RightSlidMenu;->closeOpenMenu()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public topicComment(I)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->context:Landroid/content/Context;

    const-class v2, Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "topicid"

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMain;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTopicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
