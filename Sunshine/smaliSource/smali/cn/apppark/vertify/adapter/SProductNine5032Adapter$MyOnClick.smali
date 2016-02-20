.class Lcn/apppark/vertify/adapter/SProductNine5032Adapter$MyOnClick;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/adapter/SProductNine5032Adapter;

.field private b:Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/adapter/SProductNine5032Adapter;Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter$MyOnClick;->a:Lcn/apppark/vertify/adapter/SProductNine5032Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter$MyOnClick;->b:Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const-class v2, Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter$MyOnClick;->b:Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter$MyOnClick;->a:Lcn/apppark/vertify/adapter/SProductNine5032Adapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->a(Lcn/apppark/vertify/adapter/SProductNine5032Adapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
