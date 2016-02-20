.class public final Ly;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/Mp4VideoView;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V
    .locals 0

    iput-object p1, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0, p3}, Lcn/apppark/mcd/widget/Mp4VideoView;->e(Lcn/apppark/mcd/widget/Mp4VideoView;I)I

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0, p4}, Lcn/apppark/mcd/widget/Mp4VideoView;->f(Lcn/apppark/mcd/widget/Mp4VideoView;I)I

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->e(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->m(Lcn/apppark/mcd/widget/Mp4VideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->b(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v0

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->c(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v0

    if-ne v0, p4, :cond_1

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->i(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->e(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->i(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->c(Lcn/apppark/mcd/widget/Mp4VideoView;I)I

    :cond_0
    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->e(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->f(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->f(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_1
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0, p1}, Lcn/apppark/mcd/widget/Mp4VideoView;->a(Lcn/apppark/mcd/widget/Mp4VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->n(Lcn/apppark/mcd/widget/Mp4VideoView;)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->a(Lcn/apppark/mcd/widget/Mp4VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->f(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->f(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->e(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->e(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->e(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->a(Lcn/apppark/mcd/widget/Mp4VideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method
