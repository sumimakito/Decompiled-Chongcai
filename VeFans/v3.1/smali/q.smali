.class public final Lq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcn/apppark/mcd/weibo/QzoneShareUtil;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/weibo/QzoneShareUtil;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lq;->b:Lcn/apppark/mcd/weibo/QzoneShareUtil;

    iput-object p2, p0, Lq;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->SHARE_ACTION_MSG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lq;->b:Lcn/apppark/mcd/weibo/QzoneShareUtil;

    iget-object v1, v1, Lcn/apppark/mcd/weibo/QzoneShareUtil;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lq;->b:Lcn/apppark/mcd/weibo/QzoneShareUtil;

    iget-object v0, v0, Lcn/apppark/mcd/weibo/QzoneShareUtil;->b:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lq;->b:Lcn/apppark/mcd/weibo/QzoneShareUtil;

    iget-object v1, v1, Lcn/apppark/mcd/weibo/QzoneShareUtil;->a:Landroid/app/Activity;

    iget-object v2, p0, Lq;->a:Landroid/os/Bundle;

    new-instance v3, Lr;

    invoke-direct {v3, p0}, Lr;-><init>(Lq;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method
