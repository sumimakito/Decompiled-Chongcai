.class public final Lvd;
.super Landroid/widget/PopupWindow;


# instance fields
.field public final synthetic a:Lcn/apppark/vertify/adapter/TCommnetAdapter;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/adapter/TCommnetAdapter;)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lvd;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {p1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->e(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->e(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a048c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->a(Lcn/apppark/vertify/adapter/TCommnetAdapter;Landroid/widget/Button;)Landroid/widget/Button;

    const v0, 0x7f0a048d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->b(Lcn/apppark/vertify/adapter/TCommnetAdapter;Landroid/widget/Button;)Landroid/widget/Button;

    invoke-static {p1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->k(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$1;

    invoke-direct {v2, p0, p1}, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$1;-><init>(Lvd;Lcn/apppark/vertify/adapter/TCommnetAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->c(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$2;

    invoke-direct {v2, p0, p1}, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$2;-><init>(Lvd;Lcn/apppark/vertify/adapter/TCommnetAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->c(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    invoke-static {p1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->k(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lvd;->setAnimationStyle(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lvd;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lvd;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lvd;->setWidth(I)V

    const/high16 v0, 0x420c0000    # 35.0f

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lvd;->setHeight(I)V

    invoke-virtual {p0, v3}, Lvd;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v3}, Lvd;->setTouchable(Z)V

    return-void
.end method
