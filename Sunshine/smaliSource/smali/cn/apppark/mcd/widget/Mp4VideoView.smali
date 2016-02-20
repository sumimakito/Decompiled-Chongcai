.class public Lcn/apppark/mcd/widget/Mp4VideoView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field private TAG:Ljava/lang/String;

.field a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field b:Landroid/media/MediaPlayer$OnPreparedListener;

.field c:Landroid/view/SurfaceHolder$Callback;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mIsPrepared:Z

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMyChangeLinstener:Lcn/apppark/mcd/widget/MySizeChangeLinstener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mSeekWhenPrepared:I

.field private mStartWhenPrepared:Z

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const-string v0, "VideoView"

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Ls;

    invoke-direct {v0, p0}, Ls;-><init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lt;

    invoke-direct {v0, p0}, Lt;-><init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lu;

    invoke-direct {v0, p0}, Lu;-><init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lv;

    invoke-direct {v0, p0}, Lv;-><init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lw;

    invoke-direct {v0, p0}, Lw;-><init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lx;

    invoke-direct {v0, p0}, Lx;-><init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->c:Landroid/view/SurfaceHolder$Callback;

    iput-object p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->initVideoView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/apppark/mcd/widget/Mp4VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->initVideoView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "VideoView"

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Ls;

    invoke-direct {v0, p0}, Ls;-><init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lt;

    invoke-direct {v0, p0}, Lt;-><init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lu;

    invoke-direct {v0, p0}, Lu;-><init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lv;

    invoke-direct {v0, p0}, Lv;-><init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lw;

    invoke-direct {v0, p0}, Lw;-><init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lx;

    invoke-direct {v0, p0}, Lx;-><init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->c:Landroid/view/SurfaceHolder$Callback;

    iput-object p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->initVideoView()V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/Mp4VideoView;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mVideoWidth:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/Mp4VideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/Mp4VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/Mp4VideoView;)Lcn/apppark/mcd/widget/MySizeChangeLinstener;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMyChangeLinstener:Lcn/apppark/mcd/widget/MySizeChangeLinstener;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/Mp4VideoView;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mIsPrepared:Z

    return v0
.end method

.method private attachMediaController()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    iget-boolean v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mIsPrepared:Z

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static synthetic b(Lcn/apppark/mcd/widget/Mp4VideoView;)I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mVideoWidth:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/mcd/widget/Mp4VideoView;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mVideoHeight:I

    return p1
.end method

.method public static synthetic b(Lcn/apppark/mcd/widget/Mp4VideoView;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mStartWhenPrepared:Z

    return v0
.end method

.method public static synthetic c(Lcn/apppark/mcd/widget/Mp4VideoView;)I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mVideoHeight:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/mcd/widget/Mp4VideoView;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method public static synthetic d(Lcn/apppark/mcd/widget/Mp4VideoView;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method public static synthetic d(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/mcd/widget/Mp4VideoView;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mSurfaceWidth:I

    return p1
.end method

.method public static synthetic e(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/mcd/widget/Mp4VideoView;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mSurfaceHeight:I

    return p1
.end method

.method public static synthetic f(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/widget/MediaController;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/mcd/widget/Mp4VideoView;)I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mSurfaceWidth:I

    return v0
.end method

.method public static synthetic h(Lcn/apppark/mcd/widget/Mp4VideoView;)I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mSurfaceHeight:I

    return v0
.end method

.method public static synthetic i(Lcn/apppark/mcd/widget/Mp4VideoView;)I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method private initVideoView()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mVideoWidth:I

    iput v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mVideoHeight:I

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->c:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/Mp4VideoView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/Mp4VideoView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->requestFocus()Z

    return-void
.end method

.method public static synthetic j(Lcn/apppark/mcd/widget/Mp4VideoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mStartWhenPrepared:Z

    return v0
.end method

.method public static synthetic k(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/mcd/widget/Mp4VideoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mIsPrepared:Z

    return v0
.end method

.method public static synthetic n(Lcn/apppark/mcd/widget/Mp4VideoView;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->openVideo()V

    return-void
.end method

.method private openVideo()V
    .locals 3

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_2
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mIsPrepared:Z

    const/4 v0, -0x1

    iput v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mDuration:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mCurrentBufferPercentage:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    invoke-direct {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mCurrentBufferPercentage:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mDuration:I

    if-lez v0, :cond_0

    iget v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mDuration:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mDuration:I

    iget v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mDuration:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mDuration:I

    iget v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mDuration:I

    goto :goto_0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mVideoWidth:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_3

    const/16 v0, 0x52

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_3

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->pause()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->start()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x56

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->pause()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcn/apppark/mcd/widget/Mp4VideoView;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mVideoHeight:I

    invoke-static {v1, p2}, Lcn/apppark/mcd/widget/Mp4VideoView;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mStartWhenPrepared:Z

    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return p1

    :sswitch_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :sswitch_2
    move p1, v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iput-object p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->attachMediaController()V

    return-void
.end method

.method public setMySizeChangeLinstener(Lcn/apppark/mcd/widget/MySizeChangeLinstener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMyChangeLinstener:Lcn/apppark/mcd/widget/MySizeChangeLinstener;

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoScale(II)V
    .locals 1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mUri:Landroid/net/Uri;

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mStartWhenPrepared:Z

    iput v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mSeekWhenPrepared:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->openVideo()V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->requestLayout()V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/Mp4VideoView;->invalidate()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mStartWhenPrepared:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mStartWhenPrepared:Z

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/mcd/widget/Mp4VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method
