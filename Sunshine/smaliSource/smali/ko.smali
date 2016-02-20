.class final Lko;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/vertify/adapter/DynCommentAdapter$MyClickGood;


# instance fields
.field final synthetic a:Lkl;


# direct methods
.method constructor <init>(Lkl;)V
    .locals 0

    iput-object p1, p0, Lko;->a:Lkl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickGood(I)V
    .locals 2

    iget-object v0, p0, Lko;->a:Lkl;

    iget-object v1, v0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    iget-object v0, p0, Lko;->a:Lkl;

    iget-object v0, v0, Lkl;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->d(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Ljava/lang/String;I)V

    return-void
.end method
