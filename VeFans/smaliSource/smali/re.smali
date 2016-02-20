.class public final Lre;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TEdit;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TEdit;)V
    .locals 0

    iput-object p1, p0, Lre;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lre;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->b(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020179

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lre;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->b(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lre;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->c(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020177

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lre;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->c(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lre;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->d(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02015d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lre;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->d(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lre;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->b(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02017a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lre;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->b(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lre;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->c(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020178

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lre;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->c(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lre;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->d(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02015e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lre;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->d(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method
