.class public Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfViewDyn;


# instance fields
.field private context:Landroid/content/Context;

.field private ll_search:Landroid/widget/LinearLayout;

.field private loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

.field private rel_root:Landroid/widget/RelativeLayout;

.field private vo:Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->vo:Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->init()V

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;)Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->vo:Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0241

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->ll_search:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0240

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->rel_root:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->rel_root:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->vo:Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->vo:Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->vo:Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->vo:Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->ll_search:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007$1;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initData()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadSuccess(I)V

    :cond_0
    return-void
.end method

.method public isCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadSuccess(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setLoadendListener(Lcn/apppark/vertify/activity/ILoadDataEndListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    return-void
.end method
