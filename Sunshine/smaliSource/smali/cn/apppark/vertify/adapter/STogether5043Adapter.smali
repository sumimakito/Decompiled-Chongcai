.class public Lcn/apppark/vertify/adapter/STogether5043Adapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/STogetherItemVo;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/dyn/STogetherItemVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemList:Ljava/util/ArrayList;

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

    const v7, 0x7f0a0383

    const/16 v4, 0x1a

    const/16 v5, 0xf

    const/4 v8, -0x1

    if-nez p2, :cond_6

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030088

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lup;

    invoke-direct {v1}, Lup;-><init>()V

    const v0, 0x7f0a0382

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lup;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Lup;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a0384

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lup;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0386

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lup;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0387

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lup;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0388

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lup;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0389

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lup;->g:Landroid/widget/TextView;

    iget-object v0, v1, Lup;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgPic()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v3, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundWithSel(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lup;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lup;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v0, v1, Lup;->d:Landroid/widget/TextView;

    const-string v2, "16"

    iget-object v3, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getTitleFontStyleColor()Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-static {v0, v2, v3, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lup;->e:Landroid/widget/TextView;

    const-string v2, "12"

    iget-object v3, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getIntroduceFontStyleColor()Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-static {v0, v2, v3, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lup;->f:Landroid/widget/TextView;

    const-string v2, "12"

    iget-object v3, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getIntroduceFontStyleColor()Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-static {v0, v2, v3, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_titlePosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, v1, Lup;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    iget-object v0, v1, Lup;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowLineBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowLineBgPic()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowLineColor()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v7}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowLineBgAlpha()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v2, v3, v6, v7}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lup;->g:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowLineHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "1"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_picStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_picHeight()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, v1, Lup;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v2, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v1

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "0"

    iget-object v1, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_picStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getSys_w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(I)I

    move-result v0

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getPicHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getPicWidth()I

    move-result v1

    div-int/2addr v0, v1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, v7, Lup;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, v7, Lup;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const v1, 0x7f020071

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v0, v7, Lup;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setVisibility(I)V

    iget-object v0, v7, Lup;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    :goto_2
    const-string v0, "1"

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getTitleFontStyleColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v8, v7, Lup;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020114

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, v7, Lup;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getIntroduce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Lup;->f:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getDistance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-object p2

    :cond_5
    iget-object v0, v1, Lup;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_titleBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_titleBgPic()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_titleBgColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v3, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lup;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_titleBgType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lup;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_titleBgAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lup;

    move-object v7, v0

    goto/16 :goto_1

    :cond_7
    iget-object v0, v7, Lup;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    const-string v0, "2"

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getTitleFontStyleColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v8, v7, Lup;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020089

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    const-string v0, "3"

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getTitleFontStyleColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v8, v7, Lup;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5043Adapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020117

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, v7, Lup;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method
