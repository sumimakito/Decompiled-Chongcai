.class public final Lai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)V
    .locals 0

    iput-object p1, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x2

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    iget-object v1, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v1}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->a(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return v5

    :pswitch_1
    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->b(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v1}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->a(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->c(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v0, v5}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->a(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;I)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v0, v3}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->a(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;I)I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {p2}, Lai;->a(Landroid/view/MotionEvent;)F

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->a(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;F)F

    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->d(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->b(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v1}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->a(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->e(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v1, v4

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v0, v6}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->a(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;I)I

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->f(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->a(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v1}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->b(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->a(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v2}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->c(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v3}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->c(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->f(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)I

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-static {p2}, Lai;->a(Landroid/view/MotionEvent;)F

    move-result v0

    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v1}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->a(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v2}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->b(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    iget-object v2, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v2}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->d(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)F

    move-result v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->b(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;F)F

    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->g(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_2

    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v0, v4}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->b(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;F)F

    :cond_2
    iget-object v0, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->a(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v1}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->g(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)F

    move-result v1

    iget-object v2, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v2}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->g(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)F

    move-result v2

    iget-object v3, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v3}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->e(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lai;->a:Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;

    invoke-static {v4}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->e(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
