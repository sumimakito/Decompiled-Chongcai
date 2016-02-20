.class public Lcn/apppark/vertify/activity/free/self/SelfBlankView;
.super Landroid/widget/TextView;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfView;


# instance fields
.field private vo:Lcn/apppark/mcd/vo/free/SelfBlankItemVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfBlankItemVo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/self/SelfBlankView;->vo:Lcn/apppark/mcd/vo/free/SelfBlankItemVo;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfBlankView;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfBlankView;->vo:Lcn/apppark/mcd/vo/free/SelfBlankItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfBlankItemVo;->getBgType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfBlankView;->vo:Lcn/apppark/mcd/vo/free/SelfBlankItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfBlankItemVo;->getBgPic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfBlankView;->vo:Lcn/apppark/mcd/vo/free/SelfBlankItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfBlankItemVo;->getBgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

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
