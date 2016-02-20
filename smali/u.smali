.class public final Lu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/Mp4VideoView;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V
    .locals 0

    iput-object p1, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0, v2}, Lcn/apppark/mcd/widget/Mp4VideoView;->a(Lcn/apppark/mcd/widget/Mp4VideoView;Z)Z

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->d(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->d(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->e(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_0
    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->f(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->f(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->a(Lcn/apppark/mcd/widget/Mp4VideoView;I)I

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->b(Lcn/apppark/mcd/widget/Mp4VideoView;I)I

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->b(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->c(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->b(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v1

    iget-object v2, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v2}, Lcn/apppark/mcd/widget/Mp4VideoView;->c(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->g(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v0

    iget-object v1, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->b(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->h(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v0

    iget-object v1, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->c(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->i(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->e(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->i(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0, v3}, Lcn/apppark/mcd/widget/Mp4VideoView;->c(Lcn/apppark/mcd/widget/Mp4VideoView;I)I

    :cond_2
    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->j(Lcn/apppark/mcd/widget/Mp4VideoView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->e(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0, v3}, Lcn/apppark/mcd/widget/Mp4VideoView;->b(Lcn/apppark/mcd/widget/Mp4VideoView;Z)Z

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->f(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->f(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->i(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_3

    :cond_5
    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->f(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->f(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->i(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->e(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->i(Lcn/apppark/mcd/widget/Mp4VideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0, v3}, Lcn/apppark/mcd/widget/Mp4VideoView;->c(Lcn/apppark/mcd/widget/Mp4VideoView;I)I

    :cond_7
    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->j(Lcn/apppark/mcd/widget/Mp4VideoView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->e(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lu;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0, v3}, Lcn/apppark/mcd/widget/Mp4VideoView;->b(Lcn/apppark/mcd/widget/Mp4VideoView;Z)Z

    goto :goto_0
.end method
