.class Lcn/apppark/vertify/activity/soft/SoftDetail$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/soft/SoftDetail;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/soft/SoftDetail;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$3;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$3;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->b(Lcn/apppark/vertify/activity/soft/SoftDetail;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$3;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/soft/SoftDetail;->a(Lcn/apppark/vertify/activity/soft/SoftDetail;Z)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$3;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->c(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02013c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$3;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->d(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$3;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/soft/SoftDetail;->a(Lcn/apppark/vertify/activity/soft/SoftDetail;Z)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$3;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->c(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02012e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$3;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->d(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0
.end method
