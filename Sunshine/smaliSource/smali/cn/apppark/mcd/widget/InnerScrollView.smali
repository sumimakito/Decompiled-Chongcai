.class public Lcn/apppark/mcd/widget/InnerScrollView;
.super Landroid/widget/ScrollView;


# instance fields
.field private currentY:I

.field private parentScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/apppark/mcd/widget/InnerScrollView;->parentScrollView:Landroid/widget/ScrollView;

    return-void
.end method

.method private setParentScrollAble(Z)V
    .locals 2

    iget-object v1, p0, Lcn/apppark/mcd/widget/InnerScrollView;->parentScrollView:Landroid/widget/ScrollView;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getParentScrollView()Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/InnerScrollView;->parentScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcn/apppark/mcd/widget/InnerScrollView;->parentScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/apppark/mcd/widget/InnerScrollView;->currentY:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/InnerScrollView;->parentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/apppark/mcd/widget/InnerScrollView;->parentScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/InnerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/mcd/widget/InnerScrollView;->parentScrollView:Landroid/widget/ScrollView;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/InnerScrollView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/InnerScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcn/apppark/mcd/widget/InnerScrollView;->currentY:I

    if-ge v4, v3, :cond_3

    if-gtz v2, :cond_0

    iget-object v1, p0, Lcn/apppark/mcd/widget/InnerScrollView;->parentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/InnerScrollView;->parentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    :goto_1
    iput v3, p0, Lcn/apppark/mcd/widget/InnerScrollView;->currentY:I

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget v4, p0, Lcn/apppark/mcd/widget/InnerScrollView;->currentY:I

    if-le v4, v3, :cond_1

    if-lt v2, v1, :cond_4

    iget-object v1, p0, Lcn/apppark/mcd/widget/InnerScrollView;->parentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/apppark/mcd/widget/InnerScrollView;->parentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1
.end method

.method public setParentScrollView(Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/InnerScrollView;->parentScrollView:Landroid/widget/ScrollView;

    return-void
.end method
