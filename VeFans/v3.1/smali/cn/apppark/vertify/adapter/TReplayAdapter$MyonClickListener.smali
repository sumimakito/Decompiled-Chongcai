.class Lcn/apppark/vertify/adapter/TReplayAdapter$MyonClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/adapter/TReplayAdapter;

.field private b:Lcn/apppark/mcd/vo/tieba/TReplayVo;

.field private c:I


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/adapter/TReplayAdapter;Lcn/apppark/mcd/vo/tieba/TReplayVo;I)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TReplayAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TReplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TReplayAdapter$MyonClickListener;->b:Lcn/apppark/mcd/vo/tieba/TReplayVo;

    iput p3, p0, Lcn/apppark/vertify/adapter/TReplayAdapter$MyonClickListener;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TReplayAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TReplayAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TReplayAdapter;->a(Lcn/apppark/vertify/adapter/TReplayAdapter;)Lcn/apppark/vertify/adapter/TReplayAdapter$OnReplayDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TReplayAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TReplayAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TReplayAdapter;->a(Lcn/apppark/vertify/adapter/TReplayAdapter;)Lcn/apppark/vertify/adapter/TReplayAdapter$OnReplayDeleteListener;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TReplayAdapter$MyonClickListener;->b:Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getReplyId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcn/apppark/vertify/adapter/TReplayAdapter$MyonClickListener;->c:I

    invoke-interface {v0, v1, v2}, Lcn/apppark/vertify/adapter/TReplayAdapter$OnReplayDeleteListener;->onDelete(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
