.class final Lqp;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Lqo;


# direct methods
.method constructor <init>(Lqo;)V
    .locals 0

    iput-object p1, p0, Lqp;->a:Lqo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lqp;->a:Lqo;

    iget-object v0, v0, Lqo;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->e(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lqp;->a:Lqo;

    iget-object v0, v0, Lqo;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    const/4 v1, 0x5

    const-string v2, "subjectApp"

    invoke-static {v0, v3, v1, v2}, Lcn/apppark/vertify/activity/soft/SoftList;->a(Lcn/apppark/vertify/activity/soft/SoftList;IILjava/lang/String;)V

    return-void
.end method
