.class public final Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.super Ljava/lang/Object;


# instance fields
.field private final cacheInMemory:Z

.field private final cacheOnDisk:Z

.field private final considerExifParams:Z

.field private final decodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private final delayBeforeLoading:I

.field private final displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private final extraForDownloader:Ljava/lang/Object;

.field private final handler:Landroid/os/Handler;

.field private final imageForEmptyUri:Landroid/graphics/drawable/Drawable;

.field private final imageOnFail:Landroid/graphics/drawable/Drawable;

.field private final imageOnLoading:Landroid/graphics/drawable/Drawable;

.field private final imageResForEmptyUri:I

.field private final imageResOnFail:I

.field private final imageResOnLoading:I

.field private final imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private final isSyncLoading:Z

.field private final postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private final preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private final resetViewBeforeLoading:Z


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->b(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->c(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->d(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->e(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->g(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->h(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->i(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisk:Z

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->j(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->k(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->l(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->m(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->considerExifParams:Z

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->n(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->o(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->p(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->q(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->r(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->s(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lwa;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    return v0
.end method

.method static synthetic b(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    return v0
.end method

.method static synthetic c(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    return v0
.end method

.method public static createSimple()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic e(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic f(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    return v0
.end method

.method static synthetic h(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z

    return v0
.end method

.method static synthetic i(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisk:Z

    return v0
.end method

.method static synthetic j(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method static synthetic k(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic l(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    return v0
.end method

.method static synthetic m(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->considerExifParams:Z

    return v0
.end method

.method static synthetic n(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic o(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic p(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic q(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    return-object v0
.end method

.method static synthetic r(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic s(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    return v0
.end method

.method public final getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public final getDelayBeforeLoading()I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    return v0
.end method

.method public final getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    return-object v0
.end method

.method public final getExtraForDownloader()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final getImageOnFail(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public final getPostProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method public final getPreProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method public final isCacheInMemory()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z

    return v0
.end method

.method public final isCacheOnDisk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisk:Z

    return v0
.end method

.method public final isConsiderExifParams()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->considerExifParams:Z

    return v0
.end method

.method public final isResetViewBeforeLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    return v0
.end method

.method public final shouldDelayBeforeLoading()Z
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final shouldPostProcess()Z
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final shouldPreProcess()Z
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final shouldShowImageForEmptyUri()Z
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final shouldShowImageOnFail()Z
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final shouldShowImageOnLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
