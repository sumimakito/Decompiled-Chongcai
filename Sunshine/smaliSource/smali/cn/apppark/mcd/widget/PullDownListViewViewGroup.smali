.class public Lcn/apppark/mcd/widget/PullDownListViewViewGroup;
.super Landroid/view/ViewGroup;


# instance fields
.field private context:Landroid/content/Context;

.field private currentScreen:I

.field private deliver:Z

.field private lastInterceptX:F

.field private lastInterceptY:F

.field private mLastMotionX:F

.field private mLastMotionY:F

.field public pageChangeListener:Lcn/apppark/mcd/widget/OnPageChangeListenerInterface;

.field private scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->pageChangeListener:Lcn/apppark/mcd/widget/OnPageChangeListenerInterface;

    iput v1, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->currentScreen:I

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->deliver:Z

    iput-object p1, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->pageChangeListener:Lcn/apppark/mcd/widget/OnPageChangeListenerInterface;

    iput v1, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->currentScreen:I

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->deliver:Z

    iput-object p1, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->scroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->scrollTo(II)V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public getPageChangeListener()Lcn/apppark/mcd/widget/OnPageChangeListenerInterface;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->pageChangeListener:Lcn/apppark/mcd/widget/OnPageChangeListenerInterface;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-boolean v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->deliver:Z

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->lastInterceptX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->lastInterceptY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->mLastMotionY:F

    iput-boolean v5, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->deliver:Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->lastInterceptX:F

    sub-float v2, v0, v2

    iget v3, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->lastInterceptY:F

    sub-float v3, v1, v3

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->lastInterceptX:F

    iput v1, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->lastInterceptY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->deliver:Z

    :goto_1
    :pswitch_2
    iput v4, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->lastInterceptX:F

    iput v4, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->lastInterceptY:F

    goto :goto_0

    :cond_0
    iput-boolean v5, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->deliver:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getChildCount()I

    move-result v3

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1
    iput v1, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->mLastMotionX:F

    iput v2, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->mLastMotionY:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->mLastMotionX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v3, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->mLastMotionY:F

    iput v1, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->mLastMotionX:F

    iput v2, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->mLastMotionY:F

    invoke-virtual {p0, v0, v4}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->scrollBy(II)V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getScrollX()I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {p0, v4, v4}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->scrollTo(II)V

    :cond_2
    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->scrollTo(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->scroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->snapToScreen(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setPageChangeListener(Lcn/apppark/mcd/widget/OnPageChangeListenerInterface;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->pageChangeListener:Lcn/apppark/mcd/widget/OnPageChangeListenerInterface;

    return-void
.end method

.method public snapToScreen(I)V
    .locals 6

    const/4 v2, 0x0

    iput p1, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->currentScreen:I

    iget v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->currentScreen:I

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->currentScreen:I

    :cond_0
    iget v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->currentScreen:I

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->invalidate()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->pageChangeListener:Lcn/apppark/mcd/widget/OnPageChangeListenerInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->pageChangeListener:Lcn/apppark/mcd/widget/OnPageChangeListenerInterface;

    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListViewViewGroup;->currentScreen:I

    invoke-interface {v0, v1}, Lcn/apppark/mcd/widget/OnPageChangeListenerInterface;->pageChange(I)V

    :cond_1
    return-void
.end method
