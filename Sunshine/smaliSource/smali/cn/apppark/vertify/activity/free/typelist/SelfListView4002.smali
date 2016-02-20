.class public Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;
.super Landroid/widget/ListView;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfView;


# instance fields
.field private adapter:Lcn/apppark/vertify/adapter/SelfListView4002Adapter;

.field private firstItemIndex:I

.field private parentScroll:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfListViewItemVo;Ljava/util/ArrayList;Landroid/widget/ScrollView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/base/FreePageVo;",
            "Lcn/apppark/mcd/vo/free/SelfListViewItemVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;",
            ">;",
            "Landroid/widget/ScrollView;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->firstItemIndex:I

    new-instance v0, Lcn/apppark/vertify/adapter/SelfListView4002Adapter;

    invoke-direct {v0, p1, p3, p4}, Lcn/apppark/vertify/adapter/SelfListView4002Adapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfListViewItemVo;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->adapter:Lcn/apppark/vertify/adapter/SelfListView4002Adapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->adapter:Lcn/apppark/vertify/adapter/SelfListView4002Adapter;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->setCacheColorHint(I)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->setFadingEdgeLength(I)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->setScrollingCacheEnabled(Z)V

    iput-object p5, p0, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->parentScroll:Landroid/widget/ScrollView;

    new-instance v0, Lnl;

    invoke-direct {v0, p0, p4, p2}, Lnl;-><init>(Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;Ljava/util/ArrayList;Lcn/apppark/mcd/vo/base/FreePageVo;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lnm;

    invoke-direct {v0, p0}, Lnm;-><init>(Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowLineBgAlpha()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowLineBgPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowLineColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowLineHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setDevider(Landroid/widget/ListView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowLineBgType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowLineBgPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowLineColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowLineHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setDevider(Landroid/widget/ListView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->firstItemIndex:I

    return p1
.end method


# virtual methods
.method public init()V
    .locals 0

    return-void
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->adapter:Lcn/apppark/vertify/adapter/SelfListView4002Adapter;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->firstItemIndex:I

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->parentScroll:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;->parentScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method
