.class Lcn/apppark/vertify/activity/free/dyn/SProductBase$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase$4;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase$4;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-static {v3}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->e(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;

    move-result-object v3

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;->getTelnumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/apppark/ckj10185912/HQCHApplication;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
