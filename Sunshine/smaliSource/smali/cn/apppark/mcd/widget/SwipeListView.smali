.class public Lcn/apppark/mcd/widget/SwipeListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private footView:Landroid/widget/FrameLayout;

.field private foot_lay:Landroid/widget/LinearLayout;

.field private foot_root:Landroid/widget/FrameLayout;

.field private isNext:Z

.field private mCurrentItemView:Landroid/view/View;

.field private final mDuration:I

.field private final mDurationStep:I

.field private mFirstX:F

.field private mFirstY:F

.field private mIsHorizontal:Ljava/lang/Boolean;

.field private mIsShown:Z

.field private mPreItemView:Landroid/view/View;

.field private mRightViewWidth:I

.field private onFootrefreshListener:Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;

.field private totalItemCount:I

.field private visibleLastIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/apppark/mcd/widget/SwipeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/apppark/mcd/widget/SwipeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->mRightViewWidth:I

    const/16 v0, 0x1e

    iput v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->mDuration:I

    const/16 v0, 0x14

    iput v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->mDurationStep:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->isNext:Z

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/SwipeListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private clearPressedState()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->mCurrentItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->mCurrentItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0, v1}, Lcn/apppark/mcd/widget/SwipeListView;->setPressed(Z)V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/SwipeListView;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/SwipeListView;->setCacheColorHint(I)V

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/SwipeListView;->setHeaderDividersEnabled(Z)V

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/SwipeListView;->setFooterDividersEnabled(Z)V

    invoke-virtual {p0, p0}, Lcn/apppark/mcd/widget/SwipeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030076

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->footView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->footView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0302

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->foot_root:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->footView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0304

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->foot_lay:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->foot_lay:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->footView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v3, v2}, Lcn/apppark/mcd/widget/SwipeListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method private isHitCurItemLeft(F)Z
    .locals 2

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/SwipeListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcn/apppark/mcd/widget/SwipeListView;->mRightViewWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private judgeScrollDirection(FF)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x41f00000    # 30.0f

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/apppark/mcd/widget/SwipeListView;->mIsHorizontal:Ljava/lang/Boolean;

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/apppark/mcd/widget/SwipeListView;->mIsHorizontal:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private showRight(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Laj;

    invoke-direct {v0, p0}, Laj;-><init>(Lcn/apppark/mcd/widget/SwipeListView;)V

    invoke-virtual {v0}, Laj;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcn/apppark/mcd/widget/SwipeListView;->mRightViewWidth:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->mIsShown:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getOnFootrefreshListener()Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->onFootrefreshListener:Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;

    return-object v0
.end method

.method public getRightViewWidth()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->mRightViewWidth:I

    return v0
.end method

.method public hiddenRight(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->mCurrentItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Laj;

    invoke-direct {v0, p0}, Laj;-><init>(Lcn/apppark/mcd/widget/SwipeListView;)V

    invoke-virtual {v0}, Laj;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-boolean v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mIsShown:Z

    goto :goto_0
.end method

.method public onFootNodata(II)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-lt p2, p1, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->foot_root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->foot_lay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/SwipeListView;->isNext:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->isNext:Z

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->foot_root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->foot_lay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onFootRefreshComplete()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->foot_root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->foot_lay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mIsHorizontal:Ljava/lang/Boolean;

    iput v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->mFirstX:F

    iput v1, p0, Lcn/apppark/mcd/widget/SwipeListView;->mFirstY:F

    iget v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->mFirstX:F

    float-to-int v0, v0

    iget v1, p0, Lcn/apppark/mcd/widget/SwipeListView;->mFirstY:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcn/apppark/mcd/widget/SwipeListView;->pointToPosition(II)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/SwipeListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/widget/SwipeListView;->mCurrentItemView:Landroid/view/View;

    iput-object v1, p0, Lcn/apppark/mcd/widget/SwipeListView;->mPreItemView:Landroid/view/View;

    iput-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->mCurrentItemView:Landroid/view/View;

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mFirstX:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mFirstY:F

    sub-float/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    iget-boolean v1, p0, Lcn/apppark/mcd/widget/SwipeListView;->mIsShown:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/apppark/mcd/widget/SwipeListView;->mPreItemView:Landroid/view/View;

    iget-object v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mCurrentItemView:Landroid/view/View;

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcn/apppark/mcd/widget/SwipeListView;->isHitCurItemLeft(F)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->mPreItemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/SwipeListView;->hiddenRight(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iput p4, p0, Lcn/apppark/mcd/widget/SwipeListView;->totalItemCount:I

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->visibleLastIndex:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->totalItemCount:I

    iget v1, p0, Lcn/apppark/mcd/widget/SwipeListView;->visibleLastIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->onFootrefreshListener:Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->isNext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->onFootrefreshListener:Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;

    invoke-interface {v0}, Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;->onFootRefresh()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->foot_root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->foot_lay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    :pswitch_1
    iget v3, p0, Lcn/apppark/mcd/widget/SwipeListView;->mFirstX:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcn/apppark/mcd/widget/SwipeListView;->mFirstY:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcn/apppark/mcd/widget/SwipeListView;->mIsHorizontal:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    invoke-direct {p0, v1, v2}, Lcn/apppark/mcd/widget/SwipeListView;->judgeScrollDirection(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mIsHorizontal:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mIsShown:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mPreItemView:Landroid/view/View;

    iget-object v3, p0, Lcn/apppark/mcd/widget/SwipeListView;->mCurrentItemView:Landroid/view/View;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mPreItemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/SwipeListView;->hiddenRight(Landroid/view/View;)V

    :cond_3
    iget-boolean v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mIsShown:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mPreItemView:Landroid/view/View;

    iget-object v3, p0, Lcn/apppark/mcd/widget/SwipeListView;->mCurrentItemView:Landroid/view/View;

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mRightViewWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :cond_4
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    iget v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mRightViewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mCurrentItemView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mCurrentItemView:Landroid/view/View;

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v2, v1, v4}, Landroid/view/View;->scrollTo(II)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->mIsShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/SwipeListView;->mPreItemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/SwipeListView;->hiddenRight(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mCurrentItemView:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mCurrentItemView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0, v4}, Lcn/apppark/mcd/widget/SwipeListView;->setPressed(Z)V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/SwipeListView;->refreshDrawableState()V

    :cond_6
    iget-boolean v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mIsShown:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mPreItemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/SwipeListView;->hiddenRight(Landroid/view/View;)V

    :cond_7
    iget-object v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mIsHorizontal:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mIsHorizontal:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mFirstX:F

    sub-float v1, v2, v1

    iget v2, p0, Lcn/apppark/mcd/widget/SwipeListView;->mRightViewWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    iget-object v1, p0, Lcn/apppark/mcd/widget/SwipeListView;->mCurrentItemView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcn/apppark/mcd/widget/SwipeListView;->showRight(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcn/apppark/mcd/widget/SwipeListView;->mCurrentItemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcn/apppark/mcd/widget/SwipeListView;->hiddenRight(Landroid/view/View;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnFootrefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/SwipeListView;->onFootrefreshListener:Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;

    return-void
.end method

.method public setRightViewWidth(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/SwipeListView;->mRightViewWidth:I

    return-void
.end method
