.class Lcom/baidu/vi/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field final synthetic a:Lcom/baidu/vi/AudioFilePlayer;


# direct methods
.method constructor <init>(Lcom/baidu/vi/AudioFilePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/vi/a;->a:Lcom/baidu/vi/AudioFilePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
