.class final Lcom/baidu/vi/d;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/vi/AudioRecorder$a;

    iget-object v1, v0, Lcom/baidu/vi/AudioRecorder$a;->a:Lcom/baidu/vi/AudioRecorder;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {v1}, Lcom/baidu/vi/AudioRecorder;->a(Lcom/baidu/vi/AudioRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/vi/AudioRecorder$a;

    iget-object v2, v0, Lcom/baidu/vi/AudioRecorder$a;->b:[B

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/vi/AudioRecorder$a;

    iget v0, v0, Lcom/baidu/vi/AudioRecorder$a;->c:I

    invoke-virtual {v1, v2, v0}, Lcom/baidu/vi/AudioRecorder;->onReadData([BI)V

    goto :goto_0

    :pswitch_1
    invoke-static {v1}, Lcom/baidu/vi/AudioRecorder;->a(Lcom/baidu/vi/AudioRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/baidu/vi/AudioRecorder;->onReadError()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
