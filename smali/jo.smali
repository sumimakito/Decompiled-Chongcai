.class public final Ljo;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnFootRefreshListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)V
    .locals 0

    iput-object p1, p0, Ljo;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFootRefresh()V
    .locals 3

    iget-object v0, p0, Ljo;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    iget-object v1, p0, Ljo;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->b(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;II)V

    return-void
.end method
