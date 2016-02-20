.class public Lcn/apppark/vertify/activity/free/dyn/PicGallery;
.super Lcn/apppark/vertify/activity/BaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private currentImage:Lcn/apppark/mcd/widget/RemoteImageView;

.field private currentPosition:I

.field private gallery:Landroid/widget/Gallery;

.field private imgAdapter:Lks;

.field private imgUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private jumpPosition:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private myMenu:Lku;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/BaseAct;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/PicGallery;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->currentPosition:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/PicGallery;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/PicGallery;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->btn_save:Landroid/widget/Button;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)Lku;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->myMenu:Lku;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/PicGallery;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->btn_cancel:Landroid/widget/Button;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)Landroid/widget/Gallery;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->gallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->imgUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->btn_cancel:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->btn_save:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected initWidget()V
    .locals 2

    new-instance v0, Lku;

    invoke-direct {v0, p0, p0}, Lku;-><init>(Lcn/apppark/vertify/activity/free/dyn/PicGallery;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->myMenu:Lku;

    const v0, 0x7f0a0301

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->gallery:Landroid/widget/Gallery;

    new-instance v0, Lks;

    invoke-direct {v0, p0, p0}, Lks;-><init>(Lcn/apppark/vertify/activity/free/dyn/PicGallery;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->imgAdapter:Lks;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->gallery:Landroid/widget/Gallery;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->imgAdapter:Lks;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->gallery:Landroid/widget/Gallery;

    iget v1, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->jumpPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->gallery:Landroid/widget/Gallery;

    new-instance v1, Lkq;

    invoke-direct {v1, p0}, Lkq;-><init>(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->gallery:Landroid/widget/Gallery;

    new-instance v1, Lkr;

    invoke-direct {v1, p0}, Lkr;-><init>(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->myMenu:Lku;

    invoke-virtual {v0}, Lku;->dismiss()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/apppark/mcd/util/file/StorageAllocator;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apppark"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lcn/apppark/mcd/util/file/StorageAllocator;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "apppark"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/apppark/mcd/util/imge/ImgUtil;->saveMyBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4fdd\u5b58\u6210\u529f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->initToast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u4fdd\u5b58\u5931\u8d25,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v1, v6}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->initToast(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "\u4fdd\u5b58\u5931\u8d25,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v0, v6}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->myMenu:Lku;

    invoke-virtual {v0}, Lku;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0269
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/BaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030071

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "urls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->imgUrls:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->jumpPosition:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->imgUrls:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->initWidget()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-super {p0}, Lcn/apppark/vertify/activity/BaseAct;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->myMenu:Lku;

    invoke-virtual {v1}, Lku;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->myMenu:Lku;

    invoke-virtual {v1}, Lku;->dismiss()V

    :cond_0
    :goto_0
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->myMenu:Lku;

    invoke-virtual {v1}, Lku;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->myMenu:Lku;

    invoke-virtual {v0}, Lku;->dismiss()V

    :goto_1
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->finish()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->myMenu:Lku;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->gallery:Landroid/widget/Gallery;

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v0, v0}, Lku;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method
