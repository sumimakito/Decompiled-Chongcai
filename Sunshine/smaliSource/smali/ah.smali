.class public final Lah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/MyFloatViewMore;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/MyFloatViewMore;)V
    .locals 0

    iput-object p1, p0, Lah;->a:Lcn/apppark/mcd/widget/MyFloatViewMore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lah;->a:Lcn/apppark/mcd/widget/MyFloatViewMore;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/MyFloatViewMore;->a(Lcn/apppark/mcd/widget/MyFloatViewMore;F)F

    iget-object v0, p0, Lah;->a:Lcn/apppark/mcd/widget/MyFloatViewMore;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    const/high16 v2, 0x41c80000    # 25.0f

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/MyFloatViewMore;->b(Lcn/apppark/mcd/widget/MyFloatViewMore;F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget-object v0, p0, Lah;->a:Lcn/apppark/mcd/widget/MyFloatViewMore;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/MyFloatViewMore;->c(Lcn/apppark/mcd/widget/MyFloatViewMore;F)F

    iget-object v0, p0, Lah;->a:Lcn/apppark/mcd/widget/MyFloatViewMore;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/MyFloatViewMore;->d(Lcn/apppark/mcd/widget/MyFloatViewMore;F)F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lah;->a:Lcn/apppark/mcd/widget/MyFloatViewMore;

    iget-boolean v0, v0, Lcn/apppark/mcd/widget/MyFloatViewMore;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lah;->a:Lcn/apppark/mcd/widget/MyFloatViewMore;

    invoke-static {v0}, Lcn/apppark/mcd/widget/MyFloatViewMore;->b(Lcn/apppark/mcd/widget/MyFloatViewMore;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lah;->a:Lcn/apppark/mcd/widget/MyFloatViewMore;

    iget-object v1, p0, Lah;->a:Lcn/apppark/mcd/widget/MyFloatViewMore;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/apppark/mcd/widget/MyFloatViewMore;->d(Lcn/apppark/mcd/widget/MyFloatViewMore;F)F

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/MyFloatViewMore;->c(Lcn/apppark/mcd/widget/MyFloatViewMore;F)F

    iget-object v0, p0, Lah;->a:Lcn/apppark/mcd/widget/MyFloatViewMore;

    iget-boolean v0, v0, Lcn/apppark/mcd/widget/MyFloatViewMore;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lah;->a:Lcn/apppark/mcd/widget/MyFloatViewMore;

    invoke-static {v0}, Lcn/apppark/mcd/widget/MyFloatViewMore;->a(Lcn/apppark/mcd/widget/MyFloatViewMore;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lah;->a:Lcn/apppark/mcd/widget/MyFloatViewMore;

    iget-object v1, v1, Lcn/apppark/mcd/widget/MyFloatViewMore;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lah;->a:Lcn/apppark/mcd/widget/MyFloatViewMore;

    iput-boolean v3, v0, Lcn/apppark/mcd/widget/MyFloatViewMore;->c:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
