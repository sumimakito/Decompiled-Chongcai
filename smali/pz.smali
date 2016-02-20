.class final Lpz;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Lpw;


# direct methods
.method constructor <init>(Lpw;)V
    .locals 0

    iput-object p1, p0, Lpz;->a:Lpw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lpz;->a:Lpw;

    iget-object v0, v0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->p(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v2, 0x7f080024

    const-string v3, "255"

    invoke-virtual {v0, v2, v1, v1, v3}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lpz;->a:Lpw;

    iget-object v0, v0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    const-string v3, "recommend"

    const/4 v4, 0x0

    const-string v5, ""

    move v2, v1

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;IILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
