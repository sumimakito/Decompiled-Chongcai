.class Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcn/apppark/mcd/vo/tieba/TMyCommentVo;

.field b:Lcn/apppark/mcd/vo/tieba/SonItemVo;

.field final synthetic c:Lcn/apppark/vertify/adapter/TMyCommentAdapter;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/adapter/TMyCommentAdapter;Lcn/apppark/mcd/vo/tieba/TMyCommentVo;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->c:Lcn/apppark/vertify/adapter/TMyCommentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->a:Lcn/apppark/mcd/vo/tieba/TMyCommentVo;

    return-void
.end method

.method public constructor <init>(Lcn/apppark/vertify/adapter/TMyCommentAdapter;Lcn/apppark/mcd/vo/tieba/TMyCommentVo;Lcn/apppark/mcd/vo/tieba/SonItemVo;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->c:Lcn/apppark/vertify/adapter/TMyCommentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->a:Lcn/apppark/mcd/vo/tieba/TMyCommentVo;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->b:Lcn/apppark/mcd/vo/tieba/SonItemVo;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->c:Lcn/apppark/vertify/adapter/TMyCommentAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TMyCommentAdapter;->a(Lcn/apppark/vertify/adapter/TMyCommentAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "topicid"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->a:Lcn/apppark/mcd/vo/tieba/TMyCommentVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->getTopicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "jumpType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->c:Lcn/apppark/vertify/adapter/TMyCommentAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TMyCommentAdapter;->a(Lcn/apppark/vertify/adapter/TMyCommentAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "0"

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->b:Lcn/apppark/mcd/vo/tieba/SonItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/SonItemVo;->getReplyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->c:Lcn/apppark/vertify/adapter/TMyCommentAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TMyCommentAdapter;->a(Lcn/apppark/vertify/adapter/TMyCommentAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "topicid"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->a:Lcn/apppark/mcd/vo/tieba/TMyCommentVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->getTopicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "commentId"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->b:Lcn/apppark/mcd/vo/tieba/SonItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/SonItemVo;->getCommentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "jumpType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->c:Lcn/apppark/vertify/adapter/TMyCommentAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TMyCommentAdapter;->a(Lcn/apppark/vertify/adapter/TMyCommentAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->c:Lcn/apppark/vertify/adapter/TMyCommentAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TMyCommentAdapter;->a(Lcn/apppark/vertify/adapter/TMyCommentAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "topicId"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->a:Lcn/apppark/mcd/vo/tieba/TMyCommentVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->getTopicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "commentId"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->b:Lcn/apppark/mcd/vo/tieba/SonItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/SonItemVo;->getCommentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "replyId"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->b:Lcn/apppark/mcd/vo/tieba/SonItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/SonItemVo;->getReplyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "replayType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener;->c:Lcn/apppark/vertify/adapter/TMyCommentAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TMyCommentAdapter;->a(Lcn/apppark/vertify/adapter/TMyCommentAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0474 -> :sswitch_0
        0x7f0a0478 -> :sswitch_1
    .end sparse-switch
.end method
