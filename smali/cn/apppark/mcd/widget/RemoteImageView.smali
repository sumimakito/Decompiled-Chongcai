.class public Lcn/apppark/mcd/widget/RemoteImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private defaultResourceId:I

.field private isRound:Z

.field private mCorner:I

.field private mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f02006f

    iput v0, p0, Lcn/apppark/mcd/widget/RemoteImageView;->defaultResourceId:I

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/RemoteImageView;->isRound:Z

    const/16 v0, 0x64

    iput v0, p0, Lcn/apppark/mcd/widget/RemoteImageView;->mRadius:I

    iput v1, p0, Lcn/apppark/mcd/widget/RemoteImageView;->mCorner:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f02006f

    iput v0, p0, Lcn/apppark/mcd/widget/RemoteImageView;->defaultResourceId:I

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/RemoteImageView;->isRound:Z

    const/16 v0, 0x64

    iput v0, p0, Lcn/apppark/mcd/widget/RemoteImageView;->mRadius:I

    iput v1, p0, Lcn/apppark/mcd/widget/RemoteImageView;->mCorner:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f02006f

    iput v0, p0, Lcn/apppark/mcd/widget/RemoteImageView;->defaultResourceId:I

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/RemoteImageView;->isRound:Z

    const/16 v0, 0x64

    iput v0, p0, Lcn/apppark/mcd/widget/RemoteImageView;->mRadius:I

    iput v1, p0, Lcn/apppark/mcd/widget/RemoteImageView;->mCorner:I

    return-void
.end method

.method private getCornerOption()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget v1, p0, Lcn/apppark/mcd/widget/RemoteImageView;->defaultResourceId:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iget v1, p0, Lcn/apppark/mcd/widget/RemoteImageView;->defaultResourceId:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    iget v2, p0, Lcn/apppark/mcd/widget/RemoteImageView;->mCorner:I

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method

.method private getNormalOption()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget v1, p0, Lcn/apppark/mcd/widget/RemoteImageView;->defaultResourceId:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iget v1, p0, Lcn/apppark/mcd/widget/RemoteImageView;->defaultResourceId:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method

.method private getRoundOption()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget v1, p0, Lcn/apppark/mcd/widget/RemoteImageView;->defaultResourceId:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iget v1, p0, Lcn/apppark/mcd/widget/RemoteImageView;->defaultResourceId:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundBitmapDisplayer;

    iget v2, p0, Lcn/apppark/mcd/widget/RemoteImageView;->mRadius:I

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setDefaultImage(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/RemoteImageView;->defaultResourceId:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/RemoteImageView;->isRound:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/apppark/mcd/widget/RemoteImageView;->getRoundOption()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, p0, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-void

    :cond_0
    iget v0, p0, Lcn/apppark/mcd/widget/RemoteImageView;->mCorner:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcn/apppark/mcd/widget/RemoteImageView;->getCornerOption()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcn/apppark/mcd/widget/RemoteImageView;->getNormalOption()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public setImageUrlCorner(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcn/apppark/mcd/widget/RemoteImageView;->mCorner:I

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setImageUrlRound(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/RemoteImageView;->isRound:Z

    iput p2, p0, Lcn/apppark/mcd/widget/RemoteImageView;->mRadius:I

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setPixels(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/RemoteImageView;->mRadius:I

    return-void
.end method

.method public setRound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/widget/RemoteImageView;->isRound:Z

    return-void
.end method
