.class public Lcn/apppark/mcd/widget/MyResizeLinearLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private mListener:Lcn/apppark/mcd/widget/MyResizeLinearLayout$OnResizeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyResizeLinearLayout;->mListener:Lcn/apppark/mcd/widget/MyResizeLinearLayout$OnResizeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyResizeLinearLayout;->mListener:Lcn/apppark/mcd/widget/MyResizeLinearLayout$OnResizeListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/apppark/mcd/widget/MyResizeLinearLayout$OnResizeListener;->OnResize(IIII)V

    :cond_0
    return-void
.end method

.method public setOnResizeListener(Lcn/apppark/mcd/widget/MyResizeLinearLayout$OnResizeListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/MyResizeLinearLayout;->mListener:Lcn/apppark/mcd/widget/MyResizeLinearLayout$OnResizeListener;

    return-void
.end method
