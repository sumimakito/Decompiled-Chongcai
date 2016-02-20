.class public Lcn/apppark/vertify/activity/buy/BuyProCommentSub;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final METHOD:Ljava/lang/String; = "commentProduct"

.field private static final SUB_DATA:I = 0x1


# instance fields
.field private btn_back:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private et_content:Landroid/widget/EditText;

.field private handler:Lev;

.field private id:Ljava/lang/String;

.field private img_star1:Landroid/widget/ImageView;

.field private img_star2:Landroid/widget/ImageView;

.field private img_star3:Landroid/widget/ImageView;

.field private point:I

.field private tv_state:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->context:Landroid/content/Context;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->point:I

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProCommentSub;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProCommentSub;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00f2

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->btn_save:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->btn_save:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->btn_save:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00f6

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->tv_state:Landroid/widget/TextView;

    const v0, 0x7f0a00f7

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->et_content:Landroid/widget/EditText;

    const v0, 0x7f0a00f3

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->img_star1:Landroid/widget/ImageView;

    const v0, 0x7f0a00f4

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->img_star2:Landroid/widget/ImageView;

    const v0, 0x7f0a00f5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->img_star3:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->img_star1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->img_star2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->img_star3:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private subData(I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->id:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "score"

    iget v2, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->point:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->et_content:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->handler:Lev;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/cms.ws"

    const-string v7, "commentProduct"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const v2, 0x7f02005a

    const v1, 0x7f02002a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->finish()V

    goto :goto_0

    :sswitch_1
    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->et_content:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u8bf7\u8f93\u5165\u8bc4\u4ef7"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->context:Landroid/content/Context;

    const v1, 0x7f080024

    invoke-static {v0, v1}, Lcn/apppark/ckj10185912/HQCHApplication;->createLoadingDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    invoke-direct {p0, v3}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->subData(I)V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->point:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->img_star2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->img_star3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->tv_state:Landroid/widget/TextView;

    const-string v1, "\u5dee\u8bc4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->point:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->img_star2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->img_star3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->tv_state:Landroid/widget/TextView;

    const-string v1, "\u4e2d\u8bc4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_4
    iput v3, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->point:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->img_star2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->img_star3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->tv_state:Landroid/widget/TextView;

    const-string v1, "\u597d\u8bc4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0048 -> :sswitch_0
        0x7f0a00f2 -> :sswitch_1
        0x7f0a00f3 -> :sswitch_2
        0x7f0a00f4 -> :sswitch_3
        0x7f0a00f5 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->id:Ljava/lang/String;

    new-instance v0, Lev;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lev;-><init>(Lcn/apppark/vertify/activity/buy/BuyProCommentSub;Leu;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->handler:Lev;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentSub;->initWidget()V

    return-void
.end method
