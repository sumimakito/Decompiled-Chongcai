.class public Lcn/apppark/mcd/util/imge/CacheUtil;
.super Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/apppark/mcd/util/imge/CacheUtil;->context:Landroid/content/Context;

    return-void
.end method

.method private findBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/util/imge/CacheUtil;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/apppark/mcd/util/imge/CacheUtil;->imgScaleUnite(J)I

    move-result v2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v2, 0x0

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private findBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/util/imge/CacheUtil;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private imgScaleUnite(J)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public findBitmapByAbPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcn/apppark/mcd/util/imge/CacheUtil;->imgScaleUnite(J)I

    move-result v1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v1, 0x0

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public findDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lcn/apppark/mcd/util/imge/CacheUtil;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/apppark/mcd/util/imge/CacheUtil;->imgScaleUnite(J)I

    move-result v2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v2, 0x0

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcn/apppark/mcd/util/imge/CacheUtil;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

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

.method public getCachedBitmap(I)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/BitmapCache;->isCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/BitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcn/apppark/mcd/util/imge/CacheUtil;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v2, v0, v1}, Lcn/apppark/mcd/util/imge/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/BitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p1}, Lcn/apppark/mcd/util/PublicUtil;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/BitmapCache;->isCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/BitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcn/apppark/mcd/util/imge/CacheUtil;->findBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v2, v0, v1}, Lcn/apppark/mcd/util/imge/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/BitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getCachedBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p1}, Lcn/apppark/mcd/util/PublicUtil;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/BitmapCache;->isCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/BitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/apppark/mcd/util/imge/CacheUtil;->findBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v2, v0, v1}, Lcn/apppark/mcd/util/imge/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/BitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getCachedBitmapSD(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-static {p1}, Lcn/apppark/mcd/util/PublicUtil;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/util/imge/BitmapCache;->isCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/util/imge/BitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcn/apppark/mcd/util/imge/CacheUtil;->imgScaleUnite(J)I

    move-result v1

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v1, v2, v0}, Lcn/apppark/mcd/util/imge/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/util/imge/BitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1
.end method

.method public getCachedDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/DrawableCache;->isCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/DrawableCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcn/apppark/mcd/util/imge/CacheUtil;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v2, v0, v1}, Lcn/apppark/mcd/util/imge/DrawableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/DrawableCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/util/imge/CacheUtil;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/DrawableCache;->isCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/DrawableCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcn/apppark/mcd/util/imge/CacheUtil;->findDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v2, v0, v1}, Lcn/apppark/mcd/util/imge/DrawableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/DrawableCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getCachedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-static {p1}, Lcn/apppark/mcd/util/PublicUtil;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/DrawableCache;->isCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/DrawableCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v2, v0, v1}, Lcn/apppark/mcd/util/imge/DrawableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/util/imge/DrawableCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getCachedDrawable4img(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/util/imge/CacheUtil;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v2, v1}, Lcn/apppark/mcd/util/imge/DrawableCache;->isCached(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/util/imge/DrawableCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcn/apppark/mcd/util/imge/CacheUtil;->findDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v2, v1, v0}, Lcn/apppark/mcd/util/imge/DrawableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/util/imge/DrawableCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getCachedDrawableNine(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Lcn/apppark/mcd/util/PublicUtil;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v2, v1}, Lcn/apppark/mcd/util/imge/DrawableCache;->isCached(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/util/imge/DrawableCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcn/apppark/mcd/util/imge/CacheUtil;->findBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0xf0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/graphics/NinePatch;

    invoke-direct {v3, v1, v2, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/NinePatch;)V

    goto :goto_0
.end method

.method public isCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v1, p1}, Lcn/apppark/mcd/util/imge/BitmapCache;->isCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache;

    invoke-virtual {v0, p1}, Lcn/apppark/mcd/util/imge/BitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_0
    return-object v0
.end method
