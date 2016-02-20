.class Lcn/apppark/vertify/activity/buy/BuyAddAddress$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$2;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$2;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->c(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u8bf7\u8f93\u5165\u6536\u8d27\u4eba"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$2;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->d(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$2;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->d(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->chekMobilePhone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$2;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->e(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u8bf7\u9009\u62e9\u5730\u533a"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$2;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->f(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u8bf7\u8f93\u5165\u8be6\u7ec6\u5730\u5740"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$2;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->g(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$2;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v0, v2}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->a(Lcn/apppark/vertify/activity/buy/BuyAddAddress;Z)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$2;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->h(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$2;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->i(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress$2;->a:Lcn/apppark/vertify/activity/buy/BuyAddAddress;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->a(Lcn/apppark/vertify/activity/buy/BuyAddAddress;I)V

    goto/16 :goto_0
.end method
