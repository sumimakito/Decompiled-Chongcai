.class final Lsv;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Lsu;


# direct methods
.method constructor <init>(Lsu;)V
    .locals 0

    iput-object p1, p0, Lsv;->a:Lsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 2

    iget-object v0, p0, Lsv;->a:Lsu;

    iget-object v0, v0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->e(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(I)V

    iget-object v0, p0, Lsv;->a:Lsu;

    iget-object v0, v0, Lsu;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->b(Lcn/apppark/vertify/activity/tieba/TTopicDetail;I)V

    return-void
.end method
