.class Lcn/apppark/mcd/widget/PullDownListViewOnScroll$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/PullDownListViewOnScroll;


# direct methods
.method constructor <init>(Lcn/apppark/mcd/widget/PullDownListViewOnScroll;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll$1;->a:Lcn/apppark/mcd/widget/PullDownListViewOnScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll$1;->a:Lcn/apppark/mcd/widget/PullDownListViewOnScroll;

    invoke-static {v0}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->a(Lcn/apppark/mcd/widget/PullDownListViewOnScroll;)Lcn/apppark/mcd/widget/PullDownListViewOnScroll$OnFootRefreshListener2;

    move-result-object v0

    invoke-interface {v0}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll$OnFootRefreshListener2;->onFootRefresh()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll$1;->a:Lcn/apppark/mcd/widget/PullDownListViewOnScroll;

    invoke-static {v0}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->b(Lcn/apppark/mcd/widget/PullDownListViewOnScroll;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll$1;->a:Lcn/apppark/mcd/widget/PullDownListViewOnScroll;

    invoke-static {v0}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->c(Lcn/apppark/mcd/widget/PullDownListViewOnScroll;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
