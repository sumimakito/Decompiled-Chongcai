.class public final Llt;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;)V
    .locals 0

    iput-object p1, p0, Llt;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 1

    iget-object v0, p0, Llt;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->b(Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;)Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->initData()V

    return-void
.end method
