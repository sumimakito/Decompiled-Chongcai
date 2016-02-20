.class public final Lcx;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListView3$OnFootRefreshListener3;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)V
    .locals 0

    iput-object p1, p0, Lcx;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFootRefresh()V
    .locals 4

    iget-object v0, p0, Lcx;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    iget-object v1, p0, Lcx;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->d(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "replyDetail"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;IILjava/lang/String;)V

    return-void
.end method
