.class public final Lpp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

.field private b:Ljava/lang/CharSequence;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/UpdateInfo;)V
    .locals 0

    iput-object p1, p0, Lpp;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lpp;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lpp;->c:I

    iget-object v0, p0, Lpp;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lpp;->d:I

    iget-object v0, p0, Lpp;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    iget v0, p0, Lpp;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lpp;->d:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget v0, p0, Lpp;->c:I

    iget-object v1, p0, Lpp;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lpp;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lpp;->a:Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->b(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpp;->b:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iput-object p1, p0, Lpp;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
