.class public final Lni;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)V
    .locals 0

    iput-object p1, p0, Lni;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lni;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->c(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Lcn/apppark/mcd/widget/CoverFlowGallery;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/CoverFlowGallery;->getCenterView()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lni;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lni;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->d(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lni;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->h(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$PublicHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$PublicHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
