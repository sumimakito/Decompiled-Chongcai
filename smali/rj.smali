.class public final Lrj;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TMain;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TMain;)V
    .locals 0

    iput-object p1, p0, Lrj;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFootRefresh()V
    .locals 3

    iget-object v0, p0, Lrj;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    iget-object v1, p0, Lrj;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMain;->c(Lcn/apppark/vertify/activity/tieba/TMain;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/tieba/TMain;->a(Lcn/apppark/vertify/activity/tieba/TMain;II)V

    return-void
.end method
