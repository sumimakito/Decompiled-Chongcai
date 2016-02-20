.class Lcn/apppark/vertify/activity/free/self/SelfVideoView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/SelfVideoView;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/free/self/SelfVideoView;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/SelfVideoView$1;->a:Lcn/apppark/vertify/activity/free/self/SelfVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfVideoView$1;->a:Lcn/apppark/vertify/activity/free/self/SelfVideoView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfVideoView;->a(Lcn/apppark/vertify/activity/free/self/SelfVideoView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_videoFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfVideoView$1;->a:Lcn/apppark/vertify/activity/free/self/SelfVideoView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfVideoView;->a(Lcn/apppark/vertify/activity/free/self/SelfVideoView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_videoFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "videourl"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfVideoView$1;->a:Lcn/apppark/vertify/activity/free/self/SelfVideoView;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/self/SelfVideoView;->a(Lcn/apppark/vertify/activity/free/self/SelfVideoView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_videoFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfVideoView$1;->a:Lcn/apppark/vertify/activity/free/self/SelfVideoView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfVideoView;->b(Lcn/apppark/vertify/activity/free/self/SelfVideoView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/free/dyn/DynVideoWebView;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfVideoView$1;->a:Lcn/apppark/vertify/activity/free/self/SelfVideoView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfVideoView;->b(Lcn/apppark/vertify/activity/free/self/SelfVideoView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u5730\u5740\u4e3a\u7a7a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0
.end method
