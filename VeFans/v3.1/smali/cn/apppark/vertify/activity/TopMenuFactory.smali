.class public Lcn/apppark/vertify/activity/TopMenuFactory;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/io/File;Lcn/apppark/mcd/vo/base/FreePageVo;)Lcn/apppark/vertify/activity/topmenu/ITopView;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Lcn/apppark/mcd/util/file/SDFileUtils;->readFileSD(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    const-class v0, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-static {v2, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/base/BasePageItemVo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/BasePageItemVo;->getSys_moduleType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    const-class v0, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-static {v2, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    if-eqz v0, :cond_0

    new-instance v1, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/base/FreePageVo;->getData_pageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
