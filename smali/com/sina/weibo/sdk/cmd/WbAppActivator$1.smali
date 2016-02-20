.class Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;
.super Ljava/lang/Object;
.source "WbAppActivator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/cmd/WbAppActivator;->activateApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

.field private final synthetic val$sdkSp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/cmd/WbAppActivator;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    iput-object p2, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->val$sdkSp:Landroid/content/SharedPreferences;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 74
    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mLock.isLocked()--->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v7}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$1(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v5, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v5}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$1(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v5

    if-nez v5, :cond_0

    .line 99
    :goto_0
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 80
    .local v0, "cmds":Lcom/sina/weibo/sdk/cmd/CmdInfo;
    :try_start_0
    iget-object v5, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$2(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mAppkey:Ljava/lang/String;
    invoke-static {v6}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$3(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->requestCmdInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 82
    invoke-static {v4}, Lcom/sina/weibo/sdk/utils/AesEncrypt;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "decryptStr":Ljava/lang/String;
    new-instance v1, Lcom/sina/weibo/sdk/cmd/CmdInfo;

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/cmd/CmdInfo;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v0    # "cmds":Lcom/sina/weibo/sdk/cmd/CmdInfo;
    .local v1, "cmds":Lcom/sina/weibo/sdk/cmd/CmdInfo;
    :try_start_1
    iget-object v5, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/cmd/CmdInfo;->getInstallCmds()Ljava/util/List;

    move-result-object v6

    # invokes: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->handleInstallCmd(Ljava/util/List;)V
    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$5(Lcom/sina/weibo/sdk/cmd/WbAppActivator;Ljava/util/List;)V

    .line 86
    iget-object v5, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/cmd/CmdInfo;->getInvokeCmds()Ljava/util/List;

    move-result-object v6

    # invokes: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->handleInvokeCmd(Ljava/util/List;)V
    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$6(Lcom/sina/weibo/sdk/cmd/WbAppActivator;Ljava/util/List;)V
    :try_end_1
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 92
    .end local v1    # "cmds":Lcom/sina/weibo/sdk/cmd/CmdInfo;
    .end local v2    # "decryptStr":Ljava/lang/String;
    .restart local v0    # "cmds":Lcom/sina/weibo/sdk/cmd/CmdInfo;
    :cond_1
    iget-object v5, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v5}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$1(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 93
    if-eqz v0, :cond_2

    .line 94
    iget-object v5, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$2(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->val$sdkSp:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/CmdInfo;->getFrequency()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Lcom/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper;->saveFrequency(Landroid/content/Context;Landroid/content/SharedPreferences;J)V

    .line 95
    iget-object v5, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$2(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->val$sdkSp:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper;->saveLastTime(Landroid/content/Context;Landroid/content/SharedPreferences;J)V

    .line 97
    :cond_2
    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "after unlock \n mLock.isLocked()--->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v7}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$1(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 89
    .local v3, "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    :goto_1
    :try_start_2
    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    iget-object v5, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v5}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$1(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 93
    if-eqz v0, :cond_3

    .line 94
    iget-object v5, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$2(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->val$sdkSp:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/CmdInfo;->getFrequency()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Lcom/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper;->saveFrequency(Landroid/content/Context;Landroid/content/SharedPreferences;J)V

    .line 95
    iget-object v5, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$2(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->val$sdkSp:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper;->saveLastTime(Landroid/content/Context;Landroid/content/SharedPreferences;J)V

    .line 97
    :cond_3
    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "after unlock \n mLock.isLocked()--->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v7}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$1(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    .end local v3    # "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    :catchall_0
    move-exception v5

    .line 92
    :goto_2
    iget-object v6, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$1(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 93
    if-eqz v0, :cond_4

    .line 94
    iget-object v6, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$2(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->val$sdkSp:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/CmdInfo;->getFrequency()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Lcom/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper;->saveFrequency(Landroid/content/Context;Landroid/content/SharedPreferences;J)V

    .line 95
    iget-object v6, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$2(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->val$sdkSp:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper;->saveLastTime(Landroid/content/Context;Landroid/content/SharedPreferences;J)V

    .line 97
    :cond_4
    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "after unlock \n mLock.isLocked()--->"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;->this$0:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    # getter for: Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v8}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->access$1(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sina/weibo/sdk/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    throw v5

    .line 91
    .end local v0    # "cmds":Lcom/sina/weibo/sdk/cmd/CmdInfo;
    .restart local v1    # "cmds":Lcom/sina/weibo/sdk/cmd/CmdInfo;
    .restart local v2    # "decryptStr":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "cmds":Lcom/sina/weibo/sdk/cmd/CmdInfo;
    .restart local v0    # "cmds":Lcom/sina/weibo/sdk/cmd/CmdInfo;
    goto :goto_2

    .line 88
    .end local v0    # "cmds":Lcom/sina/weibo/sdk/cmd/CmdInfo;
    .restart local v1    # "cmds":Lcom/sina/weibo/sdk/cmd/CmdInfo;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "cmds":Lcom/sina/weibo/sdk/cmd/CmdInfo;
    .restart local v0    # "cmds":Lcom/sina/weibo/sdk/cmd/CmdInfo;
    goto/16 :goto_1
.end method
