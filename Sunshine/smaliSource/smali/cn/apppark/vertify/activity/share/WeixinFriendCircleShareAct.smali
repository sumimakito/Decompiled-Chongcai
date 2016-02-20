.class public Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;
.super Landroid/app/Activity;


# instance fields
.field private MAX_TEXT_LENGTH:I

.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private btn_return:Landroid/widget/Button;

.field private btn_share:Landroid/widget/Button;

.field private content:Ljava/lang/String;

.field private et_content:Landroid/widget/EditText;

.field private img:Landroid/widget/ImageView;

.field private imgpath:Ljava/lang/String;

.field private progress:Landroid/widget/ProgressBar;

.field private targetUrl:Ljava/lang/String;

.field private tv_wordnum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->content:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->imgpath:Ljava/lang/String;

    const/16 v0, 0x8c

    iput v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->MAX_TEXT_LENGTH:I

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->MAX_TEXT_LENGTH:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->et_content:Landroid/widget/EditText;

    return-object v0
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->tv_wordnum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->targetUrl:Ljava/lang/String;

    return-object v0
.end method

.method private getWeiXin()V
    .locals 2

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getWeixinAppID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v1, v1, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getWeixinAppID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->unregisterApp()V

    :cond_0
    return-void
.end method

.method private initWidget()V
    .locals 4

    const/4 v2, 0x0

    const v0, 0x7f0a03c0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a03d1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a03d2

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->btn_share:Landroid/widget/Button;

    const v0, 0x7f0a03d0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->btn_return:Landroid/widget/Button;

    const v0, 0x7f0a03d3

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->et_content:Landroid/widget/EditText;

    const v0, 0x7f0a03d6

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->tv_wordnum:Landroid/widget/TextView;

    const v0, 0x7f0a03d7

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->img:Landroid/widget/ImageView;

    const v0, 0x7f0a03d4

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->progress:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->btn_return:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct$MyBtnClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;Lqa;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->btn_share:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct$MyBtnClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;Lqa;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->btn_return:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->btn_share:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    new-instance v0, Lqa;

    invoke-direct {v0, p0}, Lqa;-><init>(Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->et_content:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->et_content:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->tv_wordnum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8fd8\u53ef\u8f93\u5165"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->MAX_TEXT_LENGTH:I

    iget-object v3, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->et_content:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5b57"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->imgpath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->imgpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->imgpath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->img:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->requestWindowFeature(I)Z

    const v0, 0x7f03009d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->setContentView(I)V

    :try_start_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@###"

    const-string v3, "@apppark"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->content:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->content:Ljava/lang/String;

    iget-object v2, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->content:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->content:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->targetUrl:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->content:Ljava/lang/String;

    iget-object v2, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->targetUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->content:Ljava/lang/String;

    const-string v1, "imgpath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->imgpath:Ljava/lang/String;

    iget v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->MAX_TEXT_LENGTH:I

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->targetUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->MAX_TEXT_LENGTH:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->initWidget()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendWeiXinImgText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->getWeiXin()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;-><init>()V

    iput-object p4, v1, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    new-instance v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v2, v1}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;)V

    iput-object p1, v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    iput-object p2, v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    new-instance v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    const-string v3, "webpage"

    invoke-direct {p0, v3}, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    if-eqz p5, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput v0, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/WeixinFriendCircleShareAct;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    goto :goto_0
.end method
