.class public Lcn/apppark/vertify/activity/tieba/TCommentList;
.super Lcn/apppark/vertify/activity/tieba/TBBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final DEL_SONCOMMENT_WHAT:I

.field private final GET_COMMENTDETAIL:I

.field private final GET_WHAT:I

.field private final SEND_WHAT:I

.field private adapter:Lcn/apppark/vertify/adapter/TReplayAdapter;

.field private btn_back:Landroid/widget/Button;

.field private btn_delEmjo:Landroid/widget/Button;

.field private btn_face:Landroid/widget/Button;

.field private btn_sendComment:Landroid/widget/Button;

.field private btn_topicDetail:Landroid/widget/Button;

.field private commentId:Ljava/lang/String;

.field private commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

.field private context:Landroid/content/Context;

.field private currentFacePage:I

.field private currentPage:I

.field private delSonPosition:I

.field private et_content:Landroid/widget/EditText;

.field private faceViewPager:Landroid/support/v4/view/ViewPager;

.field private handler:Lrw;

.field private img_head:Lcn/apppark/mcd/widget/RemoteImageView;

.field private img_isFloor:Landroid/widget/ImageView;

.field private isFaceShow:Z

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TReplayVo;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lcn/apppark/mcd/widget/PullDownListView4;

.field private ll_content:Landroid/widget/LinearLayout;

.field private ll_point:Landroid/widget/LinearLayout;

.field private ll_root:Lcn/apppark/mcd/widget/MyResizeLinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private pageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private pointViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private rel_faceChose:Landroid/widget/RelativeLayout;

.field private rel_menu:Landroid/widget/RelativeLayout;

.field private replayType:I

.field private replyId:Ljava/lang/String;

.field private replyTitle:Ljava/lang/String;

.field private topicId:Ljava/lang/String;

.field private topicUserId:Ljava/lang/String;

