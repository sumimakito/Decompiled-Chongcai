.class public Lcn/apppark/vertify/adapter/DynProduct5014Adapter;
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

    iput-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->itemList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->itemList:Ljava/util/ArrayList;

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
    .locals 11

    const/16 v10, 0x8

    const/16 v4, 0x1a

    const/16 v5, 0xf

    const/4 v9, 0x0

    const/4 v8, -0x1

    if-nez p2, :cond_4

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Luc;

    invoke-direct {v1}, Luc;-><init>()V

    const v0, 0x7f0a022c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Luc;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a022d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Luc;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a022e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Luc;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0233

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Luc;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0a022f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luc;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0232

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luc;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0231

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luc;->f:Landroid/widget/TextView;

    iget-object v0, v1, Luc;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFlags(I)V

    const v0, 0x7f0a0234

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luc;->h:Landroid/widget/TextView;

    const v0, 0x7f0a0235

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luc;->i:Landroid/widget/TextView;

    iget-object v0, v1, Luc;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgPic()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v3, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundWithSel(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Luc;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Luc;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v0, v1, Luc;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Luc;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Bold()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v3, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_titlePosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    const v3, 0x7f0a022d

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, v1, Luc;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v1

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    if-eqz v6, :cond_1

    iget-object v0, v7, Luc;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Luc;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uffe5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0"

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getOriPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v7, Luc;->g:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getPicPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_picStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_picHeight()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_3
    iget-object v1, v7, Luc;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Luc;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const v1, 0x7f020071

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v0, v7, Luc;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0, v9}, Lcn/apppark/mcd/widget/RemoteImageView;->setVisibility(I)V

    iget-object v0, v7, Luc;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getPicPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    :goto_4
    const-string v0, "1"

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v8, v7, Luc;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020113

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v0, v7, Luc;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5171\u552e\u51fa"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getSoldCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Luc;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getCommentCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4eba\u8bc4\u8bba"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2

    :cond_2
    iget-object v0, v1, Luc;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_titleBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_titleBgPic()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_titleBgColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v3, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Luc;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "0"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_titleBgType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Luc;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_titleBgAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    iget-object v0, v1, Luc;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luc;

    move-object v7, v0

    goto/16 :goto_1

    :cond_5
    iget-object v0, v7, Luc;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v7, Luc;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uffe5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getOriPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getPicHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getPicWidth()I

    move-result v1

    div-int v1, v0, v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_3

    :cond_7
    iget-object v0, v7, Luc;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0, v10}, Lcn/apppark/mcd/widget/RemoteImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_8
    const-string v0, "2"

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v8, v7, Luc;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02010a

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_9
    const-string v0, "3"

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v8, v7, Luc;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5014Adapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020117

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_a
    iget-object v0, v7, Luc;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method
