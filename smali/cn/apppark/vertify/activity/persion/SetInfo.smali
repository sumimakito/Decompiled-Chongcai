.class public Lcn/apppark/vertify/activity/persion/SetInfo;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final CALC_CACHE_COMPLETE:I

.field private final CLEAR_CACHE_COMPLETE:I

.field public a:D

.field private btn_back:Landroid/widget/Button;

.field private btn_getMsg:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private ll_basicInfo:Landroid/widget/LinearLayout;

.field private ll_checkUpdate:Landroid/widget/LinearLayout;

.field private ll_clearCache:Landroid/widget/LinearLayout;

.field private ll_getMsg:Landroid/widget/LinearLayout;

.field private ll_loginOff:Landroid/widget/LinearLayout;

.field private ll_pass:Landroid/widget/LinearLayout;

.field private ll_secret:Landroid/widget/LinearLayout;

.field private ll_topset:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private tv_cache:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    iput-object p0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->context:Landroid/content/Context;

    const/4 v0, 0x5

    iput v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->CLEAR_CACHE_COMPLETE:I

    const/4 v0, 0x6

    iput v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->CALC_CACHE_COMPLETE:I

    new-instance v0, Loj;

    invoke-direct {v0, p0}, Loj;-><init>(Lcn/apppark/vertify/activity/persion/SetInfo;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/SetInfo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/SetInfo;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/SetInfo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/SetInfo;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/SetInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->tv_cache:Landroid/widget/TextView;

    return-object v0
.end method

.method private initWidget()V
    .locals 3

    const/16 v2, 0x8

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a02e5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->tv_cache:Landroid/widget/TextView;

    const v0, 0x7f0a02de

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_basicInfo:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02df

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_pass:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02e0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_secret:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02e1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_getMsg:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02e3

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_checkUpdate:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02e4

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_clearCache:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02e6

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_loginOff:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02dd

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_topset:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02e2

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->btn_getMsg:Landroid/widget/Button;

    const v0, 0x7f0a02d7

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->btn_getMsg:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    const-string v0, "1"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SetInfo;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->receiveMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->btn_getMsg:Landroid/widget/Button;

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SetInfo;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_loginOff:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_topset:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_basicInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_pass:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_secret:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_getMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_checkUpdate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_clearCache:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->ll_loginOff:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->btn_getMsg:Landroid/widget/Button;

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const v1, 0x7f080003

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/persion/SetInfo;->setResult(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SetInfo;->finish()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SetInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u9000\u51fa\u5f53\u524d\u8d26\u53f7?"

    new-instance v2, Loh;

    invoke-direct {v2, p0}, Loh;-><init>(Lcn/apppark/vertify/activity/persion/SetInfo;)V

    invoke-virtual {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/persion/SetInfo;->createMsgDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcn/apppark/vertify/network/FileUpdater;

    invoke-direct {v0, p0, v2, v3}, Lcn/apppark/vertify/network/FileUpdater;-><init>(Landroid/app/Activity;ZI)V

    invoke-virtual {v0}, Lcn/apppark/vertify/network/FileUpdater;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/network/FileUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :pswitch_6
    const-string v0, "1"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SetInfo;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->receiveMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SetInfo;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateReceiveMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->btn_getMsg:Landroid/widget/Button;

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SetInfo;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateReceiveMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SetInfo;->btn_getMsg:Landroid/widget/Button;

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SetInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6e05\u9664\u56fe\u7247\u7f13\u5b58?"

    new-instance v2, Loi;

    invoke-direct {v2, p0}, Loi;-><init>(Lcn/apppark/vertify/activity/persion/SetInfo;)V

    invoke-virtual {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/persion/SetInfo;->createMsgDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a02d7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03006c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->setContentView(I)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/SetInfo;->initWidget()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->setResult(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SetInfo;->finish()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onResume()V

    new-instance v0, Lok;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lok;-><init>(Lcn/apppark/vertify/activity/persion/SetInfo;Loh;)V

    invoke-virtual {v0}, Lok;->start()V

    return-void
.end method
