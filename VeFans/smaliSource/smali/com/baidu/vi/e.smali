.class Lcom/baidu/vi/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/vi/AudioRecorder;


# direct methods
.method constructor <init>(Lcom/baidu/vi/AudioRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/vi/e;->a:Lcom/baidu/vi/AudioRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, -0x3

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/baidu/vi/e;->a:Lcom/baidu/vi/AudioRecorder;

    invoke-static {v0}, Lcom/baidu/vi/AudioRecorder;->b(Lcom/baidu/vi/AudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/baidu/vi/e;->a:Lcom/baidu/vi/AudioRecorder;

    invoke-static {v2}, Lcom/baidu/vi/AudioRecorder;->a(Lcom/baidu/vi/AudioRecorder;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/baidu/vi/e;->a:Lcom/baidu/vi/AudioRecorder;

    invoke-static {v2}, Lcom/baidu/vi/AudioRecorder;->c(Lcom/baidu/vi/AudioRecorder;)I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lcom/baidu/vi/e;->a:Lcom/baidu/vi/AudioRecorder;

    invoke-static {v3}, Lcom/baidu/vi/AudioRecorder;->b(Lcom/baidu/vi/AudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/baidu/vi/e;->a:Lcom/baidu/vi/AudioRecorder;

    invoke-static {v0}, Lcom/baidu/vi/AudioRecorder;->b(Lcom/baidu/vi/AudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/vi/e;->a:Lcom/baidu/vi/AudioRecorder;

    invoke-static {v3}, Lcom/baidu/vi/AudioRecorder;->c(Lcom/baidu/vi/AudioRecorder;)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    :cond_0
    if-eq v0, v4, :cond_1

    const/4 v3, -0x2

    if-eq v0, v3, :cond_1

    if-ne v0, v4, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/baidu/vi/e;->a:Lcom/baidu/vi/AudioRecorder;

    invoke-static {v2}, Lcom/baidu/vi/AudioRecorder;->d(Lcom/baidu/vi/AudioRecorder;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/baidu/vi/e;->a:Lcom/baidu/vi/AudioRecorder;

    invoke-static {v3, v2, v0}, Lcom/baidu/vi/AudioRecorder;->a(Lcom/baidu/vi/AudioRecorder;[BI)V

    goto :goto_0

    :cond_3
    return-void
.end method
