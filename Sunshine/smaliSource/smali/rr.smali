.class public final Lrr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TCommentList;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TCommentList;)V
    .locals 0

    iput-object p1, p0, Lrr;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

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

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    iget-object v0, p0, Lrr;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->c(Lcn/apppark/vertify/activity/tieba/TCommentList;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\u56de\u590d\uff1a"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lrr;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->b(Lcn/apppark/vertify/activity/tieba/TCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, p3, -0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lrr;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\u56de\u590d\uff1a"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lrr;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->b(Lcn/apppark/vertify/activity/tieba/TCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, p3, -0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->a(Lcn/apppark/vertify/activity/tieba/TCommentList;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lrr;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    iget-object v0, p0, Lrr;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->b(Lcn/apppark/vertify/activity/tieba/TCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->b(Lcn/apppark/vertify/activity/tieba/TCommentList;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
