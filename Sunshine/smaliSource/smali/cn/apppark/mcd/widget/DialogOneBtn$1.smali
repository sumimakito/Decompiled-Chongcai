.class Lcn/apppark/mcd/widget/DialogOneBtn$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic b:Lcn/apppark/mcd/widget/DialogOneBtn;


# direct methods
.method constructor <init>(Lcn/apppark/mcd/widget/DialogOneBtn;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/DialogOneBtn$1;->b:Lcn/apppark/mcd/widget/DialogOneBtn;

    iput-object p2, p0, Lcn/apppark/mcd/widget/DialogOneBtn$1;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn$1;->a:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn$1;->a:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcn/apppark/mcd/widget/DialogOneBtn$1;->b:Lcn/apppark/mcd/widget/DialogOneBtn;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn$1;->b:Lcn/apppark/mcd/widget/DialogOneBtn;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogOneBtn;->dismiss()V

    return-void
.end method
