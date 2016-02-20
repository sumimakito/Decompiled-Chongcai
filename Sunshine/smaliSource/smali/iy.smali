.class public final Liy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)V
    .locals 0

    iput-object p1, p0, Liy;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

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

    iget-object v0, p0, Liy;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    iget-object v1, v0, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->f:Landroid/widget/TextView;

    iget-object v0, p0, Liy;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->c(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Liy;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v1, "1"

    iget-object v0, p0, Liy;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->c(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liy;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e:Landroid/widget/ImageView;

    const v1, 0x7f020097

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "2"

    iget-object v0, p0, Liy;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->c(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Liy;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e:Landroid/widget/ImageView;

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const-string v1, "3"

    iget-object v0, p0, Liy;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->c(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Liy;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Liy;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
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
