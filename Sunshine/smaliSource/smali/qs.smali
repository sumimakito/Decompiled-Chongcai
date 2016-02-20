.class public final Lqs;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListView$OnFootRefreshListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/soft/Soft;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/soft/Soft;)V
    .locals 0

    iput-object p1, p0, Lqs;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFootRefresh()V
    .locals 6

    iget-object v0, p0, Lqs;->a:Lcn/apppark/vertify/activity/soft/Soft;

    iget-object v1, p0, Lqs;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->f(Lcn/apppark/vertify/activity/soft/Soft;)I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "downTop"

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;IILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
