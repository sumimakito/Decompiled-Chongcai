.class Lcn/apppark/vertify/activity/free/self/SelfMp4View$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/SelfMp4View;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/free/self/SelfMp4View;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp4View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp4View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp4View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp4View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfMp4View;->a(Lcn/apppark/vertify/activity/free/self/SelfMp4View;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_videoFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp4View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp4View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfMp4View;->a(Lcn/apppark/vertify/activity/free/self/SelfMp4View;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_videoFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp4View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp4View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfMp4View;->a(Lcn/apppark/vertify/activity/free/self/SelfMp4View;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_videoFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp4View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp4View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfMp4View;->a(Lcn/apppark/vertify/activity/free/self/SelfMp4View;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_videoFile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "videourl"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfMp4View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp4View;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/self/SelfMp4View;->a(Lcn/apppark/vertify/activity/free/self/SelfMp4View;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_videoFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp4View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp4View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfMp4View;->b(Lcn/apppark/vertify/activity/free/self/SelfMp4View;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp4View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp4View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfMp4View;->b(Lcn/apppark/vertify/activity/free/self/SelfMp4View;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    const-string v1, "videourl"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfMp4View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp4View;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/self/SelfMp4View;->a(Lcn/apppark/vertify/activity/free/self/SelfMp4View;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_videoFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->generateFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "videourl"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfMp4View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp4View;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/self/SelfMp4View;->a(Lcn/apppark/vertify/activity/free/self/SelfMp4View;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_videoFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp4View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp4View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfMp4View;->b(Lcn/apppark/vertify/activity/free/self/SelfMp4View;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/free/dyn/DynVideoWebView;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp4View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp4View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfMp4View;->b(Lcn/apppark/vertify/activity/free/self/SelfMp4View;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u5730\u5740\u4e3a\u7a7a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_1
.end method
