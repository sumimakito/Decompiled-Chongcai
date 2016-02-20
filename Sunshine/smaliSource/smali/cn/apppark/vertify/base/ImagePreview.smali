.class public Lcn/apppark/vertify/base/ImagePreview;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DRAG:I = 0x1

.field private static final MAX_SCALE:F = 4.0f

.field private static final NONE:I = 0x0

.field private static final ZOOM:I = 0x2


# instance fields
.field public a:Landroid/os/Handler;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private dist:F

.field private isScale:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDisplyMetrcs:Landroid/util/DisplayMetrics;

.field private mImageView:Landroid/widget/ImageView;

.field private final matrix:Landroid/graphics/Matrix;

.field private final mid:Landroid/graphics/PointF;

.field private minScaleR:F

.field private mode:I

.field private myMenu:Lvo;

.field private final prev:Landroid/graphics/PointF;

.field private progress:Landroid/widget/ProgressBar;

.field private final savedMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->savedMatrix:Landroid/graphics/Matrix;

    iput v1, p0, Lcn/apppark/vertify/base/ImagePreview;->mode:I

    iput-boolean v1, p0, Lcn/apppark/vertify/base/ImagePreview;->isScale:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->prev:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mid:Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/apppark/vertify/base/ImagePreview;->dist:F

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/base/ImagePreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/base/ImagePreview;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/base/ImagePreview;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/base/ImagePreview;->btn_save:Landroid/widget/Button;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/base/ImagePreview;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/base/ImagePreview;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/base/ImagePreview;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/base/ImagePreview;->btn_cancel:Landroid/widget/Button;

    return-object p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/base/ImagePreview;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/base/ImagePreview;->setupViews()V

    return-void
.end method

