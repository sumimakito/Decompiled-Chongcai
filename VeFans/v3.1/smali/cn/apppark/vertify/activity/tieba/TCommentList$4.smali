.class Lcn/apppark/vertify/activity/tieba/TCommentList$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TCommentList;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/tieba/TCommentList;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList$4;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList$4;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->f(Lcn/apppark/vertify/activity/tieba/TCommentList;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "topicid"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TCommentList$4;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/tieba/TCommentList;->g(Lcn/apppark/vertify/activity/tieba/TCommentList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TCommentList$4;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
