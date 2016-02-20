.class public final Lsm;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TMsg;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TMsg;)V
    .locals 0

    iput-object p1, p0, Lsm;->a:Lcn/apppark/vertify/activity/tieba/TMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFootRefresh()V
    .locals 3

    iget-object v0, p0, Lsm;->a:Lcn/apppark/vertify/activity/tieba/TMsg;

    iget-object v1, p0, Lsm;->a:Lcn/apppark/vertify/activity/tieba/TMsg;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMsg;->a(Lcn/apppark/vertify/activity/tieba/TMsg;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/tieba/TMsg;->a(Lcn/apppark/vertify/activity/tieba/TMsg;II)V

    return-void
.end method
