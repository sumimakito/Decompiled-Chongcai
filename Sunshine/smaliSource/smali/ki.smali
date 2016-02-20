.class public final Lki;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)V
    .locals 0

    iput-object p1, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

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

    iget-object v0, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    iget-object v1, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->f(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    const-string v1, "\u8bf7\u767b\u5f55"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->f(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    iget-object v1, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setTitle(I)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u5220\u9664\u8be5\u8bc4\u8bba?"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080008

    new-instance v2, Lkk;

    invoke-direct {v2, p0, p3}, Lkk;-><init>(Lki;I)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080009

    new-instance v2, Lkj;

    invoke-direct {v2, p0}, Lkj;-><init>(Lki;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->create()Lcn/apppark/mcd/widget/DialogTwoBtn;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn;->show()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\u56de\u590d"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->getShieldString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    iget-object v0, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    iget-object v0, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->c(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    iget-object v0, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->d(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\u56de\u590d"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->getShieldString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    iget-object v1, p0, Lki;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Landroid/widget/EditText;)V

    goto/16 :goto_0
.end method
