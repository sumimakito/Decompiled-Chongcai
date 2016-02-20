.class public final Lme;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lme;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lme;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->i(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lme;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v2, v1}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->a(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;I)V

    :goto_0
    iget-object v2, p0, Lme;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    iget-object v3, p0, Lme;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v3}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->i(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->c(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;Z)Z

    iget-object v0, p0, Lme;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->j(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->k(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    :cond_1
    return v1

    :cond_2
    iget-object v2, p0, Lme;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->a(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;I)V

    goto :goto_0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lme;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->j(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lme;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->k(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    iget-object v0, p0, Lme;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->f(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lme;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->e(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    iget-object v0, p0, Lme;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->l(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)V

    goto :goto_0
.end method
