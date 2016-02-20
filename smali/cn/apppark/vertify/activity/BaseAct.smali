.class public Lcn/apppark/vertify/activity/BaseAct;
.super Landroid/app/Activity;


# instance fields
.field protected context:Landroid/content/Context;

.field private info:Lcn/apppark/vertify/base/ClientPersionInfo;

.field protected loadDialog:Landroid/app/Dialog;

.field protected pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcn/apppark/vertify/activity/BaseAct;->pageSize:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/BaseAct;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected checkResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p2, v1}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V

    :goto_0
    move v0, v1

    :cond_0
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "retFlag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "retMsg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p2, v1}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p2, v1}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V

    :goto_0
    move v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "retFlag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "retMsg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v2}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, p2, v1}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v2, v0}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected checkResultRetMsg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p2, v1}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V

    :goto_0
    move v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "retFlag"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "retMsg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v3}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3, v0}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, v0}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method protected checkResultShowRet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2, v1}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "retFlag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "retMsg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, p2, v1}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v2, v0}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected createLoadingDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcn/apppark/vertify/activity/BaseAct;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0171

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0173

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcn/apppark/vertify/activity/BaseAct;->context:Landroid/content/Context;

    const v3, 0x7f060011

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method protected createMsgDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    new-instance v0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    iget-object v1, p0, Lcn/apppark/vertify/activity/BaseAct;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080008

    invoke-virtual {v0, v1, p3}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080009

    new-instance v2, Lav;

    invoke-direct {v2, p0}, Lav;-><init>(Lcn/apppark/vertify/activity/BaseAct;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->create()Lcn/apppark/mcd/widget/DialogTwoBtn;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn;->show()V

    return-void
.end method

.method protected getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/BaseAct;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    iget-object v1, p0, Lcn/apppark/vertify/activity/BaseAct;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/BaseAct;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/BaseAct;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    return-object v0
.end method

.method protected getIsLoginInfo()Z
    .locals 2

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/BaseAct;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/BaseAct;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    iget-object v0, p0, Lcn/apppark/vertify/activity/BaseAct;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/BaseAct;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRetResult(Ljava/lang/String;Ljava/lang/String;)Lcn/apppark/mcd/vo/base/RetVo;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, v1}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    :try_start_0
    const-class v0, Lcn/apppark/mcd/vo/base/RetVo;

    invoke-static {p1, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/base/RetVo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, p2, v1}, Lcn/apppark/vertify/activity/BaseAct;->initToast(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected initToast(II)V
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected initToast(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected map2Json(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/BaseAct;->loadDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/BaseAct;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0}, Lcn/apppark/ckj10185912/Main;->hiddenWall()V

    :cond_0
    return-void
.end method
