.class public Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012$PublicHandler;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;


# direct methods
.method protected constructor <init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;->a(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;)I

    move-result v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

    invoke-static {v0, v3}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;->a(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;I)I

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;->c(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;)Landroid/widget/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;->a(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;I)I

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;->d(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;)Lcn/apppark/mcd/vo/base/FreePageVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;->getnPageId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;->e(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;)Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;->getnPageType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

    invoke-static {v5}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;->e(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;)Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    move-result-object v5

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;->getnPageModuleType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcn/apppark/vertify/PageGroup;->goNextPage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
