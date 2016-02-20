.class Lcn/apppark/vertify/activity/soft/SoftDetail$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/apppark/vertify/activity/soft/SoftDetail;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/soft/SoftDetail;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$6;->b:Lcn/apppark/vertify/activity/soft/SoftDetail;

    iput-object p2, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$6;->b:Lcn/apppark/vertify/activity/soft/SoftDetail;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/soft/SoftDetail;->a(Lcn/apppark/vertify/activity/soft/SoftDetail;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "id"

    iget-object v2, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "subjectid"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$6;->b:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftDetail;->e(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$6;->b:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftDetail;->e(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$6;->b:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->finish()V

    return-void
.end method
