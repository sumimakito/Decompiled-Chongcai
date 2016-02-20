.class public final Lab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/MyEditText;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/MyEditText;)V
    .locals 0

    iput-object p1, p0, Lab;->a:Lcn/apppark/mcd/widget/MyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lab;->a:Lcn/apppark/mcd/widget/MyEditText;

    invoke-static {v1}, Lcn/apppark/mcd/widget/MyEditText;->a(Lcn/apppark/mcd/widget/MyEditText;)I

    iget-object v1, p0, Lab;->a:Lcn/apppark/mcd/widget/MyEditText;

    invoke-static {v1}, Lcn/apppark/mcd/widget/MyEditText;->b(Lcn/apppark/mcd/widget/MyEditText;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lab;->a:Lcn/apppark/mcd/widget/MyEditText;

    invoke-static {v1, v0}, Lcn/apppark/mcd/widget/MyEditText;->a(Lcn/apppark/mcd/widget/MyEditText;I)I

    iget-object v0, p0, Lab;->a:Lcn/apppark/mcd/widget/MyEditText;

    invoke-static {v0}, Lcn/apppark/mcd/widget/MyEditText;->c(Lcn/apppark/mcd/widget/MyEditText;)Lcn/apppark/mcd/widget/MyEditText$MyEditTextClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lab;->a:Lcn/apppark/mcd/widget/MyEditText;

    invoke-static {v0}, Lcn/apppark/mcd/widget/MyEditText;->c(Lcn/apppark/mcd/widget/MyEditText;)Lcn/apppark/mcd/widget/MyEditText$MyEditTextClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/apppark/mcd/widget/MyEditText$MyEditTextClickListener;->onKeyEnter()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