.method private checkView()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget v1, p0, Lcn/apppark/vertify/base/ImagePreview;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    aget v1, v0, v4

    iget v2, p0, Lcn/apppark/vertify/base/ImagePreview;->minScaleR:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcn/apppark/vertify/base/ImagePreview;->minScaleR:F

    iget v3, p0, Lcn/apppark/vertify/base/ImagePreview;->minScaleR:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_0
    aget v0, v0, v4

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_1
    invoke-direct {p0, v5, v5}, Lcn/apppark/vertify/base/ImagePreview;->setCenter(ZZ)V

    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/base/ImagePreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/base/ImagePreview;->isScale:Z

    return v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/base/ImagePreview;)Lvo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->myMenu:Lvo;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/base/ImagePreview;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/base/ImagePreview;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->btn_cancel:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic h(Lcn/apppark/vertify/base/ImagePreview;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->btn_save:Landroid/widget/Button;

    return-object v0
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private setCenter()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcn/apppark/vertify/base/ImagePreview;->setCenter(ZZ)V

    return-void
.end method

.method private setCenter(ZZ)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcn/apppark/vertify/base/ImagePreview;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/apppark/vertify/base/ImagePreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcn/apppark/vertify/base/ImagePreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    if-eqz p2, :cond_5

    iget-object v4, p0, Lcn/apppark/vertify/base/ImagePreview;->mDisplyMetrcs:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v4

    cmpg-float v5, v1, v5

    if-gez v5, :cond_1

    int-to-float v4, v4

    sub-float v1, v4, v1

    div-float/2addr v1, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    :goto_0
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcn/apppark/vertify/base/ImagePreview;->mDisplyMetrcs:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_3

    int-to-float v0, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    :cond_0
    :goto_1
    iget-object v2, p0, Lcn/apppark/vertify/base/ImagePreview;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_1
    iget v1, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    iget v1, v2, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    goto :goto_0

    :cond_2
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_5

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    goto :goto_0

    :cond_3
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_4

    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_1

    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    int-to-float v0, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method private setMinZoom()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/apppark/vertify/base/ImagePreview;->minScaleR:F

    return-void
.end method

.method private setupViews()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mDisplyMetrcs:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Lcn/apppark/vertify/base/ImagePreview;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->mDisplyMetrcs:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-direct {p0}, Lcn/apppark/vertify/base/ImagePreview;->setMinZoom()V

    invoke-direct {p0}, Lcn/apppark/vertify/base/ImagePreview;->setCenter()V

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lvn;

    invoke-direct {v1, p0}, Lvn;-><init>(Lcn/apppark/vertify/base/ImagePreview;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->myMenu:Lvo;

    invoke-virtual {v0}, Lvo;->dismiss()V

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mBitmap:Landroid/graphics/Bitmap;

    const-string v1, "/mnt/sdcard/"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apppark"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/mcd/util/imge/ImgUtil;->saveMyBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u4fdd\u5b58\u6210\u529f"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v2, "\u4fdd\u5b58\u5931\u8d25"

    invoke-virtual {v1, v2, v5}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u4fdd\u5b58\u5931\u8d25"

    invoke-virtual {v0, v1, v5}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->myMenu:Lvo;

    invoke-virtual {v0}, Lvo;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0269
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/base/ImagePreview;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "picname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/ImagePreview;->setContentView(I)V

    new-instance v0, Lvo;

    invoke-direct {v0, p0, p0}, Lvo;-><init>(Lcn/apppark/vertify/base/ImagePreview;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->myMenu:Lvo;

    const v0, 0x7f0a0266

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/ImagePreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0267

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/ImagePreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->progress:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mImageView:Landroid/widget/ImageView;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    if-eqz v1, :cond_1

    const-string v0, "http://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->a:Landroid/os/Handler;

    new-instance v0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;

    new-instance v2, Lvl;

    invoke-direct {v2, p0, v1}, Lvl;-><init>(Lcn/apppark/vertify/base/ImagePreview;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;-><init>(Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->loadPic(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->progress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/apppark/vertify/base/ImagePreview;->setupViews()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->myMenu:Lvo;

    invoke-virtual {v1}, Lvo;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->myMenu:Lvo;

    invoke-virtual {v1}, Lvo;->dismiss()V

    :cond_0
    :goto_0
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->myMenu:Lvo;

    invoke-virtual {v1}, Lvo;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->myMenu:Lvo;

    invoke-virtual {v0}, Lvo;->dismiss()V

    :goto_1
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0}, Lcn/apppark/vertify/base/ImagePreview;->finish()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->myMenu:Lvo;

    iget-object v2, p0, Lcn/apppark/vertify/base/ImagePreview;->mImageView:Landroid/widget/ImageView;

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v0, v0}, Lvo;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x2

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcn/apppark/vertify/base/ImagePreview;->checkView()V

    return v4

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->prev:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iput v3, p0, Lcn/apppark/vertify/base/ImagePreview;->mode:I

    iput-boolean v4, p0, Lcn/apppark/vertify/base/ImagePreview;->isScale:Z

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->myMenu:Lvo;

    invoke-virtual {v0}, Lvo;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->myMenu:Lvo;

    invoke-virtual {v0}, Lvo;->dismiss()V

    goto :goto_0

    :pswitch_2
    iput-boolean v3, p0, Lcn/apppark/vertify/base/ImagePreview;->isScale:Z

    invoke-direct {p0, p2}, Lcn/apppark/vertify/base/ImagePreview;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/base/ImagePreview;->dist:F

    invoke-direct {p0, p2}, Lcn/apppark/vertify/base/ImagePreview;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mid:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p2}, Lcn/apppark/vertify/base/ImagePreview;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    iput v2, p0, Lcn/apppark/vertify/base/ImagePreview;->mode:I

    goto :goto_0

    :pswitch_3
    iput-boolean v4, p0, Lcn/apppark/vertify/base/ImagePreview;->isScale:Z

    iput v4, p0, Lcn/apppark/vertify/base/ImagePreview;->mode:I

    goto :goto_0

    :pswitch_4
    iput-boolean v3, p0, Lcn/apppark/vertify/base/ImagePreview;->isScale:Z

    iget v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mode:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/ImagePreview;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcn/apppark/vertify/base/ImagePreview;->prev:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcn/apppark/vertify/base/ImagePreview;->prev:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcn/apppark/vertify/base/ImagePreview;->mode:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p2}, Lcn/apppark/vertify/base/ImagePreview;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcn/apppark/vertify/base/ImagePreview;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget v1, p0, Lcn/apppark/vertify/base/ImagePreview;->dist:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lcn/apppark/vertify/base/ImagePreview;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcn/apppark/vertify/base/ImagePreview;->mid:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcn/apppark/vertify/base/ImagePreview;->mid:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
