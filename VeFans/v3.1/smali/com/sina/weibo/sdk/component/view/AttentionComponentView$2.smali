.class Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;
.super Ljava/lang/Object;
.source "AttentionComponentView.java"

# interfaces
.implements Lcom/sina/weibo/sdk/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->loadAttentionState(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;->this$0:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;)Lcom/sina/weibo/sdk/component/view/AttentionComponentView;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;->this$0:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 175
    # getter for: Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->access$1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "json : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "root":Lorg/json/JSONObject;
    const-string v2, "target"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 179
    .local v1, "target":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;->this$0:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;

    invoke-direct {v3, p0, v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;-><init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0    # "root":Lorg/json/JSONObject;
    .end local v1    # "target":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 3
    .param p1, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 170
    # getter for: Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;->this$0:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->access$2(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V

    .line 172
    return-void
.end method
