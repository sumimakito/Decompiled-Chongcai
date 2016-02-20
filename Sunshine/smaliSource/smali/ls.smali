.class public final Lls;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/ElasticScrollView$OnRefreshListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;)V
    .locals 0

    iput-object p1, p0, Lls;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    iget-object v0, p0, Lls;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->autoHeadRefresh()V

    iget-object v0, p0, Lls;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;->a(Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;)V

    return-void
.end method
