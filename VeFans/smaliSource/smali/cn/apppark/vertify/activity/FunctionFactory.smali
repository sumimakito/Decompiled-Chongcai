.class public Lcn/apppark/vertify/activity/FunctionFactory;
.super Ljava/lang/Object;


# static fields
.field private static info:Lcn/apppark/vertify/base/ClientPersionInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLogin(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/apppark/vertify/activity/buy/BuyBaseAct;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcn/apppark/vertify/activity/FunctionFactory;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

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

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v1, v0}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected static getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 2

    sget-object v0, Lcn/apppark/vertify/activity/FunctionFactory;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-direct {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/apppark/vertify/activity/FunctionFactory;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    :cond_0
    sget-object v0, Lcn/apppark/vertify/activity/FunctionFactory;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fun_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcn/apppark/ckj10185912/HQCHApplication;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "###  function  ### funJson--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nPageModuleType--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nPageId--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    new-instance v1, Lcn/apppark/vertify/activity/free/function/FunctionsSms;

    invoke-direct {v1, p2, v0}, Lcn/apppark/vertify/activity/free/function/FunctionsSms;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->startFunctions()V

    goto :goto_0

    :sswitch_1
    new-instance v1, Lcn/apppark/vertify/activity/free/function/FunctionsTel;

    invoke-direct {v1, p2, v0}, Lcn/apppark/vertify/activity/free/function/FunctionsTel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/apppark/vertify/activity/free/function/FunctionsTel;->startFunctions()V

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcn/apppark/vertify/activity/free/function/FunctionAppstore;

    invoke-direct {v1, v0}, Lcn/apppark/vertify/activity/free/function/FunctionAppstore;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/apppark/vertify/activity/free/function/FunctionAppstore;->startFunctions()V

    goto :goto_0

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    invoke-virtual {v2}, Lcn/apppark/ckj10185912/HQCHApplication;->getResourceDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/file/SDFileUtils;->readFileSD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbl;

    invoke-direct {v1}, Lbl;-><init>()V

    invoke-virtual {v1}, Lbl;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "item"

    invoke-static {v0, v1, v2}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->itemVoList:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    invoke-static {v0}, Lcn/apppark/mcd/util/file/SDFileUtils;->readFileSD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcn/apppark/mcd/vo/free/FunctionWeiboVo;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/FunctionWeiboVo;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-direct {v1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "content"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/FunctionWeiboVo;->getData_text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/FunctionWeiboVo;->getData_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "imgpath"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/FunctionWeiboVo;->getData_pic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_5
    new-instance v1, Lcn/apppark/vertify/activity/free/function/FunctionsEmail3006;

    invoke-direct {v1, p2, v0}, Lcn/apppark/vertify/activity/free/function/FunctionsEmail3006;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/apppark/vertify/activity/free/function/FunctionsEmail3006;->startFunctions()V

    goto/16 :goto_0

    :sswitch_6
    const-class v1, Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/FunctionFactory;->checkLogin(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    const-class v1, Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/FunctionFactory;->checkLogin(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    const-class v1, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/FunctionFactory;->checkLogin(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    const-class v1, Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/FunctionFactory;->checkLogin(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    const-class v1, Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/FunctionFactory;->checkLogin(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    const-class v1, Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/FunctionFactory;->checkLogin(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    const-class v1, Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/FunctionFactory;->checkLogin(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d
    const-class v1, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/FunctionFactory;->checkLogin(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    const-class v1, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/FunctionFactory;->checkLogin(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    invoke-virtual {v2}, Lcn/apppark/ckj10185912/HQCHApplication;->getResourceDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/file/SDFileUtils;->readFileSD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-direct {v1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "json"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    sget-boolean v0, Lcn/apppark/ckj10185912/HQCHApplication;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const v1, 0x7f08000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(II)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xbb9 -> :sswitch_0
        0xbba -> :sswitch_1
        0xbbb -> :sswitch_2
        0xbbc -> :sswitch_3
        0xbbd -> :sswitch_4
        0xbbe -> :sswitch_5
        0xbc2 -> :sswitch_f
        0xc1d -> :sswitch_6
        0xc1e -> :sswitch_7
        0xc1f -> :sswitch_8
        0xc20 -> :sswitch_9
        0xc21 -> :sswitch_a
        0xc22 -> :sswitch_b
        0xc23 -> :sswitch_c
        0xc24 -> :sswitch_d
        0xc25 -> :sswitch_e
    .end sparse-switch
.end method
