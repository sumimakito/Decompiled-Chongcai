.class public Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfView;


# static fields
.field private static final CLICK_GALLERY_ITEM:I = 0x2


# instance fields
.field private arrImageView:Ljava/util/ArrayList;
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

.field private gallery:Landroid/widget/Gallery;

.field private gallerySelPos:I

.field private handler:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;

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

.field private lin_point:Landroid/widget/LinearLayout;

.field private pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

.field private rel:Landroid/widget/RelativeLayout;

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

    new-instance v0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;

    invoke-direct {v0, p0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->handler:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->isStop:Z

    iput v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->gallerySelPos:I

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->vo:Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->context:Landroid/content/Context;

    iput-object p4, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->itemArr:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->itemArr:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->itemArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->init()V

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

.method public static synthetic a(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->gallerySelPos:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->gallerySelPos:I

    return p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->itemArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->gallerySelPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->gallerySelPos:I

    return v0
.end method

.method static synthetic d(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Landroid/widget/Gallery;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->gallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic e(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Lcn/apppark/mcd/vo/base/FreePageVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->vo:Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->isStop:Z

    return v0
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->handler:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;

    return-object v0
.end method

.method private initPoint(I)V
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x5

    const/4 v2, 0x2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->lin_point:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->arrImageView:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->itemArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f02010d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    if-ne v0, p1, :cond_0

    const v3, 0x7f02010e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    iget-object v3, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->lin_point:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public changePoint(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ne v1, p1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02010e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->lin_point:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02010d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->lin_point:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public init()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->rel:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->lin_point:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->lin_point:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Lmc;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmc;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->gallery:Landroid/widget/Gallery;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->gallery:Landroid/widget/Gallery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->gallery:Landroid/widget/Gallery;

    new-instance v1, Lmb;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lmb;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-direct {p0, v3}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->initPoint(I)V

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->vo:Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;->getStyle_autoPlayFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lly;

    invoke-direct {v1, p0}, Lly;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->gallery:Landroid/widget/Gallery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSpacing(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v0, v3}, Landroid/widget/Gallery;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->gallery:Landroid/widget/Gallery;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->itemArr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x14

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->rel:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->rel:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->lin_point:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->rel:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->gallery:Landroid/widget/Gallery;

    new-instance v1, Llz;

    invoke-direct {v1, p0}, Llz;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->gallery:Landroid/widget/Gallery;

    new-instance v1, Lma;

    invoke-direct {v1, p0}, Lma;-><init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->isStop:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->handler:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;

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
