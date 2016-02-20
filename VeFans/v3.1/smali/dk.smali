.class public final Ldk;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListView$OnFootRefreshListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)V
    .locals 0

    iput-object p1, p0, Ldk;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFootRefresh()V
    .locals 3

    iget-object v0, p0, Ldk;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    iget-object v1, p0, Ldk;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->b(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->a(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;II)V

    return-void
.end method
