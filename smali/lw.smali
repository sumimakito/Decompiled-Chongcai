.class public final Llw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/SelfWebView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/self/SelfWebView;)V
    .locals 0

    iput-object p1, p0, Llw;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Llw;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->d(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_1
    return v2

    :pswitch_1
    iget-object v0, p0, Llw;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->c:F

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Llw;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    iget v1, v1, Lcn/apppark/vertify/activity/free/self/SelfWebView;->c:F

    sub-float/2addr v0, v1

    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    iget-object v0, p0, Llw;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->b(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Llw;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->c(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getStyle_showNavFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llw;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->b(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Llw;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->b(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Llw;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    iget-object v1, v1, Lcn/apppark/vertify/activity/free/self/SelfWebView;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget-object v0, p0, Llw;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->b(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Llw;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->c(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getStyle_showNavFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llw;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->b(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Llw;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->b(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Llw;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    iget-object v1, v1, Lcn/apppark/vertify/activity/free/self/SelfWebView;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Llw;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->d(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
