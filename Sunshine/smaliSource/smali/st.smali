.class public final Lst;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/vertify/adapter/TCollectionAdapter$onRightItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TMyCollection;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TMyCollection;)V
    .locals 0

    iput-object p1, p0, Lst;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRightItemClick(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lst;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-static {v0, p2}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->a(Lcn/apppark/vertify/activity/tieba/TMyCollection;I)I

    iget-object v0, p0, Lst;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->i(Lcn/apppark/vertify/activity/tieba/TMyCollection;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lst;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    const/4 v2, 0x2

    iget-object v0, p0, Lst;->a:Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->c(Lcn/apppark/vertify/activity/tieba/TMyCollection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMyCollectionVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyCollectionVo;->getTopicId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->a(Lcn/apppark/vertify/activity/tieba/TMyCollection;ILjava/lang/String;)V

    return-void
.end method
