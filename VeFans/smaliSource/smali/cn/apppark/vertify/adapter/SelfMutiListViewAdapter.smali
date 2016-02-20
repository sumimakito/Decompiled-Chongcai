.class public Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

.field private parentItem1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->parentItem1:Ljava/util/ArrayList;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    iput-object p1, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->parentItem1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->parentItem1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->getChildItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/16 v9, 0xa

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->parentItem1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->getChildItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;

    if-nez p4, :cond_5

    iget-object v1, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03007f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    new-instance v2, Ltr;

    invoke-direct {v2, p0}, Ltr;-><init>(Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;)V

    const v1, 0x7f0a0312

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Ltr;->a:Landroid/widget/ImageView;

    const v1, 0x7f0a0315

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Ltr;->b:Landroid/widget/ImageView;

    const v1, 0x7f0a0313

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Ltr;->c:Landroid/widget/TextView;

    const v1, 0x7f0a0314

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Ltr;->d:Landroid/widget/TextView;

    const v1, 0x7f0a0310

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Ltr;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, v1, Ltr;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_rowHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_rowBgPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Ltr;->e:Landroid/widget/RelativeLayout;

    invoke-static {v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_leftPic()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_leftPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    iget-object v2, v1, Ltr;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_rightPic()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, ""

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_rightPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    iget-object v2, v1, Ltr;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v2, v1, Ltr;->c:Landroid/widget/TextView;

    const-string v3, ""

    iget-object v4, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v2, v3, v4, v5, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_text1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, ""

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_text1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    iget-object v2, v1, Ltr;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v2, v1, Ltr;->d:Landroid/widget/TextView;

    const-string v3, ""

    iget-object v4, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_text2Size()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_text2Color()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v2, v3, v4, v5, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_text2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, ""

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_text2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    iget-object v0, v1, Ltr;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_4
    iget-object v0, v1, Ltr;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v9, v7, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v1, Ltr;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v9, v7, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object p4

    :cond_5
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltr;

    goto/16 :goto_0

    :cond_6
    iget-object v2, v1, Ltr;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_rowHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v1, Ltr;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_rowHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, v1, Ltr;->a:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, v1, Ltr;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_leftPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v1, Ltr;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_7
    iget-object v2, v1, Ltr;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_rightPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v1, Ltr;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_8
    iget-object v2, v1, Ltr;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Ltr;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_text1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    iget-object v2, v1, Ltr;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Ltr;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_text2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->parentItem1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->getChildItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->parentItem1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->parentItem1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/16 v9, 0x8

    const/16 v8, 0xa

    const/4 v7, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->parentItem1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;

    if-nez p3, :cond_4

    iget-object v1, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03007f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v2, Lts;

    invoke-direct {v2, p0}, Lts;-><init>(Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;)V

    const v1, 0x7f0a0312

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lts;->a:Landroid/widget/ImageView;

    const v1, 0x7f0a0313

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lts;->b:Landroid/widget/TextView;

    const v1, 0x7f0a0314

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lts;->c:Landroid/widget/TextView;

    const v1, 0x7f0a0310

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Lts;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_3

    iget-object v2, v1, Lts;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_rowHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_rowBgPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lts;->d:Landroid/widget/RelativeLayout;

    invoke-static {v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_leftPic()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_leftPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    iget-object v2, v1, Lts;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v2, v1, Lts;->b:Landroid/widget/TextView;

    const-string v3, ""

    iget-object v4, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v2, v3, v4, v5, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_text1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, ""

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_text1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    iget-object v2, v1, Lts;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v2, v1, Lts;->c:Landroid/widget/TextView;

    const-string v3, ""

    iget-object v4, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_text2Size()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_text2Color()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v2, v3, v4, v5, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_text2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, ""

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_text2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    iget-object v0, v1, Lts;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_3
    iget-object v0, v1, Lts;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v7, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v1, Lts;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v7, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object p3

    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lts;

    goto/16 :goto_0

    :cond_5
    iget-object v2, v1, Lts;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_rowHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v1, Lts;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;->mutiListViewItemVo:Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;->getStyle_rowHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, v1, Lts;->a:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, v1, Lts;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_leftPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v1, Lts;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_6
    iget-object v2, v1, Lts;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lts;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_text1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    iget-object v2, v1, Lts;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lts;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_text2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
