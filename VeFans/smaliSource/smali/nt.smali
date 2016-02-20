.class public final Lnt;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/PersonInfo;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/PersonInfo;)V
    .locals 0

    iput-object p1, p0, Lnt;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lnt;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->a(Lcn/apppark/vertify/activity/persion/PersonInfo;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lnt;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->b(Lcn/apppark/vertify/activity/persion/PersonInfo;)V

    return-void
.end method
