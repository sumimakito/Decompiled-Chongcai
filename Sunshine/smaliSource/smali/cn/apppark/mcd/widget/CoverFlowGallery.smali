.class public Lcn/apppark/mcd/widget/CoverFlowGallery;
.super Landroid/widget/Gallery;


# instance fields
.field private centerView:Landroid/widget/ImageView;

.field private lastPosition:I

.field private mAlphaMode:Z

.field private mCamera:Landroid/graphics/Camera;

.field private mCircleMode:Z

.field private mCoveflowCenter:I

.field private mMaxRotationAngle:I

.field private mMaxZoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCamera:Landroid/graphics/Camera;

    iput v1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxRotationAngle:I

    iput v1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxZoom:I

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mAlphaMode:Z

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCircleMode:Z

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/CoverFlowGallery;->setStaticTransformationsEnabled(Z)V

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/CoverFlowGallery;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCamera:Landroid/graphics/Camera;

    iput v1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxRotationAngle:I

    iput v1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxZoom:I

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mAlphaMode:Z

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCircleMode:Z

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/CoverFlowGallery;->setStaticTransformationsEnabled(Z)V

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/CoverFlowGallery;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCamera:Landroid/graphics/Camera;

    iput v1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxRotationAngle:I

    iput v1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxZoom:I

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mAlphaMode:Z

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCircleMode:Z

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/CoverFlowGallery;->setStaticTransformationsEnabled(Z)V

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/CoverFlowGallery;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method private getCenterOfCoverflow()I
    .locals 2

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/CoverFlowGallery;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/CoverFlowGallery;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/CoverFlowGallery;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/CoverFlowGallery;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;I)V
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCamera:Landroid/graphics/Camera;

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {v4, v10, v10, v5}, Landroid/graphics/Camera;->translate(FFF)V

    iget v4, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxRotationAngle:I

    if-gt v3, v4, :cond_1

    iget v4, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxZoom:I

    int-to-double v4, v4

    int-to-double v6, v3

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    iget-object v5, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v10, v10, v4}, Landroid/graphics/Camera;->translate(FFF)V

    iget-boolean v4, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCircleMode:Z

    if-eqz v4, :cond_0

    const/16 v4, 0x28

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCamera:Landroid/graphics/Camera;

    const/high16 v5, 0x431b0000    # 155.0f

    invoke-virtual {v4, v10, v5, v10}, Landroid/graphics/Camera;->translate(FFF)V

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mAlphaMode:Z

    if-eqz v4, :cond_1

    const-wide v4, 0x406fe00000000000L    # 255.0

    int-to-double v6, v3

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    mul-double/2addr v6, v8

    sub-double v3, v4, v6

    double-to-int v3, v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_1
    iget-object v3, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCamera:Landroid/graphics/Camera;

    int-to-float v4, p3

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v3, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    div-int/lit8 v3, v2, 0x2

    neg-int v3, v3

    int-to-float v3, v3

    div-int/lit8 v4, v1, 0x2

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    return-void

    :cond_2
    iget-object v4, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCamera:Landroid/graphics/Camera;

    const/high16 v5, 0x437f0000    # 255.0f

    int-to-float v6, v3

    const/high16 v7, 0x40200000    # 2.5f

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v4, v10, v5, v10}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0
.end method


# virtual methods
.method public getAlphaMode()Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mAlphaMode:Z

    return v0
.end method

.method public getCenterView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->centerView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/CoverFlowGallery;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/CoverFlowGallery;->getSelectedItemPosition()I

    move-result v1

    sub-int v0, v1, v0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->lastPosition:I

    :cond_0
    if-gez v0, :cond_2

    :cond_1
    :goto_0
    return p2

    :cond_2
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    if-lt p2, v0, :cond_1

    iget v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->lastPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->lastPosition:I

    iget v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->lastPosition:I

    sub-int p2, p1, v0

    goto :goto_0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 3

    invoke-static {p1}, Lcn/apppark/mcd/widget/CoverFlowGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    iget v2, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCoveflowCenter:I

    if-ne v0, v2, :cond_1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->centerView:Landroid/widget/ImageView;

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget v2, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCoveflowCenter:I

    sub-int v0, v2, v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxRotationAngle:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxRotationAngle:I

    if-le v1, v2, :cond_0

    if-gez v0, :cond_2

    iget v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxRotationAngle:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxRotationAngle:I

    goto :goto_0
.end method

.method public getCircleMode()Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCircleMode:Z

    return v0
.end method

.method public getMaxRotationAngle()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxRotationAngle:I

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxZoom:I

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/mcd/widget/CoverFlowGallery;->getCenterOfCoverflow()I

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCoveflowCenter:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onSizeChanged(IIII)V

    return-void
.end method

.method public setAlphaMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mAlphaMode:Z

    return-void
.end method

.method public setCircleMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mCircleMode:Z

    return-void
.end method

.method public setMaxRotationAngle(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxRotationAngle:I

    return-void
.end method

.method public setMaxZoom(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/CoverFlowGallery;->mMaxZoom:I

    return-void
.end method
