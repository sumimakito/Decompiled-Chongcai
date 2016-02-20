.class Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$7;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$7;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u8bf7\u8f93\u5165\u8bc4\u8bba"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$7;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->e(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$7;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->h(Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u8bf7\u767b\u5f55\u540e\u53d1\u8868\u8bc4\u8bba"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$7;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep$7;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentRep;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
