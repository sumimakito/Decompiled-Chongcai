.class Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

.field private b:Lcn/apppark/mcd/vo/tieba/TCommentVo;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/adapter/TCommnetAdapter;Lcn/apppark/mcd/vo/tieba/TCommentVo;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->b:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    return-void
.end method

.method public constructor <init>(Lcn/apppark/vertify/adapter/TCommnetAdapter;Lcn/apppark/mcd/vo/tieba/TCommentVo;I)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->b:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    iput p3, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->c:I

    return-void
.end method

.method public constructor <init>(Lcn/apppark/vertify/adapter/TCommnetAdapter;Lcn/apppark/mcd/vo/tieba/TCommentVo;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->b:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    iput p3, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->c:I

    iput p4, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->d:I

    iput-object p5, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->b:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-static {v0, v1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->a(Lcn/apppark/vertify/adapter/TCommnetAdapter;Lcn/apppark/mcd/vo/tieba/TCommentVo;)Lcn/apppark/mcd/vo/tieba/TCommentVo;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    iget v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->c:I

    invoke-static {v0, v1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->a(Lcn/apppark/vertify/adapter/TCommnetAdapter;I)I

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->b:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->b(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->c(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->d(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Ltx;

    move-result-object v0

    const/high16 v1, 0x43070000    # 135.0f

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    neg-int v1, v1

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Ltx;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->c(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->d(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Ltx;

    move-result-object v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    neg-int v1, v1

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Ltx;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->e(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "detail"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->b:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "topicId"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v2}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->f(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "topicUserId"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v2}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->g(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "replayType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->e(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->e(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "detail"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->b:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "topicId"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v2}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->f(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "topicUserId"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v2}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->g(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "replayType"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->e(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->e(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "detail"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->b:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "topicId"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v2}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->f(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "topicUserId"

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v2}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->g(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "replayType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->e(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->h(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Lcn/apppark/vertify/adapter/TCommnetAdapter$OnDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->h(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Lcn/apppark/vertify/adapter/TCommnetAdapter$OnDeleteListener;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->b:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getCommentId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->e:Ljava/lang/String;

    iget-object v3, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v3}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->i(Lcn/apppark/vertify/adapter/TCommnetAdapter;)I

    move-result v3

    iget v4, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;->d:I

    invoke-interface/range {v0 .. v5}, Lcn/apppark/vertify/adapter/TCommnetAdapter$OnDeleteListener;->onDelete(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a03f0 -> :sswitch_0
        0x7f0a0405 -> :sswitch_2
        0x7f0a0406 -> :sswitch_4
        0x7f0a0408 -> :sswitch_3
        0x7f0a0409 -> :sswitch_4
        0x7f0a040a -> :sswitch_1
    .end sparse-switch
.end method
