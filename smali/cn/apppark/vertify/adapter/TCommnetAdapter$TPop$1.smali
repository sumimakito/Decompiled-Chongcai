.class public Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

.field final synthetic b:Ltx;


# direct methods
.method public constructor <init>(Ltx;Lcn/apppark/vertify/adapter/TCommnetAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$1;->b:Ltx;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$1;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$1;->b:Ltx;

    iget-object v0, v0, Ltx;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->d(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Ltx;

    move-result-object v0

    invoke-virtual {v0}, Ltx;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$1;->b:Ltx;

    iget-object v1, v1, Ltx;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->e(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "detail"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$1;->b:Ltx;

    iget-object v2, v2, Ltx;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v2}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->j(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Lcn/apppark/mcd/vo/tieba/TCommentVo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "topicId"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$1;->b:Ltx;

    iget-object v2, v2, Ltx;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v2}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->f(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "topicUserId"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$1;->b:Ltx;

    iget-object v2, v2, Ltx;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v2}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->g(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "replayType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$1;->b:Ltx;

    iget-object v1, v1, Ltx;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->e(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
