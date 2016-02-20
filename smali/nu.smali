.class public final Lnu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/PersonInfo;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/PersonInfo;)V
    .locals 0

    iput-object p1, p0, Lnu;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lnu;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    iget-object v1, p0, Lnu;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersonInfo;->e(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcn/apppark/mcd/util/imge/ImgUtil;->compressImgQuality(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/persion/PersonInfo;->a(Lcn/apppark/vertify/activity/persion/PersonInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnu;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->j(Lcn/apppark/vertify/activity/persion/PersonInfo;)Lnw;

    move-result-object v0

    const/16 v1, 0x138c

    invoke-virtual {v0, v1}, Lnw;->sendEmptyMessage(I)Z

    return-void
.end method
