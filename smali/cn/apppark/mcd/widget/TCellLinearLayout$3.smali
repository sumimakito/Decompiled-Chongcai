.class Lcn/apppark/mcd/widget/TCellLinearLayout$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/TCellLinearLayout;


# direct methods
.method constructor <init>(Lcn/apppark/mcd/widget/TCellLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout$3;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout$3;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-virtual {v0, p1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->removeCell(Landroid/view/View;)V

    return-void
.end method
