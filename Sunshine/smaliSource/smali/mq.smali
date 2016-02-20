.class public final Lmq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)V
    .locals 0

    iput-object p1, p0, Lmq;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmq;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->e(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lmq;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-static {v0, v2}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->b(Lcn/apppark/vertify/activity/free/self/SelfMp3View;Z)Z

    iget-object v0, p0, Lmq;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->a(Lcn/apppark/vertify/activity/free/self/SelfMp3View;Z)Z

    iget-object v0, p0, Lmq;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->d(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_startPic()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmq;->a:Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;->f(Lcn/apppark/vertify/activity/free/self/SelfMp3View;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    return v2
.end method
