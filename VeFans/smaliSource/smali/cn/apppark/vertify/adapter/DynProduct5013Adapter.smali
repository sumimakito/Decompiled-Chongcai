.class public Lcn/apppark/vertify/adapter/DynProduct5013Adapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynProductVo;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/dyn/DynProductVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->itemList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->itemList:Ljava/util/ArrayList;

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
    .locals 8

    const/4 v7, -0x1

    const/16 v4, 0x1a

    const/16 v5, 0xf

    if-nez p2, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lte;

    invoke-direct {v1}, Lte;-><init>()V

    const v0, 0x7f0a0213

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lte;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0212

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lte;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0a021b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lte;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0214

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Lte;->d:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a0215

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lte;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0219

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lte;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0217

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lte;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0218

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lte;->h:Landroid/widget/TextView;

    const v0, 0x7f0a021a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lte;->i:Landroid/widget/TextView;

    iget-object v0, v1, Lte;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFlags(I)V

    iget-object v0, v1, Lte;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgPic()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v3, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundWithSel(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lte;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lte;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v0, v1, Lte;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Bold()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v3, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lte;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowLineBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowLineBgPic()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowLineColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v3, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lte;->b:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowLineHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lte;->c:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    if-eqz v1, :cond_1

    iget-object v0, v2, Lte;->d:Lcn/apppark/mcd/widget/RemoteImageView;

    const v3, 0x7f02006f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v0, v2, Lte;->d:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getPicPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v0, v2, Lte;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "\uffe5"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0"

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getOriPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v2, Lte;->h:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, v2, Lte;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "\uffe5"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getOriPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lte;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "\u8d2d\u4e70:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getSoldCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lte;->i:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getCommentCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\u4eba\u8bc4\u8bba"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "1"

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v6, v2, Lte;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020103

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_2
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lte;

    move-object v2, v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, v2, Lte;->h:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    const-string v0, "2"

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v6, v2, Lte;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200fa

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const-string v0, "3"

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v6, v2, Lte;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020106

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v0, v2, Lte;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
