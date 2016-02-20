.class public final Lma;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)V
    .locals 0

    iput-object p1, p0, Lma;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

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

    iget-object v0, p0, Lma;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lma;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;

    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;->getnFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lma;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->h(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lma;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, p3, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lma;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->h(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
