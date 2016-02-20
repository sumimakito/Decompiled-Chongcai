.class public final Lmg;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/Self720View;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/self/Self720View;)V
    .locals 0

    iput-object p1, p0, Lmg;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lmg;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/self/Self720View;->a(Lcn/apppark/vertify/activity/free/self/Self720View;Z)Z

    :goto_0
    iget-object v0, p0, Lmg;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Self720View;->d(Lcn/apppark/vertify/activity/free/self/Self720View;)J

    move-result-wide v0

    iget-object v2, p0, Lmg;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/self/Self720View;->e(Lcn/apppark/vertify/activity/free/self/Self720View;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lmg;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-static {v3}, Lcn/apppark/vertify/activity/free/self/Self720View;->e(Lcn/apppark/vertify/activity/free/self/Self720View;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float v0, v1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lmg;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/Self720View;->f(Lcn/apppark/vertify/activity/free/self/Self720View;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    iget-object v1, p0, Lmg;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/Self720View;->g(Lcn/apppark/vertify/activity/free/self/Self720View;)F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lmg;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/self/Self720View;->h(Lcn/apppark/vertify/activity/free/self/Self720View;)F

    move-result v2

    mul-float/2addr v0, v2

    iget-object v2, p0, Lmg;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    iget-object v2, v2, Lcn/apppark/vertify/activity/free/self/Self720View;->a:Landroid/os/Handler;

    new-instance v3, Lmh;

    invoke-direct {v3, p0, v1, v0}, Lmh;-><init>(Lmg;FF)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmg;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/self/Self720View;->a(Lcn/apppark/vertify/activity/free/self/Self720View;Z)Z

    return-void
.end method
