.class public Lcn/apppark/mcd/vo/base/ActivityHistoryVo;
.super Ljava/lang/Object;


# instance fields
.field private id:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private pageId:Ljava/lang/String;

.field private showAd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/vo/base/ActivityHistoryVo;->showAd:Z

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/base/ActivityHistoryVo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/base/ActivityHistoryVo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/base/ActivityHistoryVo;->pageId:Ljava/lang/String;

    return-object v0
.end method

.method public isShowAd()Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/vo/base/ActivityHistoryVo;->showAd:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/base/ActivityHistoryVo;->id:Ljava/lang/String;

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/base/ActivityHistoryVo;->intent:Landroid/content/Intent;

    return-void
.end method

.method public setPageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/base/ActivityHistoryVo;->pageId:Ljava/lang/String;

    return-void
.end method

.method public setShowAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/vo/base/ActivityHistoryVo;->showAd:Z

    return-void
.end method
