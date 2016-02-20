.class final Lvz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private final f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field private final g:Lwg;

.field private final h:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lwi;Lwg;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvz;->a:Landroid/graphics/Bitmap;

    iget-object v0, p2, Lwi;->a:Ljava/lang/String;

    iput-object v0, p0, Lvz;->b:Ljava/lang/String;

    iget-object v0, p2, Lwi;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iput-object v0, p0, Lvz;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object v0, p2, Lwi;->b:Ljava/lang/String;

    iput-object v0, p0, Lvz;->d:Ljava/lang/String;

    iget-object v0, p2, Lwi;->e:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lvz;->e:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    iget-object v0, p2, Lwi;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iput-object v0, p0, Lvz;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iput-object p3, p0, Lvz;->g:Lwg;

    iput-object p4, p0, Lvz;->h:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lvz;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lvz;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lvz;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lvz;->b:Ljava/lang/String;

    iget-object v2, p0, Lvz;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lvz;->g:Lwg;

    iget-object v3, p0, Lvz;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object v0, v0, Lwg;->e:Ljava/util/Map;

    invoke-interface {v3}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lvz;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "ImageAware is reused for another image. Task is cancelled. [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lvz;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lvz;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lvz;->b:Ljava/lang/String;

    iget-object v2, p0, Lvz;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lvz;->h:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    aput-object v4, v3, v2

    iget-object v2, p0, Lvz;->d:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lvz;->e:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    iget-object v1, p0, Lvz;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lvz;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object v3, p0, Lvz;->h:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-interface {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    iget-object v0, p0, Lvz;->g:Lwg;

    iget-object v1, p0, Lvz;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object v0, v0, Lwg;->e:Ljava/util/Map;

    invoke-interface {v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lvz;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lvz;->b:Ljava/lang/String;

    iget-object v2, p0, Lvz;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lvz;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
