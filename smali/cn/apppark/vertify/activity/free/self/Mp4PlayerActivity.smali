.class public Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;
.super Landroid/app/Activity;


# static fields
.field private static final HIDE_CONTROLER:I = 0x1

.field private static final PROGRESS_CHANGED:I = 0x0

.field private static final SCREEN_DEFAULT:I = 0x1

.field private static final SCREEN_FULL:I = 0x0

.field private static final TIME:I = 0x1ad4

.field private static controlHeight:I

.field private static screenHeight:I

.field private static screenWidth:I


# instance fields
.field a:I

.field public b:Landroid/os/Handler;

.field private bn3:Landroid/widget/ImageButton;

.field private btn_back:Landroid/widget/ImageButton;

.field private btn_forward:Landroid/widget/ImageButton;

.field private controlView:Landroid/view/View;

.field private controler:Landroid/widget/PopupWindow;

.field private durationTextView:Landroid/widget/TextView;

.field private isChangedVideo:Z

.field private isControllerShow:Z

.field private isFullScreen:Z

.field private isOnline:Z

.field private isPaused:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private playedTextView:Landroid/widget/TextView;

.field private playedTime:I

.field private pro:Landroid/widget/ProgressBar;

.field private seekBar:Landroid/widget/SeekBar;

.field private url:Ljava/lang/String;

.field private videoView:Lcn/apppark/mcd/widget/Mp4VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->screenWidth:I

    sput v0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->screenHeight:I

    sput v0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controlHeight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->url:Ljava/lang/String;

    iput-boolean v2, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isOnline:Z

    iput-boolean v2, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isChangedVideo:Z

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->durationTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->playedTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->bn3:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->btn_back:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->btn_forward:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controlView:Landroid/view/View;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controler:Landroid/widget/PopupWindow;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isControllerShow:Z

    iput-boolean v2, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isPaused:Z

    iput-boolean v2, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isFullScreen:Z

    const/16 v0, 0x7d0

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->a:I

    new-instance v0, Llb;

    invoke-direct {v0, p0}, Llb;-><init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a()I
    .locals 1

    sget v0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->screenWidth:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controler:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->setVideoScale(I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isOnline:Z

    return v0
.end method

.method public static synthetic b()I
    .locals 1

    sget v0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controlHeight:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Lcn/apppark/mcd/widget/Mp4VideoView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isPaused:Z

    return p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->bn3:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isFullScreen:Z

    return p1
.end method

.method private cancelDelayHide()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isPaused:Z

    return v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V
    .locals 4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1ad4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isOnline:Z

    return v0
.end method

.method private getScreenSize()V
    .locals 2

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->screenHeight:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->screenWidth:I

    sget v0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->screenHeight:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controlHeight:I

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private hideController()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isControllerShow:Z

    :cond_0
    return-void
.end method

.method private hideControllerDelay()V
    .locals 4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1ad4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isFullScreen:Z

    return v0
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isControllerShow:Z

    return v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controler:Landroid/widget/PopupWindow;

    sget v1, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->screenWidth:I

    sget v2, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controlHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isControllerShow:Z

    return-void
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isControllerShow:Z

    :cond_0
    return-void
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->durationTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->pro:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic o(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->playedTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private setVideoScale(I)V
    .locals 7

    const/16 v6, 0x400

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    sget v1, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->screenWidth:I

    sget v2, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->screenHeight:I

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/Mp4VideoView;->setVideoScale(II)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->getVideoWidth()I

    move-result v2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->getVideoHeight()I

    move-result v3

    sget v1, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->screenWidth:I

    sget v0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->screenHeight:I

    add-int/lit8 v0, v0, -0x19

    if-lez v2, :cond_0

    if-lez v3, :cond_0

    mul-int v4, v2, v0

    mul-int v5, v1, v3

    if-le v4, v5, :cond_1

    mul-int v0, v1, v3

    div-int/2addr v0, v2

    :cond_0
    :goto_1
    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {v2, v1, v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->setVideoScale(II)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :cond_1
    mul-int v4, v2, v0

    mul-int v5, v1, v3

    if-ge v4, v5, :cond_0

    mul-int v1, v0, v2

    div-int/2addr v1, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showController()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controler:Landroid/widget/PopupWindow;

    sget v1, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->screenWidth:I

    sget v2, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controlHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isControllerShow:Z

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->getScreenSize()V

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isControllerShow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    iput-boolean v3, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isControllerShow:Z

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controler:Landroid/widget/PopupWindow;

    sget v1, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->screenWidth:I

    sget v2, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controlHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    iput-boolean v4, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isControllerShow:Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x1ad4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "videourl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->url:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lkz;

    invoke-direct {v1, p0}, Lkz;-><init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030057

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controlView:Landroid/view/View;

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controlView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controler:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f0a026c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->durationTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f0a026a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->playedTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0271

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->pro:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f0a026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->bn3:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f0a026d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->btn_back:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f0a026f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->btn_forward:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->btn_back:Landroid/widget/ImageButton;

    new-instance v1, Lcn/apppark/mcd/util/MyAlphaAnima;

    invoke-direct {v1}, Lcn/apppark/mcd/util/MyAlphaAnima;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->btn_forward:Landroid/widget/ImageButton;

    new-instance v1, Lcn/apppark/mcd/util/MyAlphaAnima;

    invoke-direct {v1}, Lcn/apppark/mcd/util/MyAlphaAnima;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a0270

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/Mp4VideoView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    new-instance v1, Llc;

    invoke-direct {v1, p0}, Llc;-><init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->stopPlayback()V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->setVideoURI(Landroid/net/Uri;)V

    iput-boolean v3, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isOnline:Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->bn3:Landroid/widget/ImageButton;

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    new-instance v1, Lle;

    invoke-direct {v1, p0}, Lle;-><init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->setMySizeChangeLinstener(Lcn/apppark/mcd/widget/MySizeChangeLinstener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    new-instance v1, Llf;

    invoke-direct {v1, p0}, Llf;-><init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->bn3:Landroid/widget/ImageButton;

    new-instance v1, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$5;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$5;-><init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->btn_forward:Landroid/widget/ImageButton;

    new-instance v1, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$6;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$6;-><init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->btn_back:Landroid/widget/ImageButton;

    new-instance v1, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$7;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$7;-><init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f0a026b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Llg;

    invoke-direct {v1, p0}, Llg;-><init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->getScreenSize()V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Llh;

    invoke-direct {v1, p0}, Llh;-><init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    new-instance v1, Lla;

    invoke-direct {v1, p0}, Lla;-><init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->setVideoPath(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isOnline:Z

    iput-boolean v3, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isChangedVideo:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->bn3:Landroid/widget/ImageButton;

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->stopPlayback()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->playedTime:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->pause()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->bn3:Landroid/widget/ImageButton;

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isChangedVideo:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    iget v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->playedTime:I

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->seekTo(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->start()V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->videoView:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->bn3:Landroid/widget/ImageButton;

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1ad4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->setRequestedOrientation(I)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    :cond_2
    iput-boolean v4, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->isChangedVideo:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    return v0
.end method
