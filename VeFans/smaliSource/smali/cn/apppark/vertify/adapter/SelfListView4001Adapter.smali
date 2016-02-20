.class public Lcn/apppark/vertify/adapter/SelfListView4001Adapter;
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

    iput-object v0, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->itemList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->itemList:Ljava/util/ArrayList;

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
    .locals 10

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/16 v9, 0x8

    const/16 v8, 0xa

    const/4 v7, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;

    if-nez p2, :cond_5

    iget-object v1, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03007f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lto;

    invoke-direct {v2}, Lto;-><init>()V

    const v1, 0x7f0a0310

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lto;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0312

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lto;->b:Landroid/widget/ImageView;

    const v1, 0x7f0a0315

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lto;->c:Landroid/widget/ImageView;

    const v1, 0x7f0a0313

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lto;->d:Landroid/widget/TextView;

    const v1, 0x7f0a0314

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lto;->e:Landroid/widget/TextView;

    const v1, 0x7f0a0311

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lto;->f:Landroid/widget/TextView;

    iget-object v1, v2, Lto;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v1, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_text1Align()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_text2Align()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :goto_1
    iget-object v1, v2, Lto;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_leftPicHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, v2, Lto;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_leftPicWidth()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, v2, Lto;->b:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_2
    if-eqz v0, :cond_4

    iget-object v2, v1, Lto;->a:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowBgType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowBgPic()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowBgColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundWithSel(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lto;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lto;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowBgAlpha()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0xff

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v2, v1, Lto;->a:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    iget-object v5, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_rowHeight()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v1, Lto;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_leftPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v1, Lto;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_rightPic()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, ""

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_rightPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    iget-object v2, v1, Lto;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
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
    iget-object v2, v1, Lto;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_text2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, ""

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_text2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "0"

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_showText2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v0, v1, Lto;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_5
    iget-object v0, v1, Lto;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v7, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v1, Lto;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v7, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object p2

    :pswitch_0
    iget-object v1, v2, Lto;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, v2, Lto;->d:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, v2, Lto;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, v2, Lto;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, v2, Lto;->e:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, v2, Lto;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lto;

    goto/16 :goto_2

    :cond_6
    iget-object v2, v1, Lto;->c:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, v1, Lto;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_rightPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v1, Lto;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_7
    iget-object v2, v1, Lto;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lto;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_text1()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_text1Bold()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    iget-object v2, v1, Lto;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lto;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getData_text2()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_text2Size()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_text2Color()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/SelfListView4001Adapter;->pageItem:Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;->getStyle_text2Bold()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v0, v3, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
