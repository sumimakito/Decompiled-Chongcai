.class public final Llg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Llg;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Llg;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->g(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llg;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Lcn/apppark/mcd/widget/Mp4VideoView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/apppark/mcd/widget/Mp4VideoView;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Llg;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v0, p0, Llg;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1ad4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
