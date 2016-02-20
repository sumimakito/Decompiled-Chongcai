.class Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->a(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->b(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->a(Lcn/apppark/vertify/activity/free/self/SelfMp3View;Z)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->c(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->d(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_audioFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->d(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_audioFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->playUrl(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->a(Lcn/apppark/vertify/activity/free/self/SelfMp3View;Z)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->d(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_audioFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->generateFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->playUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->e(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->pause()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMp3View$1;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->play()V

    goto :goto_1
.end method
