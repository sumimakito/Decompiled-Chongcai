.class Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter$1;->a:Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v1, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-direct {v1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;-><init>()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter$1;->a:Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;->a(Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->getNewsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->setId(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const-class v3, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "vo"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "bund"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter$1;->a:Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;->b(Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
