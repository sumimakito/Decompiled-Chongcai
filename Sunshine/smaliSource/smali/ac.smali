.class public final Lac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/MyEditText2;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/MyEditText2;)V
    .locals 0

    iput-object p1, p0, Lac;->a:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lac;->a:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-static {v0}, Lcn/apppark/mcd/widget/MyEditText2;->b(Lcn/apppark/mcd/widget/MyEditText2;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lac;->a:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-static {v0}, Lcn/apppark/mcd/widget/MyEditText2;->b(Lcn/apppark/mcd/widget/MyEditText2;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
