.class final Lbu;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Lbt;


# direct methods
.method constructor <init>(Lbt;)V
    .locals 0

    iput-object p1, p0, Lbu;->a:Lbt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lbu;->a:Lbt;

    iget-object v0, v0, Lbt;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->h(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lbu;->a:Lbt;

    iget-object v0, v0, Lbt;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0, v3, v3}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->a(Lcn/apppark/vertify/activity/buy/BuyAddressList;II)V

    return-void
.end method
