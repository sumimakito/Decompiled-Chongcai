.class public Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final COLLECTION_ADD_WHAT:I

.field private final COLLECTION_CANCEL_WHAT:I

.field private final GET_WHAT:I

.field private METHOD:Ljava/lang/String;

.field private METHOD_COLLECTION:Ljava/lang/String;

.field public METHOD_DEL:Ljava/lang/String;

.field private METHOD_SHARE:Ljava/lang/String;

.field private final SUBSHARE_WHAT:I

.field public a:Z

.field private btn_collection:Landroid/widget/Button;

.field private btn_comment:Landroid/widget/Button;

.field private btn_finish:Landroid/widget/Button;

.field private btn_share:Landroid/widget/Button;

.field private fra_root:Landroid/widget/FrameLayout;

.field private handler:Lhi;

.field private ll_root:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private mContent:Ljava/lang/String;

.field private mType:I

.field private mWebView:Landroid/webkit/WebView;

.field private msgReceiver:Landroid/content/BroadcastReceiver;

.field private msgVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

.field private msgVo3:Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

.field private rel_topMenu:Landroid/widget/RelativeLayout;

.field private tv_commentnum:Landroid/widget/TextView;

.field private tv_menuTitle:Landroid/widget/TextView;

.field private tv_sharenum:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field private tv_viewNum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->GET_WHAT:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->SUBSHARE_WHAT:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->COLLECTION_ADD_WHAT:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->COLLECTION_CANCEL_WHAT:I

    const-string v0, "detailNew"

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->METHOD:Ljava/lang/String;

    const-string v0, "saveNewsFavorites"

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->METHOD_COLLECTION:Ljava/lang/String;

    const-string v0, "deleteNewsFavorites"

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->METHOD_DEL:Ljava/lang/String;

    const-string v0, "saveShare"

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->METHOD_SHARE:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->a:Z

    new-instance v0, Lhh;

    invoke-direct {v0, p0}, Lhh;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mContent:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->subShareData(I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->getData(ILjava/lang/String;)V

    return-void
.end method

.method private addMsgCollection(I)V
    .locals 8

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-direct {v0, p0}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v2, "\u6536\u85cf\u4e2d,\u8bf7\u7a0d\u5019"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appId"

    const-string v3, "10185912"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "memberId"

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "newsId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->handler:Lhi;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/ckj10185912/YYGYContants;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    iget-object v7, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->METHOD_COLLECTION:Ljava/lang/String;

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    goto :goto_0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->initData(Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->btn_collection:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_sharenum:Landroid/widget/TextView;

    return-object v0
.end method

.method private delData(I)V
    .locals 8

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-direct {v0, p0}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appId"

    const-string v3, "10185912"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "memberId"

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "newsId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->handler:Lhi;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/ckj10185912/YYGYContants;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    iget-object v7, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->METHOD_DEL:Ljava/lang/String;

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    goto :goto_0
.end method

.method private getData(ILjava/lang/String;)V
    .locals 8

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-direct {v0, p0}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "interfaces"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "userId"

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->handler:Lhi;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/ckj10185912/YYGYContants;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/info.ws"

    iget-object v7, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->METHOD:Ljava/lang/String;

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private goBack()V
    .locals 0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->finish()V

    return-void
.end method

.method private initData(Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;)V
    .locals 6

    const/16 v2, 0x8

    const-string v0, "1"

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getIsFavorites()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->btn_collection:Landroid/widget/Button;

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_time:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_menuTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getShareCount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotZero(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_sharenum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getShareCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getBrowseCount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotZero(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_viewNum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getBrowseCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getCommentCount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotZero(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_commentnum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getCommentCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    :try_start_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mContent:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->btn_collection:Landroid/widget/Button;

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_sharenum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_viewNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_commentnum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4
.end method

.method private initWidget()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v1, 0x8

    const/4 v2, 0x1

    const v0, 0x7f0a01a7

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->ll_root:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01ad

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->fra_root:Landroid/widget/FrameLayout;

    const v0, 0x7f0a01ae

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    const v0, 0x7f0a01ab

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_title:Landroid/widget/TextView;

    const v0, 0x7f0a01a9

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_menuTitle:Landroid/widget/TextView;

    const v0, 0x7f0a01a8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->rel_topMenu:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01b6

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_commentnum:Landroid/widget/TextView;

    const v0, 0x7f0a01b4

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_sharenum:Landroid/widget/TextView;

    const v0, 0x7f0a01b2

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_viewNum:Landroid/widget/TextView;

    const v0, 0x7f0a01b5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->btn_comment:Landroid/widget/Button;

    const v0, 0x7f0a01b3

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->btn_share:Landroid/widget/Button;

    const v0, 0x7f0a01b0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->btn_collection:Landroid/widget/Button;

    const v0, 0x7f0a01ac

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_time:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->rel_topMenu:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    const v0, 0x7f0a01aa

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->btn_finish:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->btn_finish:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->btn_share:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->btn_comment:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->btn_collection:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_commentnum:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_sharenum:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->btn_finish:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->btn_share:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->btn_comment:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->btn_collection:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    const-string v1, "jsclick"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lhf;

    invoke-direct {v1, p0}, Lhf;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private subShareData(I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, "interfaces"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->handler:Lhi;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/ckj10185912/YYGYContants;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/info.ws"

    iget-object v7, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->METHOD_SHARE:Ljava/lang/String;

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void

    :cond_1
    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string v0, "interfaces"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo3:Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->tv_commentnum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const v5, 0x7f080001

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->finish()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->VIP_0:Ljava/lang/String;

    sget-object v3, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v3}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getIsVip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "content"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"-\u6765\u81ea\u5e94\u7528\u516c\u56ed\u5236\u4f5c\u7684APP<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v2, "imgpath"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v2, "content"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" <<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getIsFavorites()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->delData(I)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->addMsgCollection(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a01aa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f080024

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->setContentView(I)V

    new-instance v0, Lhi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhi;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;Lhf;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->handler:Lhi;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mType:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bund"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "vo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->initWidget()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const-string v1, "255"

    invoke-virtual {v0, v3, v2, v2, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->getData(ILjava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->SHARE_ACTION_MSG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_2
    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bund"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "vo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo3:Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo3:Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->initWidget()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const-string v1, "255"

    invoke-virtual {v0, v3, v2, v2, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgVo3:Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->getData(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->msgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method public showImage(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lhg;

    invoke-direct {v0, p0, p1}, Lhg;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;I)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
