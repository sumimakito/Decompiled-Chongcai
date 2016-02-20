.class public final Lne;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/PersionCollection;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/PersionCollection;)V
    .locals 0

    iput-object p1, p0, Lne;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFootRefresh()V
    .locals 3

    iget-object v0, p0, Lne;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    iget-object v1, p0, Lne;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->c(Lcn/apppark/vertify/activity/persion/PersionCollection;)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/persion/PersionCollection;->a(Lcn/apppark/vertify/activity/persion/PersionCollection;II)V

    return-void
.end method
