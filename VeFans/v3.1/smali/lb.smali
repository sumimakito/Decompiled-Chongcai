.class public final Llb;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Llb;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Llb;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Lcn/apppark/mcd/widget/Mp4VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Llb;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->h(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Llb;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->g(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Llb;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Lcn/apppark/mcd/widget/Mp4VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->getBufferPercentage()I

    move-result v1

    iget-object v2, p0, Llb;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->h(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Llb;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v3}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->h(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    :goto_1
    div-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v1, v0, 0x3c

    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    iget-object v3, p0, Llb;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v3}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->o(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%02d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v6, v0, v1}, Llb;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Llb;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->h(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Llb;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->l(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
