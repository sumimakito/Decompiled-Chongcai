.class public Lcn/apppark/vertify/activity/share/SinaShareAct;
.super Landroid/app/Activity;


# static fields
.field public static final APP_KEY:Ljava/lang/String; = "1160938630"

.field public static final REDIRECT_URL:Ljava/lang/String; = "http://www.apppark.cn"

.field public static final SCOPE:Ljava/lang/String; = "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read,follow_app_official_microblog,invitation_write"

.field private static final SINA_MSG_UPDATE_FAIL:I = -0x1

.field private static final SINA_MSG_UPDATE_OK:I = 0x1

.field private static final SINA_MSG_UPDATE_REPEAT:I = 0x2


# instance fields
.field private btn_return:Landroid/widget/Button;

.field private btn_share:Landroid/widget/Button;

.field private content:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private et_content:Landroid/widget/EditText;

.field private handler:Lpc;

.field private img:Landroid/widget/ImageView;

.field private imgpath:Ljava/lang/String;

.field private mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

.field private mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

.field private mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

.field private progress:Landroid/widget/ProgressBar;

.field private tv_keystate:Landroid/widget/TextView;

.field private tv_wordnum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    iput-object p0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->context:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->content:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->imgpath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/share/SinaShareAct;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->et_content:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/share/SinaShareAct;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/share/SinaShareAct;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->tv_wordnum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcn/apppark/vertify/activity/share/SinaShareAct;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->release4Sina()V

    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/share/SinaShareAct;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/share/SinaShareAct;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-object v0
.end method

.method private getTextObj()Lcom/sina/weibo/sdk/api/TextObject;
    .locals 2

    new-instance v0, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    return-object v0
.end method

.method private initWidget()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0a0324

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    new-instance v0, Lpc;

    invoke-direct {v0, p0, v2}, Lpc;-><init>(Lcn/apppark/vertify/activity/share/SinaShareAct;Lpa;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->handler:Lpc;

    const v0, 0x7f0a032e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->btn_share:Landroid/widget/Button;

    const v0, 0x7f0a032d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->btn_return:Landroid/widget/Button;

    const v0, 0x7f0a032f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->et_content:Landroid/widget/EditText;

    const v0, 0x7f0a0331

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->tv_keystate:Landroid/widget/TextView;

    const v0, 0x7f0a0332

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->tv_wordnum:Landroid/widget/TextView;

    const v0, 0x7f0a0333

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->img:Landroid/widget/ImageView;

    const v0, 0x7f0a0330

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->progress:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->btn_return:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/share/SinaShareAct$MyBtnClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/activity/share/SinaShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/SinaShareAct;Lpa;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->btn_share:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/share/SinaShareAct$MyBtnClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/activity/share/SinaShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/SinaShareAct;Lpa;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->btn_return:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->btn_share:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    new-instance v0, Lpa;

    invoke-direct {v0, p0}, Lpa;-><init>(Lcn/apppark/vertify/activity/share/SinaShareAct;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->et_content:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->et_content:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->tv_wordnum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8fd8\u53ef\u8f93\u5165"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->et_content:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int v2, v2, 0x8c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5b57"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->imgpath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->imgpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->imgpath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->img:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private release4Sina()V
    .locals 4

    invoke-static {p0}, Lcn/apppark/mcd/weibo/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->sendSingleMessage()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sina/weibo/sdk/auth/AuthInfo;

    const-string v1, "1160938630"

    const-string v2, "http://www.apppark.cn"

    const-string v3, "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read,follow_app_official_microblog,invitation_write"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-direct {v0, p0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    new-instance v1, Lpb;

    invoke-direct {v1, p0}, Lpb;-><init>(Lcn/apppark/vertify/activity/share/SinaShareAct;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeClientSso(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    goto :goto_0
.end method

.method private sendSingleMessage()V
    .locals 4

    new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMessage;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WeiboMessage;-><init>()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->getTextObj()Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    new-instance v1, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;->transaction:Ljava/lang/String;

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;->message:Lcom/sina/weibo/sdk/api/WeiboMessage;

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0, p0, v1}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/share/BaseRequest;)Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->requestWindowFeature(I)Z

    const v0, 0x7f030085

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->setContentView(I)V

    :try_start_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->getIntent()Landroid/content/Intent;

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

    const-string v3, "@\u5e94\u7528\u516c\u56ed"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->content:Ljava/lang/String;

    const-string v1, "imgpath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->imgpath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->initWidget()V

    const-string v0, "1160938630"

    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/api/share/WeiboShareSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerApp()Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
