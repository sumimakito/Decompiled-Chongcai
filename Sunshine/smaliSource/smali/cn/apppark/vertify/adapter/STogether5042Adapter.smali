.class public Lcn/apppark/vertify/adapter/STogether5042Adapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field b:I

.field c:I

.field private columns:I

.field private context:Landroid/content/Context;

.field d:I

.field private pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

.field private pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

.field private reItemVoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/STogetherItemVo;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/base/FreePageVo;",
            "Lcn/apppark/mcd/vo/dyn/STogetherItemVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->columns:I

    iput-object p1, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    iput-object p4, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->reItemVoList:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->a:Landroid/view/LayoutInflater;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->b:I

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getSys_w()I

    move-result v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(I)I

    move-result v0

    iget v1, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->b:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->c:I

    iget v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->c:I

    iput v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->d:I

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/adapter/STogether5042Adapter;)Lcn/apppark/mcd/vo/dyn/STogetherItemVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    return-object v0
.end method

.method static synthetic b(Lcn/apppark/vertify/adapter/STogether5042Adapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method private setState(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/16 v4, 0x1a

    const/16 v5, 0xf

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->context:Landroid/content/Context;

    const v2, 0x7f020114

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->context:Landroid/content/Context;

    const v2, 0x7f020089

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p4}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->context:Landroid/content/Context;

    const v2, 0x7f020117

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->reItemVoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->columns:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->reItemVoList:Ljava/util/ArrayList;

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
    .locals 11

    const v10, 0x7f020071

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    if-nez p2, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Luo;

    invoke-direct {v1}, Luo;-><init>()V

    const v0, 0x7f0a0378

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Luo;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0379

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Luo;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a037a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luo;->c:Landroid/widget/TextView;

    const v0, 0x7f0a037b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luo;->d:Landroid/widget/TextView;

    const v0, 0x7f0a037c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luo;->e:Landroid/widget/TextView;

    const v0, 0x7f0a037d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Luo;->f:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a037e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Luo;->g:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a037f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luo;->h:Landroid/widget/TextView;

    const v0, 0x7f0a0380

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luo;->i:Landroid/widget/TextView;

    const v0, 0x7f0a0381

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luo;->j:Landroid/widget/TextView;

    iget-object v0, v1, Luo;->c:Landroid/widget/TextView;

    const-string v2, "16"

    iget-object v4, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getTitleFontStyleColor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v0, v2, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Luo;->h:Landroid/widget/TextView;

    const-string v2, "16"

    iget-object v4, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getTitleFontStyleColor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v0, v2, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Luo;->d:Landroid/widget/TextView;

    const-string v2, "12"

    iget-object v4, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getIntroduceFontStyleColor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v0, v2, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Luo;->i:Landroid/widget/TextView;

    const-string v2, "12"

    iget-object v4, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getIntroduceFontStyleColor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v0, v2, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Luo;->e:Landroid/widget/TextView;

    const-string v2, "12"

    iget-object v4, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getIntroduceFontStyleColor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v0, v2, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Luo;->j:Landroid/widget/TextView;

    const-string v2, "12"

    iget-object v4, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getIntroduceFontStyleColor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v0, v2, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->d:I

    invoke-direct {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, v1, Luo;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v2, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->d:I

    invoke-direct {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, v1, Luo;->g:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v2, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Luo;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgPic()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundWithSel(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Luo;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Luo;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v0, v1, Luo;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgPic()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundWithSel(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Luo;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Luo;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    add-int/lit8 v0, p1, 0x1

    iget v2, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->columns:I

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->reItemVoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->columns:I

    move v4, v0

    :goto_1
    if-ne v4, v8, :cond_5

    iget-object v0, v1, Luo;->f:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    move v2, v3

    :goto_3
    iget v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->columns:I

    if-ge v2, v0, :cond_9

    if-ge v2, v4, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->reItemVoList:Ljava/util/ArrayList;

    iget v5, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->columns:I

    mul-int/2addr v5, p1

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;

    if-nez v2, :cond_7

    if-eqz v0, :cond_7

    iget-object v5, v1, Luo;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getPicUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v5, v1, Luo;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v5, v1, Luo;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getIntroduce()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getDistance()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Luo;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getDistance()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Luo;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v5, v1, Luo;->a:Landroid/widget/RelativeLayout;

    new-instance v6, Lcn/apppark/vertify/adapter/STogether5042Adapter$MyOnClick;

    invoke-direct {v6, p0, v0}, Lcn/apppark/vertify/adapter/STogether5042Adapter$MyOnClick;-><init>(Lcn/apppark/vertify/adapter/STogether5042Adapter;Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getType()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Luo;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v7}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getTitleFontStyleColor()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v0, v7}, Lcn/apppark/vertify/adapter/STogether5042Adapter;->setState(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luo;

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->reItemVoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->columns:I

    mul-int/2addr v2, p1

    sub-int/2addr v0, v2

    move v4, v0

    goto/16 :goto_1

    :cond_5
    iget-object v0, v1, Luo;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v5, v1, Luo;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    if-ne v2, v8, :cond_2

    if-eqz v0, :cond_2

    iget-object v5, v1, Luo;->g:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getPicUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v5, v1, Luo;->g:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v5, v1, Luo;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getIntroduce()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getDistance()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v1, Luo;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getDistance()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Luo;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    iget-object v5, v1, Luo;->f:Landroid/widget/RelativeLayout;

    new-instance v6, Lcn/apppark/vertify/adapter/STogether5042Adapter$MyOnClick;

    invoke-direct {v6, p0, v0}, Lcn/apppark/vertify/adapter/STogether5042Adapter$MyOnClick;-><init>(Lcn/apppark/vertify/adapter/STogether5042Adapter;Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getType()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Luo;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcn/apppark/vertify/adapter/STogether5042Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v7}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getTitleFontStyleColor()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v0, v7}, Lcn/apppark/vertify/adapter/STogether5042Adapter;->setState(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    iget-object v5, v1, Luo;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_9
    return-object p2
.end method
