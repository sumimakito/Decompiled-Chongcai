.class final Lfk;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Lfj;


# direct methods
.method constructor <init>(Lfj;)V
    .locals 0

    iput-object p1, p0, Lfk;->a:Lfj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 2

    iget-object v0, p0, Lfk;->a:Lfj;

    iget-object v0, v0, Lfj;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->b(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(I)V

    iget-object v0, p0, Lfk;->a:Lfj;

    iget-object v0, v0, Lfj;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->a(Lcn/apppark/vertify/activity/buy/BuyProductDetail;I)V

    return-void
.end method
