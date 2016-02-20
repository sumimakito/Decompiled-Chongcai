.class public Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;
.super Lcn/apppark/mcd/widget/LazyScrollView;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfViewDyn;


# static fields
.field private static final GET_WHAT:I = 0x4

.field private static final REF_DATA:I = 0x2


# instance fields
.field private bottomIndex:[I

.field private columnSpace:I

.field private column_count:I

.field private column_height:[I

.field private context:Landroid/content/Context;

.field private currentPage:I

.field private current_index:I

.field private current_page:I

.field private edgeSpace:I

.field private handler:Lif;

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

.field private itemListTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

.field private item_width:I

.field private lineIndex:[I

.field private loaded_count:I

.field private loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

.field private pageSize:I

.field private pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

.field private pin_mark:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private scroll_height:I

.field private topIndex:[I

.field private waterfall_container:Landroid/widget/LinearLayout;

.field private waterfall_items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/LazyScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->itemList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->currentPage:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->column_count:I

    const/16 v0, 0x14

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->pageSize:I

    iput v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->edgeSpace:I

    iput v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->columnSpace:I

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->current_page:I

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->current_index:I

    iput-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->pin_mark:[Ljava/util/HashMap;

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->loaded_count:I

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->context:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->setParentScroll(Lcn/apppark/mcd/widget/ElasticScrollView;)V

    new-instance v0, Lif;

    invoke-direct {v0, p0, v3}, Lif;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;Lie;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->handler:Lif;

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->initBaseData()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->InitLayout()V

    return-void
.end method

.method private AddImage(Ljava/lang/String;IILcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;)V
    .locals 4

    new-instance v1, Lcn/apppark/mcd/widget/WaterfallImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, p4, v2, v3}, Lcn/apppark/mcd/widget/WaterfallImageView;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcn/apppark/mcd/widget/WaterfallImageView;->setColumnIndex(I)V

    invoke-virtual {v1, p3}, Lcn/apppark/mcd/widget/WaterfallImageView;->setId(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->handler:Lif;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/WaterfallImageView;->setViewHandler(Landroid/os/Handler;)Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-virtual {p4, p1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->setPicUrl(Ljava/lang/String;)V

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->item_width:I

    int-to-float v0, v0

    iget v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->edgeSpace:I

    int-to-float v2, v2

    sget v3, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p4, v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->setItemWidth(I)V

    invoke-virtual {v1, p4}, Lcn/apppark/mcd/widget/WaterfallImageView;->setDynMsgListReturnVo(Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;)V

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/WaterfallImageView;->LoadImage()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->waterfall_items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private AddItemToContainer(II)V
    .locals 8

    const/4 v7, 0x0

    mul-int v2, p1, p2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    add-int/lit8 v0, p1, 0x1

    mul-int/2addr v0, p2

    if-ge v1, v0, :cond_1

    if-ge v1, v3, :cond_1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->loaded_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->loaded_count:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->current_index:I

    iget v6, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->loaded_count:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-direct {p0, v4, v5, v6, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->AddImage(Ljava/lang/String;IILcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;)V

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->current_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->current_index:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->current_index:I

    iget v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->column_count:I

    if-lt v0, v4, :cond_0

    iput v7, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->current_index:I

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v2, v0, :cond_2

    invoke-virtual {p0, v7}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->setMore(Z)V

    :cond_2
    return-void
.end method

.method private InitLayout()V
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Lie;

    invoke-direct {v0, p0}, Lie;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->setOnScrollListener(Lcn/apppark/mcd/widget/LazyScrollView$OnScrollListenerLazy;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->waterfall_container:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->waterfall_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->edgeSpace:I

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(I)I

    move-result v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->waterfall_container:Landroid/widget/LinearLayout;

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v0, v3, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->waterfall_items:Ljava/util/ArrayList;

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->columnSpace:I

    int-to-float v0, v0

    sget v2, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    mul-float/2addr v0, v2

    float-to-int v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->column_count:I

    if-ge v0, v3, :cond_0

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->item_width:I

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->waterfall_items:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->waterfall_container:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->waterfall_container:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->getView()V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->current_page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->current_page:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->scroll_height:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->itemListTemp:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->AddItemToContainer(II)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->pageSize:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->current_page:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->scroll_height:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->current_index:I

    return v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->column_count:I

    return v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->loaded_count:I

    return v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->waterfall_items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->bottomIndex:[I

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->lineIndex:[I

    return-object v0
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "interfaces"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getInterfaces()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pageSize"

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->handler:Lif;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/info.ws"

    const-string v7, "list"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->pin_mark:[Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->topIndex:[I

    return-object v0
.end method

.method private initBaseData()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getSys_w()I

    move-result v0

    iget v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->edgeSpace:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->column_count:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->item_width:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->column_count:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->column_height:[I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->column_count:I

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->pin_mark:[Ljava/util/HashMap;

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->column_count:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->lineIndex:[I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->column_count:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->bottomIndex:[I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->column_count:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->topIndex:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->column_count:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->lineIndex:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->bottomIndex:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->pin_mark:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->itemListTemp:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->current_page:I

    return v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->initBaseData()V

    return-void
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;)[I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->column_height:[I

    return-object v0
.end method

.method private refData()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->getData(II)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    return-void
.end method

.method public initData()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->currentPage:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->getData(II)V

    return-void
.end method

.method public isCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadFail(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    invoke-interface {v0, p1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadFail(I)V

    :cond_0
    return-void
.end method

.method public loadSuccess(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    invoke-interface {v0, p1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadSuccess(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->getData(II)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setLoadendListener(Lcn/apppark/vertify/activity/ILoadDataEndListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    return-void
.end method
