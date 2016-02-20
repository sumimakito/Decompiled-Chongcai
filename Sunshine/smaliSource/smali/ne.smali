.class public final Lne;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;)V
    .locals 0

    iput-object p1, p0, Lne;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

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

    iget-object v0, p0, Lne;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

    invoke-static {v0, p3}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;I)I

    iget-object v0, p0, Lne;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;->h(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lne;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;->getData_text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