.field private tv_content:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field private tv_userName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;-><init>()V

    iput v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->GET_WHAT:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->SEND_WHAT:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->DEL_SONCOMMENT_WHAT:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->GET_COMMENTDETAIL:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->context:Landroid/content/Context;

    iput v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->currentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->itemList:Ljava/util/ArrayList;

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replayType:I

    const-string v0, ""

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replyTitle:Ljava/lang/String;

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->isFaceShow:Z

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->currentFacePage:I

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TCommentList;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->currentPage:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TCommentList;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->currentFacePage:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TCommentList;Lcn/apppark/mcd/vo/tieba/TCommentVo;)Lcn/apppark/mcd/vo/tieba/TCommentVo;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TCommentList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replyTitle:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TCommentList;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getData(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TCommentList;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcn/apppark/vertify/activity/tieba/TCommentList;->delSonComment(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TCommentList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->setData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TCommentList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/tieba/TCommentList;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TCommentList;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->isFaceShow:Z

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TCommentList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replyId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TCommentList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TCommentList;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getCommentDetail(I)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TCommentList;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getSonCommentReplyLocation(II)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TCommentList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/tieba/TCommentList;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TCommentList;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->delSonPosition:I

    return p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TCommentList;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->et_content:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TCommentList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->topicUserId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TCommentList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkResult()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u56de\u590d"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getCount()I

    move-result v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootNodata(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v2, v2}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootNodata(II)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/tieba/TCommentList;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->currentFacePage:I

    return v0
.end method

.method private delSonComment(ILjava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getIsLoginInfo()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "replyId"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v2, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->handler:Lrw;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "delReply"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    goto :goto_0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/tieba/TCommentList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->pointViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/tieba/TCommentList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcn/apppark/vertify/activity/tieba/TCommentList;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->topicId:Ljava/lang/String;

    return-object v0
.end method

.method private getCommentDetail(I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "topicId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->topicId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v2, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "commentId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->handler:Lrw;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "getCommentDetail"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "topicId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->topicId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v2, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "commentId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getCommentId()Ljava/lang/String;

    move-result-object v2

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->handler:Lrw;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "getSonCommentReply"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private getSonCommentReplyLocation(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "topicId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->topicId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "commentId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getCommentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "replyId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replyId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pageSize"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->handler:Lrw;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "getSonCommentReply"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/tieba/TCommentList;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/tieba/TCommentList;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->delSonPosition:I

    return v0
.end method

.method private initCommentDetail()V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, -0x2

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getHeadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->tv_userName:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->tv_time:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSubTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->tv_content:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->tv_content:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->context:Landroid/content/Context;

    iget-object v3, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getContent()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, -0x1000000

    invoke-static {v1, v3, v4}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStr(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->tv_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u7b2c "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getFloorNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u697c"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v3, Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->context:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/ImgVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/ImgVo;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    const v0, 0x7f020071

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->ll_content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replayType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->btn_topicDetail:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->btn_topicDetail:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/tieba/TCommentList$4;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/tieba/TCommentList$4;-><init>(Lcn/apppark/vertify/activity/tieba/TCommentList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private initFace()V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->faceViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcn/apppark/vertify/adapter/ViewPagerAdapter;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->pageViews:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcn/apppark/vertify/adapter/ViewPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->faceViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->faceViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lrs;

    invoke-direct {v1, p0}, Lrs;-><init>(Lcn/apppark/vertify/activity/tieba/TCommentList;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private initTopMenu()V
    .locals 2

    const v0, 0x7f0a02e1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->rel_menu:Landroid/widget/RelativeLayout;

    sget-object v0, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TOPMENU_BGCOLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->rel_menu:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0447

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a0446

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->tv_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a044a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->btn_topicDetail:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->btn_topicDetail:Landroid/widget/Button;

    const-string v1, "\u67e5\u770b\u4e3b\u9898"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initWidget()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Lrw;

    invoke-direct {v0, p0, v3}, Lrw;-><init>(Lcn/apppark/vertify/activity/tieba/TCommentList;Lrq;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->handler:Lrw;

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->loadDialog:Landroid/app/Dialog;

    const v0, 0x7f0a041b

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView4;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v4}, Lcn/apppark/mcd/widget/PullDownListView4;->setDividerHeight(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300af

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0427

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    const v1, 0x7f0a0428

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->tv_userName:Landroid/widget/TextView;

    const v1, 0x7f0a0429

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->tv_time:Landroid/widget/TextView;

    const v1, 0x7f0a042b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->tv_content:Landroid/widget/TextView;

    const v1, 0x7f0a042a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->ll_content:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/PullDownListView4;->addHeaderView(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->initCommentDetail()V

    const v0, 0x7f0a0423

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->ll_point:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0421

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->rel_faceChose:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0422

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->faceViewPager:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f0a041e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->et_content:Landroid/widget/EditText;

    const v0, 0x7f0a041d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->btn_face:Landroid/widget/Button;

    const v0, 0x7f0a0420

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->btn_delEmjo:Landroid/widget/Button;

    const v0, 0x7f0a041f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->btn_sendComment:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->context:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->et_content:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->initFaceData(Landroid/content/Context;Landroid/widget/EditText;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->pageViews:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->context:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->ll_point:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->pageViews:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->initPoint(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->pointViews:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v4}, Lcn/apppark/mcd/widget/PullDownListView4;->setDividerHeight(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v3, v4}, Lcn/apppark/mcd/widget/PullDownListView4;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnRefreshListener4;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lrq;

    invoke-direct {v1, p0}, Lrq;-><init>(Lcn/apppark/vertify/activity/tieba/TCommentList;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lrr;

    invoke-direct {v1, p0}, Lrr;-><init>(Lcn/apppark/vertify/activity/tieba/TCommentList;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->btn_face:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->btn_delEmjo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->btn_sendComment:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->initFace()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getCommentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentId:Ljava/lang/String;

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replayType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->et_content:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u56de\u590d\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->et_content:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\u56de\u590d\uff1a"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getReplyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replyId:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->et_content:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\u56de\u590d\uff1a"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getReplyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replyId:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->et_content:Landroid/widget/EditText;

    const-string v1, "\u56de\u590d\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/vertify/adapter/TReplayAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->adapter:Lcn/apppark/vertify/adapter/TReplayAdapter;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/mcd/widget/PullDownListView4;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/tieba/TCommentList;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->checkResult()V

    return-void
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/tieba/TCommentList;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic o(Lcn/apppark/vertify/activity/tieba/TCommentList;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replyTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic p(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic q(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic r(Lcn/apppark/vertify/activity/tieba/TCommentList;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->rel_faceChose:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic s(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/mcd/vo/tieba/TCommentVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    return-object v0
.end method

.method private sendReplay(I)V
    .locals 8

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getIsLoginInfo()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "commentId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "replyId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replyId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replyTitle:Ljava/lang/String;

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "content"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replyTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->et_content:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "topicId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->topicId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v2, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->handler:Lrw;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "sendReply"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    goto :goto_0

    :cond_1
    const-string v0, "content"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->et_content:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private setData(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TReplayVo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->currentPage:I

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->adapter:Lcn/apppark/vertify/adapter/TReplayAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcn/apppark/vertify/adapter/TReplayAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->itemList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->topicUserId:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replyId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/adapter/TReplayAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->adapter:Lcn/apppark/vertify/adapter/TReplayAdapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->adapter:Lcn/apppark/vertify/adapter/TReplayAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->adapter:Lcn/apppark/vertify/adapter/TReplayAdapter;

    new-instance v1, Lrt;

    invoke-direct {v1, p0}, Lrt;-><init>(Lcn/apppark/vertify/activity/tieba/TCommentList;)V

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/adapter/TReplayAdapter;->setOnDeleteListener(Lcn/apppark/vertify/adapter/TReplayAdapter$OnReplayDeleteListener;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->adapter:Lcn/apppark/vertify/adapter/TReplayAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TReplayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public static synthetic t(Lcn/apppark/vertify/activity/tieba/TCommentList;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->initCommentDetail()V

    return-void
.end method

.method public static synthetic u(Lcn/apppark/vertify/activity/tieba/TCommentList;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->et_content:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u56de\u590d\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string v0, ""

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replyTitle:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->isFaceShow:Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcn/apppark/mcd/util/PublicUtil;->closeKeyBoard(Landroid/app/Activity;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->isFaceShow:Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->sendReplay(I)V

    invoke-static {p0}, Lcn/apppark/mcd/util/PublicUtil;->closeKeyBoard(Landroid/app/Activity;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, "\u8bf7\u8f93\u5165\u8bc4\u8bba"

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a041d -> :sswitch_1
        0x7f0a041e -> :sswitch_2
        0x7f0a041f -> :sswitch_3
        0x7f0a0426 -> :sswitch_0
        0x7f0a0447 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x3

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300ad

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "topicUserId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->topicUserId:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "topicId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->topicId:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "replayType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replayType:I

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->initTopMenu()V

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replayType:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "commentId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentId:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "replyId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->replyId:Ljava/lang/String;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->initWidget()V

    invoke-direct {p0, v3}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getCommentDetail(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TCommentVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->commentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->initWidget()V

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TCommentList;->currentPage:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->getData(II)V

    goto :goto_0
.end method
