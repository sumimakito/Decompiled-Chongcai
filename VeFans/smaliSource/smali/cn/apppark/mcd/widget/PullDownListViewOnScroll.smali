.class public Lcn/apppark/mcd/widget/PullDownListViewOnScroll;
.super Landroid/widget/ListView;


# instance fields
.field private currentY:I

.field private footView:Landroid/widget/FrameLayout;

.field private foot_btn:Landroid/widget/Button;

.field private foot_lay:Landroid/widget/LinearLayout;

.field private foot_root:Landroid/widget/FrameLayout;

.field private foot_tv:Landroid/widget/TextView;

.field private foot_tv_hidden:Landroid/widget/TextView;

.field private inflater:Landroid/view/LayoutInflater;

.field private onFootrefreshListener:Lcn/apppark/mcd/widget/PullDownListViewOnScroll$OnFootRefreshListener2;

.field private parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

.field private refreshListener:Lcn/apppark/mcd/widget/PullDownListViewOnScroll$OnRefreshListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcn/apppark/mcd/widget/PullDownListViewOnScroll;)Lcn/apppark/mcd/widget/PullDownListViewOnScroll$OnFootRefreshListener2;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->onFootrefreshListener:Lcn/apppark/mcd/widget/PullDownListViewOnScroll$OnFootRefreshListener2;

    return-object v0
.end method

.method static synthetic b(Lcn/apppark/mcd/widget/PullDownListViewOnScroll;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_lay:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcn/apppark/mcd/widget/PullDownListViewOnScroll;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_btn:Landroid/widget/Button;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->setCacheColorHint(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->setHeaderDividersEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030071

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->footView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->footView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02ed

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_tv_hidden:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->footView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02ef

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_tv:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->footView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02f0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_btn:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->footView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02ec

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_root:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->footView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02ee

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_lay:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_lay:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->footView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v3, v2}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_btn:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/mcd/widget/PullDownListViewOnScroll$1;

    invoke-direct {v1, p0}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll$1;-><init>(Lcn/apppark/mcd/widget/PullDownListViewOnScroll;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setParentScrollAble(Z)V
    .locals 2

    iget-object v1, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

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
.method public onFootNodata(II)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-lt p2, p1, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_tv_hidden:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_lay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_btn:Landroid/widget/Button;

    const-string v1, "\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onFootRefreshComplete()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_lay:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->foot_btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->currentY:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, p1}, Lcn/apppark/mcd/widget/ElasticScrollView;->childTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->currentY:I

    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v1, p1}, Lcn/apppark/mcd/widget/ElasticScrollView;->childTouchEvent(Landroid/view/MotionEvent;)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget v2, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->currentY:I

    if-le v2, v1, :cond_1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1
.end method

.method public setParentScroll(Lcn/apppark/mcd/widget/ElasticScrollView;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    return-void
.end method

.method public setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListViewOnScroll$OnFootRefreshListener2;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/PullDownListViewOnScroll;->onFootrefreshListener:Lcn/apppark/mcd/widget/PullDownListViewOnScroll$OnFootRefreshListener2;

    return-void
.end method
