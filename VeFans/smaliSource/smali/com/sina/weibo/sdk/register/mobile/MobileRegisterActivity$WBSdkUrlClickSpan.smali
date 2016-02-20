.class Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;
.super Landroid/text/style/ClickableSpan;
.source "MobileRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WBSdkUrlClickSpan"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    .line 845
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 846
    iput-object p2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;->context:Landroid/content/Context;

    .line 847
    iput-object p3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;->url:Ljava/lang/String;

    .line 848
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 852
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;->context:Landroid/content/Context;

    const-class v3, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 853
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 854
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "key_url"

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 856
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v2, v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 857
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 864
    const v0, -0xaf8251

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 865
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 866
    return-void
.end method
