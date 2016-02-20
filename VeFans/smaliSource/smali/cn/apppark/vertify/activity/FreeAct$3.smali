.class Lcn/apppark/vertify/activity/FreeAct$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/FreeAct;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/FreeAct;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/FreeAct$3;->a:Lcn/apppark/vertify/activity/FreeAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct$3;->a:Lcn/apppark/vertify/activity/FreeAct;

    iget-object v0, v0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/FreePageVo;->getData_password()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/FreeAct$3;->a:Lcn/apppark/vertify/activity/FreeAct;

    iget-object v1, v1, Lcn/apppark/vertify/activity/FreeAct;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getSuperPass()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/FreeAct$3;->a:Lcn/apppark/vertify/activity/FreeAct;

    iget-object v1, v1, Lcn/apppark/vertify/activity/FreeAct;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct$3;->a:Lcn/apppark/vertify/activity/FreeAct;

    iget-object v0, v0, Lcn/apppark/vertify/activity/FreeAct;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct$3;->a:Lcn/apppark/vertify/activity/FreeAct;

    iget-object v0, v0, Lcn/apppark/vertify/activity/FreeAct;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u5bf9\u4e0d\u8d77,\u5bc6\u7801\u9519\u8bef"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0
.end method
