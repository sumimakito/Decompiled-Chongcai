.class public final Lff;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)V
    .locals 0

    iput-object p1, p0, Lff;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lff;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->a(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lff;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-virtual {v0, p3}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->changePoint(I)V

    :cond_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
