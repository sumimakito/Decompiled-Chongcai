.class Lcn/apppark/mcd/widget/PullDownListView3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/PullDownListView3;


# direct methods
.method constructor <init>(Lcn/apppark/mcd/widget/PullDownListView3;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/PullDownListView3$1;->a:Lcn/apppark/mcd/widget/PullDownListView3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3$1;->a:Lcn/apppark/mcd/widget/PullDownListView3;

    invoke-static {v0}, Lcn/apppark/mcd/widget/PullDownListView3;->a(Lcn/apppark/mcd/widget/PullDownListView3;)Lcn/apppark/mcd/widget/PullDownListView3$OnFootRefreshListener3;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3$1;->a:Lcn/apppark/mcd/widget/PullDownListView3;

    invoke-static {v0}, Lcn/apppark/mcd/widget/PullDownListView3;->a(Lcn/apppark/mcd/widget/PullDownListView3;)Lcn/apppark/mcd/widget/PullDownListView3$OnFootRefreshListener3;

    move-result-object v0

    invoke-interface {v0}, Lcn/apppark/mcd/widget/PullDownListView3$OnFootRefreshListener3;->onFootRefresh()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3$1;->a:Lcn/apppark/mcd/widget/PullDownListView3;

    invoke-static {v0}, Lcn/apppark/mcd/widget/PullDownListView3;->b(Lcn/apppark/mcd/widget/PullDownListView3;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3$1;->a:Lcn/apppark/mcd/widget/PullDownListView3;

    invoke-static {v0}, Lcn/apppark/mcd/widget/PullDownListView3;->c(Lcn/apppark/mcd/widget/PullDownListView3;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method
