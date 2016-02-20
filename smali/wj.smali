.class public final Lwj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field final c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field final d:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field final e:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

.field private final f:Lwg;

.field private final g:Lwi;

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final j:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final k:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final l:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final m:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

.field private final n:Ljava/lang/String;

.field private final o:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field private final p:Z

.field private q:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;


# direct methods
.method public constructor <init>(Lwg;Lwi;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v0, p0, Lwj;->q:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object p1, p0, Lwj;->f:Lwg;

    iput-object p2, p0, Lwj;->g:Lwi;

    iput-object p3, p0, Lwj;->h:Landroid/os/Handler;

    iget-object v0, p1, Lwg;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iput-object v0, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->p:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lwj;->j:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iget-object v0, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->s:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lwj;->k:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iget-object v0, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->t:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lwj;->l:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iget-object v0, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->q:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    iput-object v0, p0, Lwj;->m:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    iget-object v0, p2, Lwi;->a:Ljava/lang/String;

    iput-object v0, p0, Lwj;->a:Ljava/lang/String;

    iget-object v0, p2, Lwi;->b:Ljava/lang/String;

    iput-object v0, p0, Lwj;->n:Ljava/lang/String;

    iget-object v0, p2, Lwi;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iput-object v0, p0, Lwj;->b:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object v0, p2, Lwi;->d:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iput-object v0, p0, Lwj;->o:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget-object v0, p2, Lwi;->e:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iput-object v0, p0, Lwj;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v0, p2, Lwi;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iput-object v0, p0, Lwj;->d:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v0, p2, Lwi;->g:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    iput-object v0, p0, Lwj;->e:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    iget-object v0, p0, Lwj;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->a()Z

    move-result v0

    iput-boolean v0, p0, Lwj;->p:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    iget-object v0, p0, Lwj;->b:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v5

    new-instance v0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;

    iget-object v1, p0, Lwj;->n:Ljava/lang/String;

    iget-object v3, p0, Lwj;->a:Ljava/lang/String;

    iget-object v4, p0, Lwj;->o:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {p0}, Lwj;->g()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v6

    iget-object v7, p0, Lwj;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    iget-object v1, p0, Lwj;->m:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lwj;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .locals 1

    iget-object v0, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    return-object v0
.end method

.method private a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lwj;->p:Z

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Task was interrupted [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lwj;->n:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    iget-object v2, p0, Lwj;->b:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lwj;->n:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    :goto_1
    if-nez v2, :cond_0

    invoke-direct {p0}, Lwj;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_2
    if-eqz v0, :cond_5

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    new-instance v0, Lwl;

    invoke-direct {v0, p0, p1, p2}, Lwl;-><init>(Lwj;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lwj;->h:Landroid/os/Handler;

    iget-object v3, p0, Lwj;->f:Lwg;

    invoke-static {v0, v1, v2, v3}, Lwj;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lwg;)V

    goto :goto_3
.end method

.method static a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lwg;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p3, Lwg;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private b()Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lwj;->f:Lwg;

    iget-object v2, v2, Lwg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lwj;->f:Lwg;

    iget-object v3, v3, Lwg;->j:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ImageLoader is paused. Waiting...  [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lwj;->n:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lwj;->f:Lwg;

    iget-object v2, v2, Lwg;->j:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, ".. Resume loading [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lwj;->n:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    iget-object v2, p0, Lwj;->b:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lwj;->n:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    invoke-direct {p0}, Lwj;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    :goto_1
    return v0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v1, "Task was interrupted [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lwj;->n:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private c()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lwj;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldDelayBeforeLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Delay %d ms before loading...  [%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lwj;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v4, p0, Lwj;->n:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v2, p0, Lwj;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lwj;->b:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lwj;->n:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    invoke-direct {p0}, Lwj;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_1
    return v0

    :catch_0
    move-exception v2

    const-string v2, "Task was interrupted [%s]"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lwj;->n:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method private d()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v2, p0, Lwj;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    const-string v2, "Load image from disk cache [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lwj;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->DISC_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v2, p0, Lwj;->q:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-direct {p0}, Lwj;->h()V

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lwj;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lwn; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_0
    const-string v2, "Load image from network [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lwj;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v2, p0, Lwj;->q:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iget-object v2, p0, Lwj;->a:Ljava/lang/String;

    iget-object v3, p0, Lwj;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheOnDisk()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lwj;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v4, p0, Lwj;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-direct {p0}, Lwj;->h()V

    invoke-direct {p0, v2}, Lwj;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lwj;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lwn; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v1}, Lwj;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_3
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v1}, Lwj;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_4
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v1}, Lwj;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_5
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v1}, Lwj;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private e()Z
    .locals 10

    const/4 v1, 0x1

    const/4 v9, 0x0

    const-string v0, "Cache image on disk [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lwj;->n:Ljava/lang/String;

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0}, Lwj;->f()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v0, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->d:I

    iget-object v1, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->e:I

    if-gtz v0, :cond_0

    if-lez v1, :cond_2

    :cond_0
    const-string v2, "Resize image in disk cache [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lwj;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v3, p0, Lwj;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v4, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v4, v0, v1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget-object v1, p0, Lwj;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v7

    new-instance v0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;

    iget-object v1, p0, Lwj;->n:Ljava/lang/String;

    sget-object v3, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lwj;->a:Ljava/lang/String;

    sget-object v5, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {p0}, Lwj;->g()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    iget-object v1, p0, Lwj;->m:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->f:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    if-eqz v1, :cond_1

    const-string v1, "Process image before cache on disk [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lwj;->n:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->f:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "Bitmap processor for disk cache returned null [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lwj;->n:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v2, p0, Lwj;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v8

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    move v0, v9

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lwj;->g()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v1

    iget-object v2, p0, Lwj;->a:Ljava/lang/String;

    iget-object v3, p0, Lwj;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "No stream for image [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lwj;->n:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v2, p0, Lwj;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1, p0}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private g()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1

    iget-object v0, p0, Lwj;->f:Lwg;

    iget-object v0, v0, Lwg;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwj;->k:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lwj;->f:Lwg;

    iget-object v0, v0, Lwg;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwj;->l:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lwj;->j:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    goto :goto_0
.end method

.method private h()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lwj;->b:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lwj;->n:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lwn;

    invoke-direct {v0, p0}, Lwn;-><init>(Lwj;)V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lwj;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lwn;

    invoke-direct {v0, p0}, Lwn;-><init>(Lwj;)V

    throw v0

    :cond_2
    return-void
.end method

.method private i()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lwj;->f:Lwg;

    iget-object v3, p0, Lwj;->b:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object v0, v0, Lwg;->e:Ljava/util/Map;

    invoke-interface {v3}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lwj;->n:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "ImageAware is reused for another image. Task is cancelled. [%s]"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lwj;->n:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final onBytesCopied(II)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lwj;->p:Z

    if-nez v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Task was interrupted [%s]"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lwj;->n:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    iget-object v2, p0, Lwj;->b:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lwj;->n:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    :goto_1
    if-nez v2, :cond_0

    invoke-direct {p0}, Lwj;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    move v2, v1

    :goto_2
    if-eqz v2, :cond_7

    :cond_1
    move v2, v0

    :goto_3
    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    :cond_4
    move v2, v0

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_1

    :cond_6
    move v2, v0

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lwj;->e:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    if-eqz v2, :cond_8

    new-instance v2, Lwk;

    invoke-direct {v2, p0, p1, p2}, Lwk;-><init>(Lwj;II)V

    iget-object v3, p0, Lwj;->h:Landroid/os/Handler;

    iget-object v4, p0, Lwj;->f:Lwg;

    invoke-static {v2, v0, v3, v4}, Lwj;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lwg;)V

    :cond_8
    move v2, v1

    goto :goto_3
