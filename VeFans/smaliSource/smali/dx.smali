.class final Ldx;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Ldw;


# direct methods
.method constructor <init>(Ldw;)V
    .locals 0

    iput-object p1, p0, Ldx;->a:Ldw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 3

    iget-object v0, p0, Ldx;->a:Ldw;

    iget-object v0, v0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    iget-object v1, p0, Ldx;->a:Ldw;

    iget-object v1, v1, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->e(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;II)V

    return-void
.end method
