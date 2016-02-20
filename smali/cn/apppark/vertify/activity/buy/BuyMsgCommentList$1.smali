.class public Lcn/apppark/vertify/activity/buy/BuyMsgCommentList$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList$1;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList$1;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList$1;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->setResult(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList$1;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->finish()V

    return-void
.end method
