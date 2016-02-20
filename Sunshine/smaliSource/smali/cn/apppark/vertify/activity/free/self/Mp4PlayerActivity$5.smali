.class Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$5;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$5;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->e(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$5;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->d(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$5;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Lcn/apppark/mcd/widget/Mp4VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->start()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$5;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->c(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$5;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->f(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    :goto_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$5;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$5;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->d(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$5;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Lcn/apppark/mcd/widget/Mp4VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->pause()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity$5;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->c(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
