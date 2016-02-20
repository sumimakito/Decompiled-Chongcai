.class public final Lsb;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TMyHistory;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TMyHistory;)V
    .locals 0

    iput-object p1, p0, Lsb;->a:Lcn/apppark/vertify/activity/tieba/TMyHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRightItemClick(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lsb;->a:Lcn/apppark/vertify/activity/tieba/TMyHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->a(Lcn/apppark/vertify/activity/tieba/TMyHistory;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lsb;->a:Lcn/apppark/vertify/activity/tieba/TMyHistory;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->f(Lcn/apppark/vertify/activity/tieba/TMyHistory;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcn/apppark/mcd/util/file/TbHistoryObject2File;->delHistory(Landroid/content/Context;ILjava/lang/String;)Z

    iget-object v0, p0, Lsb;->a:Lcn/apppark/vertify/activity/tieba/TMyHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->b(Lcn/apppark/vertify/activity/tieba/TMyHistory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lsb;->a:Lcn/apppark/vertify/activity/tieba/TMyHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->g(Lcn/apppark/vertify/activity/tieba/TMyHistory;)Lcn/apppark/vertify/adapter/TMyHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TMyHistoryAdapter;->notifyDataSetChanged()V

    return-void
.end method
