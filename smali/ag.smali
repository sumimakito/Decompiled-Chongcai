.class public final Lag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/MyFloatView;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/MyFloatView;)V
    .locals 0

    iput-object p1, p0, Lag;->a:Lcn/apppark/mcd/widget/MyFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lag;->a:Lcn/apppark/mcd/widget/MyFloatView;

    invoke-static {v0, v3}, Lcn/apppark/mcd/widget/MyFloatView;->a(Lcn/apppark/mcd/widget/MyFloatView;F)F

    iget-object v0, p0, Lag;->a:Lcn/apppark/mcd/widget/MyFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    const/high16 v2, 0x41c80000    # 25.0f

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/MyFloatView;->b(Lcn/apppark/mcd/widget/MyFloatView;F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    iget-object v0, p0, Lag;->a:Lcn/apppark/mcd/widget/MyFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/MyFloatView;->c(Lcn/apppark/mcd/widget/MyFloatView;F)F

    iget-object v0, p0, Lag;->a:Lcn/apppark/mcd/widget/MyFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/MyFloatView;->d(Lcn/apppark/mcd/widget/MyFloatView;F)F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lag;->a:Lcn/apppark/mcd/widget/MyFloatView;

    iget-boolean v0, v0, Lcn/apppark/mcd/widget/MyFloatView;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lag;->a:Lcn/apppark/mcd/widget/MyFloatView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/MyFloatView;->b(Lcn/apppark/mcd/widget/MyFloatView;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lag;->a:Lcn/apppark/mcd/widget/MyFloatView;

    iget-object v1, p0, Lag;->a:Lcn/apppark/mcd/widget/MyFloatView;

    invoke-static {v1, v3}, Lcn/apppark/mcd/widget/MyFloatView;->d(Lcn/apppark/mcd/widget/MyFloatView;F)F

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/MyFloatView;->c(Lcn/apppark/mcd/widget/MyFloatView;F)F

    iget-object v0, p0, Lag;->a:Lcn/apppark/mcd/widget/MyFloatView;

    iget-boolean v0, v0, Lcn/apppark/mcd/widget/MyFloatView;->c:Z

    if-nez v0, :cond_1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const-class v3, Lcn/apppark/vertify/activity/soft/Soft;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const v1, 0x7f040005

    invoke-virtual {v0, v1, v4}, Lcn/apppark/ckj10185912/Main;->overridePendingTransition(II)V

    :goto_1
    iget-object v0, p0, Lag;->a:Lcn/apppark/mcd/widget/MyFloatView;

    iput-boolean v4, v0, Lcn/apppark/mcd/widget/MyFloatView;->c:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lag;->a:Lcn/apppark/mcd/widget/MyFloatView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/MyFloatView;->a(Lcn/apppark/mcd/widget/MyFloatView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lag;->a:Lcn/apppark/mcd/widget/MyFloatView;

    iget-object v1, v1, Lcn/apppark/mcd/widget/MyFloatView;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
