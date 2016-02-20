.class public final Ld;
.super Landroid/widget/PopupWindow;


# instance fields
.field final synthetic a:Lcn/apppark/ckj10185912/Main;


# direct methods
.method public constructor <init>(Lcn/apppark/ckj10185912/Main;Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const v3, 0x7f0201aa

    iput-object p1, p0, Ld;->a:Lcn/apppark/ckj10185912/Main;

    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030056

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0267

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcn/apppark/ckj10185912/Main;->a(Lcn/apppark/ckj10185912/Main;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v0, 0x7f0a0266

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcn/apppark/ckj10185912/Main;->b(Lcn/apppark/ckj10185912/Main;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v0, 0x7f0a0268

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcn/apppark/ckj10185912/Main;->c(Lcn/apppark/ckj10185912/Main;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v0, 0x7f0a0269

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcn/apppark/ckj10185912/Main;->d(Lcn/apppark/ckj10185912/Main;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcn/apppark/ckj10185912/Main;->a(Lcn/apppark/ckj10185912/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setSelBack(Landroid/view/View;I)V

    invoke-static {p1}, Lcn/apppark/ckj10185912/Main;->b(Lcn/apppark/ckj10185912/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setSelBack(Landroid/view/View;I)V

    invoke-static {p1}, Lcn/apppark/ckj10185912/Main;->c(Lcn/apppark/ckj10185912/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setSelBack(Landroid/view/View;I)V

    invoke-static {p1}, Lcn/apppark/ckj10185912/Main;->d(Lcn/apppark/ckj10185912/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setSelBack(Landroid/view/View;I)V

    invoke-static {p1}, Lcn/apppark/ckj10185912/Main;->a(Lcn/apppark/ckj10185912/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/apppark/ckj10185912/Main;->b(Lcn/apppark/ckj10185912/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/apppark/ckj10185912/Main;->c(Lcn/apppark/ckj10185912/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/apppark/ckj10185912/Main;->d(Lcn/apppark/ckj10185912/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Ld;->setAnimationStyle(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Ld;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Ld;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ld;->setWidth(I)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Ld;->setHeight(I)V

    invoke-virtual {p0, v4}, Ld;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v4}, Ld;->setTouchable(Z)V

    return-void
.end method
