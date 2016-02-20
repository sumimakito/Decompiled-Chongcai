.class public final Lnv;
.super Landroid/widget/PopupWindow;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/PersonInfo;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/PersonInfo;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Lnv;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030032

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a017a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->a(Lcn/apppark/vertify/activity/persion/PersonInfo;Landroid/widget/Button;)Landroid/widget/Button;

    const v0, 0x7f0a017b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->b(Lcn/apppark/vertify/activity/persion/PersonInfo;Landroid/widget/Button;)Landroid/widget/Button;

    const v0, 0x7f0a017c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->c(Lcn/apppark/vertify/activity/persion/PersonInfo;Landroid/widget/Button;)Landroid/widget/Button;

    invoke-static {p1}, Lcn/apppark/vertify/activity/persion/PersonInfo;->k(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    invoke-static {p1}, Lcn/apppark/vertify/activity/persion/PersonInfo;->l(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    invoke-static {p1}, Lcn/apppark/vertify/activity/persion/PersonInfo;->m(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    invoke-static {p1}, Lcn/apppark/vertify/activity/persion/PersonInfo;->m(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/apppark/vertify/activity/persion/PersonInfo;->l(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/apppark/vertify/activity/persion/PersonInfo;->k(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lnv;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lnv;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lnv;->setWidth(I)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lnv;->setHeight(I)V

    invoke-virtual {p0, v2}, Lnv;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v2}, Lnv;->setTouchable(Z)V

    return-void
.end method
