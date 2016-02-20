.class public final Llc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Llc;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Llc;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Lcn/apppark/mcd/widget/Mp4VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->stopPlayback()V

    iget-object v0, p0, Llc;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0, v3}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->a(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;Z)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Llc;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5bf9\u4e0d\u8d77"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u60a8\u6240\u64ad\u7684\u89c6\u9891\u683c\u5f0f\u4e0d\u6b63\u786e\uff0c\u64ad\u653e\u5df2\u505c\u6b62\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u77e5\u9053\u4e86"

    new-instance v2, Lld;

    invoke-direct {v2, p0}, Lld;-><init>(Llc;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v3
.end method
