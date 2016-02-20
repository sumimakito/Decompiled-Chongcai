.class final Lda;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcy;


# direct methods
.method constructor <init>(Lcy;I)V
    .locals 0

    iput-object p1, p0, Lda;->b:Lcy;

    iput p2, p0, Lda;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lda;->b:Lcy;

    iget-object v0, v0, Lcy;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->f(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lda;->b:Lcy;

    iget-object v0, v0, Lcy;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    iget-object v1, p0, Lda;->b:Lcy;

    iget-object v1, v1, Lcy;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->g(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080024

    invoke-static {v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->createLoadingDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lda;->b:Lcy;

    iget-object v0, v0, Lcy;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    iget v1, p0, Lda;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;I)I

    iget-object v0, p0, Lda;->b:Lcy;

    iget-object v0, v0, Lcy;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->f(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lda;->b:Lcy;

    iget-object v1, v0, Lcy;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    const/4 v2, 0x4

    iget-object v0, p0, Lda;->b:Lcy;

    iget-object v0, v0, Lcy;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v0

    iget v3, p0, Lda;->a:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lda;->b:Lcy;

    iget-object v0, v0, Lcy;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Ljava/util/ArrayList;

    move-result-object v0

    iget v4, p0, Lda;->a:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->getPid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
