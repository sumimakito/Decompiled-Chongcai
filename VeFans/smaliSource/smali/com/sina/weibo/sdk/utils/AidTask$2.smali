.class Lcom/sina/weibo/sdk/utils/AidTask$2;
.super Ljava/lang/Object;
.source "AidTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/utils/AidTask;->initAidInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sina/weibo/sdk/utils/AidTask;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/utils/AidTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 192
    iget-object v4, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    # getter for: Lcom/sina/weibo/sdk/utils/AidTask;->mTaskLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v4}, Lcom/sina/weibo/sdk/utils/AidTask;->access$1(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v4

    if-nez v4, :cond_0

    .line 193
    const-string v4, "AidTask"

    const-string v5, "tryLock : false, return"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    .line 197
    .local v0, "aidInfo":Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    iget-object v4, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    # invokes: Lcom/sina/weibo/sdk/utils/AidTask;->loadAidInfoFromCache()Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    invoke-static {v4}, Lcom/sina/weibo/sdk/utils/AidTask;->access$2(Lcom/sina/weibo/sdk/utils/AidTask;)Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    move-result-object v0

    .line 198
    if-nez v0, :cond_2

    .line 199
    const/4 v3, 0x1

    .line 201
    .local v3, "retry":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 203
    :try_start_0
    iget-object v4, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    # invokes: Lcom/sina/weibo/sdk/utils/AidTask;->loadAidFromNet()Ljava/lang/String;
    invoke-static {v4}, Lcom/sina/weibo/sdk/utils/AidTask;->access$3(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "response":Ljava/lang/String;
    invoke-static {v2}, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->parseJson(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    move-result-object v0

    .line 205
    iget-object v4, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    # invokes: Lcom/sina/weibo/sdk/utils/AidTask;->cacheAidInfo(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/sina/weibo/sdk/utils/AidTask;->access$4(Lcom/sina/weibo/sdk/utils/AidTask;Ljava/lang/String;)V

    .line 206
    iget-object v4, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v4, v0}, Lcom/sina/weibo/sdk/utils/AidTask;->access$5(Lcom/sina/weibo/sdk/utils/AidTask;Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v2    # "response":Ljava/lang/String;
    .end local v3    # "retry":I
    :goto_1
    iget-object v4, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    # getter for: Lcom/sina/weibo/sdk/utils/AidTask;->mTaskLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v4}, Lcom/sina/weibo/sdk/utils/AidTask;->access$1(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 208
    .restart local v3    # "retry":I
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    const-string v4, "AidTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AidTaskInit WeiboException Msg : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v4, 0x3

    .line 200
    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 213
    .end local v1    # "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    .end local v3    # "retry":I
    :cond_2
    iget-object v4, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v4, v0}, Lcom/sina/weibo/sdk/utils/AidTask;->access$5(Lcom/sina/weibo/sdk/utils/AidTask;Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;)V

    goto :goto_1
.end method
