.class final Lrz;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Lrw;


# direct methods
.method constructor <init>(Lrw;)V
    .locals 0

    iput-object p1, p0, Lrz;->a:Lrw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 2

    iget-object v0, p0, Lrz;->a:Lrw;

    iget-object v0, v0, Lrw;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->l(Lcn/apppark/vertify/activity/tieba/TCommentList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(I)V

    iget-object v0, p0, Lrz;->a:Lrw;

    iget-object v0, v0, Lrw;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->b(Lcn/apppark/vertify/activity/tieba/TCommentList;I)V

    return-void
.end method
