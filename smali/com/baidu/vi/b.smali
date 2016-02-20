.class Lcom/baidu/vi/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/baidu/vi/AudioFilePlayer;


# direct methods
.method constructor <init>(Lcom/baidu/vi/AudioFilePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/vi/b;->a:Lcom/baidu/vi/AudioFilePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/vi/b;->a:Lcom/baidu/vi/AudioFilePlayer;

    iget-object v1, p0, Lcom/baidu/vi/b;->a:Lcom/baidu/vi/AudioFilePlayer;

    invoke-static {v1}, Lcom/baidu/vi/AudioFilePlayer;->a(Lcom/baidu/vi/AudioFilePlayer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/vi/AudioFilePlayer;->a(Lcom/baidu/vi/AudioFilePlayer;I)V

    return-void
.end method
