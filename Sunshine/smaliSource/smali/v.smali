.class public final Lv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/Mp4VideoView;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V
    .locals 0

    iput-object p1, p0, Lv;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lv;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->f(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->f(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Lv;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->l(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->l(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lv;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v1}, Lcn/apppark/mcd/widget/Mp4VideoView;->e(Lcn/apppark/mcd/widget/Mp4VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    return v2
.end method
