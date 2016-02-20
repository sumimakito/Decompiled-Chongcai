.class public final Lmb;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lmb;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lmb;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmb;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lmb;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lmb;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int v0, p1, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lmb;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lmb;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lmb;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;->getData_pic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method
