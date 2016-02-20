.class Lcom/baidu/vi/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/baidu/vi/AudioFilePlayer;


# direct methods
.method constructor <init>(Lcom/baidu/vi/AudioFilePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/vi/c;->a:Lcom/baidu/vi/AudioFilePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/vi/c;->a:Lcom/baidu/vi/AudioFilePlayer;

    iget-object v1, p0, Lcom/baidu/vi/c;->a:Lcom/baidu/vi/AudioFilePlayer;

    invoke-static {v1}, Lcom/baidu/vi/AudioFilePlayer;->a(Lcom/baidu/vi/AudioFilePlayer;)I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/baidu/vi/AudioFilePlayer;->a(Lcom/baidu/vi/AudioFilePlayer;II)Z

    move-result v0

    return v0
.end method
