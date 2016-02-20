.class Lcn/apppark/mcd/widget/LoadDataProgress$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/LoadDataProgress;


# direct methods
.method constructor <init>(Lcn/apppark/mcd/widget/LoadDataProgress;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/LoadDataProgress$1;->a:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress$1;->a:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-static {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->a(Lcn/apppark/mcd/widget/LoadDataProgress;)Lcn/apppark/mcd/widget/IReloadDataProgress;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress$1;->a:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-static {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->a(Lcn/apppark/mcd/widget/LoadDataProgress;)Lcn/apppark/mcd/widget/IReloadDataProgress;

    move-result-object v0

    invoke-interface {v0}, Lcn/apppark/mcd/widget/IReloadDataProgress;->reloadData()V

    :cond_0
    return-void
.end method
