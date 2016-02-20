.class public final Lsd;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TEdit;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/tieba/TEdit;)V
    .locals 0

    iput-object p1, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/tieba/TEdit;Lsa;)V
    .locals 0

    invoke-direct {p0, p1}, Lsd;-><init>(Lcn/apppark/vertify/activity/tieba/TEdit;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TEdit;->g(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    iget-object v2, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    const v3, 0x7f080043

    invoke-virtual {v2, v3}, Lcn/apppark/vertify/activity/tieba/TEdit;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    const v4, 0x7f080044

    invoke-virtual {v3, v4}, Lcn/apppark/vertify/activity/tieba/TEdit;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/tieba/TEdit;->a(Lcn/apppark/vertify/activity/tieba/TEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->h(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->i(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->j(Lcn/apppark/vertify/activity/tieba/TEdit;)Lcn/apppark/mcd/widget/TCellLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->removeAllCell()V

    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-virtual {v0, v5}, Lcn/apppark/vertify/activity/tieba/TEdit;->setResult(I)V

    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TEdit;->k(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    const-string v2, "\u4e3e\u62a5\u5931\u8d25"

    const-string v3, "\u4e3e\u62a5\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/tieba/TEdit;->b(Lcn/apppark/vertify/activity/tieba/TEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->h(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->i(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->j(Lcn/apppark/vertify/activity/tieba/TEdit;)Lcn/apppark/mcd/widget/TCellLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->removeAllCell()V

    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->finish()V

    goto/16 :goto_0

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->l(Lcn/apppark/vertify/activity/tieba/TEdit;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->m(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->n(Lcn/apppark/vertify/activity/tieba/TEdit;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->o(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->m(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->o(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->o(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lsd;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->m(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
