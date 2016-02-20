.class public final Lri;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListView$OnRefreshListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/soft/SoftList;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/soft/SoftList;)V
    .locals 0

    iput-object p1, p0, Lri;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 4

    iget-object v0, p0, Lri;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/soft/SoftList;->a(Lcn/apppark/vertify/activity/soft/SoftList;I)I

    iget-object v0, p0, Lri;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    iget-object v1, p0, Lri;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftList;->a(Lcn/apppark/vertify/activity/soft/SoftList;)I

    move-result v1

    const/4 v2, 0x6

    const-string v3, "subjectApp"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/soft/SoftList;->a(Lcn/apppark/vertify/activity/soft/SoftList;IILjava/lang/String;)V

    return-void
.end method
