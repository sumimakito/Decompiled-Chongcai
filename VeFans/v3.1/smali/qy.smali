.class final Lqy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lqw;


# direct methods
.method constructor <init>(Lqw;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lqy;->c:Lqw;

    iput p2, p0, Lqy;->a:I

    iput-object p3, p0, Lqy;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lqy;->c:Lqw;

    iget-object v0, v0, Lqw;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TCommentList;->u(Lcn/apppark/vertify/activity/tieba/TCommentList;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lqy;->c:Lqw;

    iget-object v0, v0, Lqw;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    iget v1, p0, Lqy;->a:I

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->c(Lcn/apppark/vertify/activity/tieba/TCommentList;I)I

    iget-object v0, p0, Lqy;->c:Lqw;

    iget-object v0, v0, Lqw;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    const/4 v1, 0x4

    iget-object v2, p0, Lqy;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/tieba/TCommentList;->a(Lcn/apppark/vertify/activity/tieba/TCommentList;ILjava/lang/String;)V

    return-void
.end method
