.class Lcn/apppark/vertify/activity/free/self/SelfImageView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/SelfImageView;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/free/self/SelfImageView;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView$2;->a:Lcn/apppark/vertify/activity/free/self/SelfImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getnPageId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView$2;->a:Lcn/apppark/vertify/activity/free/self/SelfImageView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->a(Lcn/apppark/vertify/activity/free/self/SelfImageView;)Lcn/apppark/mcd/vo/base/FreePageVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView$2;->a:Lcn/apppark/vertify/activity/free/self/SelfImageView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->a(Lcn/apppark/vertify/activity/free/self/SelfImageView;)Lcn/apppark/mcd/vo/base/FreePageVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView$2;->a:Lcn/apppark/vertify/activity/free/self/SelfImageView;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->b(Lcn/apppark/vertify/activity/free/self/SelfImageView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getnPageId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView$2;->a:Lcn/apppark/vertify/activity/free/self/SelfImageView;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->b(Lcn/apppark/vertify/activity/free/self/SelfImageView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getnPageType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView$2;->a:Lcn/apppark/vertify/activity/free/self/SelfImageView;

    invoke-static {v5}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->b(Lcn/apppark/vertify/activity/free/self/SelfImageView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v5

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getnPageModuleType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcn/apppark/vertify/PageGroup;->goNextPage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
