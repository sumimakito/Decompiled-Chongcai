.class public final Low;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/share/QzoneShareAct;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/share/QzoneShareAct;)V
    .locals 0

    iput-object p1, p0, Low;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v0, p0, Low;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->c(Lcn/apppark/vertify/activity/share/QzoneShareAct;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8fd8\u53ef\u8f93\u5165"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Low;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    invoke-static {v2}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->a(Lcn/apppark/vertify/activity/share/QzoneShareAct;)I

    move-result v2

    iget-object v3, p0, Low;->a:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    invoke-static {v3}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->b(Lcn/apppark/vertify/activity/share/QzoneShareAct;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5b57"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
