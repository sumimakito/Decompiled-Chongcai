.class public final Lei;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)V
    .locals 0

    iput-object p1, p0, Lei;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lei;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "id"

    iget-object v0, p0, Lei;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->b(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProCommentVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lei;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
