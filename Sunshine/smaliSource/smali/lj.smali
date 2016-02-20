.class public final Llj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)V
    .locals 0

    iput-object p1, p0, Llj;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v1, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-direct {v1}, Lcn/apppark/mcd/vo/dyn/DynProductVo;-><init>()V

    iget-object v0, p0, Llj;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->a(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getShop()Lcn/apppark/mcd/vo/dyn/DynProductVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_tabPosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->setStyle_tabPosition(Ljava/lang/String;)V

    iget-object v0, p0, Llj;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->a(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getShop()Lcn/apppark/mcd/vo/dyn/DynProductVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_groupInfoShow()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->setStyle_groupInfoShow(I)V

    iget-object v0, p0, Llj;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->a(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getShop()Lcn/apppark/mcd/vo/dyn/DynProductVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getSys_moduleType()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->setSys_moduleType(I)V

    iget-object v0, p0, Llj;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->b(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->setGroupId(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const-class v3, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "detail"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Llj;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->c(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
