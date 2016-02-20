.class public final Lvl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/apppark/vertify/base/ImagePreview;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/base/ImagePreview;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lvl;->b:Lcn/apppark/vertify/base/ImagePreview;

    iput-object p2, p0, Lvl;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final downImgEnd(Z)V
    .locals 2

    iget-object v0, p0, Lvl;->b:Lcn/apppark/vertify/base/ImagePreview;

    iget-object v0, v0, Lcn/apppark/vertify/base/ImagePreview;->a:Landroid/os/Handler;

    new-instance v1, Lvm;

    invoke-direct {v1, p0, p1}, Lvm;-><init>(Lvl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
