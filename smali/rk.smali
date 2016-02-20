.class public final Lrk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TMain;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TMain;)V
    .locals 0

    iput-object p1, p0, Lrk;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lrk;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMain;->d(Lcn/apppark/vertify/activity/tieba/TMain;)Lcn/apppark/mcd/widget/RightSlidMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrk;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMain;->d(Lcn/apppark/vertify/activity/tieba/TMain;)Lcn/apppark/mcd/widget/RightSlidMenu;

    move-result-object v0

    iget-boolean v0, v0, Lcn/apppark/mcd/widget/RightSlidMenu;->isMenuShow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrk;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMain;->d(Lcn/apppark/vertify/activity/tieba/TMain;)Lcn/apppark/mcd/widget/RightSlidMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/RightSlidMenu;->closeOpenMenu()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-le p3, v4, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lrk;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMain;->e(Lcn/apppark/vertify/activity/tieba/TMain;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "topicid"

    iget-object v0, p0, Lrk;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMain;->f(Lcn/apppark/vertify/activity/tieba/TMain;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, p3, -0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTopicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lrk;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-virtual {v0, v1, v4}, Lcn/apppark/vertify/activity/tieba/TMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
