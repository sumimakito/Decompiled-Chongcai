.class final Lkf;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Lke;


# direct methods
.method constructor <init>(Lke;)V
    .locals 0

    iput-object p1, p0, Lkf;->a:Lke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lkf;->a:Lke;

    iget-object v0, v0, Lke;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->h(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lkf;->a:Lke;

    iget-object v0, v0, Lke;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    iget-object v1, p0, Lkf;->a:Lke;

    iget-object v1, v1, Lke;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;II)V

    return-void
.end method
