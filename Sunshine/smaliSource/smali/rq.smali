.class public final Lrq;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TCommentList;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TCommentList;)V
    .locals 0

    iput-object p1, p0, Lrq;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFootRefresh()V
    .locals 3

    iget-object v0, p0, Lrq;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    iget-object v1, p0, Lrq;->a:Lcn/apppark/vertify/activity/tieba/TCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TCommentList;->a(Lcn/apppark/vertify/activity/tieba/TCommentList;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/tieba/TCommentList;->a(Lcn/apppark/vertify/activity/tieba/TCommentList;II)V

    return-void
.end method
