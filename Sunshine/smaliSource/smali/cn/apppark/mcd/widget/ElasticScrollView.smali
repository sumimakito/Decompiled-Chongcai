.class public Lcn/apppark/mcd/widget/ElasticScrollView;
.super Landroid/widget/ScrollView;


# static fields
.field private static final DONE:I = 0x3

.field private static final LOADING:I = 0x4

.field private static final PULL_To_REFRESH:I = 0x1

.field private static final RATIO:I = 0x3

.field private static final REFRESHING:I = 0x2

.field private static final RELEASE_To_REFRESH:I


# instance fields
.field private canReturn:Z

.field private elasticScrollViewListener:Lcn/apppark/mcd/widget/ElasticScrollView$ElasticScrollViewListener;

.field private headContentHeight:I

.field private headView:Landroid/widget/LinearLayout;

.field private innerLayout:Landroid/widget/LinearLayout;

.field private isBack:Z

.field private isChildEvent:Z

.field private isRecored:Z

.field private isRefreshable:Z

.field private lastUpdatedTextView:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private refreshListener:Lcn/apppark/mcd/widget/ElasticScrollView$OnRefreshListener;

.field private startY:I

.field private state:I

.field private tipsTextview:Landroid/widget/TextView;

.field private topMenuHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isChildEvent:Z

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/ElasticScrollView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isChildEvent:Z

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/ElasticScrollView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private changeHeaderViewByState()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u677e\u5f00\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isBack:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isBack:Z

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u5237\u65b0..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->lastUpdatedTextView:Landroid/widget/TextView;

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
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->innerLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->innerLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->innerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, 0x7f03008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0262

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0264

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->tipsTextview:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0265

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->lastUpdatedTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->lastUpdatedTextView:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->measureView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headContentHeight:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->innerLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->innerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->addView(Landroid/view/View;)V

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    iput-boolean v6, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isRefreshable:Z

    iput-boolean v5, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->canReturn:Z

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

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->refreshListener:Lcn/apppark/mcd/widget/ElasticScrollView$OnRefreshListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->refreshListener:Lcn/apppark/mcd/widget/ElasticScrollView$OnRefreshListener;

    invoke-interface {v0}, Lcn/apppark/mcd/widget/ElasticScrollView$OnRefreshListener;->onRefresh()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addChild(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->innerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addChild(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->innerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addChild(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->innerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public autoHeadRefresh()V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->lastUpdatedTextView:Landroid/widget/TextView;

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

    invoke-direct {p0}, Lcn/apppark/mcd/widget/ElasticScrollView;->changeHeaderViewByState()V

    return-void
.end method

.method public childTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isChildEvent:Z

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/widget/ElasticScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onRefreshComplete()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->lastUpdatedTextView:Landroid/widget/TextView;

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

    invoke-direct {p0}, Lcn/apppark/mcd/widget/ElasticScrollView;->changeHeaderViewByState()V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/ElasticScrollView;->invalidate()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->elasticScrollViewListener:Lcn/apppark/mcd/widget/ElasticScrollView$ElasticScrollViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->elasticScrollViewListener:Lcn/apppark/mcd/widget/ElasticScrollView$ElasticScrollViewListener;

    invoke-interface {v0, p2}, Lcn/apppark/mcd/widget/ElasticScrollView$ElasticScrollViewListener;->onScroll(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isRefreshable:Z

    if-eqz v1, :cond_0

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
    invoke-virtual {p0}, Lcn/apppark/mcd/widget/ElasticScrollView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isRecored:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isRecored:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->topMenuHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->startY:I

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    if-eq v1, v6, :cond_2

    iget v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    iget v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    if-ne v1, v0, :cond_1

    iput v5, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/ElasticScrollView;->changeHeaderViewByState()V

    :cond_1
    iget v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    if-nez v0, :cond_2

    iput v3, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/ElasticScrollView;->changeHeaderViewByState()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->refreshListener:Lcn/apppark/mcd/widget/ElasticScrollView$OnRefreshListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->refreshListener:Lcn/apppark/mcd/widget/ElasticScrollView$OnRefreshListener;

    invoke-interface {v0}, Lcn/apppark/mcd/widget/ElasticScrollView$OnRefreshListener;->onRefresh()V

    :cond_2
    iput-boolean v4, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isRecored:Z

    iput-boolean v4, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isBack:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-boolean v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isRecored:Z

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/ElasticScrollView;->getScrollY()I

    move-result v2

    if-nez v2, :cond_9

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isRecored:Z

    iput v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->startY:I

    :cond_3
    :goto_2
    iget v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isRecored:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    if-eq v2, v6, :cond_0

    iget v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    if-nez v2, :cond_4

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->canReturn:Z

    iget v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->startY:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headContentHeight:I

    if-ge v2, v3, :cond_a

    iget v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->startY:I

    sub-int v2, v1, v2

    if-lez v2, :cond_a

    iput v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/ElasticScrollView;->changeHeaderViewByState()V

    :cond_4
    :goto_3
    iget v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    if-ne v2, v0, :cond_5

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->canReturn:Z

    iget v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->startY:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headContentHeight:I

    if-lt v2, v3, :cond_b

    iput v4, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isBack:Z

    invoke-direct {p0}, Lcn/apppark/mcd/widget/ElasticScrollView;->changeHeaderViewByState()V

    :cond_5
    :goto_4
    iget v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    if-ne v2, v5, :cond_6

    iget v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->startY:I

    sub-int v2, v1, v2

    if-lez v2, :cond_6

    iput v0, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/ElasticScrollView;->changeHeaderViewByState()V

    :cond_6
    iget v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    if-eq v2, v0, :cond_7

    iget v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    if-nez v2, :cond_8

    :cond_7
    iget v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->startY:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headContentHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_8
    iget-boolean v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->canReturn:Z

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->canReturn:Z

    goto/16 :goto_1

    :cond_9
    iget-boolean v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isChildEvent:Z

    if-eqz v2, :cond_3

    iput v1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->startY:I

    iput-boolean v4, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isChildEvent:Z

    goto :goto_2

    :cond_a
    iget v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->startY:I

    sub-int v2, v1, v2

    if-gtz v2, :cond_4

    iput v5, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/ElasticScrollView;->changeHeaderViewByState()V

    goto :goto_3

    :cond_b
    iget v2, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->startY:I

    sub-int v2, v1, v2

    if-gtz v2, :cond_5

    iput v5, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->state:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/ElasticScrollView;->changeHeaderViewByState()V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setElasticScrollViewListener(Lcn/apppark/mcd/widget/ElasticScrollView$ElasticScrollViewListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->elasticScrollViewListener:Lcn/apppark/mcd/widget/ElasticScrollView$ElasticScrollViewListener;

    return-void
.end method

.method public setRefreshable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->isRefreshable:Z

    return-void
.end method

.method public setTopMenuHeight(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->topMenuHeight:I

    return-void
.end method

.method public setonRefreshListener(Lcn/apppark/mcd/widget/ElasticScrollView$OnRefreshListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/ElasticScrollView;->refreshListener:Lcn/apppark/mcd/widget/ElasticScrollView$OnRefreshListener;

    return-void
.end method
