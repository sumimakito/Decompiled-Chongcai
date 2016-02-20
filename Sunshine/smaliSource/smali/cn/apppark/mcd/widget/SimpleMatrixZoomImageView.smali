.class public Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;
.super Landroid/widget/ImageView;


# static fields
.field private static final DRAG:I = 0x1

.field private static final NONE:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TouchableImageView"

.field private static final ZOOM:I = 0x2


# instance fields
.field private matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private mid:Landroid/graphics/PointF;

.field private mode:I

.field private oldDist:F

.field private savedMatrix:Landroid/graphics/Matrix;

.field private scale:F

.field private start:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->mode:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->savedMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->start:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->mid:Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->scale:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->maxScale:F

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Lai;

    invoke-direct {v0, p0}, Lai;-><init>(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)V

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->mode:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->savedMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->start:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->mid:Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->scale:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->maxScale:F

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Lai;

    invoke-direct {v0, p0}, Lai;-><init>(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)V

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->mode:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->savedMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->start:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->mid:Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->scale:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->maxScale:F

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Lai;

    invoke-direct {v0, p0}, Lai;-><init>(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)V

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;F)F
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->oldDist:F

    return p1
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->mode:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;F)F
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->scale:F

    return p1
.end method

.method public static synthetic b(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->savedMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->start:Landroid/graphics/PointF;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)F
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->oldDist:F

    return v0
.end method

.method public static synthetic e(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->mid:Landroid/graphics/PointF;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->mode:I

    return v0
.end method

.method public static synthetic g(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)F
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->scale:F

    return v0
.end method

.method private initOnTouchListener()V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Lai;

    invoke-direct {v0, p0}, Lai;-><init>(Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;)V

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public center(IIF)V
    .locals 4

    iget-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->matrix:Landroid/graphics/Matrix;

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, p1, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcn/apppark/ckj10185912/YYGYContants;->screenHeight:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, p2, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/SimpleMatrixZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    return-void
.end method
