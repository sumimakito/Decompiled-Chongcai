.class final Lcf;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Lce;


# direct methods
.method constructor <init>(Lce;)V
    .locals 0

    iput-object p1, p0, Lcf;->a:Lce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcf;->a:Lce;

    iget-object v0, v0, Lce;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->h(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lcf;->a:Lce;

    iget-object v0, v0, Lce;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0, v3, v3}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;II)V

    return-void
.end method
