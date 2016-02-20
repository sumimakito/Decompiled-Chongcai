.class public Lcn/apppark/mcd/widget/PullDownListView3;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final DONE:I = 0x3

.field private static final LOADING:I = 0x4

.field private static final PULL_To_REFRESH:I = 0x1

.field private static final RATIO:I = 0x3

.field private static final REFRESHING:I = 0x2

.field private static final RELEASE_To_REFRESH:I


# instance fields
.field private animation:Landroid/view/animation/RotateAnimation;

.field private firstItemIndex:I

.field private footView:Landroid/widget/FrameLayout;

.field private foot_btn:Landroid/widget/Button;

.field private foot_lay:Landroid/widget/LinearLayout;

.field private foot_root:Landroid/widget/FrameLayout;

.field private foot_tv:Landroid/widget/TextView;

.field private foot_tv_hidden:Landroid/widget/TextView;

.field private headContentHeight:I

.field private headContentWidth:I

.field private headView:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private isBack:Z

.field private isRecored:Z

.field private isRefreshable:Z

.field private lastUpdatedTextView:Landroid/widget/TextView;

.field private onFootrefreshListener:Lcn/apppark/mcd/widget/PullDownListView3$OnFootRefreshListener3;

.field private progressBar:Landroid/widget/ProgressBar;

.field private refreshListener:Lcn/apppark/mcd/widget/PullDownListView3$OnRefreshListener3;

.field private reverseAnimation:Landroid/view/animation/RotateAnimation;

.field private startY:I

.field private state:I

.field private tipsTextview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/PullDownListView3;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/PullDownListView3;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcn/apppark/mcd/widget/PullDownListView3;)Lcn/apppark/mcd/widget/PullDownListView3$OnFootRefreshListener3;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->onFootrefreshListener:Lcn/apppark/mcd/widget/PullDownListView3$OnFootRefreshListener3;

    return-object v0
.end method

