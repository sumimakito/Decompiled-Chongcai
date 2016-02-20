.class public final Lwo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lwg;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Lwi;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lwg;Landroid/graphics/Bitmap;Lwi;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwo;->a:Lwg;

    iput-object p2, p0, Lwo;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lwo;->c:Lwi;

    iput-object p4, p0, Lwo;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "PostProcess image before displaying [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lwo;->c:Lwi;

    iget-object v3, v3, Lwi;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lwo;->c:Lwi;

    iget-object v0, v0, Lwi;->e:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getPostProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iget-object v1, p0, Lwo;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lvz;

    iget-object v2, p0, Lwo;->c:Lwi;

    iget-object v3, p0, Lwo;->a:Lwg;

    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-direct {v1, v0, v2, v3, v4}, Lvz;-><init>(Landroid/graphics/Bitmap;Lwi;Lwg;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    iget-object v0, p0, Lwo;->c:Lwi;

    iget-object v0, v0, Lwi;->e:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->a()Z

    move-result v0

    iget-object v2, p0, Lwo;->d:Landroid/os/Handler;

    iget-object v3, p0, Lwo;->a:Lwg;

    invoke-static {v1, v0, v2, v3}, Lwj;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lwg;)V

    return-void
.end method
