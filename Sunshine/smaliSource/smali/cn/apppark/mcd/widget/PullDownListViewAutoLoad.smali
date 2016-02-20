.class public Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final DONE:I = 0x3

.field private static final PULL_To_REFRESH:I = 0x1

.field private static final RATIO:I = 0x3

.field private static final REFRESHING:I = 0x2

.field private static final RELEASE_To_REFRESH:I


# instance fields
.field private arrowImageView:Landroid/widget/ImageView;

.field private currentY:I

.field protected firstItemIndex:I

.field private footView:Landroid/widget/FrameLayout;

.field private foot_lay:Landroid/widget/LinearLayout;

.field private foot_root:Landroid/widget/FrameLayout;

.field private headContentHeight:I

.field private headView:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private isBack:Z

.field private isBottomScroll:Z

.field private isNext:Z

.field private isRefreshable:Z

.field private isScroll:Z

.field private lastUpdatedTextView:Landroid/widget/TextView;

.field private onFootrefreshListener:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnFootRefreshListener;

.field private parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private refreshListener:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnRefreshListener;

.field private state:I

.field private tipsTextview:Landroid/widget/TextView;

.field private totalItemCount:I

.field private visibleLastIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isScroll:Z

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isBottomScroll:Z

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->firstItemIndex:I

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isNext:Z

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isScroll:Z

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isBottomScroll:Z

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->firstItemIndex:I

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isNext:Z

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->init(Landroid/content/Context;)V

    return-void
.end method

.method private changeHeaderViewByState()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->state:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u677e\u5f00\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isBack:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isBack:Z

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u5237\u65b0..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->arrowImageView:Landroid/widget/ImageView;

    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setCacheColorHint(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->inflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030077

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->headView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0263

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->arrowImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0262

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0264

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->tipsTextview:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0265

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->lastUpdatedTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->headView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->measureView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->headContentHeight:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v3, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setHeaderDividersEnabled(Z)V

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setFooterDividersEnabled(Z)V

    invoke-virtual {p0, p0}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030076

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->footView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->footView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0302

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->foot_root:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->footView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0304

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->foot_lay:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->foot_lay:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->footView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v3, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->state:I

    iput-boolean v2, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isRefreshable:Z

    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private onRefresh()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->refreshListener:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnRefreshListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->refreshListener:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnRefreshListener;

    invoke-interface {v0}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnRefreshListener;->onRefresh()V

    :cond_0
    return-void
.end method

.method private setParentScrollAble(Z)V
    .locals 2

    iget-object v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

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
.method public autoHeadRefresh()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->state:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->changeHeaderViewByState()V

    return-void
.end method

.method public onFootNodata(II)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-lt p2, p1, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->foot_root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->foot_lay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isNext:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isNext:Z

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->foot_root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->foot_lay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onFootRefreshComplete()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->foot_root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->foot_lay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onHeadRefreshComplete()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->state:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->lastUpdatedTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6700\u8fd1\u66f4\u65b0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->changeHeaderViewByState()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isScroll:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->currentY:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, p1}, Lcn/apppark/mcd/widget/ElasticScrollView;->childTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iput p4, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->totalItemCount:I

    iput p2, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->firstItemIndex:I

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->visibleLastIndex:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->totalItemCount:I

    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->visibleLastIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootrefreshListener:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnFootRefreshListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isNext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootrefreshListener:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnFootRefreshListener;

    invoke-interface {v0}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnFootRefreshListener;->onFootRefresh()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->foot_root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->foot_lay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isScroll:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->currentY:I

    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v1, p1}, Lcn/apppark/mcd/widget/ElasticScrollView;->childTouchEvent(Landroid/view/MotionEvent;)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget v2, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->currentY:I

    if-le v2, v1, :cond_1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isBottomScroll:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/ElasticScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->lastUpdatedTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6700\u8fd1\u66f4\u65b0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setBottomScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isBottomScroll:Z

    return-void
.end method

.method public setParentScroll(Lcn/apppark/mcd/widget/ElasticScrollView;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    return-void
.end method

.method public setScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isScroll:Z

    return-void
.end method

.method public setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnFootRefreshListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootrefreshListener:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnFootRefreshListener;

    return-void
.end method

.method public setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnRefreshListener;Z)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->refreshListener:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnRefreshListener;

    iput-boolean p2, p0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->isRefreshable:Z

    return-void
.end method
