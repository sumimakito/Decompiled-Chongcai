.class Lcn/apppark/mcd/widget/WaterfallImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/WaterfallImageView;


# direct methods
.method constructor <init>(Lcn/apppark/mcd/widget/WaterfallImageView;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/WaterfallImageView$1;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const-class v2, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "vo"

    iget-object v3, p0, Lcn/apppark/mcd/widget/WaterfallImageView$1;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-static {v3}, Lcn/apppark/mcd/widget/WaterfallImageView;->a(Lcn/apppark/mcd/widget/WaterfallImageView;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "bund"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v1, v0}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
