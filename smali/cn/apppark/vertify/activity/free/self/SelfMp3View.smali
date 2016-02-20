.class public Lcn/apppark/vertify/activity/free/self/SelfMp3View;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcn/apppark/vertify/activity/ISelfView;


# instance fields
.field private context:Landroid/content/Context;

.field private img_paly:Landroid/widget/ImageView;

.field private isClickable:Z

.field private isPrepare:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfDefineItemVo;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->isPrepare:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->isClickable:Z

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->context:Landroid/content/Context;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->img_paly:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->img_paly:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->img_paly:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->init()V

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->isClickable:Z

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/self/SelfMp3View;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->isClickable:Z

    return p1
.end method

.method static synthetic b(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->isPrepare:Z

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/self/SelfMp3View;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->isPrepare:Z

    return v0
.end method

.method static synthetic c(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->initPlayer()V

    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->img_paly:Landroid/widget/ImageView;

    return-object v0
.end method

.method private initPlayer()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Llt;

    invoke-direct {v1, p0}, Llt;-><init>(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_startPic()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->img_paly:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->img_paly:Landroid/widget/ImageView;

    new-instance v1, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;-><init>(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->isPrepare:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->pause()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->stop()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->pause()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->isPrepare:Z

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_startPic()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->img_paly:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_pausePic()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->img_paly:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public playUrl(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u5730\u5740\u4e3a\u7a7a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_pausePic()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->img_paly:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method
