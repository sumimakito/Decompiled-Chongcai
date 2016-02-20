.class public Lvi/com/gdi/bgl/android/java/EnvDrawText;
.super Ljava/lang/Object;


# static fields
.field public static bBmpChange:Z

.field public static bmp:Landroid/graphics/Bitmap;

.field public static buffer:[I

.field public static canvasTemp:Landroid/graphics/Canvas;

.field public static iWordHightMax:I

.field public static iWordWidthMax:I

.field public static pt:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sput v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    sput v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    sput-boolean v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bBmpChange:Z

    sput-object v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    sput-object v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    sput-object v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->buffer:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawText(Ljava/lang/String;II[IIIII)[I
    .locals 11

    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    if-nez v1, :cond_5

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    :goto_0
    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 v1, 0x5c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x0

    aput v2, p3, v4

    const/4 v4, 0x1

    aput v3, p3, v4

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v2, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    sget v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    if-lt v4, v2, :cond_0

    sget v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    if-ge v4, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bBmpChange:Z

    sput v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    sput v3, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    :cond_1
    const/4 v2, 0x2

    sget v3, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    aput v3, p3, v2

    const/4 v2, 0x3

    sget v3, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    aput v3, p3, v2

    sget-boolean v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bBmpChange:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    sget v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    sget v3, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    sget-object v3, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    :goto_1
    const/high16 v2, -0x1000000

    and-int v2, v2, p6

    if-nez v2, :cond_7

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    const v3, 0x1ffffff

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_2
    if-eqz p7, :cond_2

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    move/from16 v0, p7

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    sget-object v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v2, p0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v1, v4, v1

    sget-object v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v2, p0, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_3
    sget v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    sget v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    mul-int/2addr v1, v2

    sget-boolean v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bBmpChange:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    new-array v1, v1, [I

    sput-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->buffer:[I

    :cond_4
    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->buffer:[I

    const/4 v3, 0x0

    sget v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    sget v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    sput-boolean v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bBmpChange:Z

    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->buffer:[I

    return-object v1

    :cond_5
    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/16 :goto_1

    :cond_7
    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v3, v1, 0x1

    const/4 v2, 0x2

    sget-object v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    :goto_4
    const/16 v4, 0x5c

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-lez v4, :cond_a

    sget-object v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    if-le v3, v1, :cond_9

    move v1, v3

    :cond_9
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_b

    sget-object v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    if-le v3, v1, :cond_b

    move v1, v3

    :cond_b
    sget-object v3, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/2addr v2, v4

    const/4 v5, 0x0

    aput v1, p3, v5

    const/4 v5, 0x1

    aput v2, p3, v5

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    int-to-double v7, v1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v1, v5

    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v2, v5

    sget v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    if-lt v5, v1, :cond_c

    sget v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    if-ge v5, v2, :cond_d

    :cond_c
    const/4 v5, 0x1

    sput-boolean v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bBmpChange:Z

    sput v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    sput v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    :cond_d
    const/4 v1, 0x2

    sget v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    aput v2, p3, v1

    const/4 v1, 0x3

    sget v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    aput v2, p3, v1

    sget-boolean v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bBmpChange:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    sget v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    sget v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    :goto_5
    const/high16 v1, -0x1000000

    and-int v1, v1, p6

    if-nez v1, :cond_10

    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    const v2, 0x1ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_6
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_7
    const/16 v5, 0x5c

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-lez v5, :cond_11

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v7, v2

    add-int/lit8 v2, v5, 0x1

    if-eqz p7, :cond_e

    sget-object v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    move/from16 v0, p7

    int-to-float v8, v0

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    aget v8, p3, v8

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    mul-int v9, v1, v4

    int-to-float v9, v9

    iget v10, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v9, v10

    sget-object v10, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_e
    sget-object v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v5, p4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    aget v8, p3, v8

    sub-int v7, v8, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    mul-int v8, v1, v4

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v8, v9

    sget-object v9, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/16 :goto_5

    :cond_10
    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_6

    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    if-eqz p7, :cond_12

    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    move/from16 v0, p7

    int-to-float v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    const/4 v7, 0x0

    aget v7, p3, v7

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    mul-int v8, v1, v4

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v8, v9

    sget-object v9, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_12
    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    const/4 v7, 0x0

    aget v7, p3, v7

    sub-int v5, v7, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-int/2addr v1, v4

    int-to-float v1, v1

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v3

    sget-object v3, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v6, v2, v5, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public static getTextSize(Ljava/lang/String;I)[S
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-array v0, v3, [S

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    int-to-short v5, v5

    aput-short v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
