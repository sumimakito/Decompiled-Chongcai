.class final Ltt;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Ltr;


# direct methods
.method constructor <init>(Ltr;)V
    .locals 0

    iput-object p1, p0, Ltt;->a:Ltr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 3

    iget-object v0, p0, Ltt;->a:Ltr;

    iget-object v0, v0, Ltr;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->e(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(I)V

    iget-object v0, p0, Ltt;->a:Ltr;

    iget-object v0, v0, Ltr;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;II)V

    return-void
.end method
