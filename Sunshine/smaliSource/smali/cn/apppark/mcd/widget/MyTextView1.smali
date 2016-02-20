.class public Lcn/apppark/mcd/widget/MyTextView1;
.super Landroid/widget/TextView;


# instance fields
.field private maxTextSize:F

.field private minTextSize:F

.field private testPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcn/apppark/mcd/widget/MyTextView1;->initialise()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcn/apppark/mcd/widget/MyTextView1;->initialise()V

    return-void
.end method

.method private initialise()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyTextView1;->testPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyTextView1;->testPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/MyTextView1;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcn/apppark/mcd/widget/MyTextView1;->maxTextSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/apppark/mcd/widget/MyTextView1;->minTextSize:F

    return-void
.end method

.method private refitText(Ljava/lang/String;II)V
    .locals 7

    const/4 v6, 0x0

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/MyTextView1;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/MyTextView1;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    iget v0, p0, Lcn/apppark/mcd/widget/MyTextView1;->maxTextSize:F

    iget-object v2, p0, Lcn/apppark/mcd/widget/MyTextView1;->testPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcn/apppark/mcd/widget/MyTextView1;->testPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, p1, v6, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "H:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "availableWidth:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "textHeight:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    iget v1, p0, Lcn/apppark/mcd/widget/MyTextView1;->minTextSize:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v1, p3, :cond_0

    iget-object v1, p0, Lcn/apppark/mcd/widget/MyTextView1;->testPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v6, v3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/apppark/mcd/widget/MyTextView1;->minTextSize:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    iget v0, p0, Lcn/apppark/mcd/widget/MyTextView1;->minTextSize:F

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "___________________:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/MyTextView1;->setTextSize(F)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcn/apppark/mcd/widget/MyTextView1;->testPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method


# virtual methods
.method public getMaxTextSize()F
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/MyTextView1;->maxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/MyTextView1;->minTextSize:F

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onsizeChanged: w-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oldw-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oldh-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eq p1, p3, :cond_0

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/MyTextView1;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcn/apppark/mcd/widget/MyTextView1;->refitText(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTextChanged: start-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/MyTextView1;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/MyTextView1;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/mcd/widget/MyTextView1;->refitText(Ljava/lang/String;II)V

    return-void
.end method

.method public setMaxTextSize(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcn/apppark/mcd/widget/MyTextView1;->maxTextSize:F

    return-void
.end method

.method public setMinTextSize(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcn/apppark/mcd/widget/MyTextView1;->minTextSize:F

    return-void
.end method
