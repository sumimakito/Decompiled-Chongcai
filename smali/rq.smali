.class public final Lrq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TMsg;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TMsg;)V
    .locals 0

    iput-object p1, p0, Lrq;->a:Lcn/apppark/vertify/activity/tieba/TMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v1, "0"

    iget-object v0, p0, Lrq;->a:Lcn/apppark/vertify/activity/tieba/TMsg;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->b(Lcn/apppark/vertify/activity/tieba/TMsg;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;->getReplyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lrq;->a:Lcn/apppark/vertify/activity/tieba/TMsg;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->c(Lcn/apppark/vertify/activity/tieba/TMsg;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "topicid"

    iget-object v0, p0, Lrq;->a:Lcn/apppark/vertify/activity/tieba/TMsg;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->b(Lcn/apppark/vertify/activity/tieba/TMsg;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;->getTopicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lrq;->a:Lcn/apppark/vertify/activity/tieba/TMsg;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/tieba/TMsg;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lrq;->a:Lcn/apppark/vertify/activity/tieba/TMsg;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->c(Lcn/apppark/vertify/activity/tieba/TMsg;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "topicId"

    iget-object v0, p0, Lrq;->a:Lcn/apppark/vertify/activity/tieba/TMsg;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->b(Lcn/apppark/vertify/activity/tieba/TMsg;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;->getTopicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "topicUserId"

    const-string v2, "-1"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "commentId"

    iget-object v0, p0, Lrq;->a:Lcn/apppark/vertify/activity/tieba/TMsg;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->b(Lcn/apppark/vertify/activity/tieba/TMsg;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "replyId"

    iget-object v0, p0, Lrq;->a:Lcn/apppark/vertify/activity/tieba/TMsg;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->b(Lcn/apppark/vertify/activity/tieba/TMsg;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;->getReplyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "replayType"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lrq;->a:Lcn/apppark/vertify/activity/tieba/TMsg;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->c(Lcn/apppark/vertify/activity/tieba/TMsg;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
