.class Lcom/sina/weibo/sdk/utils/AidTask$3;
.super Ljava/lang/Object;
.source "AidTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/utils/AidTask;->generateAid(Ljava/lang/String;Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sina/weibo/sdk/utils/AidTask;

.field private final synthetic val$callback:Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/utils/AidTask;Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    iput-object p2, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->val$callback:Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 266
    iget-object v5, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    # getter for: Lcom/sina/weibo/sdk/utils/AidTask;->mTaskLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v5}, Lcom/sina/weibo/sdk/utils/AidTask;->access$1(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "aidInfo":Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    iget-object v5, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    # invokes: Lcom/sina/weibo/sdk/utils/AidTask;->loadAidInfoFromCache()Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    invoke-static {v5}, Lcom/sina/weibo/sdk/utils/AidTask;->access$2(Lcom/sina/weibo/sdk/utils/AidTask;)Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    move-result-object v0

    .line 269
    const/4 v4, 0x0

    .line 270
    .local v4, "throwable":Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 272
    :try_start_0
    iget-object v5, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    # invokes: Lcom/sina/weibo/sdk/utils/AidTask;->loadAidFromNet()Ljava/lang/String;
    invoke-static {v5}, Lcom/sina/weibo/sdk/utils/AidTask;->access$3(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "response":Ljava/lang/String;
    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->parseJson(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    move-result-object v0

    .line 274
    iget-object v5, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    # invokes: Lcom/sina/weibo/sdk/utils/AidTask;->cacheAidInfo(Ljava/lang/String;)V
    invoke-static {v5, v3}, Lcom/sina/weibo/sdk/utils/AidTask;->access$4(Lcom/sina/weibo/sdk/utils/AidTask;Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v5, v0}, Lcom/sina/weibo/sdk/utils/AidTask;->access$5(Lcom/sina/weibo/sdk/utils/AidTask;Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v3    # "response":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    # getter for: Lcom/sina/weibo/sdk/utils/AidTask;->mTaskLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v5}, Lcom/sina/weibo/sdk/utils/AidTask;->access$1(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 283
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 284
    .local v2, "msg":Landroid/os/Message;
    if-eqz v0, :cond_1

    .line 285
    const/16 v5, 0x3e9

    iput v5, v2, Landroid/os/Message;->what:I

    .line 286
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 291
    :goto_1
    iget-object v5, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    # getter for: Lcom/sina/weibo/sdk/utils/AidTask;->mHandler:Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;
    invoke-static {v5}, Lcom/sina/weibo/sdk/utils/AidTask;->access$6(Lcom/sina/weibo/sdk/utils/AidTask;)Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->val$callback:Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;

    invoke-virtual {v5, v6}, Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;->setCallback(Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;)V

    .line 292
    iget-object v5, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    # getter for: Lcom/sina/weibo/sdk/utils/AidTask;->mHandler:Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;
    invoke-static {v5}, Lcom/sina/weibo/sdk/utils/AidTask;->access$6(Lcom/sina/weibo/sdk/utils/AidTask;)Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    return-void

    .line 276
    .end local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    move-object v4, v1

    .line 278
    const-string v5, "AidTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AidTaskInit WeiboException Msg : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    .end local v1    # "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_1
    const/16 v5, 0x3ea

    iput v5, v2, Landroid/os/Message;->what:I

    .line 289
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method
