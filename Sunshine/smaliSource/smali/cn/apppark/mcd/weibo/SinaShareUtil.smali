.class public Lcn/apppark/mcd/weibo/SinaShareUtil;
.super Ljava/lang/Object;


# instance fields
.field private APP_KEY:Ljava/lang/String;

.field private REDIRECT_URL:Ljava/lang/String;

.field private SCOPE:Ljava/lang/String;

.field private act:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

.field private mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

.field private mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1160938630"

    iput-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->APP_KEY:Ljava/lang/String;

    const-string v0, "http://www.apppark.cn"

    iput-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->REDIRECT_URL:Ljava/lang/String;

    const-string v0, "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read,follow_app_official_microblog,invitation_write"

    iput-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->SCOPE:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    iput-object p1, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->act:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->APP_KEY:Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sina/weibo/sdk/api/share/WeiboShareSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    iget-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->isWeiboAppInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->context:Landroid/content/Context;

    const v1, 0x7f080048

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerApp()Z

    goto :goto_0
.end method

.method public static synthetic a(Lcn/apppark/mcd/weibo/SinaShareUtil;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/mcd/weibo/SinaShareUtil;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/mcd/weibo/SinaShareUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getTextObj(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/TextObject;
    .locals 1

    new-instance v0, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    iput-object p1, v0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    return-object v0
.end method

.method private sendSingleMessage(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMessage;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WeiboMessage;-><init>()V

    invoke-direct {p0, p1}, Lcn/apppark/mcd/weibo/SinaShareUtil;->getTextObj(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/TextObject;

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

    iget-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    iget-object v2, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->act:Landroid/app/Activity;

    invoke-interface {v0, v2, v1}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/share/BaseRequest;)Z

    return-void
.end method


# virtual methods
.method public getmSsoHandler()Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    return-object v0
.end method

.method public getmWeiboShareAPI()Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    return-object v0
.end method

.method public release4Sina(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/apppark/mcd/weibo/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    iget-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/apppark/mcd/weibo/SinaShareUtil;->sendSingleMessage(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sina/weibo/sdk/auth/AuthInfo;

    iget-object v1, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->APP_KEY:Ljava/lang/String;

    iget-object v3, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->REDIRECT_URL:Ljava/lang/String;

    iget-object v4, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->SCOPE:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v1, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->act:Landroid/app/Activity;

    iget-object v2, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    iput-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v0, p0, Lcn/apppark/mcd/weibo/SinaShareUtil;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    new-instance v1, Lr;

    invoke-direct {v1, p0}, Lr;-><init>(Lcn/apppark/mcd/weibo/SinaShareUtil;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeClientSso(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    goto :goto_0
.end method
