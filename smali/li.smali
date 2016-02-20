.class public final Lli;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcn/apppark/vertify/activity/free/self/Self360View;

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/self/Self360View;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lli;->b:Lcn/apppark/vertify/activity/free/self/Self360View;

    iput-object p2, p0, Lli;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lli;->b:Lcn/apppark/vertify/activity/free/self/Self360View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Self360View;->a(Lcn/apppark/vertify/activity/free/self/Self360View;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return v4

    :cond_1
    iget-object v0, p0, Lli;->b:Lcn/apppark/vertify/activity/free/self/Self360View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Self360View;->a(Lcn/apppark/vertify/activity/free/self/Self360View;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lli;->c:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lli;->d:F

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lli;->c:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lli;->d:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41700000    # 15.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lli;->c:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    iput v0, p0, Lli;->c:F

    iput v1, p0, Lli;->d:F

    iget-object v0, p0, Lli;->b:Lcn/apppark/vertify/activity/free/self/Self360View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Self360View;->b(Lcn/apppark/vertify/activity/free/self/Self360View;)I

    move-result v0

    iget-object v1, p0, Lli;->b:Lcn/apppark/vertify/activity/free/self/Self360View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/Self360View;->c(Lcn/apppark/vertify/activity/free/self/Self360View;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lli;->b:Lcn/apppark/vertify/activity/free/self/Self360View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Self360View;->d(Lcn/apppark/vertify/activity/free/self/Self360View;)I

    :goto_2
    iget-object v0, p0, Lli;->b:Lcn/apppark/vertify/activity/free/self/Self360View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Self360View;->c(Lcn/apppark/vertify/activity/free/self/Self360View;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lli;->b:Lcn/apppark/vertify/activity/free/self/Self360View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/Self360View;->b(Lcn/apppark/vertify/activity/free/self/Self360View;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/Self360Item2Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/Self360Item2Vo;->getData_pic()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lli;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lli;->b:Lcn/apppark/vertify/activity/free/self/Self360View;

    invoke-static {v0, v4}, Lcn/apppark/vertify/activity/free/self/Self360View;->a(Lcn/apppark/vertify/activity/free/self/Self360View;I)I

    goto :goto_2

    :cond_3
    iget v2, p0, Lli;->c:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget v2, p0, Lli;->d:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iput v0, p0, Lli;->c:F

    iput v1, p0, Lli;->d:F

    iget-object v0, p0, Lli;->b:Lcn/apppark/vertify/activity/free/self/Self360View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Self360View;->b(Lcn/apppark/vertify/activity/free/self/Self360View;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lli;->b:Lcn/apppark/vertify/activity/free/self/Self360View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Self360View;->e(Lcn/apppark/vertify/activity/free/self/Self360View;)I

    :goto_3
    iget-object v0, p0, Lli;->b:Lcn/apppark/vertify/activity/free/self/Self360View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Self360View;->c(Lcn/apppark/vertify/activity/free/self/Self360View;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lli;->b:Lcn/apppark/vertify/activity/free/self/Self360View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/Self360View;->b(Lcn/apppark/vertify/activity/free/self/Self360View;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/Self360Item2Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/Self360Item2Vo;->getData_pic()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lli;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lli;->b:Lcn/apppark/vertify/activity/free/self/Self360View;

    iget-object v1, p0, Lli;->b:Lcn/apppark/vertify/activity/free/self/Self360View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/Self360View;->c(Lcn/apppark/vertify/activity/free/self/Self360View;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/self/Self360View;->a(Lcn/apppark/vertify/activity/free/self/Self360View;I)I

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
