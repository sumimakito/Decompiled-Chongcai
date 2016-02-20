.class public final Lao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/TCellLinearLayout;


# direct methods
.method private constructor <init>(Lcn/apppark/mcd/widget/TCellLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/mcd/widget/TCellLinearLayout;Lal;)V
    .locals 0

    invoke-direct {p0, p1}, Lao;-><init>(Lcn/apppark/mcd/widget/TCellLinearLayout;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcn/apppark/mcd/widget/TCellLinearLayout;->lastX:I

    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Lcn/apppark/mcd/widget/TCellLinearLayout;->lastPositionX:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-boolean v0, v0, Lcn/apppark/mcd/widget/TCellLinearLayout;->isMove:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget v1, v1, Lcn/apppark/mcd/widget/TCellLinearLayout;->lastX:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v2, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int v4, v1, v0

    if-gez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, 0x0

    move v2, v3

    :cond_1
    iget-object v1, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Lcn/apppark/mcd/widget/TCellLinearLayout;->lastX:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget v0, v0, Lcn/apppark/mcd/widget/TCellLinearLayout;->lastX:I

    iget-object v1, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget v1, v1, Lcn/apppark/mcd/widget/TCellLinearLayout;->rightScrollPos:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-static {v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->a(Lcn/apppark/mcd/widget/TCellLinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget v1, v1, Lcn/apppark/mcd/widget/TCellLinearLayout;->MIN_MOVE_DIS:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v1, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget v1, v1, Lcn/apppark/mcd/widget/TCellLinearLayout;->MIN_MOVE_DIS:I

    add-int/2addr v2, v1

    iget-object v1, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget v1, v1, Lcn/apppark/mcd/widget/TCellLinearLayout;->MIN_MOVE_DIS:I

    add-int/2addr v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcn/apppark/mcd/widget/TCellLinearLayout;->a(Lcn/apppark/mcd/widget/TCellLinearLayout;Landroid/view/View;IIII)V

    :goto_1
    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->a(Lcn/apppark/mcd/widget/TCellLinearLayout;Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcn/apppark/mcd/widget/TCellLinearLayout;->a(Lcn/apppark/mcd/widget/TCellLinearLayout;Landroid/view/View;IIII)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-static {v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->a(Lcn/apppark/mcd/widget/TCellLinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget v0, v0, Lcn/apppark/mcd/widget/TCellLinearLayout;->lastX:I

    iget-object v1, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget v1, v1, Lcn/apppark/mcd/widget/TCellLinearLayout;->leftScrollPos:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-static {v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->a(Lcn/apppark/mcd/widget/TCellLinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget v1, v1, Lcn/apppark/mcd/widget/TCellLinearLayout;->MIN_MOVE_DIS:I

    neg-int v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v1, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget v1, v1, Lcn/apppark/mcd/widget/TCellLinearLayout;->MIN_MOVE_DIS:I

    sub-int/2addr v2, v1

    iget-object v1, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget v1, v1, Lcn/apppark/mcd/widget/TCellLinearLayout;->MIN_MOVE_DIS:I

    sub-int/2addr v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcn/apppark/mcd/widget/TCellLinearLayout;->a(Lcn/apppark/mcd/widget/TCellLinearLayout;Landroid/view/View;IIII)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcn/apppark/mcd/widget/TCellLinearLayout;->a(Lcn/apppark/mcd/widget/TCellLinearLayout;Landroid/view/View;IIII)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    const/4 v1, 0x1

    iget-object v2, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-static {v2}, Lcn/apppark/mcd/widget/TCellLinearLayout;->a(Lcn/apppark/mcd/widget/TCellLinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/mcd/widget/TCellLinearLayout;->a(Lcn/apppark/mcd/widget/TCellLinearLayout;ZLandroid/widget/HorizontalScrollView;)V

    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v1, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget v1, v1, Lcn/apppark/mcd/widget/TCellLinearLayout;->lastPositionX:I

    invoke-static {v0, p1, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->b(Lcn/apppark/mcd/widget/TCellLinearLayout;Landroid/view/View;I)V

    iget-object v0, p0, Lao;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iput-boolean v3, v0, Lcn/apppark/mcd/widget/TCellLinearLayout;->isMove:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
