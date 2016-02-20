.class Lcn/apppark/vertify/adapter/STogether5042Adapter$MyOnClick;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/adapter/STogether5042Adapter;

.field private b:Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/adapter/STogether5042Adapter;Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter$MyOnClick;->a:Lcn/apppark/vertify/adapter/STogether5042Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter$MyOnClick;->b:Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const-class v2, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-direct {v1}, Lcn/apppark/mcd/vo/dyn/DynProductVo;-><init>()V

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter$MyOnClick;->a:Lcn/apppark/vertify/adapter/STogether5042Adapter;

    invoke-static {v2}, Lcn/apppark/vertify/adapter/STogether5042Adapter;->a(Lcn/apppark/vertify/adapter/STogether5042Adapter;)Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getShop()Lcn/apppark/mcd/vo/dyn/DynProductVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_tabPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->setStyle_tabPosition(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter$MyOnClick;->a:Lcn/apppark/vertify/adapter/STogether5042Adapter;

    invoke-static {v2}, Lcn/apppark/vertify/adapter/STogether5042Adapter;->a(Lcn/apppark/vertify/adapter/STogether5042Adapter;)Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getShop()Lcn/apppark/mcd/vo/dyn/DynProductVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_groupInfoShow()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->setStyle_groupInfoShow(I)V

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter$MyOnClick;->a:Lcn/apppark/vertify/adapter/STogether5042Adapter;

    invoke-static {v2}, Lcn/apppark/vertify/adapter/STogether5042Adapter;->a(Lcn/apppark/vertify/adapter/STogether5042Adapter;)Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getShop()Lcn/apppark/mcd/vo/dyn/DynProductVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getSys_moduleType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->setSys_moduleType(I)V

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter$MyOnClick;->b:Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->setGroupId(Ljava/lang/String;)V

    const-string v2, "detail"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter$MyOnClick;->a:Lcn/apppark/vertify/adapter/STogether5042Adapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/STogether5042Adapter;->b(Lcn/apppark/vertify/adapter/STogether5042Adapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
