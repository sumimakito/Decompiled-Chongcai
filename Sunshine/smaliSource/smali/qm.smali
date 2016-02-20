.class public final Lqm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/soft/Soft;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/soft/Soft;)V
    .locals 0

    iput-object p1, p0, Lqm;->a:Lcn/apppark/vertify/activity/soft/Soft;

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

    iget-object v0, p0, Lqm;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->o(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int v1, p3, v0

    const-string v2, "0"

    iget-object v0, p0, Lqm;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->o(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SoftReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lqm;->a:Lcn/apppark/vertify/activity/soft/Soft;

    const-class v3, Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "subjectid"

    iget-object v0, p0, Lqm;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->o(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SoftReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lqm;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-virtual {v0, v2}, Lcn/apppark/vertify/activity/soft/Soft;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lqm;->a:Lcn/apppark/vertify/activity/soft/Soft;

    const-class v3, Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "id"

    iget-object v0, p0, Lqm;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->o(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SoftReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "subjectid"

    const-string v1, "0"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lqm;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-virtual {v0, v2}, Lcn/apppark/vertify/activity/soft/Soft;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
