.class Lcn/apppark/mcd/widget/TCellLinearLayout$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/TCellLinearLayout;


# direct methods
.method constructor <init>(Lcn/apppark/mcd/widget/TCellLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout$4;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout$4;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    iput-object v0, v1, Lcn/apppark/mcd/widget/TCellLinearLayout;->tempTPicCellInfo:Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout$4;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/apppark/mcd/widget/TCellLinearLayout;->a(Lcn/apppark/mcd/widget/TCellLinearLayout;II)V

    return-void
.end method
