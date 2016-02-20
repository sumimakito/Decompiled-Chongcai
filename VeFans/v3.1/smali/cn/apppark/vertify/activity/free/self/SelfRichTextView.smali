.class public Lcn/apppark/vertify/activity/free/self/SelfRichTextView;
.super Landroid/webkit/WebView;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfView;


# instance fields
.field private context:Landroid/content/Context;

.field private currentY:I

.field private parentScroll:Landroid/widget/ScrollView;

.field private vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfDefineItemVo;Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->parentScroll:Landroid/widget/ScrollView;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->init()V

    return-void
.end method

.method private setParentScrollAble(Z)V
    .locals 2

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->parentScroll:Landroid/widget/ScrollView;

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
.method public init()V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v0, "2"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->setBackgroundColor(I)V

    :cond_0
    const-string v0, "0.0"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->setBackgroundColor(I)V

    :goto_0
    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_text()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_text()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->parentScroll:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->currentY:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->parentScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->parentScroll:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->parentScroll:Landroid/widget/ScrollView;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->getScrollY()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->currentY:I

    if-ge v3, v2, :cond_3

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->parentScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->parentScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    :goto_1
    iput v2, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->currentY:I

    :cond_2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->currentY:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->getScale()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->parentScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;->parentScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1
.end method
