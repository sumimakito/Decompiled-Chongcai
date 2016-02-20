.class Lcn/apppark/vertify/activity/soft/SoftDetail$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/soft/SoftDetail;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/soft/SoftDetail;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$5;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$5;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    iget-object v0, v0, Lcn/apppark/vertify/activity/soft/SoftDetail;->a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$5;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    iget-object v2, v2, Lcn/apppark/vertify/activity/soft/SoftDetail;->a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;->getDownUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&imei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->IMEI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$5;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftDetail;->e(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
