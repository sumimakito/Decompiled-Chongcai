.class public final Lqw;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/vertify/adapter/TReplayAdapter$OnReplayDeleteListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TCommentList;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TCommentList;)V
    .locals 0

    iput-object p1, p0, Lqw;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDelete(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    iget-object v1, p0, Lqw;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->f(Lcn/apppark/vertify/activity/tieba/TCommentList;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8b66\u544a"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u5220\u9664\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080008

    new-instance v2, Lqy;

    invoke-direct {v2, p0, p2, p1}, Lqy;-><init>(Lqw;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080009

    new-instance v2, Lqx;

    invoke-direct {v2, p0}, Lqx;-><init>(Lqw;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
