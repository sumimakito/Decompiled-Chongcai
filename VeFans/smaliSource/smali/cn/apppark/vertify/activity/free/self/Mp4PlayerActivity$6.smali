.class Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$6;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$6;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->g(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$6;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->h(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$6;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    iget v1, v1, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$6;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->h(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$6;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->h(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$6;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Lcn/apppark/mcd/widget/Mp4VideoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->seekTo(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$6;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->h(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$6;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    iget v1, v1, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->a:I

    add-int/2addr v0, v1

    goto :goto_0
.end method
