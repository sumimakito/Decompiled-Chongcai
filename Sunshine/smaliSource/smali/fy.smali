.class final Lfy;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Lfx;


# direct methods
.method constructor <init>(Lfx;)V
    .locals 0

    iput-object p1, p0, Lfy;->a:Lfx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lfy;->a:Lfx;

    iget-object v0, v0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->b(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lfy;->a:Lfx;

    iget-object v0, v0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    iget-object v1, p0, Lfy;->a:Lfx;

    iget-object v1, v1, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->c(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->a(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;II)V

    return-void
.end method
