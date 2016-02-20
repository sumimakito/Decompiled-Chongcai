.class public Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfView;


# static fields
.field private static final WHAT_AUTO_PLAY:I = 0x1

.field private static final WHAT_CLICK_GALLERY:I = 0x2


# instance fields
.field private arrIVList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private currentPos:I

.field private gallery:Lcn/apppark/mcd/widget/CoverFlowGallery;

.field private gallerySelPos:I

.field private handler:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$PublicHandler;

.field private isStop:Z

.field private itemArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;",
            ">;"
        }
    .end annotation
.end field

.field private nextLL:Landroid/widget/LinearLayout;

.field private pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

.field private pointLL:Landroid/widget/LinearLayout;

.field private preLL:Landroid/widget/LinearLayout;

.field private rel:Landroid/widget/RelativeLayout;

.field private topBar:Landroid/widget/RelativeLayout;

.field private topTV:Landroid/widget/TextView;

.field private vo:Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/base/FreePageVo;",
            "Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$PublicHandler;

    invoke-direct {v0, p0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$PublicHandler;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->handler:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$PublicHandler;

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->isStop:Z

    iput v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->gallerySelPos:I

    iput v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->currentPos:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->arrIVList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->vo:Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->context:Landroid/content/Context;

    iput-object p4, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->itemArr:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->itemArr:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->itemArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->init()V

    :cond_0
    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->currentPos:I

    return v0
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;I)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->currentPos:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->currentPos:I

    return p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->itemArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->gallerySelPos:I

    return p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Lcn/apppark/mcd/widget/CoverFlowGallery;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->gallery:Lcn/apppark/mcd/widget/CoverFlowGallery;

    return-object v0
.end method

.method private changePoint(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->arrIVList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ne v1, p1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->arrIVList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02010e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->pointLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->arrIVList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02010d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->gallerySelPos:I

    return v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->changePoint(I)V

    return-void
.end method

.method static synthetic e(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Lcn/apppark/mcd/vo/base/FreePageVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->isStop:Z

    return v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->vo:Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    return-object v0
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$PublicHandler;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->handler:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$PublicHandler;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->topTV:Landroid/widget/TextView;

    return-object v0
.end method

.method private initPoint(I)V
    .locals 5

    const/4 v4, 0x3

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->pointLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    invoke-static {v3}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v0, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    iget-object v2, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->itemArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-ne v0, p1, :cond_0

    const v3, 0x7f02010e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v3, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->arrIVList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->pointLL:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v3, 0x7f02010d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    const/4 v3, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03007c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->rel:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->rel:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0302

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->topBar:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->rel:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0301

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/CoverFlowGallery;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->gallery:Lcn/apppark/mcd/widget/CoverFlowGallery;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->rel:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0303

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->topTV:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->rel:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0306

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->preLL:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->rel:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0308

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->nextLL:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->preLL:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/mcd/util/MyAlphaAnima;

    invoke-direct {v1}, Lcn/apppark/mcd/util/MyAlphaAnima;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->nextLL:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/mcd/util/MyAlphaAnima;

    invoke-direct {v1}, Lcn/apppark/mcd/util/MyAlphaAnima;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->rel:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0304

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->pointLL:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->rel:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "0"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->vo:Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;->getStyle_showNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->topBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->gallery:Lcn/apppark/mcd/widget/CoverFlowGallery;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->vo:Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;->getSys_w()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x41700000    # 15.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/CoverFlowGallery;->setSpacing(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->gallery:Lcn/apppark/mcd/widget/CoverFlowGallery;

    invoke-virtual {v0, v5}, Lcn/apppark/mcd/widget/CoverFlowGallery;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->gallery:Lcn/apppark/mcd/widget/CoverFlowGallery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->gallery:Lcn/apppark/mcd/widget/CoverFlowGallery;

    new-instance v1, Lcn/apppark/vertify/adapter/SelfGalleryView4013Adapter;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->context:Landroid/content/Context;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->vo:Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->itemArr:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcn/apppark/vertify/adapter/SelfGalleryView4013Adapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/CoverFlowGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-direct {p0, v5}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->initPoint(I)V

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->vo:Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;->getStyle_autoPlayFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmj;

    invoke-direct {v1, p0}, Lmj;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->gallery:Lcn/apppark/mcd/widget/CoverFlowGallery;

    new-instance v1, Lmk;

    invoke-direct {v1, p0}, Lmk;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/CoverFlowGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->gallery:Lcn/apppark/mcd/widget/CoverFlowGallery;

    new-instance v1, Lml;

    invoke-direct {v1, p0}, Lml;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/CoverFlowGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->preLL:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$4;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$4;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->nextLL:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$5;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$5;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->isStop:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->handler:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$PublicHandler;

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
