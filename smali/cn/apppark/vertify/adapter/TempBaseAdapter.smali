.class public abstract Lcn/apppark/vertify/adapter/TempBaseAdapter;
.super Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    invoke-virtual {v0, p1}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    invoke-virtual {v0, p1}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
