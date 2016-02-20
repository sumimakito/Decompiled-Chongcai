.class Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;
.super Ljava/lang/Object;
.source "WeiboShareAPIImpl.java"

# interfaces
.implements Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownloadConfirmDialog:Landroid/app/Dialog;

.field private mDownloadListener:Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;

.field private mNeedDownloadWeibo:Z

.field private mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "needDownloadWeibo"    # Z

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mNeedDownloadWeibo:Z

    .line 80
    iput-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadConfirmDialog:Landroid/app/Dialog;

    .line 89
    iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mAppKey:Ljava/lang/String;

    .line 91
    iput-boolean p3, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mNeedDownloadWeibo:Z

    .line 94
    invoke-static {p1}, Lcom/sina/weibo/sdk/WeiboAppManager;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/WeiboAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/WeiboAppManager;->getWeiboInfo()Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    .line 95
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    invoke-static {p1}, Lcom/sina/weibo/sdk/utils/AidTask;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/AidTask;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sina/weibo/sdk/utils/AidTask;->aidTaskInit(Ljava/lang/String;)V

    .line 101
    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    const-string v1, "WeiboInfo is null"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private adapterMultiMessage2SingleMessage(Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Lcom/sina/weibo/sdk/api/WeiboMessage;
    .locals 2
    .param p1, "multiMessage"    # Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    new-instance v1, Lcom/sina/weibo/sdk/api/WeiboMessage;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/WeiboMessage;-><init>()V

    .line 355
    :goto_0
    return-object v1

    .line 352
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 353
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 354
    new-instance v1, Lcom/sina/weibo/sdk/api/WeiboMessage;

    invoke-direct {v1, v0}, Lcom/sina/weibo/sdk/api/WeiboMessage;-><init>(Landroid/os/Bundle;)V

    .line 355
    .local v1, "message":Lcom/sina/weibo/sdk/api/WeiboMessage;
    goto :goto_0
.end method

.method private checkEnvironment(Z)Z
    .locals 2
    .param p1, "bShowDownloadDialog"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboShareException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->isWeiboAppInstalled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 426
    if-eqz p1, :cond_2

    .line 427
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadConfirmDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadListener:Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/api/share/WeiboDownloader;->createDownloadConfirmDialog(Landroid/content/Context;Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadConfirmDialog:Landroid/app/Dialog;

    .line 429
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 435
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 449
    :goto_1
    return v0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 437
    :cond_2
    new-instance v0, Lcom/sina/weibo/sdk/exception/WeiboShareException;

    const-string v1, "Weibo is not installed!"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/exception/WeiboShareException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_3
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->isWeiboAppSupportAPI()Z

    move-result v0

    if-nez v0, :cond_4

    .line 442
    new-instance v0, Lcom/sina/weibo/sdk/exception/WeiboShareException;

    const-string v1, "Weibo do not support share api!"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/exception/WeiboShareException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_4
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/ApiUtils;->validateWeiboSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 446
    new-instance v0, Lcom/sina/weibo/sdk/exception/WeiboShareException;

    const-string v1, "Weibo signature is incorrect!"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/exception/WeiboShareException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_5
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private launchWeiboActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "appkey"    # Ljava/lang/String;
    .param p5, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 477
    if-eqz p1, :cond_0

    .line 478
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 479
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 480
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 481
    :cond_0
    sget-object v4, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    const-string v5, "launchWeiboActivity fail, invalid arguments"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :goto_0
    return v3

    .line 485
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 486
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "appPackage":Ljava/lang/String;
    const-string v4, "_weibo_sdkVersion"

    const-string v5, "0031005000"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v4, "_weibo_appPackage"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string v4, "_weibo_appKey"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v4, "_weibo_flag"

    const v5, 0x20130329

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    const-string v4, "_weibo_sign"

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/utils/Utility;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    if-eqz p5, :cond_2

    .line 497
    invoke-virtual {v2, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 501
    :cond_2
    :try_start_0
    sget-object v4, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "launchWeiboActivity intent="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", extra="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/16 v4, 0x2fd

    invoke-virtual {p1, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    const/4 v3, 0x1

    goto :goto_0

    .line 503
    :catch_0
    move-exception v1

    .line 504
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerWeiboDownloadListener(Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadListener:Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;

    .line 415
    return-void
.end method

.method private sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "data"    # Landroid/os/Bundle;

    .prologue
    .line 512
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "appPackage":Ljava/lang/String;
    const-string v2, "_weibo_sdkVersion"

    const-string v3, "0031005000"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string v2, "_weibo_appPackage"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v2, "_weibo_appKey"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    const-string v2, "_weibo_flag"

    const v3, 0x20130329

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 518
    const-string v2, "_weibo_sign"

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/utils/Utility;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    :cond_0
    if-eqz p5, :cond_1

    .line 525
    invoke-virtual {v1, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 528
    :cond_1
    sget-object v2, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "intent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v2, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method private startShareWeiboActivity(Landroid/app/Activity;Ljava/lang/String;Lcom/sina/weibo/sdk/api/share/BaseRequest;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)Z
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "request"    # Lcom/sina/weibo/sdk/api/share/BaseRequest;
    .param p4, "authListener"    # Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .prologue
    .line 361
    :try_start_0
    iget-object v4, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mAppKey:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->activateApp()V

    .line 363
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 364
    .local v1, "data":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "appPackage":Ljava/lang/String;
    new-instance v3, Lcom/sina/weibo/sdk/component/ShareRequestParam;

    invoke-direct {v3, p1}, Lcom/sina/weibo/sdk/component/ShareRequestParam;-><init>(Landroid/content/Context;)V

    .line 367
    .local v3, "param":Lcom/sina/weibo/sdk/component/ShareRequestParam;
    invoke-virtual {v3, p2}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->setToken(Ljava/lang/String;)V

    .line 368
    iget-object v4, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mAppKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->setAppKey(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v3, v0}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->setAppPackage(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v3, p3}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->setBaseRequest(Lcom/sina/weibo/sdk/api/share/BaseRequest;)V

    .line 371
    const-string v4, "\u5fae\u535a\u5206\u4eab"

    invoke-virtual {v3, v4}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->setSpecifyTitle(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v3, p4}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->setAuthListener(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 374
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->createRequestParamBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    const/4 v4, 0x1

    .line 380
    .end local v0    # "appPackage":Ljava/lang/String;
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "param":Lcom/sina/weibo/sdk/component/ShareRequestParam;
    :goto_0
    return v4

    .line 378
    :catch_0
    move-exception v4

    .line 380
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getWeiboAppSupportAPI()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->isLegal()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getSupportApi()I

    move-result v0

    goto :goto_0
.end method

.method public handleWeiboRequest(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Request;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handler"    # Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Request;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 229
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v3

    .line 233
    :cond_1
    const-string v4, "_weibo_appPackage"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "appPackage":Ljava/lang/String;
    const-string v4, "_weibo_transaction"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "transaction":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 237
    sget-object v4, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    const-string v5, "handleWeiboRequest faild appPackage validateSign faild"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-interface {p2, v6}, Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Request;->onRequest(Lcom/sina/weibo/sdk/api/share/BaseRequest;)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 242
    sget-object v4, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    const-string v5, "handleWeiboRequest faild intent _weibo_transaction is null"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-interface {p2, v6}, Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Request;->onRequest(Lcom/sina/weibo/sdk/api/share/BaseRequest;)V

    goto :goto_0

    .line 246
    :cond_3
    iget-object v4, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sina/weibo/sdk/ApiUtils;->validateWeiboSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 247
    sget-object v4, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    const-string v5, "handleWeiboRequest faild appPackage validateSign faild"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-interface {p2, v6}, Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Request;->onRequest(Lcom/sina/weibo/sdk/api/share/BaseRequest;)V

    goto :goto_0

    .line 252
    :cond_4
    new-instance v1, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboRequest;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboRequest;-><init>(Landroid/os/Bundle;)V

    .line 253
    .local v1, "data":Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboRequest;
    invoke-interface {p2, v1}, Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Request;->onRequest(Lcom/sina/weibo/sdk/api/share/BaseRequest;)V

    .line 254
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handler"    # Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;

    .prologue
    const/4 v5, 0x0

    .line 180
    const-string v6, "_weibo_appPackage"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "appPackage":Ljava/lang/String;
    const-string v6, "_weibo_transaction"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "transaction":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 184
    sget-object v6, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    const-string v7, "handleWeiboResponse faild appPackage is null"

    invoke-static {v6, v7}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return v5

    .line 187
    :cond_0
    instance-of v6, p2, Landroid/app/Activity;

    if-nez v6, :cond_1

    .line 188
    sget-object v6, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    const-string v7, "handleWeiboResponse faild handler is not Activity"

    invoke-static {v6, v7}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 192
    check-cast v0, Landroid/app/Activity;

    .line 193
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "callPkg":Ljava/lang/String;
    sget-object v6, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "handleWeiboResponse getCallingPackage : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 197
    sget-object v6, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    const-string v7, "handleWeiboResponse faild intent _weibo_transaction is null"

    invoke-static {v6, v7}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v6, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/sina/weibo/sdk/ApiUtils;->validateWeiboSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 207
    sget-object v6, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    const-string v7, "handleWeiboResponse faild appPackage validateSign faild"

    invoke-static {v6, v7}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_3
    new-instance v3, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboResponse;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboResponse;-><init>(Landroid/os/Bundle;)V

    .line 212
    .local v3, "data":Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboResponse;
    invoke-interface {p2, v3}, Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;->onResponse(Lcom/sina/weibo/sdk/api/share/BaseResponse;)V

    .line 213
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public isSupportWeiboPay()Z
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->getWeiboAppSupportAPI()I

    move-result v0

    const/16 v1, 0x2871

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWeiboAppInstalled()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

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

.method public isWeiboAppSupportAPI()Z
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->getWeiboAppSupportAPI()I

    move-result v0

    const/16 v1, 0x286e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchWeibo(Landroid/app/Activity;)Z
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->isWeiboAppInstalled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    sget-object v2, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    const-string v3, "launchWeibo faild WeiboInfo is null"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_0
    return v1

    .line 271
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 270
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    const/4 v1, 0x1

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public launchWeiboPay(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 8
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "payArgs"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 458
    const/4 v7, 0x1

    .line 459
    .local v7, "needDownloadWeibo":Z
    :try_start_0
    invoke-direct {p0, v7}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->checkEnvironment(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 472
    :goto_0
    return v0

    .line 462
    :catch_0
    move-exception v6

    .line 463
    .local v6, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 469
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "rawdata"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v0, "_weibo_command_type"

    const/4 v1, 0x4

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 471
    const-string v0, "_weibo_transaction"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v2, "com.sina.weibo.sdk.action.ACTION_WEIBO_PAY_ACTIVITY"

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mAppKey:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->launchWeiboActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerApp()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 160
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    const-string v2, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER"

    iget-object v3, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mAppKey:Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/share/BaseRequest;)Z
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "request"    # Lcom/sina/weibo/sdk/api/share/BaseRequest;

    .prologue
    const/4 v0, 0x0

    .line 290
    if-nez p2, :cond_1

    .line 291
    sget-object v1, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    const-string v2, "sendRequest faild request is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mNeedDownloadWeibo:Z

    invoke-direct {p0, v1}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->checkEnvironment(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    new-instance v3, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;

    invoke-direct {v3}, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;-><init>()V

    invoke-virtual {p2, v1, v2, v3}, Lcom/sina/weibo/sdk/api/share/BaseRequest;->check(Landroid/content/Context;Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 305
    sget-object v1, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    const-string v2, "sendRequest faild request check faild"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :catch_0
    move-exception v6

    .line 300
    .local v6, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mAppKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->activateApp()V

    .line 310
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 311
    .local v5, "data":Landroid/os/Bundle;
    invoke-virtual {p2, v5}, Lcom/sina/weibo/sdk/api/share/BaseRequest;->toBundle(Landroid/os/Bundle;)V

    .line 312
    const-string v2, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mAppKey:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->launchWeiboActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/share/BaseRequest;Lcom/sina/weibo/sdk/auth/AuthInfo;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)Z
    .locals 5
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "request"    # Lcom/sina/weibo/sdk/api/share/BaseRequest;
    .param p3, "authInfo"    # Lcom/sina/weibo/sdk/auth/AuthInfo;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "authListener"    # Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .prologue
    .line 318
    if-nez p2, :cond_0

    .line 319
    sget-object v3, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    const-string v4, "sendRequest faild request is null !"

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v3, 0x0

    .line 344
    :goto_0
    return v3

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->isWeiboAppInstalled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->isWeiboAppSupportAPI()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 325
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->getWeiboAppSupportAPI()I

    move-result v2

    .line 326
    .local v2, "supportApi":I
    const/16 v3, 0x286f

    if-lt v2, v3, :cond_1

    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/share/BaseRequest;)Z

    move-result v3

    goto :goto_0

    .line 329
    :cond_1
    instance-of v3, p2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;

    if-eqz v3, :cond_2

    move-object v0, p2

    .line 331
    check-cast v0, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;

    .line 332
    .local v0, "multiMessageReq":Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;
    new-instance v1, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;-><init>()V

    .line 333
    .local v1, "singleMessageReq":Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;
    iget-object v3, v0, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->packageName:Ljava/lang/String;

    iput-object v3, v1, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;->packageName:Ljava/lang/String;

    .line 334
    iget-object v3, v0, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->transaction:Ljava/lang/String;

    iput-object v3, v1, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;->transaction:Ljava/lang/String;

    .line 335
    iget-object v3, v0, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {p0, v3}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->adapterMultiMessage2SingleMessage(Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Lcom/sina/weibo/sdk/api/WeiboMessage;

    move-result-object v3

    iput-object v3, v1, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;->message:Lcom/sina/weibo/sdk/api/WeiboMessage;

    .line 336
    invoke-virtual {p0, p1, v1}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/share/BaseRequest;)Z

    move-result v3

    goto :goto_0

    .line 339
    .end local v0    # "multiMessageReq":Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;
    .end local v1    # "singleMessageReq":Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/share/BaseRequest;)Z

    move-result v3

    goto :goto_0

    .line 344
    .end local v2    # "supportApi":I
    :cond_3
    invoke-direct {p0, p1, p4, p2, p5}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->startShareWeiboActivity(Landroid/app/Activity;Ljava/lang/String;Lcom/sina/weibo/sdk/api/share/BaseRequest;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)Z

    move-result v3

    goto :goto_0
.end method

.method public sendResponse(Lcom/sina/weibo/sdk/api/share/BaseResponse;)Z
    .locals 6
    .param p1, "response"    # Lcom/sina/weibo/sdk/api/share/BaseResponse;

    .prologue
    const/4 v0, 0x0

    .line 392
    if-nez p1, :cond_0

    .line 393
    sget-object v1, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    const-string v2, "sendResponse failed response null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_0
    return v0

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;

    invoke-direct {v2}, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;-><init>()V

    invoke-virtual {p1, v1, v2}, Lcom/sina/weibo/sdk/api/share/BaseResponse;->check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 397
    sget-object v1, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->TAG:Ljava/lang/String;

    const-string v2, "sendResponse check fail"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 402
    .local v5, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v5}, Lcom/sina/weibo/sdk/api/share/BaseResponse;->toBundle(Landroid/os/Bundle;)V

    .line 403
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    const-string v2, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_RESPONSE"

    iget-object v3, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mAppKey:Ljava/lang/String;

    iget-object v4, p1, Lcom/sina/weibo/sdk/api/share/BaseResponse;->reqPackageName:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 404
    const/4 v0, 0x1

    goto :goto_0
.end method
