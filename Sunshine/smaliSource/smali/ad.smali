.class public final Lad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/MyEditText2;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/MyEditText2;)V
    .locals 0

    iput-object p1, p0, Lad;->a:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lad;->a:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-static {v1}, Lcn/apppark/mcd/widget/MyEditText2;->c(Lcn/apppark/mcd/widget/MyEditText2;)I

    iget-object v1, p0, Lad;->a:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-static {v1}, Lcn/apppark/mcd/widget/MyEditText2;->d(Lcn/apppark/mcd/widget/MyEditText2;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lad;->a:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-static {v1, v0}, Lcn/apppark/mcd/widget/MyEditText2;->a(Lcn/apppark/mcd/widget/MyEditText2;I)I

    iget-object v0, p0, Lad;->a:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-static {v0}, Lcn/apppark/mcd/widget/MyEditText2;->e(Lcn/apppark/mcd/widget/MyEditText2;)Lcn/apppark/mcd/widget/MyEditText2$MyOnKeyEnter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lad;->a:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-static {v0}, Lcn/apppark/mcd/widget/MyEditText2;->e(Lcn/apppark/mcd/widget/MyEditText2;)Lcn/apppark/mcd/widget/MyEditText2$MyOnKeyEnter;

    move-result-object v0

    invoke-interface {v0}, Lcn/apppark/mcd/widget/MyEditText2$MyOnKeyEnter;->onKeyEnter()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
