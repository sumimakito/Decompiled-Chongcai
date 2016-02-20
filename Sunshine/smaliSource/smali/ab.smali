.class public final Lab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/MyEditText2;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/MyEditText2;)V
    .locals 0

    iput-object p1, p0, Lab;->a:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lab;->a:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-static {v0}, Lcn/apppark/mcd/widget/MyEditText2;->a(Lcn/apppark/mcd/widget/MyEditText2;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lab;->a:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-static {v0}, Lcn/apppark/mcd/widget/MyEditText2;->b(Lcn/apppark/mcd/widget/MyEditText2;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lab;->a:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-static {v0}, Lcn/apppark/mcd/widget/MyEditText2;->b(Lcn/apppark/mcd/widget/MyEditText2;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