.method static synthetic b(Lcn/apppark/mcd/widget/PullDownListView3;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_lay:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcn/apppark/mcd/widget/PullDownListView3;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_btn:Landroid/widget/Button;

    return-object v0
.end method

.method private changeHeaderViewByState()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u677e\u5f00\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->isBack:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcn/apppark/mcd/widget/PullDownListView3;->isBack:Z

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u5237\u65b0..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 13

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcn/apppark/mcd/widget/PullDownListView3;->setCacheColorHint(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->inflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030050

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0254

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->tipsTextview:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0255

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->lastUpdatedTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/apppark/mcd/widget/PullDownListView3;->measureView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headContentHeight:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headContentWidth:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v12, v1, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v5, v12}, Lcn/apppark/mcd/widget/PullDownListView3;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v12}, Lcn/apppark/mcd/widget/PullDownListView3;->setHeaderDividersEnabled(Z)V

    invoke-virtual {p0, p0}, Lcn/apppark/mcd/widget/PullDownListView3;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030071

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->footView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->footView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02ed

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_tv_hidden:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->footView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02ef

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_tv:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->footView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02f0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_btn:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->footView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02ec

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_root:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->footView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02ee

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_lay:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_lay:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->footView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v5, v12}, Lcn/apppark/mcd/widget/PullDownListView3;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_btn:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/mcd/widget/PullDownListView3$1;

    invoke-direct {v1, p0}, Lcn/apppark/mcd/widget/PullDownListView3$1;-><init>(Lcn/apppark/mcd/widget/PullDownListView3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->animation:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->animation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->animation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    new-instance v5, Landroid/view/animation/RotateAnimation;

    const/4 v7, 0x0

    move v6, v2

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcn/apppark/mcd/widget/PullDownListView3;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    iput-boolean v12, p0, Lcn/apppark/mcd/widget/PullDownListView3;->isRefreshable:Z

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

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->refreshListener:Lcn/apppark/mcd/widget/PullDownListView3$OnRefreshListener3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->refreshListener:Lcn/apppark/mcd/widget/PullDownListView3$OnRefreshListener3;

    invoke-interface {v0}, Lcn/apppark/mcd/widget/PullDownListView3$OnRefreshListener3;->onRefresh()V

    :cond_0
    return-void
.end method


# virtual methods
.method public autoHeadRefresh()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/PullDownListView3;->changeHeaderViewByState()V

    return-void
.end method

.method public onFootNodata(II)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-lt p2, p1, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_tv_hidden:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_lay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_btn:Landroid/widget/Button;

    const-string v1, "\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onFootRefreshComplete()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_lay:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->foot_btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public onHeadRefreshComplete()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->lastUpdatedTextView:Landroid/widget/TextView;

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

    invoke-direct {p0}, Lcn/apppark/mcd/widget/PullDownListView3;->changeHeaderViewByState()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    iput p2, p0, Lcn/apppark/mcd/widget/PullDownListView3;->firstItemIndex:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x2

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->isRefreshable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->firstItemIndex:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->isRecored:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcn/apppark/mcd/widget/PullDownListView3;->isRecored:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->startY:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    iget v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    if-ne v0, v3, :cond_1

    iput v5, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/PullDownListView3;->changeHeaderViewByState()V

    :cond_1
    iget v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    if-nez v0, :cond_2

    iput v2, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/PullDownListView3;->changeHeaderViewByState()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->refreshListener:Lcn/apppark/mcd/widget/PullDownListView3$OnRefreshListener3;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->refreshListener:Lcn/apppark/mcd/widget/PullDownListView3$OnRefreshListener3;

    invoke-interface {v0}, Lcn/apppark/mcd/widget/PullDownListView3$OnRefreshListener3;->onRefresh()V

    :cond_2
    iput-boolean v4, p0, Lcn/apppark/mcd/widget/PullDownListView3;->isRecored:Z

    iput-boolean v4, p0, Lcn/apppark/mcd/widget/PullDownListView3;->isBack:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-boolean v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->isRecored:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->firstItemIndex:I

    if-nez v1, :cond_3

    iput-boolean v3, p0, Lcn/apppark/mcd/widget/PullDownListView3;->isRecored:Z

    iput v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->startY:I

    :cond_3
    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->isRecored:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    if-eq v1, v6, :cond_0

    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    if-nez v1, :cond_4

    invoke-virtual {p0, v4}, Lcn/apppark/mcd/widget/PullDownListView3;->setSelection(I)V

    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->startY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headContentHeight:I

    if-ge v1, v2, :cond_8

    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_8

    iput v3, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/PullDownListView3;->changeHeaderViewByState()V

    :cond_4
    :goto_1
    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    if-ne v1, v3, :cond_5

    invoke-virtual {p0, v4}, Lcn/apppark/mcd/widget/PullDownListView3;->setSelection(I)V

    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->startY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headContentHeight:I

    if-lt v1, v2, :cond_9

    iput v4, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    iput-boolean v3, p0, Lcn/apppark/mcd/widget/PullDownListView3;->isBack:Z

    invoke-direct {p0}, Lcn/apppark/mcd/widget/PullDownListView3;->changeHeaderViewByState()V

    :cond_5
    :goto_2
    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    if-ne v1, v5, :cond_6

    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_6

    iput v3, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/PullDownListView3;->changeHeaderViewByState()V

    :cond_6
    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headContentHeight:I

    mul-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcn/apppark/mcd/widget/PullDownListView3;->startY:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_7
    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcn/apppark/mcd/widget/PullDownListView3;->startY:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    iget v2, p0, Lcn/apppark/mcd/widget/PullDownListView3;->headContentHeight:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_8
    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_4

    iput v5, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/PullDownListView3;->changeHeaderViewByState()V

    goto :goto_1

    :cond_9
    iget v1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_5

    iput v5, p0, Lcn/apppark/mcd/widget/PullDownListView3;->state:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/PullDownListView3;->changeHeaderViewByState()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/mcd/widget/PullDownListView3;->lastUpdatedTextView:Landroid/widget/TextView;

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

.method public setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView3$OnFootRefreshListener3;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->onFootrefreshListener:Lcn/apppark/mcd/widget/PullDownListView3$OnFootRefreshListener3;

    return-void
.end method

.method public setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView3$OnRefreshListener3;Z)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/PullDownListView3;->refreshListener:Lcn/apppark/mcd/widget/PullDownListView3$OnRefreshListener3;

    iput-boolean p2, p0, Lcn/apppark/mcd/widget/PullDownListView3;->isRefreshable:Z

    return-void
.end method
