.class public final Ltc;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)V
    .locals 0

    iput-object p1, p0, Ltc;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFootRefresh()V
    .locals 3

    iget-object v0, p0, Ltc;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    iget-object v1, p0, Ltc;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->d(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->a(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;II)V

    return-void
.end method
