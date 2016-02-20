.class Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$6;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$6;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$6;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Landroid/widget/EditText;)Z

    return-void
.end method
