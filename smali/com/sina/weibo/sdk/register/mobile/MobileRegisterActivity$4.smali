.class Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;
.super Ljava/lang/Object;
.source "MobileRegisterActivity.java"

# interfaces
.implements Lcom/sina/weibo/sdk/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->submit(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

.field private final synthetic val$phoneNum:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    iput-object p2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->val$phoneNum:Ljava/lang/String;

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 948
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->dismiss()V

    .line 949
    # getter for: Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$9()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get onComplete : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    if-eqz p1, :cond_0

    .line 952
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 954
    .local v3, "res":Lorg/json/JSONObject;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 955
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 956
    .local v2, "param":Landroid/os/Bundle;
    const-string v4, "uid"

    const-string v5, "uid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v4, "phone_num"

    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->val$phoneNum:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string v4, "access_token"

    const-string v5, "oauth_token"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const-string v4, "expires_in"

    const-string v5, "expires"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 961
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->setResult(ILandroid/content/Intent;)V

    .line 962
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "param":Landroid/os/Bundle;
    .end local v3    # "res":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 963
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 7
    .param p1, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 929
    # getter for: Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$9()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get onWeiboException "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "the server is busy, please  wait"

    const-string v5, "\u670d\u52a1\u5668\u5fd9,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 932
    const-string v6, "\u670d\u52d9\u5668\u5fd9,\u8acb\u7a0d\u5f8c\u518d\u8a66"

    .line 930
    invoke-static {v3, v4, v5, v6}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, "error_description":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 935
    .local v2, "res":Lorg/json/JSONObject;
    const-string v3, "error_description"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 936
    const-string v3, "error_description"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 941
    .end local v2    # "res":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    # getter for: Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$11(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 942
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    # getter for: Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$11(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->dismiss()V

    .line 944
    return-void

    .line 938
    :catch_0
    move-exception v1

    .line 939
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
