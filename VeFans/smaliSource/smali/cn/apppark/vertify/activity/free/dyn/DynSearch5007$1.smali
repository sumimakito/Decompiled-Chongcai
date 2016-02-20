.class Lcn/apppark/vertify/activity/free/dyn/DynSearch5007$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007$1;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const-class v2, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "param"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007$1;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;->a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;)Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->getSource()Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v1, v0}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
