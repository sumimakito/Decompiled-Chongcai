.class public Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field private item2List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfGridItem2Vo;",
            ">;"
        }
    .end annotation
.end field

.field private itemWidth:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfGridItemVo;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/free/SelfGridItemVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfGridItem2Vo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->itemWidth:I

    iput-object p2, p0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->item2List:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getSys_w()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getStyle_margin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getStyle_columnNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getStyle_columnSpace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getStyle_columnNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->itemWidth:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->item2List:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->item2List:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Ltk;

    invoke-direct {v1, p0}, Ltk;-><init>(Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;)V

    const v0, 0x7f0a030d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Ltk;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0a030e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Ltk;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a030f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltk;->c:Landroid/widget/TextView;

    iget-object v0, v1, Ltk;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->itemWidth:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, v1, Ltk;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->itemWidth:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, v1, Ltk;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->itemWidth:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, v1, Ltk;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getStyle_text1Bold()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->item2List:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfGridItem2Vo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGridItem2Vo;->getData_pic()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Ltk;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGridItem2Vo;->getData_pic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v1, Ltk;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Ltk;->b:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGridItem2Vo;->getData_text()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGridItem2Vo;->getData_text()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Ltk;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v1, Ltk;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGridItem2Vo;->getData_text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltk;

    move-object v1, v0

    goto :goto_0
.end method
