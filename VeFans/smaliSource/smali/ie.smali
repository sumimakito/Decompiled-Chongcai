.class public final Lie;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/LazyScrollView$OnScrollListenerLazy;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)V
    .locals 0

    iput-object p1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAutoScroll(IIII)V
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    iget-object v3, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-virtual {v3}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;I)I

    if-le p2, p4, :cond_3

    iget-object v2, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->c(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-le p2, v2, :cond_2

    move v3, v1

    :goto_0
    :try_start_0
    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->d(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)I

    move-result v1

    if-ge v3, v1, :cond_2

    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->e(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v2, v0

    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->h(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v3

    iget-object v4, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->f(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v4

    aget v4, v4, v3

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v5}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->g(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v5

    aget v5, v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->c(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, p2

    if-gt v1, v4, :cond_0

    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->e(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->f(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v4

    aget v4, v4, v3

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v5}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->g(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v5

    aget v5, v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/WaterfallImageView;->Reload()V

    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->f(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v1

    iget-object v4, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->f(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v4

    aget v4, v4, v3

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v5}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->g(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v5

    aget v5, v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v1, v3

    :cond_0
    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->h(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v3

    iget-object v4, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->i(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v4

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->c(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    if-ge v1, v4, :cond_1

    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->i(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v1

    aget v1, v1, v3

    iget-object v4, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->i(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v4

    aget v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v3

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/WaterfallImageView;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v3, v1

    :goto_2
    :try_start_1
    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->d(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)I

    move-result v1

    if-ge v3, v1, :cond_2

    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->e(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v2, v0

    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->h(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v3

    iget-object v4, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->f(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v4

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->c(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, p2

    if-le v1, v4, :cond_4

    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->f(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v1

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/WaterfallImageView;->recycle()V

    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->f(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v1

    aget v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v1, v3

    :cond_4
    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->h(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v3

    iget-object v4, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->i(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v4

    aget v4, v4, v3

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->c(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    if-lt v1, v4, :cond_5

    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->i(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v1

    aget v1, v1, v3

    add-int/lit8 v1, v1, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/WaterfallImageView;->Reload()V

    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->i(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v1

    iget-object v2, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->i(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I

    move-result-object v2

    aget v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public final onBottom()V
    .locals 3

    iget-object v0, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->isMore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    iget-object v1, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)I

    move-result v1

    iget-object v2, p0, Lie;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->b(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;II)V

    :cond_0
    return-void
.end method

.method public final onScroll()V
    .locals 0

    return-void
.end method

.method public final onTop()V
    .locals 0

    return-void
.end method
