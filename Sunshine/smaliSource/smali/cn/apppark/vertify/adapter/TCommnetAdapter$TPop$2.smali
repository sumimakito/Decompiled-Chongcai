.class public Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

.field final synthetic b:Lvd;


# direct methods
.method public constructor <init>(Lvd;Lcn/apppark/vertify/adapter/TCommnetAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$2;->b:Lvd;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$2;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$2;->b:Lvd;

    iget-object v0, v0, Lvd;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->d(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Lvd;

    move-result-object v0

    invoke-virtual {v0}, Lvd;->dismiss()V

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$2;->b:Lvd;

    iget-object v0, v0, Lvd;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->h(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Lcn/apppark/vertify/adapter/TCommnetAdapter$OnDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$2;->b:Lvd;

    iget-object v0, v0, Lvd;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->h(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Lcn/apppark/vertify/adapter/TCommnetAdapter$OnDeleteListener;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$2;->b:Lvd;

    iget-object v1, v1, Lvd;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->j(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Lcn/apppark/mcd/vo/tieba/TCommentVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getCommentId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$TPop$2;->b:Lvd;

    iget-object v3, v3, Lvd;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v3}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->i(Lcn/apppark/vertify/adapter/TCommnetAdapter;)I

    move-result v3

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcn/apppark/vertify/adapter/TCommnetAdapter$OnDeleteListener;->onDelete(Ljava/lang/String;Ljava/lang/String;IIZ)V

    :cond_0
    return-void
.end method
