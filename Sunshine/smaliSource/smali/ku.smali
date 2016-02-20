.class public final Lku;
.super Landroid/widget/PopupWindow;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/PicGallery;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/PicGallery;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Lku;->a:Lcn/apppark/vertify/activity/free/dyn/PicGallery;

    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030053

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0269

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->a(Lcn/apppark/vertify/activity/free/dyn/PicGallery;Landroid/widget/Button;)Landroid/widget/Button;

    const v0, 0x7f0a026a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->b(Lcn/apppark/vertify/activity/free/dyn/PicGallery;Landroid/widget/Button;)Landroid/widget/Button;

    invoke-static {p1}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->d(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    invoke-static {p1}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->e(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    invoke-static {p1}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->e(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->d(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lku;->setAnimationStyle(I)V

    invoke-virtual {p0, v3}, Lku;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lku;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lku;->setWidth(I)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lku;->setHeight(I)V

    invoke-virtual {p0, v2}, Lku;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v2}, Lku;->setTouchable(Z)V

    return-void
.end method
