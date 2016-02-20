.class public final Lju;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)V
    .locals 0

    iput-object p1, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

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

    iget-object v0, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->b(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->getNextShowType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    const-class v2, Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "id"

    iget-object v0, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->b(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5007ReturnVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    const-class v2, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "vo"

    iget-object v0, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->b(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "bund"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    const-class v2, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "searchtype"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "keyword"

    iget-object v2, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param"

    iget-object v2, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->c(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    const-class v2, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "searchtype"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "keyword"

    iget-object v2, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param"

    iget-object v2, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->c(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lju;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
