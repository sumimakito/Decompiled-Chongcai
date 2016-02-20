.class public final Lmc;
.super Landroid/widget/Gallery;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lmc;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-direct {p0, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/16 v0, 0x15

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lmc;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x16

    goto :goto_1
.end method
