.class final Leh;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Leg;


# direct methods
.method constructor <init>(Leg;)V
    .locals 0

    iput-object p1, p0, Leh;->a:Leg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 2

    iget-object v0, p0, Leh;->a:Leg;

    iget-object v0, v0, Leg;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;I)V

    return-void
.end method
