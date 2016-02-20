.class final Lhj;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Lhi;


# direct methods
.method constructor <init>(Lhi;)V
    .locals 0

    iput-object p1, p0, Lhj;->a:Lhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lhj;->a:Lhi;

    iget-object v0, v0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->b(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lhj;->a:Lhi;

    iget-object v0, v0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    iget-object v1, p0, Lhj;->a:Lhi;

    iget-object v1, v1, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;ILjava/lang/String;)V

    return-void
.end method
