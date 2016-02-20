.class Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$5;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$5;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->c(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Lcn/apppark/mcd/widget/CoverFlowGallery;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$5;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->a(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/CoverFlowGallery;->setSelection(I)V

    return-void
.end method
