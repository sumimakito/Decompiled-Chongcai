.class public Lcn/apppark/mcd/widget/MyFloatViewMore;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public a:Landroid/widget/RelativeLayout$LayoutParams;

.field public b:Landroid/widget/RelativeLayout$LayoutParams;

.field public c:Z

.field private context:Landroid/content/Context;

.field d:I

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private tv_bg:Landroid/widget/TextView;

.field private wm:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v2, 0x42aa0000    # 85.0f

    const/high16 v3, 0x42200000    # 40.0f

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->c:Z

    iput v0, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->d:I

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->tv_bg:Landroid/widget/TextView;

    iput-object p1, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p3, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->wm:Landroid/view/WindowManager;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->b:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v3}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    invoke-static {v3}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->a:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->tv_bg:Landroid/widget/TextView;

    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->tv_bg:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcn/apppark/mcd/widget/MyFloatViewMore;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->tv_bg:Landroid/widget/TextView;

    new-instance v1, Lag;

    invoke-direct {v1, p0}, Lag;-><init>(Lcn/apppark/mcd/widget/MyFloatViewMore;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->tv_bg:Landroid/widget/TextView;

    new-instance v1, Lah;

    invoke-direct {v1, p0}, Lah;-><init>(Lcn/apppark/mcd/widget/MyFloatViewMore;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/MyFloatViewMore;F)F
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->x:F

    return p1
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/MyFloatViewMore;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->tv_bg:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/mcd/widget/MyFloatViewMore;F)F
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->y:F

    return p1
.end method

.method public static synthetic b(Lcn/apppark/mcd/widget/MyFloatViewMore;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/widget/MyFloatViewMore;->updateViewPosition()V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/mcd/widget/MyFloatViewMore;F)F
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->mTouchStartX:F

    return p1
.end method

.method public static synthetic d(Lcn/apppark/mcd/widget/MyFloatViewMore;F)F
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->mTouchStartY:F

    return p1
.end method

.method private updateViewPosition()V
    .locals 3

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->x:F

    iget v2, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->mTouchStartX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->y:F

    iget v2, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->mTouchStartY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyFloatViewMore;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
