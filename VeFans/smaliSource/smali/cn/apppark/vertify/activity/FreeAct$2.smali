.class Lcn/apppark/vertify/activity/FreeAct$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/FreeAct;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/FreeAct;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/FreeAct$2;->a:Lcn/apppark/vertify/activity/FreeAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct$2;->a:Lcn/apppark/vertify/activity/FreeAct;

    iget-object v0, v0, Lcn/apppark/vertify/activity/FreeAct;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct$2;->a:Lcn/apppark/vertify/activity/FreeAct;

    iget-object v0, v0, Lcn/apppark/vertify/activity/FreeAct;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mainPageId:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/FreeAct$2;->a:Lcn/apppark/vertify/activity/FreeAct;

    iget-object v1, v1, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0}, Lcn/apppark/ckj10185912/Main;->finish()V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    invoke-virtual {v0}, Lcn/apppark/vertify/PageGroup;->pageBack()V

    goto :goto_0
.end method
