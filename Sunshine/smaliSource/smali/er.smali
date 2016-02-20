.class final Ler;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Leq;


# direct methods
.method constructor <init>(Leq;)V
    .locals 0

    iput-object p1, p0, Ler;->a:Leq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Ler;->a:Leq;

    iget-object v0, v0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->b(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Ler;->a:Leq;

    iget-object v0, v0, Leq;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;II)V

    return-void
.end method
