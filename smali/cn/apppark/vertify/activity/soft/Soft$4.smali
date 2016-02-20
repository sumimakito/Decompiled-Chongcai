.class Lcn/apppark/vertify/activity/soft/Soft$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/soft/Soft;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/soft/Soft;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/Soft$4;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft$4;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->j(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft$4;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02013e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft$4;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->b(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020130

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft$4;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->c(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020139

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft$4;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->d(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft$4;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->e(Lcn/apppark/vertify/activity/soft/Soft;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft$4;->a:Lcn/apppark/vertify/activity/soft/Soft;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Z)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft$4;->a:Lcn/apppark/vertify/activity/soft/Soft;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/Soft$4;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->f(Lcn/apppark/vertify/activity/soft/Soft;)I

    move-result v1

    const/4 v2, 0x6

    const-string v3, "downTop"

    const-string v5, "down"

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;IILjava/lang/String;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
