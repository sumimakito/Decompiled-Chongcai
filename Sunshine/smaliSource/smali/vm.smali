.class final Lvm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lvl;


# direct methods
.method constructor <init>(Lvl;Z)V
    .locals 0

    iput-object p1, p0, Lvm;->b:Lvl;

    iput-boolean p2, p0, Lvm;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lvm;->b:Lvl;

    iget-object v0, v0, Lvl;->b:Lcn/apppark/vertify/base/ImagePreview;

    invoke-static {v0}, Lcn/apppark/vertify/base/ImagePreview;->a(Lcn/apppark/vertify/base/ImagePreview;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-boolean v0, p0, Lvm;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/ckj10185912/HQCHApplication;->getResourceDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->IMAGE_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvm;->b:Lvl;

    iget-object v1, v1, Lvl;->a:Ljava/lang/String;

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lvm;->b:Lvl;

    iget-object v1, v1, Lvl;->b:Lcn/apppark/vertify/base/ImagePreview;

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    invoke-virtual {v2, v0}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedBitmapSD(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/base/ImagePreview;->a(Lcn/apppark/vertify/base/ImagePreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lvm;->b:Lvl;

    iget-object v0, v0, Lvl;->b:Lcn/apppark/vertify/base/ImagePreview;

    invoke-static {v0}, Lcn/apppark/vertify/base/ImagePreview;->b(Lcn/apppark/vertify/base/ImagePreview;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvm;->b:Lvl;

    iget-object v0, v0, Lvl;->b:Lcn/apppark/vertify/base/ImagePreview;

    invoke-static {v0}, Lcn/apppark/vertify/base/ImagePreview;->c(Lcn/apppark/vertify/base/ImagePreview;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v0, v1, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v0, v1, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0
.end method
