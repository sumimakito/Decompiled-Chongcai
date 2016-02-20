.class public Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;
.super Lcn/apppark/vertify/activity/BaseAct;

# interfaces
.implements Lcn/apppark/vertify/activity/ILoadDataEndListener;


# instance fields
.field private btn_back:Landroid/widget/Button;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private rel_top:Landroid/widget/RelativeLayout;

.field private sProductBase:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

.field public scroll:Lcn/apppark/mcd/widget/ElasticScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/BaseAct;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->sProductBase:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->onRefresh()V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;)Lcn/apppark/vertify/activity/free/dyn/SProductBase;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->sProductBase:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    return-object v0
.end method

.method private onRef()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->sProductBase:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->onRefresh()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/high16 v6, 0x42300000    # 44.0f

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/BaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03008a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    const v1, 0x7f0a0011

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f0a0392

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/widget/ElasticScrollView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    const v1, 0x7f0a038f

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->rel_top:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0390

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->btn_back:Landroid/widget/Button;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->rel_top:Landroid/widget/RelativeLayout;

    invoke-static {v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->btn_back:Landroid/widget/Button;

    new-instance v2, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail$1;

    invoke-direct {v2, p0}, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail$1;-><init>(Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v2, v1, v7}, Lcn/apppark/mcd/widget/ElasticScrollView;->addChild(Landroid/view/View;I)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    new-instance v3, Lls;

    invoke-direct {v3, p0}, Lls;-><init>(Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;)V

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/widget/ElasticScrollView;->setonRefreshListener(Lcn/apppark/mcd/widget/ElasticScrollView$OnRefreshListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    sget v4, Lcn/apppark/ckj10185912/YYGYContants;->MainContentHeight:I

    sget v5, Lcn/apppark/ckj10185912/YYGYContants;->PRODUCT_INFO_HEIGHT:I

    add-int/2addr v4, v5

    invoke-static {v6}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-static {v6}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/apppark/mcd/widget/ElasticScrollView;->setTopMenuHeight(I)V

    new-instance v3, Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v0, v7}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynProductVo;Z)V

    iput-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->sProductBase:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->sProductBase:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->sProductBase:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->setParentScroll(Lcn/apppark/mcd/widget/ElasticScrollView;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->sProductBase:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-virtual {v0, p0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->setLoadendListener(Lcn/apppark/vertify/activity/ILoadDataEndListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->sProductBase:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->initData()V

    return-void
.end method

.method public onLoadCacheFail(I)V
    .locals 0

    return-void
.end method

.method public onLoadCacheSuccess(I)V
    .locals 0

    return-void
.end method

.method public onLoadFail(I)V
    .locals 5

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080025

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "255"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v1, Llt;

    invoke-direct {v1, p0}, Llt;-><init>(Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    return-void
.end method

.method public onLoadSuccess(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->onRefreshComplete()V

    return-void
.end method
