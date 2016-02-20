.class public final Lqo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/soft/Soft;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/soft/Soft;)V
    .locals 0

    iput-object p1, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 6

    const v1, 0x7f02014f

    const v5, 0x7f02014a

    const v3, 0x7f020140

    const/4 v4, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020150

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->b(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->c(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->b(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020141

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->c(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->d(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->e(Lcn/apppark/vertify/activity/soft/Soft;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0, v2}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Z)Z

    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    iget-object v1, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->f(Lcn/apppark/vertify/activity/soft/Soft;)I

    move-result v1

    const/4 v2, 0x6

    const-string v3, "downTop"

    const-string v5, "down"

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;IILjava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->b(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->c(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02014b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->g(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->h(Lcn/apppark/vertify/activity/soft/Soft;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0, v2}, Lcn/apppark/vertify/activity/soft/Soft;->b(Lcn/apppark/vertify/activity/soft/Soft;Z)Z

    iget-object v0, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    iget-object v1, p0, Lqo;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->i(Lcn/apppark/vertify/activity/soft/Soft;)I

    move-result v1

    const/16 v2, 0x9

    const-string v3, "need"

    const-string v5, "must"

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;IILjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
