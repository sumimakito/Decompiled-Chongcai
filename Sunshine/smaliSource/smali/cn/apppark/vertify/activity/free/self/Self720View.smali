.class public Lcn/apppark/vertify/activity/free/self/Self720View;
.super Landroid/opengl/GLSurfaceView;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcn/apppark/vertify/activity/ISelfView;


# static fields
.field public static MAX_SCALE:F

.field public static MIN_SCALE:F


# instance fields
.field private final TOUCH_SCALE_FACTOR:F

.field public a:Landroid/os/Handler;

.field private animateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private bitmapTmp:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field public earthTextureId:I

.field private volatile endTime:J

.field private isPause:Z

.field private mPreviousX:F

.field private mPreviousY:F

.field private mRenderer:Lmi;

.field private m_DistCurr:F

.field private m_DistPre:F

.field private m_Gestures:Landroid/view/GestureDetector;

.field private m_Width:F

.field private m_Xscale:F

.field private m_Yscale:F

.field private m_x1:F

.field private m_x2:F

.field private m_y1:F

.field private m_y2:F

.field private parentScroll:Landroid/widget/ScrollView;

.field private volatile startTime:J

.field private volatile threadStart:Z

.field private totalAnimDx:F

.field private totalAnimDy:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40b00000    # 5.5f

    sput v0, Lcn/apppark/vertify/activity/free/self/Self720View;->MAX_SCALE:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcn/apppark/vertify/activity/free/self/Self720View;->MIN_SCALE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x3fe66666    # 1.8f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->TOUCH_SCALE_FACTOR:F

    iput-boolean v4, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->threadStart:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->a:Landroid/os/Handler;

    iput v3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Xscale:F

    iput v3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Yscale:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_x1:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_x2:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_y1:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_y2:F

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_DistPre:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Width:F

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_DistCurr:F

    iput-boolean v4, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->isPause:Z

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->bitmapTmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcn/apppark/vertify/activity/free/self/Self720View;->setBg(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x3fe66666    # 1.8f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->TOUCH_SCALE_FACTOR:F

    iput-boolean v4, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->threadStart:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->a:Landroid/os/Handler;

    iput v3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Xscale:F

    iput v3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Yscale:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_x1:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_x2:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_y1:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_y2:F

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_DistPre:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Width:F

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_DistCurr:F

    iput-boolean v4, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->isPause:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/Self720ItemVo;Landroid/widget/ScrollView;)V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x3fe66666    # 1.8f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->TOUCH_SCALE_FACTOR:F

    iput-boolean v4, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->threadStart:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->a:Landroid/os/Handler;

    iput v3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Xscale:F

    iput v3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Yscale:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_x1:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_x2:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_y1:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_y2:F

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_DistPre:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Width:F

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_DistCurr:F

    iput-boolean v4, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->isPause:Z

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->parentScroll:Landroid/widget/ScrollView;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/Self720View;->requestFocus()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/Self720View;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/free/Self720ItemVo;->getData_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/free/self/Self720View;->setBg(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/self/Self720View;)F
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Xscale:F

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/self/Self720View;F)F
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Width:F

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/self/Self720View;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->threadStart:Z

    return p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/self/Self720View;)F
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Yscale:F

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/self/Self720View;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->bitmapTmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/self/Self720View;)J
    .locals 2

    iget-wide v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->endTime:J

    return-wide v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/self/Self720View;)J
    .locals 2

    iget-wide v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->startTime:J

    return-wide v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/self/Self720View;)Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->animateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/free/self/Self720View;)F
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->totalAnimDy:F

    return v0
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/free/self/Self720View;)F
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->totalAnimDx:F

    return v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/free/self/Self720View;)Lmi;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->mRenderer:Lmi;

    return-object v0
.end method

.method private setTo1024()V
    .locals 2

    const v1, 0x3fe66666    # 1.8f

    const/high16 v0, 0x40b00000    # 5.5f

    sput v0, Lcn/apppark/vertify/activity/free/self/Self720View;->MAX_SCALE:F

    const v0, 0x3f19999a    # 0.6f

    sput v0, Lcn/apppark/vertify/activity/free/self/Self720View;->MIN_SCALE:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Xscale:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Yscale:F

    return-void
.end method

.method private setTo512()V
    .locals 2

    const v1, 0x3f99999a    # 1.2f

    const/high16 v0, 0x40900000    # 4.5f

    sput v0, Lcn/apppark/vertify/activity/free/self/Self720View;->MAX_SCALE:F

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcn/apppark/vertify/activity/free/self/Self720View;->MIN_SCALE:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Xscale:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Yscale:F

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    return-void
.end method

