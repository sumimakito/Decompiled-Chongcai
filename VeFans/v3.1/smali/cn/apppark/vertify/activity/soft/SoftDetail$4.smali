.class Lcn/apppark/vertify/activity/soft/SoftDetail$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/soft/SoftDetail;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/soft/SoftDetail;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$4;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$4;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    iget-object v0, v0, Lcn/apppark/vertify/activity/soft/SoftDetail;->a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$4;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftDetail;->e(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6211\u5728@### \u514d\u8d39\u5e94\u7528\u63a8\u8350\u53d1\u73b0\u4e00\u4e2a\u4e0d\u9519\u7684\u5e94\u7528:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$4;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    iget-object v4, v4, Lcn/apppark/vertify/activity/soft/SoftDetail;->a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$4;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    iget-object v4, v4, Lcn/apppark/vertify/activity/soft/SoftDetail;->a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;->getDownUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$4;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    iget-object v4, v4, Lcn/apppark/vertify/activity/soft/SoftDetail;->a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "imgpath"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$4;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftDetail;->e(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
