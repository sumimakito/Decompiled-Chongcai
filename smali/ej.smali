.class public final Lej;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListView$OnRefreshListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)V
    .locals 0

    iput-object p1, p0, Lej;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 3

    iget-object v0, p0, Lej;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentList;II)V

    return-void
.end method
