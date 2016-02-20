.class public final Lnh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)V
    .locals 0

    iput-object p1, p0, Lnh;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

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

    iget-object v0, p0, Lnh;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v0, p3}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;I)I

    iget-object v0, p0, Lnh;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    iget-object v1, p0, Lnh;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, p3, v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->c(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnh;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->d(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnh;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnh;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->i(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnh;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    iget-object v1, p0, Lnh;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->d(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->d(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;I)V

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
