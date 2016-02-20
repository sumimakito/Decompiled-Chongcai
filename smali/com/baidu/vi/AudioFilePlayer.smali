.class public Lcom/baidu/vi/AudioFilePlayer;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    return-void
.end method

.method private GetCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private GetDuration()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private static GetMaxVolume(Landroid/media/AudioManager;)I
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method private static GetVolume()F
    .locals 2

    invoke-static {}, Lcom/baidu/vi/h;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-static {v0}, Lcom/baidu/vi/AudioFilePlayer;->GetMaxVolume(Landroid/media/AudioManager;)I

    move-result v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method private IsPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method private Pause()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method private Prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    return-void
.end method

.method private Release()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method private Reset()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method private SeekTo(I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/baidu/vi/a;

    invoke-direct {v1, p0}, Lcom/baidu/vi/a;-><init>(Lcom/baidu/vi/AudioFilePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    invoke-direct {p0}, Lcom/baidu/vi/AudioFilePlayer;->GetDuration()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method private SetDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/vi/AudioFilePlayer;->Prepare()V

    return-void
.end method

.method private SetOnErrorListener(I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/baidu/vi/c;

    invoke-direct {v1, p0}, Lcom/baidu/vi/c;-><init>(Lcom/baidu/vi/AudioFilePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iput p1, p0, Lcom/baidu/vi/AudioFilePlayer;->b:I

    return-void
.end method

.method private SetOnPlayCompletedListener(I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/baidu/vi/b;

    invoke-direct {v1, p0}, Lcom/baidu/vi/b;-><init>(Lcom/baidu/vi/AudioFilePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iput p1, p0, Lcom/baidu/vi/AudioFilePlayer;->b:I

    return-void
.end method

.method private static SetVolume(F)V
    .locals 4

    invoke-static {}, Lcom/baidu/vi/h;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/baidu/vi/AudioFilePlayer;->GetMaxVolume(Landroid/media/AudioManager;)I

    move-result v1

    const/4 v2, 0x0

    cmpg-float v2, p0, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p0, v2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x3

    int-to-float v1, v1

    mul-float/2addr v1, p0

    float-to-int v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private Start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method private Stop()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/AudioFilePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/vi/AudioFilePlayer;)I
    .locals 1

    iget v0, p0, Lcom/baidu/vi/AudioFilePlayer;->b:I

    return v0
.end method

.method static synthetic a(Lcom/baidu/vi/AudioFilePlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/vi/AudioFilePlayer;->onPlayCompleted(I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/vi/AudioFilePlayer;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/baidu/vi/AudioFilePlayer;->onErrorOccured(II)Z

    move-result v0

    return v0
.end method

.method private native onErrorOccured(II)Z
.end method

.method private native onPlayCompleted(I)V
.end method
