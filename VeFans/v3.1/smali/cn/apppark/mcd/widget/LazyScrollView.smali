.class public Lcn/apppark/mcd/widget/LazyScrollView;
.super Landroid/widget/ScrollView;


# instance fields
.field private currentY:I

.field private isMore:Z

.field private onScrollListener:Lcn/apppark/mcd/widget/LazyScrollView$OnScrollListenerLazy;

.field private parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->isMore:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->isMore:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->isMore:Z

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/LazyScrollView;->setFadingEdgeLength(I)V

    return-void
.end method

.method private setParentScrollAble(Z)V
    .locals 2

    iget-object v1, p0, Lcn/apppark/mcd/widget/LazyScrollView;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public computeVerticalScrollOffset()I
    .locals 1

    invoke-super {p0}, Landroid/widget/ScrollView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    invoke-super {p0}, Landroid/widget/ScrollView;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public getView()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/apppark/mcd/widget/LazyScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->view:Landroid/view/View;

    iget-object v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcn/apppark/mcd/widget/LazyScrollView;->setFadingEdgeLength(I)V

    :cond_0
    return-void
.end method

.method public isMore()Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->isMore:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->currentY:I

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/widget/LazyScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, p1}, Lcn/apppark/mcd/widget/ElasticScrollView;->childTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->onScrollListener:Lcn/apppark/mcd/widget/LazyScrollView$OnScrollListenerLazy;

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/apppark/mcd/widget/LazyScrollView$OnScrollListenerLazy;->onAutoScroll(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcn/apppark/mcd/widget/LazyScrollView;->currentY:I

    if-ge v2, v1, :cond_2

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/LazyScrollView;->getScrollY()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "setParentScrollAble()..ttt"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/LazyScrollView;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/LazyScrollView;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v1, p1}, Lcn/apppark/mcd/widget/ElasticScrollView;->childTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, v4}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcn/apppark/mcd/widget/LazyScrollView;->currentY:I

    if-le v2, v1, :cond_0

    iget-object v1, p0, Lcn/apppark/mcd/widget/LazyScrollView;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/LazyScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/LazyScrollView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    iget-boolean v1, p0, Lcn/apppark/mcd/widget/LazyScrollView;->isMore:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, v4}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->onScrollListener:Lcn/apppark/mcd/widget/LazyScrollView$OnScrollListenerLazy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/LazyScrollView;->onScrollListener:Lcn/apppark/mcd/widget/LazyScrollView$OnScrollListenerLazy;

    invoke-interface {v0}, Lcn/apppark/mcd/widget/LazyScrollView$OnScrollListenerLazy;->onBottom()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcn/apppark/mcd/widget/LazyScrollView;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcn/apppark/mcd/widget/LazyScrollView;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/widget/LazyScrollView;->isMore:Z

    return-void
.end method

.method public setOnScrollListener(Lcn/apppark/mcd/widget/LazyScrollView$OnScrollListenerLazy;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/LazyScrollView;->onScrollListener:Lcn/apppark/mcd/widget/LazyScrollView$OnScrollListenerLazy;

    return-void
.end method

.method public setParentScroll(Lcn/apppark/mcd/widget/ElasticScrollView;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/LazyScrollView;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    return-void
.end method
