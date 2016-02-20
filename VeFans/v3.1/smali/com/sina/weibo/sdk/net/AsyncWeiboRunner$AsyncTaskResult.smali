.class Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncWeiboRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private error:Lcom/sina/weibo/sdk/exception/WeiboException;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 0
    .param p1, "error"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 175
    .local p0, "this":Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;, "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;->error:Lcom/sina/weibo/sdk/exception/WeiboException;

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;, "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;->result:Ljava/lang/Object;

    .line 172
    return-void
.end method


# virtual methods
.method public getError()Lcom/sina/weibo/sdk/exception/WeiboException;
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;, "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult<TT;>;"
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;->error:Lcom/sina/weibo/sdk/exception/WeiboException;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;, "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult<TT;>;"
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;->result:Ljava/lang/Object;

    return-object v0
.end method
