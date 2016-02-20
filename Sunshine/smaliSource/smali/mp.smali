.class public final Lmp;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/SelfImageView;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/free/self/SelfImageView;)V
    .locals 0

    iput-object p1, p0, Lmp;->a:Lcn/apppark/vertify/activity/free/self/SelfImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/free/self/SelfImageView;Lmm;)V
    .locals 0

    invoke-direct {p0, p1}, Lmp;-><init>(Lcn/apppark/vertify/activity/free/self/SelfImageView;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lmp;->a:Lcn/apppark/vertify/activity/free/self/SelfImageView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->b(Lcn/apppark/vertify/activity/free/self/SelfImageView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getnPageId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mainPageId:Ljava/lang/String;

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    iget-object v1, p0, Lmp;->a:Lcn/apppark/vertify/activity/free/self/SelfImageView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->a(Lcn/apppark/vertify/activity/free/self/SelfImageView;)Lcn/apppark/mcd/vo/base/FreePageVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmp;->a:Lcn/apppark/vertify/activity/free/self/SelfImageView;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->b(Lcn/apppark/vertify/activity/free/self/SelfImageView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getnPageId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmp;->a:Lcn/apppark/vertify/activity/free/self/SelfImageView;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->b(Lcn/apppark/vertify/activity/free/self/SelfImageView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getnPageType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmp;->a:Lcn/apppark/vertify/activity/free/self/SelfImageView;

    invoke-static {v5}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->b(Lcn/apppark/vertify/activity/free/self/SelfImageView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v5

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getnPageModuleType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcn/apppark/vertify/PageGroup;->goNextPage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
