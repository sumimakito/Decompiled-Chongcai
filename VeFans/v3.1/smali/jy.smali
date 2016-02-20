.class final Ljy;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Ljx;


# direct methods
.method constructor <init>(Ljx;)V
    .locals 0

    iput-object p1, p0, Ljy;->a:Ljx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Ljy;->a:Ljx;

    iget-object v0, v0, Ljx;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->i(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Ljy;->a:Ljx;

    iget-object v0, v0, Ljx;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    const-string v1, "search"

    iget-object v2, p0, Ljy;->a:Ljx;

    iget-object v2, v2, Ljx;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v1, v2}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
