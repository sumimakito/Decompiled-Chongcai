.class public abstract Lcn/apppark/vertify/activity/FreeBasePageActivity;
.super Landroid/app/Activity;


# instance fields
.field protected bottomHeight:I

.field protected isOncreate:I

.field protected jsonArray:Lcom/google/gson/JsonArray;

.field protected mainHeight:I

.field protected pageId:Ljava/lang/String;

.field protected pageJsonName:Ljava/lang/String;

.field protected pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

.field protected topHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->isOncreate:I

    iput v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->bottomHeight:I

    iput v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->topHeight:I

    iput v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->mainHeight:I

    return-void
.end method


# virtual methods
.method public isAppOnForeground()Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/FreeBasePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/FreeBasePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->mainHeight:I

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->linearLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->mainHeight:I

    :cond_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/FreeBasePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pageJson"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->pageJsonName:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/FreeBasePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pageId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->pageId:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    invoke-virtual {v1}, Lcn/apppark/ckj10185912/HQCHApplication;->getResourceDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->pageJsonName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6587\u4ef6"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->pageJsonName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e0d\u5b58\u5728"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v0}, Lcn/apppark/mcd/util/file/SDFileUtils;->readFileSD(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-class v0, Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/base/FreePageVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-static {v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJson2JsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->jsonArray:Lcom/google/gson/JsonArray;

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->isOncreate:I

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v1, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getStyle_bFlag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/base/FreePageVo;->getStyle_bNavID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/apppark/ckj10185912/Main;->createBottom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->bottomHeight:I

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    iget-object v1, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getData_pageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/apppark/vertify/PageGroup;->currentShowName:Ljava/lang/String;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0, p1, p2}, Lcn/apppark/ckj10185912/Main;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0, p1, p2}, Lcn/apppark/ckj10185912/Main;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 4

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->isOncreate:I

    if-lez v0, :cond_1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v1, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getStyle_bFlag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/base/FreePageVo;->getStyle_bNavID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/apppark/ckj10185912/Main;->createBottom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    iget-object v1, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getData_pageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/apppark/vertify/PageGroup;->currentShowName:Ljava/lang/String;

    :goto_0
    const-string v0, "1"

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getIsShowWall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0}, Lcn/apppark/ckj10185912/Main;->showWall()V

    :goto_1
    sget-boolean v0, Lcn/apppark/ckj10185912/YYGYContants;->isActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcn/apppark/ckj10185912/YYGYContants;->isActive:Z

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->timeFomat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->START_TIME:Ljava/lang/String;

    invoke-static {}, Lcn/apppark/vertify/network/PublicRequest;->updateLogFile()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    :cond_1
    iget v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->isOncreate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/FreeBasePageActivity;->isOncreate:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0}, Lcn/apppark/ckj10185912/Main;->hiddenWall()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/FreeBasePageActivity;->isAppOnForeground()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcn/apppark/ckj10185912/YYGYContants;->isActive:Z

    invoke-static {}, Lcn/apppark/vertify/network/PublicRequest;->updateLogFile()V

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->timeFomat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->START_TIME:Ljava/lang/String;

    :cond_0
    return-void
.end method
