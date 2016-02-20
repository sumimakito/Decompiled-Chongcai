.class Lcom/sina/weibo/sdk/component/view/AttentionComponentView$3;
.super Ljava/lang/Object;
.source "AttentionComponentView.java"

# interfaces
.implements Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->execAttented()V
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
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$3;->this$0:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebViewResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {p1}, Lcom/sina/weibo/sdk/utils/Utility;->parseUri(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 206
    .local v2, "b":Landroid/os/Bundle;
    const-string v4, "result"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 209
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    .line 210
    .local v0, "attented":J
    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 211
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$3;->this$0:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    const/4 v5, 0x1

    # invokes: Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->showFollowButton(Z)V
    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->access$3(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V

    .line 218
    .end local v0    # "attented":J
    :cond_0
    :goto_0
    return-void

    .line 212
    .restart local v0    # "attented":J
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 213
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$3;->this$0:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    const/4 v5, 0x0

    # invokes: Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->showFollowButton(Z)V
    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->access$3(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    .end local v0    # "attented":J
    :catch_0
    move-exception v4

    goto :goto_0
.end method
