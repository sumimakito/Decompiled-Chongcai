.class public final Lpb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/share/SinaShareAct;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/share/SinaShareAct;)V
    .locals 0

    iput-object p1, p0, Lpb;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    iget-object v0, p0, Lpb;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    const-string v1, "\u6388\u6743\u53d6\u6d88"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onComplete(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lpb;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/share/SinaShareAct;->a(Lcn/apppark/vertify/activity/share/SinaShareAct;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    iget-object v0, p0, Lpb;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->e(Lcn/apppark/vertify/activity/share/SinaShareAct;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpb;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    iget-object v1, p0, Lpb;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-static {v1}, Lcn/apppark/vertify/activity/share/SinaShareAct;->e(Lcn/apppark/vertify/activity/share/SinaShareAct;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/weibo/AccessTokenKeeper;->writeAccessToken(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    iget-object v0, p0, Lpb;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    const-string v1, "\u6388\u6743\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpb;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6388\u6743\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 3

    iget-object v0, p0, Lpb;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auth exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
