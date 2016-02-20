.class public final Lp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/apppark/mcd/util/imge/ImgLoad2Cache;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lp;->b:Lcn/apppark/mcd/util/imge/ImgLoad2Cache;

    iput-object p2, p0, Lp;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lp;->b:Lcn/apppark/mcd/util/imge/ImgLoad2Cache;

    invoke-static {v0}, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->a(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lp;->b:Lcn/apppark/mcd/util/imge/ImgLoad2Cache;

    invoke-static {v0}, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->b(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;)I

    move-result v0

    iget-object v1, p0, Lp;->b:Lcn/apppark/mcd/util/imge/ImgLoad2Cache;

    invoke-static {v1}, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->c(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;)I

    move-result v1

    if-gt v0, v1, :cond_2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lp;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_1
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lp;->b:Lcn/apppark/mcd/util/imge/ImgLoad2Cache;

    invoke-static {v1, v5}, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->a(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;Z)Z

    iget-object v1, p0, Lp;->b:Lcn/apppark/mcd/util/imge/ImgLoad2Cache;

    invoke-static {v1}, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->e(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lp;->b:Lcn/apppark/mcd/util/imge/ImgLoad2Cache;

    invoke-static {v1}, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->d(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lp;->a:Ljava/lang/String;

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lp;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/mcd/util/imge/ImgUtil;->saveMyBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lp;->b:Lcn/apppark/mcd/util/imge/ImgLoad2Cache;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->a(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lp;->b:Lcn/apppark/mcd/util/imge/ImgLoad2Cache;

    invoke-static {v0}, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->f(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;)Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lp;->b:Lcn/apppark/mcd/util/imge/ImgLoad2Cache;

    invoke-static {v0}, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->f(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;)Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;

    move-result-object v0

    iget-object v1, p0, Lp;->b:Lcn/apppark/mcd/util/imge/ImgLoad2Cache;

    invoke-static {v1}, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->a(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;->downImgEnd(Z)V

    :cond_3
    return-void
.end method
