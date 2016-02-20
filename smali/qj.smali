.class final Lqj;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Lqi;


# direct methods
.method constructor <init>(Lqi;)V
    .locals 0

    iput-object p1, p0, Lqj;->a:Lqi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lqj;->a:Lqi;

    iget-object v0, v0, Lqi;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->f(Lcn/apppark/vertify/activity/soft/SoftDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lqj;->a:Lqi;

    iget-object v0, v0, Lqi;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    const-string v1, "detail"

    invoke-static {v0, v3, v1}, Lcn/apppark/vertify/activity/soft/SoftDetail;->a(Lcn/apppark/vertify/activity/soft/SoftDetail;ILjava/lang/String;)V

    return-void
.end method
