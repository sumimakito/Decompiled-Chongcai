.class Lcn/apppark/vertify/activity/tieba/TMain$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/vo/tieba/TMainVo;

.field final synthetic b:Lcn/apppark/vertify/activity/tieba/TMain;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/tieba/TMain;Lcn/apppark/mcd/vo/tieba/TMainVo;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TMain$6;->b:Lcn/apppark/vertify/activity/tieba/TMain;

    iput-object p2, p0, Lcn/apppark/vertify/activity/tieba/TMain$6;->a:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain$6;->b:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMain;->e(Lcn/apppark/vertify/activity/tieba/TMain;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "topicid"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMain$6;->a:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTopicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMain$6;->b:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
