.class public Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;
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

.field private gallery:Landroid/widget/Gallery;

.field private gallerySelPos:I

.field private handler:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;

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

    new-instance v0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;

    invoke-direct {v0, p0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->handler:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->isStop:Z

    iput v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->gallerySelPos:I

    iput v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->currentPos:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->arrIVList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->vo:Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->context:Landroid/content/Context;

    iput-object p4, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->itemArr:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->itemArr:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->itemArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->init()V

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

.method static synthetic a(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->currentPos:I

    return v0
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;I)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->currentPos:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->currentPos:I

    return p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->itemArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->gallerySelPos:I

    return p1
.end method

.method static synthetic c(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)Landroid/widget/Gallery;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->gallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method private changePoint(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->arrIVList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ne v1, p1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->arrIVList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02010e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->pointLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->arrIVList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02010d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->changePoint(I)V

    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->isStop:Z

    return v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->vo:Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->handler:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->gallerySelPos:I

    return v0
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->topTV:Landroid/widget/TextView;

    return-object v0
.end method

.method private initPoint(I)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x3

    const/high16 v2, 0x40800000    # 4.0f

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->pointLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->itemArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-ne v0, p1, :cond_0

    const v3, 0x7f02010e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v3, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->arrIVList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->pointLL:Landroid/widget/LinearLayout;

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
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030079

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->rel:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->rel:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0302

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->topBar:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->rel:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0301

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/TempGallery;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->gallery:Landroid/widget/Gallery;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->rel:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0303

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->topTV:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->rel:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0306

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->preLL:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->rel:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0308

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->nextLL:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->preLL:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/mcd/util/MyAlphaAnima;

    invoke-direct {v1}, Lcn/apppark/mcd/util/MyAlphaAnima;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->nextLL:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/mcd/util/MyAlphaAnima;

    invoke-direct {v1}, Lcn/apppark/mcd/util/MyAlphaAnima;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->rel:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0304

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->pointLL:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->rel:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "0"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->vo:Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;->getStyle_showNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->topBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->gallery:Landroid/widget/Gallery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSpacing(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v0, v4}, Landroid/widget/Gallery;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->gallery:Landroid/widget/Gallery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->gallery:Landroid/widget/Gallery;

    new-instance v1, Lcn/apppark/vertify/adapter/SelfGalleryViewAdapter;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->context:Landroid/content/Context;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->itemArr:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcn/apppark/vertify/adapter/SelfGalleryViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-direct {p0, v4}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->initPoint(I)V

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->vo:Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;->getStyle_autoPlayFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmd;

    invoke-direct {v1, p0}, Lmd;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->gallery:Landroid/widget/Gallery;

    new-instance v1, Lme;

    invoke-direct {v1, p0}, Lme;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->gallery:Landroid/widget/Gallery;

    new-instance v1, Lmf;

    invoke-direct {v1, p0}, Lmf;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->preLL:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$4;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$4;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->nextLL:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$5;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$5;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v0, v4}, Landroid/widget/Gallery;->setSelection(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

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

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->isStop:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->handler:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;

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
