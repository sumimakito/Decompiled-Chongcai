.class public Lcn/apppark/vertify/adapter/DynMsg5011Adapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/dyn/DynMsgListVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->itemList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->itemList:Ljava/util/ArrayList;

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

    const v8, 0x7f0a01ba

    const/16 v7, 0x8

    const/4 v6, -0x1

    const/4 v5, 0x0

    if-nez p2, :cond_4

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Ltb;

    invoke-direct {v1}, Ltb;-><init>()V

    const v0, 0x7f0a01b9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Ltb;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01bb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Ltb;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Ltb;->c:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a01bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltb;->f:Landroid/widget/TextView;

    const v0, 0x7f0a01be

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltb;->g:Landroid/widget/TextView;

    const v0, 0x7f0a01bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltb;->d:Landroid/widget/TextView;

    const v0, 0x7f0a01c0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltb;->e:Landroid/widget/TextView;

    const v0, 0x7f0a01bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Ltb;->h:Landroid/widget/ImageView;

    iget-object v0, v1, Ltb;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_rowBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_rowBgPic()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_rowBgColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundWithSel(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Ltb;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Ltb;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_rowBgAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v0, v1, Ltb;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Ltb;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_text1Bold()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_titlePosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, v1, Ltb;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    if-eqz v0, :cond_2

    iget-object v2, v1, Ltb;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getPicUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "1"

    iget-object v3, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_picStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_picHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_2
    iget-object v3, v1, Ltb;->c:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v3, v2}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v1, Ltb;->c:Lcn/apppark/mcd/widget/RemoteImageView;

    const v3, 0x7f02006f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v2, v1, Ltb;->c:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v2, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setVisibility(I)V

    iget-object v2, v1, Ltb;->c:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getPicUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    :goto_3
    iget-object v2, v1, Ltb;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v2, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Ltb;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Ltb;->h:Landroid/widget/ImageView;

    const v3, 0x7f020089

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    iget-object v2, v1, Ltb;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getCreateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Ltb;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getCommentCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Ltb;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getBrowseCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p2

    :cond_3
    iget-object v0, v1, Ltb;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_titleBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_titleBgPic()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_titleBgColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Ltb;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_titleBgType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Ltb;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynMsg5011Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_titleBgAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltb;

    move-object v1, v0

    goto/16 :goto_1

    :cond_5
    sget v2, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getPicHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getPicWidth()I

    move-result v3

    div-int v3, v2, v3

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_2

    :cond_6
    iget-object v2, v1, Ltb;->c:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v2, v7}, Lcn/apppark/mcd/widget/RemoteImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_7
    const-string v2, "2"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Ltb;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Ltb;->h:Landroid/widget/ImageView;

    const v3, 0x7f02007d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_8
    const-string v2, "3"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Ltb;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Ltb;->h:Landroid/widget/ImageView;

    const v3, 0x7f02008c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_9
    iget-object v2, v1, Ltb;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4
.end method