.end method

.method public final run()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lwj;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lwj;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lwj;->g:Lwi;

    iget-object v4, v2, Lwi;->h:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v2, "Start display image task [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lwj;->n:Ljava/lang/String;

    aput-object v5, v3, v1

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Image already is loading. Waiting... [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lwj;->n:Ljava/lang/String;

    aput-object v5, v3, v1

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lwj;->h()V

    iget-object v2, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->n:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    iget-object v3, p0, Lwj;->n:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_3
    invoke-direct {p0}, Lwj;->d()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lwn; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-direct {p0}, Lwj;->h()V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "Task was interrupted [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lwj;->n:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v0

    :goto_1
    if-eqz v3, :cond_7

    new-instance v2, Lwn;

    invoke-direct {v2, p0}, Lwn;-><init>(Lwj;)V

    throw v2
    :try_end_1
    .catch Lwn; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v2

    :try_start_2
    iget-boolean v2, p0, Lwj;->p:Z

    if-nez v2, :cond_5

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v1, "Task was interrupted [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Lwj;->n:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v0, :cond_f

    :cond_5
    :goto_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :cond_6
    move v3, v1

    goto :goto_1

    :cond_7
    :try_start_3
    iget-object v3, p0, Lwj;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPreProcess()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "PreProcess image before caching in memory [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lwj;->n:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lwj;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getPreProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v3, "Pre-processor returned null [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lwj;->n:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    if-eqz v2, :cond_9

    iget-object v3, p0, Lwj;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheInMemory()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "Cache image in memory [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lwj;->n:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lwj;->i:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->n:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    iget-object v5, p0, Lwj;->n:Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    iget-object v3, p0, Lwj;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPostProcess()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "PostProcess image before displaying [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lwj;->n:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lwj;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getPostProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_a

    const-string v3, "Post-processor returned null [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lwj;->n:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    move-object v3, v2

    invoke-direct {p0}, Lwj;->h()V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "Task was interrupted [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lwj;->n:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    :goto_5
    if-eqz v2, :cond_d

    new-instance v2, Lwn;

    invoke-direct {v2, p0}, Lwn;-><init>(Lwj;)V

    throw v2
    :try_end_3
    .catch Lwn; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_b
    :try_start_4
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v3, p0, Lwj;->q:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    const-string v3, "...Get cached bitmap from memory after waiting. [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lwj;->n:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lwn; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_c
    move v2, v1

    goto :goto_5

    :cond_d
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v0, Lvz;

    iget-object v1, p0, Lwj;->g:Lwi;

    iget-object v2, p0, Lwj;->f:Lwg;

    iget-object v4, p0, Lwj;->q:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-direct {v0, v3, v1, v2, v4}, Lvz;-><init>(Landroid/graphics/Bitmap;Lwi;Lwg;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    iget-boolean v1, p0, Lwj;->p:Z

    iget-object v2, p0, Lwj;->h:Landroid/os/Handler;

    iget-object v3, p0, Lwj;->f:Lwg;

    invoke-static {v0, v1, v2, v3}, Lwj;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lwg;)V

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto/16 :goto_2

    :cond_f
    :try_start_5
    new-instance v0, Lwm;

    invoke-direct {v0, p0}, Lwm;-><init>(Lwj;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lwj;->h:Landroid/os/Handler;

    iget-object v3, p0, Lwj;->f:Lwg;

    invoke-static {v0, v1, v2, v3}, Lwj;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lwg;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3
.end method
