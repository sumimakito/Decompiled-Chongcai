.class public Lcn/apppark/mcd/widget/RightSlidMenu;
.super Landroid/view/ViewGroup;


# instance fields
.field private final CONTENT_PAGE:I

.field private final MENU_PAGE:I

.field private animTime:I

.field private changeListener:Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;

.field private childWidths:[I

.field private context:Landroid/content/Context;

.field private direction:I

.field public isMenuShow:Z

.field private lastInterceptX:F

.field private lastInterceptY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mTouchSlop:F

.field private menuWidth:I

.field private scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x258

    iput v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->animTime:I

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->isMenuShow:Z

    const/16 v0, 0xfa

    iput v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->menuWidth:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->childWidths:[I

    iput v2, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->MENU_PAGE:I

    iput v1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->CONTENT_PAGE:I

    iput-boolean v2, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mIsBeingDragged:Z

    iput-object p1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x258

    iput v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->animTime:I

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->isMenuShow:Z

    const/16 v0, 0xfa

    iput v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->menuWidth:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->childWidths:[I

    iput v2, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->MENU_PAGE:I

    iput v1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->CONTENT_PAGE:I

    iput-boolean v2, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mIsBeingDragged:Z

    iput-object p1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->initView()V

    return-void
.end method

.method private initView()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mTouchSlop:F

    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->scroller:Landroid/widget/Scroller;

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->childWidths:[I

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    aput v1, v0, v3

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->childWidths:[I

    const/4 v1, 0x1

    iget v2, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->menuWidth:I

    int-to-float v2, v2

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    aput v2, v0, v1

    invoke-direct {p0, v3, v3}, Lcn/apppark/mcd/widget/RightSlidMenu;->snapToScreen(IZ)V

    return-void
.end method

.method private snapToDestination()V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->direction:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getScrollX()I

    move-result v0

    iget-object v3, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->childWidths:[I

    aget v3, v3, v2

    div-int/lit8 v3, v3, 0x4

    if-gt v0, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v2}, Lcn/apppark/mcd/widget/RightSlidMenu;->snapToScreen(IZ)V

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->isMenuShow:Z

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->changeListener:Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->changeListener:Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;

    invoke-interface {v0}, Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;->onClose()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getScrollX()I

    move-result v0

    iget-object v3, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->childWidths:[I

    aget v3, v3, v2

    div-int/lit8 v3, v3, 0x4

    if-le v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->isMenuShow:Z

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->changeListener:Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->changeListener:Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;

    invoke-interface {v0}, Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;->onOpen()V

    goto :goto_1
.end method

.method private snapToScreen(IZ)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p1, v3, :cond_0

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getScrollX()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->childWidths:[I

    aget v1, v1, v3

    if-eq v0, v1, :cond_2

    :cond_1
    if-ne p1, v3, :cond_3

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->childWidths:[I

    aget v0, v0, v3

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    :goto_0
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getScrollX()I

    move-result v1

    iget v5, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->animTime:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_1
    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->invalidate()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getScrollX()I

    move-result v0

    rsub-int/lit8 v3, v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public closeOpenMenu()V
    .locals 7

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->isMenuShow:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->isMenuShow:Z

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->changeListener:Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->changeListener:Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;

    invoke-interface {v0}, Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;->onClose()V

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->scroller:Landroid/widget/Scroller;

    iget v1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->menuWidth:I

    int-to-float v1, v1

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    iget v3, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->menuWidth:I

    int-to-float v3, v3

    invoke-static {v3}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v3

    neg-int v3, v3

    iget v5, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->animTime:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_0
    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->invalidate()V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->isMenuShow:Z

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->changeListener:Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->changeListener:Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;

    invoke-interface {v0}, Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;->onOpen()V

    :cond_2
    iget-object v1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->scroller:Landroid/widget/Scroller;

    iget v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->menuWidth:I

    int-to-float v0, v0

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v4

    iget v6, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->animTime:I

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/apppark/mcd/widget/RightSlidMenu;->scrollTo(II)V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public isMenuShow()Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->isMenuShow:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mIsBeingDragged:Z

    return v0

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->lastInterceptX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->lastInterceptY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mLastMotionY:F

    iput-boolean v5, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->lastInterceptX:F

    sub-float v0, v1, v0

    iget v1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->lastInterceptY:F

    sub-float v1, v2, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mTouchSlop:F

    add-float/2addr v1, v3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    iget-boolean v1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->isMenuShow:Z

    if-nez v1, :cond_2

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mIsBeingDragged:Z

    goto :goto_0

    :cond_3
    iput-boolean v5, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_2
    iput v4, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->lastInterceptX:F

    iput v4, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->lastInterceptY:F

    iput-boolean v5, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mIsBeingDragged:Z

    goto :goto_0

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

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getHeight()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getWidth()I

    move-result v4

    iget v5, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->menuWidth:I

    int-to-float v5, v5

    invoke-static {v5}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v5

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getHeight()I

    move-result v6

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    iput v1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mLastMotionX:F

    iput v2, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mLastMotionY:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mLastMotionX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->direction:I

    iput v1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mLastMotionX:F

    iput v2, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mLastMotionY:F

    invoke-virtual {p0, v0, v3}, Lcn/apppark/mcd/widget/RightSlidMenu;->scrollBy(II)V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getScrollX()I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {p0, v3, v3}, Lcn/apppark/mcd/widget/RightSlidMenu;->scrollTo(II)V

    :cond_1
    :goto_1
    iput v1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->mLastMotionX:F

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->getScrollX()I

    move-result v0

    iget-object v2, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->childWidths:[I

    aget v2, v2, v4

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->childWidths:[I

    aget v0, v0, v4

    invoke-virtual {p0, v0, v3}, Lcn/apppark/mcd/widget/RightSlidMenu;->scrollTo(II)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcn/apppark/mcd/widget/RightSlidMenu;->snapToDestination()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setChangeListener(Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/RightSlidMenu;->changeListener:Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;

    return-void
.end method
