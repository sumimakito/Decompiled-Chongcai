.class public final Lmw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)V
    .locals 0

    iput-object p1, p0, Lmw;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    iget-object v0, p0, Lmw;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    iget-object v1, p0, Lmw;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, p3, v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->a(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;I)I

    iget-object v0, p0, Lmw;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    iget-object v1, p0, Lmw;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->a(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->changePoint(I)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
