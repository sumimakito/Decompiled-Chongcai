.class final Lkk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lki;


# direct methods
.method constructor <init>(Lki;I)V
    .locals 0

    iput-object p1, p0, Lkk;->b:Lki;

    iput p2, p0, Lkk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lkk;->b:Lki;

    iget-object v0, v0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->g(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkk;->b:Lki;

    iget-object v0, v0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    iget-object v1, p0, Lkk;->b:Lki;

    iget-object v1, v1, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->h(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080024

    invoke-static {v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->createLoadingDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lkk;->b:Lki;

    iget-object v0, v0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    iget v1, p0, Lkk;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;I)I

    iget-object v0, p0, Lkk;->b:Lki;

    iget-object v0, v0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->g(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lkk;->b:Lki;

    iget-object v1, v0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    const/4 v2, 0x4

    iget-object v0, p0, Lkk;->b:Lki;

    iget-object v0, v0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v3, p0, Lkk;->a:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lkk;->b:Lki;

    iget-object v0, v0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v4, p0, Lkk;->a:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->getPid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
