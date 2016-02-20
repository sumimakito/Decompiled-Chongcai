.class public final Ltd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)V
    .locals 0

    iput-object p1, p0, Ltd;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

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
    .locals 8

    const v7, 0x7f0201be

    const v6, 0x7f0201ad

    const v5, -0x777778

    const/high16 v4, -0x1000000

    iget-object v0, p0, Ltd;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0, p1}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->a(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;I)I

    iget-object v0, p0, Ltd;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->e(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lte;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lte;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Ltd;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->f(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltd;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->g(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Ltd;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->h(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Ltd;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->i(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Ltd;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->j(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ltd;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->g(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Ltd;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->h(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Ltd;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->i(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Ltd;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->j(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method
