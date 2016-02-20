.class Lcn/apppark/vertify/activity/free/dyn/SProductBase$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase$8;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase$8;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->g(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase$8;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->g(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase$8;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-virtual {v4}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase$8;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->g(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v4, 0x7f0201bb

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase$8;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->h(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase$8;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->g(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setTextColor(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase$8;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->g(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0201ab

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase$8;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->h(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase$8;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase$8;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->i(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->a(Lcn/apppark/vertify/activity/free/dyn/SProductBase;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase$8;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->j(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V

    return-void
.end method
