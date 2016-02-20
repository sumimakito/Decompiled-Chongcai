.class public Lcn/apppark/vertify/network/FileUpdater;
.super Lcn/apppark/vertify/network/LoadingDialog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/apppark/vertify/network/LoadingDialog",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private downList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isShowUpdateWindow:Z

.field private manualCheck:Z

.field private type:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZI)V
    .locals 3

    const v0, 0x7f080004

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080019

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08001a

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/apppark/vertify/network/LoadingDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/network/FileUpdater;->isShowUpdateWindow:Z

    iput-boolean p2, p0, Lcn/apppark/vertify/network/FileUpdater;->manualCheck:Z

    iput p3, p0, Lcn/apppark/vertify/network/FileUpdater;->type:I

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/network/FileUpdater;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/network/FileUpdater;->downList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/network/FileUpdater;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/network/FileUpdater;->isShowUpdateWindow:Z

    return v0
.end method

.method private initBaseMessage(Lcom/google/gson/JsonObject;)V
    .locals 4

    const-string v0, "copyright"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    const-class v1, Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/base/ClientBaseVo;

    if-eqz v0, :cond_1

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getIsVip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateIsVip(Ljava/lang/String;)V

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getStartPageWatermark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateShowWaterMarker(Ljava/lang/String;)V

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getDisclaimerDeclare()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateIsShowDeclare(Ljava/lang/String;)V

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getIsShowMore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateIsShowMore(Ljava/lang/String;)V

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getShareContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getShareUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateWeiboShareContent(Ljava/lang/String;)V

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v1, v1, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    if-eqz v1, :cond_0

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v1, v1, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getWeixinAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->setWeixinAppID(Ljava/lang/String;)V

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v1, v1, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getQzoneAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->setQzoneAppID(Ljava/lang/String;)V

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v1, v1, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getSinaAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->setSinaAppKey(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_0
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getShareContent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v0, ""

    :goto_1
    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateWeiboShareContent(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getShareContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private isLegalFlag(Ljava/lang/String;)V
    .locals 3

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    iget-object v1, p0, Lcn/apppark/vertify/network/FileUpdater;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8b66\u544a"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5bf9\u4e0d\u8d77,\u5ba2\u6237\u7aef\u5185\u5bb9\u975e\u6cd5,\u5373\u5c06\u5173\u95ed"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08000b

    new-instance v2, Lwh;

    invoke-direct {v2, p0}, Lwh;-><init>(Lcn/apppark/vertify/network/FileUpdater;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-static {}, Lcn/apppark/mcd/util/PublicUtil;->checkIllegal()V

    :cond_0
    return-void
.end method

.method private updateFile(Lcom/google/gson/JsonObject;)V
    .locals 4

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    new-instance v2, Lwc;

    invoke-direct {v2, p0}, Lwc;-><init>(Lcn/apppark/vertify/network/FileUpdater;)V

    invoke-virtual {v2}, Lwc;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/network/FileUpdater;->downList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcn/apppark/vertify/network/FileUpdater;->downList:Ljava/util/ArrayList;

    :try_start_0
    iget-object v0, p0, Lcn/apppark/vertify/network/FileUpdater;->downList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/network/FileUpdater;->downList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcn/apppark/vertify/network/FileUpdater;->manualCheck:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    iget-object v1, p0, Lcn/apppark/vertify/network/FileUpdater;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcn/apppark/vertify/network/FileUpdater;->mActivity:Landroid/app/Activity;

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/network/FileUpdater;->mActivity:Landroid/app/Activity;

    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    const v1, 0x7f08000b

    new-instance v2, Lwd;

    invoke-direct {v2, p0}, Lwd;-><init>(Lcn/apppark/vertify/network/FileUpdater;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcn/apppark/vertify/network/FileUpdater;->isShowUpdateWindow:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/network/FileUpdater;->isShowUpdateWindow:Z

    new-instance v0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    iget-object v1, p0, Lcn/apppark/vertify/network/FileUpdater;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcn/apppark/vertify/network/FileUpdater;->mActivity:Landroid/app/Activity;

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const-string v1, "\u53d1\u73b0\u65b0\u5185\u5bb9\uff0c\u786e\u5b9a\u66f4\u65b0\uff1f"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080008

    new-instance v2, Lwf;

    invoke-direct {v2, p0}, Lwf;-><init>(Lcn/apppark/vertify/network/FileUpdater;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080009

    new-instance v2, Lwe;

    invoke-direct {v2, p0}, Lwe;-><init>(Lcn/apppark/vertify/network/FileUpdater;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lwg;

    invoke-direct {v1, p0}, Lwg;-><init>(Lcn/apppark/vertify/network/FileUpdater;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "window is show already"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateRegFlag(Ljava/lang/String;)V
    .locals 1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateLogFlag()V

    :cond_0
    return-void
.end method

.method private updateVersion(Lcom/google/gson/JsonObject;)Z
    .locals 3

    const-string v0, "verUpdate"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "verFlag"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "verUrl"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isForce"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-direct {v2, v1, v0}, Lcn/apppark/vertify/network/VersionUpdateManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/apppark/vertify/network/VersionUpdateManager;->checkUpdate()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkFilesUpdate()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "updateTime"

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getRecentTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "osname"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "verCode"

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->VERSION_CODE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "number"

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->PHONE_NUMBER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isReg"

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->PHONE_NUMBER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "number"

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getLogFlag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phoneModel"

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "marketType"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    iget v2, p0, Lcn/apppark/vertify/network/FileUpdater;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcn/apppark/ckj10185912/HQCHApplication;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "flag"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \"useTime\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/apppark/vertify/network/PublicRequest;->getLogFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "check"

    const-string v1, "json"

    const-string v3, "http://ws.ckj.hqch.com"

    const-string v4, "http://www.apppark.cn/software.ws"

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/network/request/WebServiceRequest;->Ksoap2ForString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const-string v1, "flag"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/apppark/vertify/network/FileUpdater;->downList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/network/FileUpdater;->downList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/network/FileUpdater;->downList:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/apppark/vertify/network/FileUpdater;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcn/apppark/vertify/network/FileUpdater;->manualCheck:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcn/apppark/vertify/network/FileUpdater;->checkFilesUpdate()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic doStuffWithResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcn/apppark/vertify/network/FileUpdater;->doStuffWithResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method public doStuffWithResult(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcn/apppark/vertify/network/FileUpdater;->manualCheck:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, " \u66f4\u65b0\u5931\u8d25,\u8bf7\u91cd\u8bd5 "

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v1, "updateTime"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->lastUpdateTimeFlag:Ljava/lang/String;

    const-string v1, "legalFlag"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "regFlag"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "isWall"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "adCount"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    sget-object v6, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v6}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getSoftCount()I

    move-result v6

    sub-int/2addr v1, v6

    sget-object v6, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const/16 v7, 0xa

    if-le v1, v7, :cond_6

    const-string v1, "N"

    :goto_1
    invoke-virtual {v6, v1}, Lcn/apppark/ckj10185912/Main;->setWallNum(Ljava/lang/String;)V

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-static {v5}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateSoftCount(I)V

    :cond_3
    if-eqz v4, :cond_5

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v1, v4}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateIsShowWall(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->VIP_0:Ljava/lang/String;

    sget-object v4, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v4}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getIsVip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v1}, Lcn/apppark/ckj10185912/Main;->showWall()V

    :cond_5
    :goto_2
    invoke-direct {p0, v0}, Lcn/apppark/vertify/network/FileUpdater;->initBaseMessage(Lcom/google/gson/JsonObject;)V

    invoke-direct {p0, v2}, Lcn/apppark/vertify/network/FileUpdater;->isLegalFlag(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcn/apppark/vertify/network/FileUpdater;->updateRegFlag(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/apppark/vertify/network/FileUpdater;->updateVersion(Lcom/google/gson/JsonObject;)Z

    invoke-static {}, Lcn/apppark/vertify/network/PublicRequest;->delLogFile()V

    invoke-direct {p0, v0}, Lcn/apppark/vertify/network/FileUpdater;->updateFile(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v1}, Lcn/apppark/ckj10185912/Main;->hiddenWall()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public onPreExecute()V
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/network/FileUpdater;->manualCheck:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcn/apppark/vertify/network/LoadingDialog;->onPreExecute()V

    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Exception;)V
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/network/FileUpdater;->manualCheck:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcn/apppark/vertify/network/LoadingDialog;->onProgressUpdate([Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcn/apppark/vertify/network/FileUpdater;->onProgressUpdate([Ljava/lang/Exception;)V

    return-void
.end method

.method protected showFailMsg()V
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/network/FileUpdater;->manualCheck:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcn/apppark/vertify/network/LoadingDialog;->showFailMsg()V

    :cond_0
    return-void
.end method
