.class public Lcn/apppark/mcd/widget/MyFloatView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public a:Landroid/widget/RelativeLayout$LayoutParams;

.field public b:Landroid/widget/RelativeLayout$LayoutParams;

.field public c:Z

.field private context:Landroid/content/Context;

.field d:I

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private tv:Landroid/widget/TextView;

.field private tv_bg:Landroid/widget/TextView;

.field private wm:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;)V
    .locals 6

    const/16 v5, 0xa

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcn/apppark/mcd/widget/MyFloatView;->c:Z

    iput v3, p0, Lcn/apppark/mcd/widget/MyFloatView;->d:I

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv_bg:Landroid/widget/TextView;

    iput-object p1, p0, Lcn/apppark/mcd/widget/MyFloatView;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/mcd/widget/MyFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p3, p0, Lcn/apppark/mcd/widget/MyFloatView;->wm:Landroid/view/WindowManager;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    const/high16 v2, 0x42ae0000    # 87.0f

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->b:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    const/high16 v2, 0x429a0000    # 77.0f

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->a:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3, v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv_bg:Landroid/widget/TextView;

    const v1, 0x7f02013e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv_bg:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyFloatView;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcn/apppark/mcd/widget/MyFloatView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v4}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    invoke-static {v4}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv:Landroid/widget/TextView;

    const-string v2, "10"

    invoke-static {v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv:Landroid/widget/TextView;

    const v2, 0x7f0200e3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcn/apppark/mcd/widget/MyFloatView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv_bg:Landroid/widget/TextView;

    new-instance v1, Lae;

    invoke-direct {v1, p0}, Lae;-><init>(Lcn/apppark/mcd/widget/MyFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv_bg:Landroid/widget/TextView;

    new-instance v1, Laf;

    invoke-direct {v1, p0}, Laf;-><init>(Lcn/apppark/mcd/widget/MyFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/MyFloatView;F)F
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->x:F

    return v0
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/MyFloatView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv_bg:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/mcd/widget/MyFloatView;F)F
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/MyFloatView;->y:F

    return p1
.end method

.method public static synthetic b(Lcn/apppark/mcd/widget/MyFloatView;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/widget/MyFloatView;->updateViewPosition()V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/mcd/widget/MyFloatView;F)F
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/MyFloatView;->mTouchStartX:F

    return p1
.end method

.method public static synthetic d(Lcn/apppark/mcd/widget/MyFloatView;F)F
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/MyFloatView;->mTouchStartY:F

    return p1
.end method

.method private updateViewPosition()V
    .locals 3

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcn/apppark/mcd/widget/MyFloatView;->x:F

    iget v2, p0, Lcn/apppark/mcd/widget/MyFloatView;->mTouchStartX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcn/apppark/mcd/widget/MyFloatView;->y:F

    iget v2, p0, Lcn/apppark/mcd/widget/MyFloatView;->mTouchStartY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showHiddenNum(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/MyFloatView;->tv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
