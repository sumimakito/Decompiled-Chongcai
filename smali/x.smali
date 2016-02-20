.class public final Lx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/Mp4VideoView;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/Mp4VideoView;)V
    .locals 0

    iput-object p1, p0, Lx;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iget-object v0, p0, Lx;->a:Lcn/apppark/mcd/widget/Mp4VideoView;

    invoke-static {v0, p2}, Lcn/apppark/mcd/widget/Mp4VideoView;->d(Lcn/apppark/mcd/widget/Mp4VideoView;I)I

    return-void
.end method
