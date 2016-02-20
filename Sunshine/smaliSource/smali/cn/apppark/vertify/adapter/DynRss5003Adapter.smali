.class public Lcn/apppark/vertify/adapter/DynRss5003Adapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private pageItem:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->itemList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->itemList:Ljava/util/ArrayList;

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
    .locals 7

    if-nez p2, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lud;

    invoke-direct {v1}, Lud;-><init>()V

    const v0, 0x7f0a023d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lud;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0a023e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lud;->b:Landroid/widget/TextView;

    const v0, 0x7f0a023f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lud;->c:Landroid/widget/TextView;

    iget-object v0, v1, Lud;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_rowBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_rowBgPic()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_rowBgColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundWithSel(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lud;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lud;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_rowBgAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v0, v1, Lud;->a:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_rowHeight()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;

    if-eqz v0, :cond_1

    iget-object v2, v1, Lud;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lud;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_text1Bold()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lud;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;->getPubDate()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_text2Size()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_text2Color()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_text2Bold()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lud;

    move-object v1, v0

    goto :goto_0
.end method
