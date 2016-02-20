.class public final Lcp;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListView3$OnRefreshListener3;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)V
    .locals 0

    iput-object p1, p0, Lcp;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 4

    iget-object v0, p0, Lcp;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;I)I

    iget-object v0, p0, Lcp;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    iget-object v1, p0, Lcp;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "replyList"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;IILjava/lang/String;)V

    return-void
.end method