.method public initTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I
    .locals 6

    const/4 v1, 0x1

    const v5, 0x47012f00    # 33071.0f

    const/4 v4, 0x0

    const/16 v3, 0xde1

    new-array v0, v1, [I

    invoke-interface {p1, v1, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    aget v0, v0, v4

    invoke-interface {p1, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-interface {p1, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-interface {p1, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    invoke-interface {p1, v3, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    invoke-interface {p1, v3, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    invoke-static {v3, v4, p2, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return v0
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAnimateMove(FFJ)V
    .locals 2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->animateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->startTime:J

    iget-wide v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->startTime:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->endTime:J

    const v0, 0x48927c00    # 300000.0f

    div-float v0, p1, v0

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->totalAnimDx:F

    const v0, 0x48742400    # 250000.0f

    div-float v0, p2, v0

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->totalAnimDy:F

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->threadStart:Z

    if-nez v0, :cond_0

    new-instance v0, Lmg;

    invoke-direct {v0, p0}, Lmg;-><init>(Lcn/apppark/vertify/activity/free/self/Self720View;)V

    invoke-virtual {v0}, Lmg;->start()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, p3, p4, v0, v1}, Lcn/apppark/vertify/activity/free/self/Self720View;->onAnimateMove(FFJ)V

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v4, -0x40800000    # -1.0f

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->parentScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput v4, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_DistPre:F

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v6, :cond_5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_x1:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_y1:F

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_x2:F

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_y2:F

    iget v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_x2:F

    iget v3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_x1:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v4, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_y2:F

    iget v5, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_y1:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_DistCurr:F

    iget v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_DistPre:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Width:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_DistCurr:F

    iget v4, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_DistPre:F

    sub-float/2addr v3, v4

    div-float v2, v3, v2

    iget v3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Xscale:F

    add-float/2addr v3, v2

    iput v3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Xscale:F

    iget v3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Yscale:F

    add-float/2addr v2, v3

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Yscale:F

    iget v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Xscale:F

    sget v3, Lcn/apppark/vertify/activity/free/self/Self720View;->MAX_SCALE:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    sget v2, Lcn/apppark/vertify/activity/free/self/Self720View;->MAX_SCALE:F

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Xscale:F

    sget v2, Lcn/apppark/vertify/activity/free/self/Self720View;->MAX_SCALE:F

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Yscale:F

    :cond_2
    iget v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Xscale:F

    sget v3, Lcn/apppark/vertify/activity/free/self/Self720View;->MIN_SCALE:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    sget v2, Lcn/apppark/vertify/activity/free/self/Self720View;->MIN_SCALE:F

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Xscale:F

    sget v2, Lcn/apppark/vertify/activity/free/self/Self720View;->MIN_SCALE:F

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Yscale:F

    :cond_3
    iget v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_DistCurr:F

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_DistPre:F

    :goto_1
    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->mPreviousY:F

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->mPreviousX:F

    return v6

    :cond_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->parentScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Gestures:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput v4, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_DistCurr:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->mPreviousY:F

    sub-float v2, v0, v2

    iget v3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->mPreviousX:F

    sub-float v3, v1, v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->mRenderer:Lmi;

    iget-object v4, v4, Lmi;->a:Lcn/apppark/vertify/activity/free/self/Ball720;

    mul-float/2addr v3, v5

    invoke-virtual {v4, v3}, Lcn/apppark/vertify/activity/free/self/Ball720;->increaseY(F)V

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->mRenderer:Lmi;

    iget-object v3, v3, Lmi;->a:Lcn/apppark/vertify/activity/free/self/Ball720;

    neg-float v2, v2

    mul-float/2addr v2, v5

    invoke-virtual {v3, v2}, Lcn/apppark/vertify/activity/free/self/Ball720;->increaseX(F)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setBg(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 4

    const v3, 0x3fe66666    # 1.8f

    const v2, 0x3f99999a    # 1.2f

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->bitmapTmp:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    const/high16 v0, 0x40b00000    # 5.5f

    sput v0, Lcn/apppark/vertify/activity/free/self/Self720View;->MAX_SCALE:F

    const v0, 0x3f19999a    # 0.6f

    sput v0, Lcn/apppark/vertify/activity/free/self/Self720View;->MIN_SCALE:F

    iput v3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Xscale:F

    iput v3, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Yscale:F

    :goto_0
    new-instance v0, Lmi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmi;-><init>(Lcn/apppark/vertify/activity/free/self/Self720View;Lmg;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->mRenderer:Lmi;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->mRenderer:Lmi;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/Self720View;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/Self720View;->setRenderMode(I)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Gestures:Landroid/view/GestureDetector;

    return-void

    :cond_0
    const/high16 v0, 0x40900000    # 4.5f

    sput v0, Lcn/apppark/vertify/activity/free/self/Self720View;->MAX_SCALE:F

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcn/apppark/vertify/activity/free/self/Self720View;->MIN_SCALE:F

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Xscale:F

    iput v2, p0, Lcn/apppark/vertify/activity/free/self/Self720View;->m_Yscale:F

    goto :goto_0
.end method
