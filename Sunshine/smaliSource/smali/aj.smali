.class public final Laj;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Landroid/view/View;

.field final synthetic e:Lcn/apppark/mcd/widget/SwipeListView;

.field private f:Z


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/SwipeListView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Laj;->e:Lcn/apppark/mcd/widget/SwipeListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput v0, p0, Laj;->a:I

    iput-boolean v0, p0, Laj;->f:Z

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p0, Laj;->a:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Laj;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Laj;->f:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Laj;->d:Landroid/view/View;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Laj;->b:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Laj;->c:I

    iget v0, p0, Laj;->c:I

    iget v3, p0, Laj;->b:I

    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x14

    int-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    div-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, p0, Laj;->a:I

    iget v0, p0, Laj;->a:I

    if-gez v0, :cond_2

    iget v0, p0, Laj;->a:I

    if-ltz v0, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Laj;->a:I

    :cond_1
    :goto_1
    iget v0, p0, Laj;->c:I

    iget v3, p0, Laj;->b:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Laj;->d:Landroid/view/View;

    iget v2, p0, Laj;->c:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->scrollTo(II)V

    iput-boolean v1, p0, Laj;->f:Z

    iput v1, p0, Laj;->a:I

    goto :goto_0

    :cond_2
    iget v0, p0, Laj;->a:I

    if-lez v0, :cond_1

    iget v0, p0, Laj;->a:I

    if-gtz v0, :cond_1

    iput v2, p0, Laj;->a:I

    goto :goto_1

    :cond_3
    iget v0, p0, Laj;->b:I

    iget v3, p0, Laj;->a:I

    add-int/2addr v0, v3

    iput v0, p0, Laj;->b:I

    iget v0, p0, Laj;->a:I

    if-lez v0, :cond_4

    iget v0, p0, Laj;->b:I

    iget v3, p0, Laj;->c:I

    if-gt v0, v3, :cond_5

    :cond_4
    iget v0, p0, Laj;->a:I

    if-gez v0, :cond_7

    iget v0, p0, Laj;->b:I

    iget v3, p0, Laj;->c:I

    if-ge v0, v3, :cond_7

    :cond_5
    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    iget v2, p0, Laj;->c:I

    iput v2, p0, Laj;->b:I

    :cond_6
    iget-object v2, p0, Laj;->d:Landroid/view/View;

    iget v3, p0, Laj;->b:I

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->scrollTo(II)V

    iget-object v2, p0, Laj;->e:Lcn/apppark/mcd/widget/SwipeListView;

    invoke-virtual {v2}, Lcn/apppark/mcd/widget/SwipeListView;->invalidate()V

    if-nez v0, :cond_8

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v1, v2, v3}, Laj;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    iput-boolean v1, p0, Laj;->f:Z

    iput v1, p0, Laj;->a:I

    goto/16 :goto_0
.end method
