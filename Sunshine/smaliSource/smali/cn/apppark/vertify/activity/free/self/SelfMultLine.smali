.class public Lcn/apppark/vertify/activity/free/self/SelfMultLine;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfView;


# instance fields
.field private context:Landroid/content/Context;

.field private h:I

.field private textView:Lcn/apppark/mcd/widget/MyTextView;

.field private vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfDefineItemVo;Landroid/widget/ScrollView;II)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->context:Landroid/content/Context;

    iput p4, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->w:I

    iput p5, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->h:I

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 9

    const/4 v0, -0x1

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v0, Lcn/apppark/mcd/widget/MyTextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_text()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->w:I

    int-to-float v3, v3

    iget v4, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->h:I

    int-to-float v4, v4

    iget-object v5, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_textColor()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_textAlign()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v7}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_textSize()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/apppark/mcd/util/FunctionPublic;->scaleNumber(Ljava/lang/String;)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcn/apppark/mcd/widget/MyTextView;-><init>(Landroid/content/Context;Ljava/lang/String;FFLjava/lang/String;II)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->textView:Lcn/apppark/mcd/widget/MyTextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->textView:Lcn/apppark/mcd/widget/MyTextView;

    invoke-virtual {p0, v0, v8}, Lcn/apppark/vertify/activity/free/self/SelfMultLine;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
