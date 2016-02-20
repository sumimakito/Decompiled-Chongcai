.class public final Lkb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)V
    .locals 0

    iput-object p1, p0, Lkb;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lkb;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    iget v0, v0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lkb;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    const-class v2, Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "id"

    iget-object v0, p0, Lkb;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->b(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lkb;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lkb;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    const-class v2, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "vo"

    iget-object v0, p0, Lkb;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->b(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "bund"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lkb;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
