.class Lcn/apppark/vertify/adapter/DynProduct5005Adapter$MyOnClick;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/adapter/DynProduct5005Adapter;

.field private b:Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

.field private c:I


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/adapter/DynProduct5005Adapter;Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;I)V
    .locals 1

    iput-object p1, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter$MyOnClick;->a:Lcn/apppark/vertify/adapter/DynProduct5005Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter$MyOnClick;->b:Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter$MyOnClick;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter$MyOnClick;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const-class v2, Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter$MyOnClick;->b:Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v1, v0}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
