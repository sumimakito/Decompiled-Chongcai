.class public Lcn/apppark/vertify/activity/free/self/SelfVideoView;
.super Landroid/widget/Button;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfView;


# instance fields
.field private context:Landroid/content/Context;

.field private vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfDefineItemVo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/self/SelfVideoView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/SelfVideoView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfVideoView;->init()V

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/free/self/SelfVideoView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfVideoView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    return-object v0
.end method

.method static synthetic b(Lcn/apppark/vertify/activity/free/self/SelfVideoView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfVideoView;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 3

    const-string v0, "2"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfVideoView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfVideoView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    new-instance v0, Lcn/apppark/vertify/activity/free/self/SelfVideoView$1;

    invoke-direct {v0, p0}, Lcn/apppark/vertify/activity/free/self/SelfVideoView$1;-><init>(Lcn/apppark/vertify/activity/free/self/SelfVideoView;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/SelfVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfVideoView;->context:Landroid/content/Context;

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
