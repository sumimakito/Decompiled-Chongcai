.class public final Ltu;
.super Landroid/widget/PopupWindow;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Ltu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300c3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a048f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/widget/Button;)Landroid/widget/Button;

    const v0, 0x7f0a0493

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->b(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/widget/Button;)Landroid/widget/Button;

    const v0, 0x7f0a0494

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0a048e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v0, 0x7f0a0490

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->b(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v0, 0x7f0a0492

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->c(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v0, 0x7f0a0495

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->d(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->C(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->D(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->E(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->F(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Ltu;->setAnimationStyle(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Ltu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Ltu;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ltu;->setWidth(I)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Ltu;->setHeight(I)V

    invoke-virtual {p0, v3}, Ltu;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v3}, Ltu;->setTouchable(Z)V

    return-void
.end method
