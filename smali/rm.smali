.class public final Lrm;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TMain;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TMain;)V
    .locals 0

    iput-object p1, p0, Lrm;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lrm;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMain;->k(Lcn/apppark/vertify/activity/tieba/TMain;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lrm;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v0, v3, v3}, Lcn/apppark/vertify/activity/tieba/TMain;->a(Lcn/apppark/vertify/activity/tieba/TMain;II)V

    return-void
.end method
