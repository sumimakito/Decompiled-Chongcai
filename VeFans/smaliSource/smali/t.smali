.class public final Lt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/Mp4VideoView;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V
    .locals 0

    iput-object p1, p0, Lt;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    iget-object v0, p0, Lt;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->a(Lcn/apppark/mcd/widget/Mp4VideoView;I)I

    iget-object v0, p0, Lt;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->b(Lcn/apppark/mcd/widget/Mp4VideoView;I)I

    iget-object v0, p0, Lt;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->a(Lcn/apppark/mcd/widget/Mp4VideoView;)Lcn/apppark/mcd/widget/MySizeChangeLinstener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->a(Lcn/apppark/mcd/widget/Mp4VideoView;)Lcn/apppark/mcd/widget/MySizeChangeLinstener;

    move-result-object v0

    invoke-interface {v0}, Lcn/apppark/mcd/widget/MySizeChangeLinstener;->doMyThings()V

    :cond_0
    iget-object v0, p0, Lt;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->b(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->c(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lt;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->b(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v1

    iget-object v2, p0, Lt;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v2}, Lcn/apppark/mcd/widget/Mp4VideoView;->c(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_1
    return-void
.end method
