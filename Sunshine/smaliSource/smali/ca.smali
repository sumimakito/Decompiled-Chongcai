.class public final Lca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)V
    .locals 0

    iput-object p1, p0, Lca;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lca;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-virtual {v0, p3}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->delCommodity(I)V

    const/4 v0, 0x0

    return v0
.end method
