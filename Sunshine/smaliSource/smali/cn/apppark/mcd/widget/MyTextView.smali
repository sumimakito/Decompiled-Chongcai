.class public Lcn/apppark/mcd/widget/MyTextView;
.super Landroid/view/View;


# instance fields
.field private caculateTextSize:F

.field private colorStr:Ljava/lang/String;

.field private gravity:I

.field private lead:F

.field private lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private minSize:I

.field private size:I

.field private text:Ljava/lang/String;

.field private viewHeight:F

.field private viewWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/apppark/mcd/widget/MyTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/mcd/widget/MyTextView;->minSize:I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcn/apppark/mcd/widget/MyTextView;->lead:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;FFLjava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/apppark/mcd/widget/MyTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcn/apppark/mcd/widget/MyTextView;->text:Ljava/lang/String;

    iput p4, p0, Lcn/apppark/mcd/widget/MyTextView;->viewHeight:F

    iput p3, p0, Lcn/apppark/mcd/widget/MyTextView;->viewWidth:F

    iput-object p5, p0, Lcn/apppark/mcd/widget/MyTextView;->colorStr:Ljava/lang/String;

    iput p6, p0, Lcn/apppark/mcd/widget/MyTextView;->gravity:I

    iput p7, p0, Lcn/apppark/mcd/widget/MyTextView;->size:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/MyTextView;->init()V

    return-void
.end method

.method private autoSplit(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Paint;",
            "F)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x1

    :goto_1
    if-ge v3, v4, :cond_1

    invoke-virtual {p2, p1, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    cmpl-float v0, v0, p3

    if-lez v0, :cond_6

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v3

    :goto_2
    if-ge v0, v2, :cond_3

    iget-object v5, p0, Lcn/apppark/mcd/widget/MyTextView;->text:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    :goto_3
    if-ne v0, v4, :cond_5

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v2

    move v2, v3

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_6
    move v0, v2

    move v2, v3

    goto :goto_3
.end method

.method private caculateSize(I)F
    .locals 7

    iget v0, p0, Lcn/apppark/mcd/widget/MyTextView;->viewHeight:F

    iget v1, p0, Lcn/apppark/mcd/widget/MyTextView;->viewWidth:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    int-to-double v2, p1

    div-double v5, v0, v2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iget v0, p0, Lcn/apppark/mcd/widget/MyTextView;->lead:F

    float-to-double v3, v0

    neg-double v5, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/apppark/mcd/widget/MyTextView;->root(DDD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static getLenOfString(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const-string v1, "[\\u4e00-\\u9fa5]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyTextView;->text:Ljava/lang/String;

    iget v2, p0, Lcn/apppark/mcd/widget/MyTextView;->viewWidth:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyTextView;->colorStr:Ljava/lang/String;

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/apppark/mcd/widget/MyTextView;->size:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->text:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyTextView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/apppark/mcd/widget/MyTextView;->viewWidth:F

    iget v3, p0, Lcn/apppark/mcd/widget/MyTextView;->size:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/mcd/widget/MyTextView;->autoSplit(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->lines:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/apppark/mcd/widget/MyTextView;->size:I

    int-to-float v1, v1

    iget v2, p0, Lcn/apppark/mcd/widget/MyTextView;->lead:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/apppark/mcd/widget/MyTextView;->viewHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcn/apppark/mcd/widget/MyTextView;->size:I

    int-to-float v0, v0

    iput v0, p0, Lcn/apppark/mcd/widget/MyTextView;->caculateTextSize:F

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyTextView;->text:Ljava/lang/String;

    invoke-static {v1}, Lcn/apppark/mcd/widget/MyTextView;->getLenOfString(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcn/apppark/mcd/widget/MyTextView;->caculateSize(I)F

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/MyTextView;->caculateTextSize:F

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/apppark/mcd/widget/MyTextView;->caculateTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->text:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyTextView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/apppark/mcd/widget/MyTextView;->viewWidth:F

    iget v3, p0, Lcn/apppark/mcd/widget/MyTextView;->caculateTextSize:F

    sub-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/mcd/widget/MyTextView;->autoSplit(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->lines:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/apppark/mcd/widget/MyTextView;->caculateTextSize:F

    iget v2, p0, Lcn/apppark/mcd/widget/MyTextView;->lead:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    :goto_0
    iget v1, p0, Lcn/apppark/mcd/widget/MyTextView;->viewHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcn/apppark/mcd/widget/MyTextView;->caculateTextSize:F

    iget v1, p0, Lcn/apppark/mcd/widget/MyTextView;->minSize:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcn/apppark/mcd/widget/MyTextView;->caculateTextSize:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/apppark/mcd/widget/MyTextView;->caculateTextSize:F

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/apppark/mcd/widget/MyTextView;->caculateTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->text:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyTextView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/apppark/mcd/widget/MyTextView;->viewWidth:F

    iget v3, p0, Lcn/apppark/mcd/widget/MyTextView;->caculateTextSize:F

    sub-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/mcd/widget/MyTextView;->autoSplit(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->lines:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/apppark/mcd/widget/MyTextView;->caculateTextSize:F

    iget v2, p0, Lcn/apppark/mcd/widget/MyTextView;->lead:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private root(DDD)D
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [D

    const-wide/16 v1, 0x0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    mul-double v1, p3, p3

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    mul-double/2addr v3, p1

    mul-double/2addr v3, p5

    sub-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    neg-double v4, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p1

    div-double/2addr v4, v6

    aput-wide v4, v0, v3

    const/4 v3, 0x1

    neg-double v4, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    sub-double v1, v4, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, p1

    div-double/2addr v1, v4

    aput-wide v1, v0, v3

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v3, p0, Lcn/apppark/mcd/widget/MyTextView;->caculateTextSize:F

    iget v1, p0, Lcn/apppark/mcd/widget/MyTextView;->gravity:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    move v1, v0

    :goto_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcn/apppark/mcd/widget/MyTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move v1, v0

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcn/apppark/mcd/widget/MyTextView;->viewWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move v1, v0

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lcn/apppark/mcd/widget/MyTextView;->viewWidth:F

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    :cond_1
    const-string v5, "\n"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcn/apppark/mcd/widget/MyTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcn/apppark/mcd/widget/MyTextView;->lead:F

    add-float/2addr v0, v3

    add-float/2addr v0, v2

    move v2, v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method
