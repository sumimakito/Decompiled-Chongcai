.class public final Lcq;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListView3$OnFootRefreshListener3;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)V
    .locals 0

    iput-object p1, p0, Lcq;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFootRefresh()V
    .locals 4

    iget-object v0, p0, Lcq;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    iget-object v1, p0, Lcq;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "replyList"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;IILjava/lang/String;)V

    return-void
.end method
