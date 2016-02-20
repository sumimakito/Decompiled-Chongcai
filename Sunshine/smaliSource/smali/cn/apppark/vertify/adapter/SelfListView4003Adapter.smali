.class public Lcn/apppark/vertify/adapter/SelfListView4003Adapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfListViewItemVo;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/free/SelfListViewItemVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->itemList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;

    if-nez p2, :cond_5

    iget-object v1, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030098

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Luw;

    invoke-direct {v2}, Luw;-><init>()V

    const v1, 0x7f0a03b6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Luw;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0a03b7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Luw;->b:Landroid/widget/ImageView;

    const v1, 0x7f0a03b8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Luw;->c:Landroid/widget/TextView;

    const v1, 0x7f0a03b9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Luw;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, v1, Luw;->a:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowBgType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowBgPic()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowBgColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundWithSel(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Luw;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Luw;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowBgAlpha()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0xff

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v2, v1, Luw;->a:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_leftPic()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, ""

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_leftPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    iget-object v2, v1, Luw;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_text1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, ""

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_text1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    iget-object v2, v1, Luw;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_text2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, ""

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_text2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v0, v1, Luw;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_3
    return-object p2

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luw;

    goto/16 :goto_0

    :cond_6
    iget-object v2, v1, Luw;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Luw;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_leftPic()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getSys_w()I

    move-result v4

    invoke-static {v4}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(I)I

    move-result v4

    invoke-static {v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->caculateHeightWithWidth(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v1, Luw;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getSys_w()I

    move-result v3

    invoke-static {v3}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, v1, Luw;->b:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, v1, Luw;->b:Landroid/widget/ImageView;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_leftPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v1, Luw;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_7
    iget-object v2, v1, Luw;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Luw;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_text1()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_text1Bold()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    iget-object v2, v1, Luw;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v1, Luw;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_text2()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_text2Size()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_text2Color()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/SelfListView4003Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_text2Bold()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
