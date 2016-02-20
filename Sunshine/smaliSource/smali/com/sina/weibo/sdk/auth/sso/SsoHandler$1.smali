.class Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;
.super Ljava/lang/Object;
.source "SsoHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 102
    invoke-static {p2}, Lcom/sina/sso/RemoteSSO$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sina/sso/RemoteSSO;

    move-result-object v1

    .line 104
    .local v1, "remoteSSOservice":Lcom/sina/sso/RemoteSSO;
    :try_start_0
    invoke-interface {v1}, Lcom/sina/sso/RemoteSSO;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "ssoPackageName":Ljava/lang/String;
    invoke-interface {v1}, Lcom/sina/sso/RemoteSSO;->getActivityName()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "ssoActivityName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    # getter for: Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$2(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    # getter for: Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v5}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$3(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 110
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    # invokes: Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->startSingleSignOn(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v3, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$4(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    # getter for: Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;
    invoke-static {v4}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    # getter for: Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
    invoke-static {v5}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$1(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;->anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v2    # "ssoActivityName":Ljava/lang/String;
    .end local v3    # "ssoPackageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    # getter for: Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;
    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    # getter for: Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
    invoke-static {v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$1(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;->anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 98
    return-void
.end method
