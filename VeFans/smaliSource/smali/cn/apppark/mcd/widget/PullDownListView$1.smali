.class Lcn/apppark/mcd/widget/PullDownListView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/PullDownListView;


# direct methods
.method constructor <init>(Lcn/apppark/mcd/widget/PullDownListView;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/PullDownListView$1;->a:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView$1;->a:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/PullDownListView;->a(Lcn/apppark/mcd/widget/PullDownListView;)Lcn/apppark/mcd/widget/PullDownListView$OnFootRefreshListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/apppark/mcd/widget/PullDownListView$OnFootRefreshListener;->onFootRefresh()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView$1;->a:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/PullDownListView;->b(Lcn/apppark/mcd/widget/PullDownListView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView$1;->a:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/PullDownListView;->c(Lcn/apppark/mcd/widget/PullDownListView;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
