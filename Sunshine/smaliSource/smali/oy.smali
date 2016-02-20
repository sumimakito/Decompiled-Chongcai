.class public final Loy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/PersonLbsMsg;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)V
    .locals 0

    iput-object p1, p0, Loy;->a:Lcn/apppark/vertify/activity/persion/PersonLbsMsg;

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

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Loy;->a:Lcn/apppark/vertify/activity/persion/PersonLbsMsg;

    const-class v2, Lcn/apppark/vertify/base/PushWebView;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "urlStr"

    iget-object v0, p0, Loy;->a:Lcn/apppark/vertify/activity/persion/PersonLbsMsg;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->b(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/LBSReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/LBSReturnVo;->getMsgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "id"

    iget-object v0, p0, Loy;->a:Lcn/apppark/vertify/activity/persion/PersonLbsMsg;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->b(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/LBSReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/LBSReturnVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Loy;->a:Lcn/apppark/vertify/activity/persion/PersonLbsMsg;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
