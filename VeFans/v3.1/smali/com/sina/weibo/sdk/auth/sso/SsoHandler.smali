.class public Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
.super Ljava/lang/Object;
.source "SsoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;
    }
.end annotation


# static fields
.field public static final AUTH_FAILED_MSG:Ljava/lang/String; = "auth failed!!!!!"

.field public static final AUTH_FAILED_NOT_INSTALL_MSG:Ljava/lang/String; = "not install weibo client!!!!!"

.field private static final DEFAULT_WEIBO_REMOTE_SSO_SERVICE_NAME:Ljava/lang/String; = "com.sina.weibo.remotessoservice"

.field private static final REQUEST_CODE_MOBILE_REGISTER:I = 0x9c40

.field private static final REQUEST_CODE_SSO_AUTH:I = 0x80cd

.field private static final TAG:Ljava/lang/String; = "Weibo_SSO_login"


# instance fields
.field private mAuthActivity:Landroid/app/Activity;

.field private mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mSSOAuthRequestCode:I

.field private mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

.field private mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "weiboAuthInfo"    # Lcom/sina/weibo/sdk/auth/AuthInfo;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;-><init>(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mConnection:Landroid/content/ServiceConnection;

    .line 126
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    .line 127
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 128
    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    invoke-direct {v0, p1, p2}, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;-><init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    .line 129
    invoke-static {p1}, Lcom/sina/weibo/sdk/WeiboAppManager;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/WeiboAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/WeiboAppManager;->getWeiboInfo()Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    .line 130
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/AidTask;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/AidTask;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/AidTask;->aidTaskInit(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 375
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->startSingleSignOn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private authorize(ILcom/sina/weibo/sdk/auth/WeiboAuthListener;Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "listener"    # Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
    .param p3, "authType"    # Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;

    .prologue
    .line 177
    iput p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mSSOAuthRequestCode:I

    .line 178
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "onlyClientSso":Z
    sget-object v2, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;->SsoOnly:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;

    if-ne p3, v2, :cond_0

    .line 182
    const/4 v1, 0x1

    .line 184
    :cond_0
    sget-object v2, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;->WebOnly:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;

    if-ne p3, v2, :cond_2

    .line 185
    if-eqz p2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    invoke-virtual {v2, p2}, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;->anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 205
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->bindRemoteSSOService(Landroid/content/Context;)Z

    move-result v0

    .line 195
    .local v0, "bindSucced":Z
    if-nez v0, :cond_1

    .line 196
    if-eqz v1, :cond_3

    .line 197
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 199
    new-instance v3, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v4, "not install weibo client!!!!!"

    invoke-direct {v3, v4}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-interface {v2, v3}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;->anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    goto :goto_0
.end method

.method private bindRemoteSSOService(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->isWeiboAppInstalled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    const/4 v2, 0x0

    .line 364
    :goto_0
    return v2

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "pkgName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sina.weibo.remotessoservice"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    goto :goto_0
.end method

.method public static isServiceExisted(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 332
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 334
    .local v2, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 344
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 334
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 335
    .local v1, "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 337
    .local v3, "serviceName":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 338
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".business.RemoteSSOService"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0
.end method

.method private startSingleSignOn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "ssoPackageName"    # Ljava/lang/String;
    .param p2, "ssoActivityName"    # Ljava/lang/String;

    .prologue
    .line 377
    const/4 v1, 0x1

    .line 378
    .local v1, "bSucceed":Z
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 380
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAuthBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 386
    const-string v4, "_weibo_command_type"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string v4, "_weibo_transaction"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v4, "aid"

    iget-object v5, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v6}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/Utility;->getAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/sina/weibo/sdk/utils/SecurityHelper;->validateAppSignatureForIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 394
    const/4 v4, 0x0

    .line 412
    :goto_0
    return v4

    .line 398
    :cond_0
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v5}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/Utility;->getAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 400
    const-string v4, "aid"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    iget v5, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mSSOAuthRequestCode:I

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v4, v1

    .line 412
    goto :goto_0

    .line 406
    :catch_0
    move-exception v2

    .line 407
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .prologue
    .line 140
    const v0, 0x80cd

    sget-object v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;->ALL:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;

    invoke-direct {p0, v0, p1, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(ILcom/sina/weibo/sdk/auth/WeiboAuthListener;Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;)V

    .line 141
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->activateApp()V

    .line 142
    return-void
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 227
    const-string v4, "Weibo_SSO_login"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "requestCode: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", resultCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mSSOAuthRequestCode:I

    if-ne p1, v4, :cond_a

    .line 231
    if-ne p2, v8, :cond_8

    .line 232
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-static {v4, v5, p3}, Lcom/sina/weibo/sdk/utils/SecurityHelper;->checkResponseAppLegal(Landroid/content/Context;Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const-string v4, "error"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "error":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 239
    const-string v4, "error_type"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 243
    :cond_2
    if-eqz v3, :cond_6

    .line 244
    const-string v4, "access_denied"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "OAuthAccessDeniedException"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 245
    :cond_3
    const-string v4, "Weibo_SSO_login"

    const-string v5, "Login canceled by user."

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v4}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onCancel()V

    goto :goto_0

    .line 248
    :cond_4
    const-string v4, "error_description"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "description":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    :cond_5
    const-string v4, "Weibo_SSO_login"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Login failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 255
    new-instance v5, Lcom/sina/weibo/sdk/exception/WeiboDialogException;

    invoke-direct {v5, v3, p2, v2}, Lcom/sina/weibo/sdk/exception/WeiboDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 254
    invoke-interface {v4, v5}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0

    .line 259
    .end local v2    # "description":Ljava/lang/String;
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 260
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v0

    .line 262
    .local v0, "accessToken":Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 263
    const-string v4, "Weibo_SSO_login"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Login Success! "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v4, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 266
    :cond_7
    const-string v4, "Weibo_SSO_login"

    const-string v5, "Failed to receive access token by SSO"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    iget-object v5, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-virtual {v4, v5}, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;->anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    goto/16 :goto_0

    .line 273
    .end local v0    # "accessToken":Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "error":Ljava/lang/String;
    :cond_8
    if-nez p2, :cond_0

    .line 276
    if-eqz p3, :cond_9

    .line 277
    const-string v4, "Weibo_SSO_login"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Login failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "error"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 279
    new-instance v5, Lcom/sina/weibo/sdk/exception/WeiboDialogException;

    .line 280
    const-string v6, "error"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 281
    const-string v7, "error_code"

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 282
    const-string v8, "failing_url"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 279
    invoke-direct {v5, v6, v7, v8}, Lcom/sina/weibo/sdk/exception/WeiboDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 278
    invoke-interface {v4, v5}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto/16 :goto_0

    .line 285
    :cond_9
    const-string v4, "Weibo_SSO_login"

    const-string v5, "Login canceled by user."

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v4}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onCancel()V

    goto/16 :goto_0

    .line 289
    :cond_a
    const v4, 0x9c40

    if-ne p1, v4, :cond_0

    .line 292
    if-ne p2, v8, :cond_b

    .line 293
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 294
    .restart local v1    # "bundle":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v0

    .line 295
    .restart local v0    # "accessToken":Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    const-string v4, "Weibo_SSO_login"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Login Success! "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v4, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 300
    .end local v0    # "accessToken":Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_b
    if-nez p2, :cond_0

    .line 301
    if-eqz p3, :cond_d

    .line 302
    const-string v4, "Weibo_SSO_login"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Login failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "error"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v4, "error"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .restart local v3    # "error":Ljava/lang/String;
    if-nez v3, :cond_c

    .line 305
    const-string v4, "error_type"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    :cond_c
    if-eqz v3, :cond_0

    .line 309
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    new-instance v5, Lcom/sina/weibo/sdk/exception/WeiboDialogException;

    const-string v6, "error"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "error_code"

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "error_description"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/sina/weibo/sdk/exception/WeiboDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto/16 :goto_0

    .line 313
    .end local v3    # "error":Ljava/lang/String;
    :cond_d
    const-string v4, "Weibo_SSO_login"

    const-string v5, "Login canceled by user."

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v4}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onCancel()V

    goto/16 :goto_0
.end method

.method public authorizeClientSso(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .prologue
    .line 153
    const v0, 0x80cd

    sget-object v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;->SsoOnly:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;

    invoke-direct {p0, v0, p1, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(ILcom/sina/weibo/sdk/auth/WeiboAuthListener;Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;)V

    .line 154
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->activateApp()V

    .line 155
    return-void
.end method

.method public authorizeWeb(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .prologue
    .line 165
    const v0, 0x80cd

    sget-object v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;->WebOnly:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;

    invoke-direct {p0, v0, p1, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(ILcom/sina/weibo/sdk/auth/WeiboAuthListener;Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;)V

    .line 166
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->activateApp()V

    .line 167
    return-void
.end method

.method public isWeiboAppInstalled()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerOrLoginByMobile(Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .prologue
    .line 429
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 431
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    const-class v3, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    .local v0, "intentTemp":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAuthBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 433
    .local v1, "param":Landroid/os/Bundle;
    const-string v2, "register_title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 435
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    const v3, 0x9c40

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 436
    return-void
.end method
