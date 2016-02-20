.class public Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;
.super Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfViewDyn;


# instance fields
.field private final CLICK_GALLERY_ITEM:I

.field private final GET_WHAT:I

.field private final REF_DATA:I

.field private final WHAT_AUTO_PLAY:I

.field a:Landroid/widget/RelativeLayout;

.field private adapter:Lcn/apppark/vertify/adapter/DynMsg5010Adapter;

.field b:Landroid/widget/RelativeLayout;

.field public c:Landroid/widget/Gallery;

.field private clickPos:I

.field private context:Landroid/content/Context;

.field private currentPage:I

.field private currentPos:I

.field d:Lhp;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/TextView;

.field private firstItemIndex:I

.field g:Ljava/lang/Thread;

.field private handler:Lhq;

.field private isStop:Z

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

.field private itemListGallery:Ljava/util/ArrayList;
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

.field private loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

.field private pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

.field private parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->WHAT_AUTO_PLAY:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->CLICK_GALLERY_ITEM:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->GET_WHAT:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->REF_DATA:I

    iput v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->firstItemIndex:I

    iput-boolean v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->isStop:Z

    iput v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->currentPos:I

    iput v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->clickPos:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->itemList:Ljava/util/ArrayList;

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->currentPage:I

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    new-instance v0, Lhq;

    invoke-direct {v0, p0, v5}, Lhq;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;Lhk;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->handler:Lhq;

    iput-object p4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->setCacheColorHint(I)V

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->setFadingEdgeLength(I)V

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0, p4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->setParentScroll(Lcn/apppark/mcd/widget/ElasticScrollView;)V

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->setFooterDividersEnabled(Z)V

    new-instance v0, Lhk;

    invoke-direct {v0, p0}, Lhk;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lhl;

    invoke-direct {v0, p0}, Lhl;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnFootRefreshListener;)V

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_rowLineBgType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_rowLineBgPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_rowLineColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_rowLineHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setDevider(Landroid/widget/ListView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030038

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a01a4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_titleBgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_titleBgPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_titleBgColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_titleBgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_titleBgAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a01a3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->c:Landroid/widget/Gallery;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->c:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a01a6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->f:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_galleryTextSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_galleryTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_galleryTextBold()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a01a5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->c:Landroid/widget/Gallery;

    new-instance v1, Lhm;

    invoke-direct {v1, p0}, Lhm;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->c:Landroid/widget/Gallery;

    new-instance v1, Lhn;

    invoke-direct {v1, p0}, Lhn;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->addHeaderView(Landroid/view/View;)V

    const-string v0, "0"

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_enableScroll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->setScroll(Z)V

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->clickPos:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;Lcn/apppark/vertify/adapter/DynMsg5010Adapter;)Lcn/apppark/vertify/adapter/DynMsg5010Adapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->adapter:Lcn/apppark/vertify/adapter/DynMsg5010Adapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->itemListTemp:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;II)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->getData(II)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->currentPage:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;I)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->currentPos:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->itemListGallery:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->currentPos:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->itemListGallery:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)Lhq;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->handler:Lhq;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->itemListTemp:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->initGalleryData()V

    return-void
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)Lcn/apppark/vertify/adapter/DynMsg5010Adapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->adapter:Lcn/apppark/vertify/adapter/DynMsg5010Adapter;

    return-object v0
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "interfaces"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getInterfaces()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pageSize"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->handler:Lhq;

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

.method public static synthetic h(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)Lcn/apppark/mcd/vo/dyn/DynMsgListVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    return-object v0
.end method

.method private initChangeGalleryThread()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->g:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lho;

    invoke-direct {v1, p0}, Lho;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private initGalleryData()V
    .locals 4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->itemListGallery:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->d:Lhp;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->itemListGallery:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->c:Landroid/widget/Gallery;

    new-instance v1, Lhp;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->context:Landroid/content/Context;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->itemListGallery:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lhp;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->initChangeGalleryThread()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->adapter:Lcn/apppark/vertify/adapter/DynMsg5010Adapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/DynMsg5010Adapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->currentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->currentPage:I

    return v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->currentPos:I

    return v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->clickPos:I

    return v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->isStop:Z

    return v0
.end method

.method private refData()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->currentPage:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->getData(II)V

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

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->currentPage:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->getData(II)V

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

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    invoke-interface {v0, p1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadFail(I)V

    :cond_0
    return-void
.end method

.method public loadSuccess(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    invoke-interface {v0, p1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadSuccess(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->isStop:Z

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->currentPage:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->getData(II)V

    return-void
.end method

.method public onResume()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->adapter:Lcn/apppark/vertify/adapter/DynMsg5010Adapter;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->firstItemIndex:I

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public setLoadendListener(Lcn/apppark/vertify/activity/ILoadDataEndListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    return-void
.end method
