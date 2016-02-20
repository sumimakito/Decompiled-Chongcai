.class public final Lcg;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListView$OnFootRefreshListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)V
    .locals 0

    iput-object p1, p0, Lcg;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFootRefresh()V
    .locals 3

    iget-object v0, p0, Lcg;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    iget-object v1, p0, Lcg;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->b(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->a(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;II)V

    return-void
.end method
