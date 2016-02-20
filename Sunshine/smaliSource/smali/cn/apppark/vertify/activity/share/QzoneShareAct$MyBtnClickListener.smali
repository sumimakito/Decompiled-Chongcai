.class Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/share/QzoneShareAct;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/share/QzoneShareAct;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/apppark/vertify/activity/share/QzoneShareAct;Lpt;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/QzoneShareAct;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    invoke-static {v1}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->b(Lcn/apppark/vertify/activity/share/QzoneShareAct;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->b(Lcn/apppark/vertify/activity/share/QzoneShareAct;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u5206\u4eab\u5185\u5bb9"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->b(Lcn/apppark/vertify/activity/share/QzoneShareAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    invoke-static {v1}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->a(Lcn/apppark/vertify/activity/share/QzoneShareAct;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->b(Lcn/apppark/vertify/activity/share/QzoneShareAct;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "\u60a8\u8f93\u5165\u7684\u5206\u4eab\u5185\u5bb9\u8d85\u51fa\u957f\u5ea6\u9650\u5236"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    invoke-static {v1}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->b(Lcn/apppark/vertify/activity/share/QzoneShareAct;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--\u6765\u81ea<<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    const v4, 0x7f080001

    invoke-virtual {v3, v4}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    invoke-static {v3}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->d(Lcn/apppark/vertify/activity/share/QzoneShareAct;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->a(Lcn/apppark/vertify/activity/share/QzoneShareAct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->setResult(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->finish()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a03c1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
