.class public Lcn/apppark/vertify/adapter/STogether5041Adapter;
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

.field private mInflater:Landroid/view/LayoutInflater;

.field private pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;


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

    iput-object v0, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->itemList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->itemList:Ljava/util/ArrayList;

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

    const/16 v4, 0x1a

    const/16 v5, 0xf

    if-nez p2, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lun;

    invoke-direct {v1}, Lun;-><init>()V

    const v0, 0x7f0a0370

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lun;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0371

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Lun;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a0373

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lun;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0375

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lun;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0374

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lun;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0376

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lun;->f:Landroid/widget/TextView;

    iget-object v0, v1, Lun;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgPic()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v3, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundWithSel(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lun;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lun;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowBgAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v0, v1, Lun;->c:Landroid/widget/TextView;

    const-string v2, "16"

    iget-object v3, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getTitleFontStyleColor()Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-static {v0, v2, v3, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lun;->d:Landroid/widget/TextView;

    const-string v2, "12"

    iget-object v3, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getIntroduceFontStyleColor()Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-static {v0, v2, v3, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lun;->e:Landroid/widget/TextView;

    const-string v2, "12"

    iget-object v3, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getIntroduceFontStyleColor()Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-static {v0, v2, v3, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lun;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowLineBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowLineBgPic()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowLineColor()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v7}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowLineBgAlpha()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v2, v3, v6, v7}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lun;->f:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget-object v6, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_rowLineHeight()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v6

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v1

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;

    if-eqz v6, :cond_1

    iget-object v0, v7, Lun;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const v1, 0x7f020071

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v0, v7, Lun;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrlCorner(Ljava/lang/String;I)V

    const-string v0, "1"

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getTitleFontStyleColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v8, v7, Lun;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020114

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, v7, Lun;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getIntroduce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Lun;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getDistance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lun;

    move-object v7, v0

    goto :goto_0

    :cond_3
    const-string v0, "2"

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getTitleFontStyleColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v8, v7, Lun;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020089

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const-string v0, "3"

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getTitleFontStyleColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v8, v7, Lun;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/STogether5041Adapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020117

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v0, v7, Lun;->c:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
