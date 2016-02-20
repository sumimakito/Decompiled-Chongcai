.class public Lcn/apppark/ckj10185912/HQCHApplication;
.super Landroid/app/Application;


# static fields
.field private static final BITS_PER_UNIT:I = 0x8

.field public static final CLIENT_FLAG:Ljava/lang/String; = "10185912"

.field public static DEBUG:Z = false

.field public static final IP:Ljava/lang/String; = "http://www.apppark.cn"

.field public static cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil; = null

.field public static instance:Lcn/apppark/ckj10185912/HQCHApplication; = null

.field public static isLBSopen:Z = false

.field public static lastUpdateTimeFlag:Ljava/lang/String; = null

.field public static mainActivity:Lcn/apppark/ckj10185912/Main; = null

.field public static final timeFlag:Ljava/lang/String; = "2016-02-20 10:31:004"


# instance fields
.field public PKGNAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/apppark/ckj10185912/HQCHApplication;->DEBUG:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcn/apppark/ckj10185912/HQCHApplication;->isLBSopen:Z

    const-string v0, "2016-02-20 10:31:004"

    sput-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->lastUpdateTimeFlag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string v0, "cn.apppark.ckj10185912"

    iput-object v0, p0, Lcn/apppark/ckj10185912/HQCHApplication;->PKGNAME:Ljava/lang/String;

    return-void
.end method

.method public static createLoadingDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 4

    const/4 v3, -0x1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0181

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0183

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f060011

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public static getInstance()Lcn/apppark/ckj10185912/HQCHApplication;
    .locals 1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    return-object v0
.end method

.method private initImageCache()V
    .locals 1

    new-instance v0, Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-direct {v0}, Lcn/apppark/mcd/util/imge/BitmapCache;-><init>()V

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    new-instance v0, Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-direct {v0}, Lcn/apppark/mcd/util/imge/DrawableCache;-><init>()V

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    new-instance v0, Lcn/apppark/mcd/util/imge/CacheUtil;

    invoke-direct {v0, p0}, Lcn/apppark/mcd/util/imge/CacheUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    invoke-direct {p0}, Lcn/apppark/ckj10185912/HQCHApplication;->initUniversalCache()V

    return-void
.end method

.method private initUniversalCache()V
    .locals 4

    const/4 v1, 0x3

    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/cache/memory/impl/WeakMemoryCache;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/cache/memory/impl/WeakMemoryCache;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    const/high16 v1, 0x3200000

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->createSimple()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;

    const/16 v2, 0x1388

    const/16 v3, 0x7530

    invoke-direct {v1, p0, v2, v3}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    return-void
.end method

.method private static postion(I)I
    .locals 2

    const/4 v0, 0x1

    rem-int/lit8 v1, p0, 0x8

    rsub-int/lit8 v1, v1, 0x7

    shl-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public generatePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mDirGenerator:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    invoke-virtual {v1}, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->getResourceDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceDir()Ljava/io/File;
    .locals 1

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mDirGenerator:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->getResourceDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getYygyDir()Ljava/io/File;
    .locals 1

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mDirGenerator:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->getyygyDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public initToast(II)V
    .locals 1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public initToast(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcn/apppark/mcd/util/PublicUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->IMEI:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/ckj10185912/HQCHApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/apppark/mcd/util/PublicUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->VERSION_CODE:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PHONE_NUMBER:Ljava/lang/String;

    new-instance v0, Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    const-string v1, "10185912"

    invoke-direct {v0, p0, v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    sget-boolean v0, Lcn/apppark/ckj10185912/HQCHApplication;->DEBUG:Z

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getIsDebug()Z

    move-result v0

    sput-boolean v0, Lcn/apppark/ckj10185912/HQCHApplication;->DEBUG:Z

    :cond_0
    const-string v0, "10185912"

    invoke-static {v0}, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->getInstance(Ljava/lang/String;)Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    move-result-object v0

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mDirGenerator:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    sput-object p0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    invoke-direct {p0}, Lcn/apppark/ckj10185912/HQCHApplication;->initImageCache()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/ckj10185912/HQCHApplication;->getCacheDir()Ljava/io/File;

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

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->baseCachePath:Ljava/lang/String;

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

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->baseImgCachePath:Ljava/lang/String;

    return-void
.end method

.method public onTerminate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
